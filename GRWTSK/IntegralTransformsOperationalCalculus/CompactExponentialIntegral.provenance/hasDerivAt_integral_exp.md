# `GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral.hasDerivAt_integral_exp`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE; novelty UNASSESSED.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; inspection base `d29f7681352f5847c4aac3391e2f9b9d325c32fc`.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).

## Exact source statement

Maintained path: [`CompactExponentialIntegral.lean`](../CompactExponentialIntegral.lean#L89).
Source SHA-256 `03e14db07779c5e3f253d67b9519d113b9f173d9c32e5564ee4f31f1a04ed3c8`; Git blob `17d421e1e72bdafd29840f62055a2b0a8f2b765b`.

```lean
theorem hasDerivAt_integral_exp (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (z₀ : ℂ) :
    HasDerivAt (fun z : ℂ => ∫ t : ℝ, f t * Complex.exp (z * (t : ℂ)))
      (∫ t : ℝ, f t * (t : ℂ) * Complex.exp (z₀ * (t : ℂ))) z₀
```

## Method, consumer and provenance

Prove measurability, center integrability, pointwise derivative and the locally uniform L1 majorant before applying dominated differentiation.

Consumer: Entire correlation contour weight.

This is a local consequence/adaptation at the pinned source, not a claim that an
upstream paper states this exact Lean declaration. Complete reasoning and boundary
checks are in [README.md](README.md). No assumptions are silently discharged by
publication. Novelty is separate from verification.

Patrick Massot, [Mathlib/Analysis/Calculus/ParametricIntegral.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ParametricIntegral.lean), `hasDerivAt_integral_of_dominated_loc_of_deriv_le`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, Git blob `c7937b328d3ab054a967d37f82132612a3ce83e6`. Apache-2.0. Pinned primary implementation.

grwtsk contributors, [GRWTSK/MeasureAndIntegration/FourierCollisionBound.lean](https://github.com/grwtsk/math/blob/d29f7681352f5847c4aac3391e2f9b9d325c32fc/GRWTSK/MeasureAndIntegration/FourierCollisionBound.lean), `integrable_fourier_integrand`; revision `d29f7681352f5847c4aac3391e2f9b9d325c32fc`, Git blob `d7a7d75aea20705cdc037695c07f073e84399a76`. MIT. Existing local candidate; not independent external provenance or proof acceptance.

Required unexecuted exact-source query:

```lean
#print axioms GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral.hasDerivAt_integral_exp
```

Axiom output, elaboration, kernel replay and independent review: NOT_RUN.
The remaining full arithmetic explicit formula, contour-edge bounds, arithmetic
positivity and varying-test joint-margin obligations are not conclusions here.
