# lift_derivative_ne_zero

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.lift_derivative_ne_zero` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For every real t, the complex derivative of z^2-p(t) at w(t) is nonzero. The previous derivative identity reduces it to 2*w(t). Both factors are nonzero, by characteristic zero and rootLift_ne_zero. Thus the explicit lift avoids a multiple root of this polynomial throughout the path.

Consumer: derivative separation for the square-root branch-history fixture. A parameter path through zero would fail this condition. The statement gives exact nonvanishing, not an implemented numerical interval lower-bound algorithm. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [loop record](endpoint_label_transposition.md) contains source digest, full argument and build command.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No inference of arithmetic zero simplicity or novelty. Coordination: grwtsk/math#1809.
