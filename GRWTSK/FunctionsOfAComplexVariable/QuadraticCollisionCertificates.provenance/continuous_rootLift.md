# continuous_rootLift

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.continuous_rootLift` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The explicit map w(t)=(1-2t)+i*(1-(1-2t)^2), from real t to complex numbers, is continuous. It is assembled from continuous constants, identity, sums, products, powers and the real-to-complex embedding. The source unfolds the definition and invokes `fun_prop` for these standard closure rules.

Consumer: a continuous lift of the polynomial parameter loop. This is not the existence of a global square-root branch on the punctured complex plane. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1. [Loop record](endpoint_label_transposition.md) gives the source digest, full fixture, limitations and build command. Classification: elementary continuity consequence of explicit formulas.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No winding theorem or novelty claim. Coordination: grwtsk/math#1809.
