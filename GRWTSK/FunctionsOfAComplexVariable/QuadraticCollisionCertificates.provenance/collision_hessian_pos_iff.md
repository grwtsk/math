# collision_hessian_pos_iff

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.collision_hessian_pos_iff` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For real u,v,a with u!=0, the collision numerator (-2uv)^2-(2uv^2-ua)(2u) is positive iff a>0. The preceding identity rewrites it as 2u^2a; the multiplier is strictly positive. For necessity, a<=0 would make the product nonpositive. For sufficiency, multiply positive factors. At u=0 the equivalence fails for a>0, so nonvanishing is essential.

Consumer: extracting the scalar sign from source-jet identities. Actual derivative identification and local analytic remainder control remain unproved suppliers. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [principal record](half_second_derivative_of_source_identities.md) contains source digest, argument context and build command. Classification: elementary conditional consequence.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. Coordination: grwtsk/math#1809.
