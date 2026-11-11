# square_parameter_real

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.square_parameter_real` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For every real c,t, all complex roots of (z-c)^2-t^2 are real. Apply the exact quadratic criterion to sq_nonneg(t). An elementary cross-check is the factorization at c+t and c-t. At t=0 the roots coalesce, but reality remains valid; the theorem does not require simple roots.

Consumer: positive collision control for RP-OC-05. It does not imply that z^2-t preserves reality, nor that an arithmetic family has this square factorization. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [quadratic criterion provenance](allRootsReal_quadratic_iff.md) gives source digest and reproduction command. Classification: elementary consequence; no novelty claim.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. The written factor check is not independent runtime verification. Coordination: grwtsk/math#1809.
