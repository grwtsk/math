# collision_hessian_identity

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.collision_hessian_identity` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For all real u,v,a, (-2uv)^2-(2uv^2-ua)(2u)=2u^2a. Expand: the two 4u^2v^2 terms cancel. The candidate uses `ring`. This identity holds even at u=0; division by Fzz^2 in the subsequent theorem separately requires u!=0.

Consumer: `half_second_derivative_of_source_identities` and its sign comparison. The variables are scalar placeholders; identifying them with actual source derivatives remains a hypothesis of the consumer. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [principal collision record](half_second_derivative_of_source_identities.md) gives exact written extension, source digest and build command. Classification: elementary algebra, no novelty claim.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. Coordination: grwtsk/math#1809.
