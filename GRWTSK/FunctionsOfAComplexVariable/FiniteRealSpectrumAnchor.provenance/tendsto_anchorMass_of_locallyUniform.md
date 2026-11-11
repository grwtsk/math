# Anchor-mass convergence under genuine source convergence

Local attribution: grwtsk contributors.

Source: [FiniteRealSpectrumAnchor.lean](../FiniteRealSpectrumAnchor.lean).
Main declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.tendsto_anchorMass_of_locallyUniform`.
Supporting declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.limit_anchor_eq_one`.
Exact source/dependency pins, digest, edition and verification commands: [anchor mass provenance](anchorMass_eq_neg_im_logDeriv_div.md).
Coordination: https://github.com/grwtsk/math/issues/1805 ; research https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/53 .

## Statement and proof

Dimensions may vary with `n : ℕ`; the spectral list has type `Fin (d n) → ℝ` and the slopes `r n` are real. Fix real `β ≠ 0`. If the normalized exponential products converge locally uniformly on the entire complex plane to `f`, then `f(β I)=1` and

`anchorMass(λ_n,β) -> -Im(logDeriv f (β I))/β`.

Every finite function has value one at the anchor. Locally uniform convergence implies pointwise convergence there, so uniqueness of limits establishes `f(β I)=1`; in particular the limit is not identically zero. Each finite function is entire. The pinned theorem `Complex.logDeriv_tendsto` gives convergence of their logarithmic derivatives at the nonzero anchor. Taking imaginary parts, negating and dividing by the fixed nonzero real `β`, then applying the exact finite mass identity, proves the conclusion.

## Comparison, limitations and consumer

This is a standard consequence of Weierstrass derivative convergence, not a construction of the convergent family. The formal hypothesis is `TendstoLocallyUniformlyOn ... atTop Set.univ`, not pointwise convergence, matching finitely many roots, or matching finitely many sampled values.

The decisive upstream declaration is `Complex.logDeriv_tendsto` in `Mathlib/Analysis/Complex/LocallyUniformLimit.lean` at mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `b4a9947620884b5c98eb2aefbbf1a9e39f34244a`; upstream file attribution Vincent Beffara / mathlib contributors, Apache-2.0.

Primary source: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/LocallyUniformLimit.lean . No upstream proof is copied.

This is a necessary consistency test for source reconstruction, not its converse. It can eventually feed a lattice-tail obstruction once that model and its infinite product are separately formalized. The previously written `N/A^2 -> infinity` obstruction, escaping-tail Gaussian factor, general multiplicity recovery by Rouche, and real-zero preservation by Hurwitz are not formalized by this declaration.

A zero limit is a hostile case excluded by normalization. Distinct-root replacement is separately blocked by the repeated-root fixture in the same source. No independent analytic route or review is claimed.

Source proof candidate; novelty `UNASSESSED`. Elaboration, fresh kernel replay, transitive axiom audit, independent review and arithmetic realization: `NOT_RUN`. No effectful verification was dispatched.
