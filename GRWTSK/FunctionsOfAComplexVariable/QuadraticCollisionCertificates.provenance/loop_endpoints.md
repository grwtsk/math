# loop_endpoints

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.loop_endpoints` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For p(t)=w(t)^2, the endpoints obey p(0)=1 and p(1)=1. Exact substitution gives w(0)=1 and w(1)=-1, whose squares agree. This makes the continuous path a loop after restriction to [0,1]. Nonvanishing is a separate property of this particular loop.

Consumer: the mandatory branch-history fixture. Root labels differ at the endpoints despite parameter agreement; the subsequent transposition theorem records that effect. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [principal record](endpoint_label_transposition.md) gives source digest, complete fixture and build command. Classification: elementary identity, not a general monodromy theorem.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. Endpoint equality does not determine a winding number or the unreduced path. Coordination: grwtsk/math#1809.
