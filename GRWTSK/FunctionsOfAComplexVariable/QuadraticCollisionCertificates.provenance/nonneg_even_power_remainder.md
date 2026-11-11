# nonneg_even_power_remainder

Attribution: grwtsk contributors.

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.nonneg_even_power_remainder` in [QuadraticCollisionCertificates.lean](../QuadraticCollisionCertificates.lean).
Source commit: `7a7104da5584a84564d8d3204a030f6e143e7317`; blob: `d83543d60c679fd1987ef8ef50c1731de0286b2c`.
Lean: `v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

For real x,a,r,B and natural k, abs(r)<=B and B<=a imply (x^k)^2*(a+r)>=0. Indeed r>=-B, hence a+r>=a-B>=0, and (x^k)^2>=0. Equality is allowed. The hypotheses themselves imply B>=0; no omitted sign assumption is needed.

Consumer: `reality_of_even_factor_certificate`. Without the budget, a+r can be negative; a failed sufficient budget is unresolved, not necessarily false reality. Comparison: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 20.1; [principal remainder record](reality_of_even_factor_certificate.md) supplies source digest, exact extension and reproduction. This finite inequality does not construct an analytic Taylor remainder bound.

Elaboration, kernel replay, axiom audit and independent review: **NOT_RUN**. No novelty claim. Coordination: grwtsk/math#1809.
