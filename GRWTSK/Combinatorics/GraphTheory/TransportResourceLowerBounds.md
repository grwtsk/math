# Calibrated graph transport lower bounds

Local attribution: grwtsk contributors.

`TransportResourceLowerBounds.lean` sums the supplied exact oriented edge costs of a graph walk. If each traversal pays at least a nonnegative scale times the distance between its placed endpoints, induction on the walk and the triangle inequality lower-bound the ledger by that scaled endpoint distance. For three branches, the sum bounds the scaled half-perimeter by the three triangle inequalities. For any finite terminals covered by one walk, a monotone, intersecting-submodular price with the pair normalization bounds the scaled price by the same ledger. Adjacent pieces intersect at the next endpoint, which supplies the inductive submodularity premise.

`SpectralChartTransportLowerBound.lean` applies the covering theorem to the actual upstream `SpectralPlacementPrices.diagonal`. The terminals are the image of a finite chart set. The ambient price laws apply along the entire walk. The finite-dimensional CAT(0) chart mean-width identity then applies to the terminal set with its joint convexity and chart hypotheses. Walk vertices away from the terminal set may lie outside the chart.

One edge with fixed incidence and variable placement length shows why calibration is necessary. The pair price grows with the length. The unit edge count and the determinant of the same fixed weighted dependency Laplacian are constant. Calibration to a concrete execution coordinate needs its own primitive-step lower bounds and event aggregation.

The local graph-walk module compiled at the pinned Lean and Mathlib revisions. An independently written expanded type comparison passed for the finite covering theorem. All five public declarations report only `propext`, `Classical.choice` and `Quot.sound`. The first fresh replay CLI attempt timed out before output. A direct run of the same Lean fresh-environment kernel replay then exited 0. The chart specialization is an isolated source candidate pending the pinned upstream build. Separate-agent mathematical review covered both arguments. [Tracking issue #1856](https://github.com/grwtsk/math/issues/1856)
