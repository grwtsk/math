# rootLift_one

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.rootLift_one` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The explicit lift satisfies w(1)=-1. Substitute t=1 into (1-2t)+i*(1-(1-2t)^2): its real component is -1 and its imaginary component zero. Exact numeral simplification provides the candidate proof.

Consumer: the endpoint transposition, contrasted with w(0)=1. Returning to the same squared parameter does not imply returning to the same root label. This lemma alone does not establish continuity or nonvanishing along the route. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [loop provenance](endpoint_label_transposition.md) contains the source digest, full argument and build command. Classification: elementary fixture identity.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No winding-number or arithmetic-source result is inferred. Coordination: grwtsk/math#1809.
