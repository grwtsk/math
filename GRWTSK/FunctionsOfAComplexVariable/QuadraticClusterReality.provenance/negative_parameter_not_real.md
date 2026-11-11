# negative_parameter_not_real

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.negative_parameter_not_real` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For every real c, not all complex roots of (z-c)^2+1 are real. Rewrite by `allRootsReal_quadratic_iff`; the resulting -1>=0 assertion is false. Equivalently c+i is a nonreal root. This is a synthetic polynomial countermodel, not a reported counterexample to RH or GRH.

Consumer: the safeguard that constant polynomial degree and real coefficients do not suffice for real-rootedness. Together with `quadratic_circle_margin` it distinguishes contour safety from reality. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1. [Margin provenance](quadratic_circle_margin.md) gives source digest, comparison and reproduction. Classification: elementary negative control.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No novelty claim. Coordination: grwtsk/math#1809.
