# rootLabel_neg

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.rootLabel_neg` in [QuadraticClusterReality.lean](../QuadraticClusterReality.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For real c, complex w and Boolean b, rootLabel(c,-w,b)=rootLabel(c,w,!b). The false label denotes c+w and the true label c-w. Split into the two Boolean cases and simplify additive inverses. This algebraic equality does not assume w is nonzero. At w=0 labels remain distinct syntactic slots even though their values agree.

Consumer: the explicit square-root loop's endpoint transposition. No general path-lifting or winding-number theorem follows. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; see [loop provenance](../QuadraticCollisionCertificates.provenance/endpoint_label_transposition.md) for source digest, exact fixture and reproduction. Classification: elementary identity supporting branch bookkeeping, not a new monodromy theorem.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. Coordination: grwtsk/math#1809.
