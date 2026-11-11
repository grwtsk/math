# loopParameter_ne_zero

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.loopParameter_ne_zero` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For every real t, p(t)=w(t)^2 is nonzero. The explicit lift is nonzero by rootLift_ne_zero, and a power of a nonzero complex number is nonzero. Thus the [0,1] parameter path avoids the discriminant point of z^2-p.

Consumer: a collision-free loop with exchanged endpoint labels. This does not imply that p(t) is real or that its roots remain real. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [principal loop record](endpoint_label_transposition.md) gives source digest, path identity, limits and build command. Classification: local elementary consequence. A parameter path that passes through zero would not satisfy this statement.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. The same lift dependency is shared, so no independent proof is claimed. Coordination: grwtsk/math#1809.
