# SourceChart.im_eq_zero_of_zero

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.SourceChart.im_eq_zero_of_zero` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For an actual SourceChart of f, a point z in its domain, f(z)=0 and nonnegative chart discriminant, conclude im(z)=0. The chart identity gives multiplier(z)*Q(z)^m=0. Its multiplier is nonzero, so Q(z)^m=0; a nonzero Q(z) would have nonzero power. Thus Q(z)=0 and the quadratic reality criterion applies. Analyticity is part of the chart contract, although this implication needs only the value identity and nonvanishing.

Consumer: `critical_line_of_source_chart` for Dirichlet LFunction. Without nonvanishing, zeros of the multiplier need not be real. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [principal certificate record](hermiteNonnegative_iff_allRootsReal.md) supplies source identity/digest and reproduction. Classification: conditional source-return interface, not a construction of charts or coverage.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No GRH/novelty claim. Coordination: grwtsk/math#1809.
