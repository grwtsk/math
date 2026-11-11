# rootLift_ne_zero

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.rootLift_ne_zero` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For every real t, w(t)=(1-2t)+i*(1-(1-2t)^2) is nonzero. If it were zero, its real part forces x=1-2t=0. Its imaginary part would then equal 1, contradicting zero. The proof uses real/imaginary projections and polynomial arithmetic, not sampled point evaluations.

Consumers: nonvanishing of p=w^2 and separation of the derivative 2w. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [loop record](endpoint_label_transposition.md) supplies source digest, fuller comparison and build command. Classification: exact negative-control fixture calculation. Removing the imaginary detour, x(t) alone does cross zero, showing why endpoint data are insufficient.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No arithmetic homotopy is constructed. Coordination: grwtsk/math#1809.
