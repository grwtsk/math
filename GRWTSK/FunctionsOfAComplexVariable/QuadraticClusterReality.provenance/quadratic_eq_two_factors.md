# quadratic_eq_two_factors

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.quadratic_eq_two_factors` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For real c,d and complex w,z, assume w^2=(d:complex). Then (z-c)^2-d=(z-(c+w))*(z-(c-w)). Substitute the supplied square identity and expand. At w=0 the two equal factors remain two factors, so the statement does not silently reduce a divisor to its support. Changing w to -w exchanges them and leaves the product invariant.

Consumer: branch-aware quadratic clusters and the separate analytic-order statements. Classification: elementary factor identity. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1. [Multiplicity provenance](source_order_at_powered_collision.md) gives source digest, analytic consumer and reproduction command. This identity alone neither supplies a square-root chart nor proves analytic continuation.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No novelty claim. Coordination: grwtsk/math#1809.
