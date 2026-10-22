/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightEnvelopeCollapse
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightEnvelopeCollapseControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- At a concrete dyadic stage, every fixed ratio certificate plus a
seven-eighths current envelope forces the three-quarters positive-target
scale. -/
theorem concrete_dyadic_sevenEighths_ratio_forces_threeQuarters_target
    (j : ℕ)
    {C M δ v E : ℝ}
    (hC : 0 ≤ C)
    (hM : 0 ≤ M)
    (henvelope :
      ∀ u ∈
          Set.Icc (dyadicScale j : ℝ)
            (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError u| + 1 ≤
          M * Real.rpow (dyadicScale j : ℝ)
            (((7 : ℝ) / 8) + δ))
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement
        (dyadicScale j) C v E) :
    pinnedPrimeWeightRemainingTarget v E ≤
      C * primeCoefficientL1Budget^2 * M^2 *
        Real.rpow (dyadicScale j : ℝ)
          (((3 : ℝ) / 4) + 2 * δ) :=
  pinnedPrimeWeightBertrandRatio_sevenEighthsEnvelope_to_threeQuartersTarget
    (dyadicScale_pos j) hC hM henvelope hratio

/-- The second concrete dyadic step has the corresponding half-line target
exponent. -/
theorem concrete_dyadic_threeQuarters_ratio_forces_half_target
    (j : ℕ)
    {C M δ v E : ℝ}
    (hC : 0 ≤ C)
    (hM : 0 ≤ M)
    (henvelope :
      ∀ u ∈
          Set.Icc (dyadicScale j : ℝ)
            (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError u| + 1 ≤
          M * Real.rpow (dyadicScale j : ℝ)
            (((3 : ℝ) / 4) + δ))
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement
        (dyadicScale j) C v E) :
    pinnedPrimeWeightRemainingTarget v E ≤
      C * primeCoefficientL1Budget^2 * M^2 *
        Real.rpow (dyadicScale j : ℝ)
          (((1 : ℝ) / 2) + 2 * δ) :=
  pinnedPrimeWeightBertrandRatio_threeQuartersEnvelope_to_halfTarget
    (dyadicScale_pos j) hC hM henvelope hratio

/-- The direct untruncated consequence retains the admitted error channel
rather than silently dropping it. -/
theorem concrete_dyadic_ratio_forces_error_plus_quadratic_majorant
    (j : ℕ)
    {C B v E : ℝ}
    (hC : 0 ≤ C)
    (hB : 0 ≤ B)
    (henvelope :
      ∀ u ∈
          Set.Icc (dyadicScale j : ℝ)
            (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B)
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement
        (dyadicScale j) C v E) :
    |thetaError v| + 1 ≤
      E + pinnedPrimeWeightEnvelopeQuadraticMajorant
        (dyadicScale j) C B :=
  pinnedPrimeWeightBertrandRatio_to_target_le_error_add_envelopeQuadraticMajorant
    (dyadicScale_pos j) hC hB henvelope hratio

/-- The result of this packet is a consequence of a ratio certificate, not a
construction of one. -/
def requiredEnvelopeCollapseObligations : List String :=
  ["construct the fixed uniform Bertrand-ratio certificate at threshold 7/8",
   "construct the fixed uniform Bertrand-ratio certificate at threshold 3/4",
   "derive the ratio certificate from one immutable arithmetic cross-scale identity",
   "retain the admitted residual and all endpoint, prime-power, and normalization channels",
   "separate the current-octave upper envelope from any lower coupling needed to prove the ratio"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["current-octave envelope ceiling -> ratio certificate",
   "ratio-to-descended-target consequence -> source recurrence construction",
   "power normalization -> arithmetic cross-scale identity",
   "adaptive Bertrand floor -> uniform ratio bound",
   "descended exponent arithmetic -> threshold theorem",
   "clause arity or MAX-SAT hardness -> theta estimate",
   "conditional target estimate -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightEnvelopeCollapseControls
