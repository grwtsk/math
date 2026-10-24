# derivedNeighborhoodLabelsChunk0007

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e3c9b0369e5391febe59b3f84c71e8b0e32341d03cc7f7ed4634b5f2ce0d131",
  "kind": "def",
  "lexical_name": "derivedNeighborhoodLabelsChunk0007",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "derivedneighborhoodlabelschunk0007--bf50db9e9175c32bb8dc0fe2",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125798,
    "line": 125731,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf50db9e9175c32bb8dc0fe26c975e152a3f37c3ec1b10a013de407a465558ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e3c9b0369e5391febe59b3f84c71e8b0e32341d03cc7f7ed4634b5f2ce0d131`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125731–125798.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def derivedNeighborhoodLabelsChunk0007 : List String :=
[
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1793]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1794]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1795]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1797]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1798]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1799]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[179]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1801]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1805]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1808]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1809]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[180]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[181]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[182]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1831]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1832]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1835]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1836]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[183]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1848]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1849]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1851]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1856]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1858]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1859]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[185]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[186,1127,1298,1372,1600,1658,1849]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1860,1864]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1860]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1861,1865]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1861]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1862]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1863]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1864]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1865]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1868]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[186]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[188]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1892]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1893]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1894]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[189]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1914]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1918]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[1919]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[196]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[2,3,5,6,7,8,11,14,15,20,21,23,24,25,28,30,31,33,34,39,40,41,44,45,51,52,54,55,61,62,63,68,69,80,81,82,83,84,85,87,88,91,93,94,95,96,97,98,99,100,103,104,105,106,108,109,114,115,131,155,157,158,162,163,164,166,175,176,177,178,179,180,181,182,183,185,186,188,189,196,231,232,233,235,236,237,238,239,247,249,250,251,265,266,267,273,274,277,279,280,282,283,284,285,287,288,290,291,294,295,296,297,299,300,301,302,311,312,313,316,318,319,320,321,322,323,324,325,326,335,338,340,343,344,345,346,347,348,349,350,351,352,353,357,358,359,361,362,363,364,369,370,371,373,375,377,378,379,381,382,383,384,386,387,388,389,391,392,393,394,396,397,399,400,402,403,404,407,410,412,413,415,416,417,418,419,420,421,423,425,426,428,430,431,433,438,446,447,465,467,468,469,470,473,474,477,479,480,482,483,484,486,490,496,497,498,499,503,504,513,514,515,519,520,521,522,529,530,532,541,542,543,544,545,546,548,550,551,552,553,554,555,556,557,564,566,570,571,572,576,577,583,584,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,605,608,609,611,612,613,614,615,616,617,619,620,621,624,626,627,628,630,631,634,635,636,637,638,642,643,651,653,654,655,656,657,659,660,661,662,663,664,665,666,667,668,669,670,671,672,676,677,678,685,687,689,695,696,697,698,699,702,703,705,707,708,710,711,712,713,714,715,720,724,727,729,737,738,739,740,741,742,743,745,746,748,749,750,752,755,759,762,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,784,785,787,788,789,790,791,792,793,796,797,799,801,802,804,805,806,808,811,812,813,815,816,818,819,820,821,822,823,824,825,826,827,829,830,831,832,833,834,835,836,837,838,840,841,842,845,861,863,864,865,866,867,868,869,870,873,875,876,877,878,879,880,881,882,884,886,887,888,889,912,913,914,916,919,920,921,951,982,989,990,1006,1007,1009,1010,1012,1016,1019,1023,1024,1027,1028,1029,1033,1034,1035,1037,1039,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1082,1083,1084,1090,1091,1092,1093,1094,1095,1096,1097,1102,1103,1104,1124,1127,1130,1132,1133,1137,1138,1139,1141,1142,1149,1151,1154,1157,1158,1159,1160,1162,1163,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1187,1200,1206,1212,1216,1219,1221,1222,1223,1225,1226,1228,1229,1230,1231,1232,1233,1234,1235,1239,1241,1242,1243,1245,1247,1248,1249,1250,1252,1253,1254,1255,1258,1259,1261,1263,1264,1265,1266,1267,1269,1271,1272,1274,1275,1276,1277,1278,1281,1284,1285,1286,1287,1293,1297,1298,1306,1307,1308,1309,1311,1312,1314,1316,1317,1318,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1351,1352,1356,1357,1360,1365,1366,1369,1370,1371,1372,1373,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1395,1396,1397,1398,1399,1400,1402,1403,1404,1405,1407,1409,1410,1412,1414,1415,1416,1417,1418,1419,1420,1421,1423,1428,1433,1434,1435,1436,1437,1438,1439,1441,1442,1444,1445,1452,1453,1454,1456,1457,1459,1465,1466,1468,1470,1473,1474,1475,1476,1477,1478,1482,1483,1484,1486,1487,1488,1489,1490,1491,1492,1494,1498,1499,1500,1502,1523,1524,1525,1526,1527,1528,1529,1531,1535,1536,1537,1538,1539,1541,1542,1543,1546,1547,1551,1560,1562,1564,1565,1566,1569,1576,1577,1589,1591,1592,1597,1598,1599,1600,1601,1607,1608,1610,1611,1612,1613,1615,1616,1617,1618,1620,1622,1623,1624,1625,1627,1628,1632,1635,1637,1640,1644,1646,1647,1655,1657,1658,1661,1662,1664,1665,1666,1675,1676,1677,1682,1684,1685,1687,1688,1689,1690,1691,1692,1694,1697,1698,1699,1700,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1715,1716,1717,1718,1719,1720,1723,1724,1725,1726,1727,1728,1730,1732,1737,1740,1741,1742,1743,1747,1748,1749,1750,1751,1752,1755,1756,1757,1758,1759,1760,1761,1762,1765,1766,1767,1768,1769,1770,1771,1772,1773,1775,1777,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1793,1794,1795,1797,1798,1799,1801,1805,1808,1809,1831,1832,1835,1836,1848,1849,1851,1856,1858,1859,1860,1861,1862,1863,1864,1865,1868,1892,1893,1894,1914,1918,1919]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[20]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[21]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[23,745,1132,1409,1524,1560]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[23,745,1560]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[231]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[232,266,1384,1437,1562,1599]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[232]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[233]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[235]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[236]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[237]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[238]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[239]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[247]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[249,588,630]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[249]}",
  "{\"constructor\":\"Neighborhood\",\"declaredSort\":\"lean\",\"members\":[24]}"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L125731).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
