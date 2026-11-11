# rootLift_zero

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.rootLift_zero` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The explicit lift satisfies w(0)=1. Substitute t=0 into (1-2t)+i*(1-(1-2t)^2): its real component is 1 and imaginary component zero. The proof candidate uses exact numeral simplification, not floating-point evaluation.

Consumer: initial root label and parameter endpoint. This endpoint identity alone says nothing about the intervening path; continuity and nonvanishing are proved in separate candidates. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [loop provenance](endpoint_label_transposition.md) gives source digest, full fixture and reproduction command. Classification: elementary fixture identity, no novelty claim.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: **NOT_RUN**. A Lean tactic name is not an execution receipt. Coordination: grwtsk/math#1809.
