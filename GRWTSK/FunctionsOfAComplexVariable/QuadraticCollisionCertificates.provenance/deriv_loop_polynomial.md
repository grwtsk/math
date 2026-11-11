# deriv_loop_polynomial

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.deriv_loop_polynomial` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For every real t and complex z, the complex derivative in z of z^2-p(t) is 2z. Apply HasDerivAt for the identity, the natural-power rule with exponent two, and subtraction of the parameter constant. The parameter t is held fixed; this is not differentiation along the path.

Consumer: nonvanishing source derivative at the chosen lift. The function is an actual polynomial with a supplied derivative proof; no finite-difference approximation is substituted. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [loop provenance](endpoint_label_transposition.md) gives source digest, exact fixture and reproduction. Classification: direct use of elementary derivative rules.

Elaboration, kernel replay, transitive axiom audit and independent review: **NOT_RUN**. This is not an implicit-function or path-lifting theorem. Coordination: grwtsk/math#1809.
