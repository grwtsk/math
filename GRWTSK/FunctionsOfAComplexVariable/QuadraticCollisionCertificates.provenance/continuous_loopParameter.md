# continuous_loopParameter

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.continuous_loopParameter` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The parameter map p(t)=w(t)^2 is continuous on the real line. Apply continuity of squaring to the already explicit continuous lift w. Restriction to [0,1] supplies the path used by the fixture; endpoint equality and avoidance of zero are separate declarations, not inferred from continuity alone.

Consumer: the square-root loop contract. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1. [Loop provenance](endpoint_label_transposition.md) supplies exact formulas, source digest, reproduction command and limitations. Classification: local elementary consequence. A continuous parameter path can cross zero in general; this lemma alone excludes neither collisions nor branch singularities.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. This proof depends on continuous_rootLift and is not independent verification. Coordination: grwtsk/math#1809.
