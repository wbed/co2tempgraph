A = importdata("co2 data.csv", ',');
data = A.data;
year = data(:, 1);
avgTemp = data(:, 2);
co2ppm = data(:, 3);

hold on
figure(1)
title('Correlation between concentration of CO_2 and Global Air Temperature Anomaly....')
yyaxis left
plot(year, co2ppm, 'b', 'DisplayName', 'CO_2(ppm)')
xlabel('Year')
ylabel('Concentration of CO_2 at Sea Level (ppm) [1, 2, 3, 4]')
yyaxis right
plot(year, avgTemp, 'r', 'DisplayName', 'Temperature')
ylabel('Global Air Temperature Anomaly [5]')
hold off

legend('Location', 'northwest')

f = gcf;
exportgraphics(f, 'co2ppm_vs_globaltemp.png','Resolution',450);
