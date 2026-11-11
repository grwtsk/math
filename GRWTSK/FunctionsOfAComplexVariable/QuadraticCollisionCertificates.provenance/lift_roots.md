# lift_roots

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.lift_roots` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For every real t, both w(t) and -w(t) solve z^2-p(t)=0, with p(t)=w(t)^2. The first identity is subtraction of equal values; the second uses (-w)^2=w^2. These are source-polynomial identities at every parameter, not numerical proximity to roots.

Consumer: two branch labels along the explicit loop. This statement alone is not a contour completeness theorem; distinctness follows separately from w!=0 in characteristic zero. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [loop record](endpoint_label_transposition.md) supplies source digest, path and build command. Classification: elementary consequence of an explicit parameterization.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No arithmetic source or general continuation algorithm is constructed. Coordination: grwtsk/math#1809.
