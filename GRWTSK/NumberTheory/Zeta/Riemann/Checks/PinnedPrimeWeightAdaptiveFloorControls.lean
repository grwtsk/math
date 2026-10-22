/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightAdaptiveFloor
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightAdaptiveFloorControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- The literal dyadic prime inventory is exactly the difference of the two
nested prime initial segments. -/
theorem concrete_dyadic_primeWindow_identity
    (j : ℕ) :
    thetaPrimeWindow (dyadicScale j) =
      Nat.primesLE (2 * dyadicScale j) \
        Nat.primesLE (dyadicScale j) :=
  thetaPrimeWindow_eq_primesLE_sdiff (dyadicScale j)

/-- The pinned global Chebyshev bounds have no positive part on a dyadic
window. -/
theorem concrete_dyadic_chebyshev_positivePart_zero
    (j : ℕ) :
    max 0
        (pinnedPrimeWeightChebyshevRawFloor
          (dyadicScale j)) = 0 :=
  pinnedPrimeWeightChebyshevRawFloor_positivePart_eq_zero
    (dyadicScale j)

/-- The scale-adaptive one-prime floor is positive on every dyadic stage. -/
theorem concrete_dyadic_adaptiveFloor_positive
    (j : ℕ) :
    0 < pinnedPrimeWeightAdaptiveBertrandFloor
      (dyadicScale j) :=
  pinnedPrimeWeightAdaptiveBertrandFloor_pos
    (dyadicScale_pos j)

/-- The actual dyadic pinned amplitude dominates the adaptive floor. -/
theorem concrete_dyadic_adaptiveFloor_le_amplitude
    (j : ℕ) :
    pinnedPrimeWeightAdaptiveBertrandFloor
        (dyadicScale j) ≤
      pinnedPrimeWeightedAmplitude (dyadicScale j) :=
  pinnedPrimeWeightedAmplitude_ge_adaptiveBertrandFloor
    (dyadicScale_pos j)

/-- The exact required capacity lies below the logarithmically improved
one-prime majorant on every dyadic stage. -/
theorem concrete_dyadic_requiredCapacity_le_adaptiveMajorant
    (j : ℕ) (v E : ℝ) :
    pinnedPrimeWeightRequiredCapacity
        (dyadicScale j) v E ≤
      pinnedPrimeWeightAdaptiveBertrandMajorant
        (dyadicScale j) v E :=
  pinnedPrimeWeightRequiredCapacity_le_adaptiveBertrandMajorant
    (dyadicScale_pos j) v E

/-- Exact dyadic normalization of the adaptive majorant. -/
theorem concrete_dyadic_adaptiveMajorant_eq_logImprovedCubic
    (j : ℕ) (v E : ℝ) :
    pinnedPrimeWeightAdaptiveBertrandMajorant
        (dyadicScale j) v E =
      4 * (dyadicScale j : ℝ)^3 *
          pinnedPrimeWeightRemainingTarget v E /
        (Real.log (((dyadicScale j + 1 : ℕ) : ℝ)))^2 :=
  pinnedPrimeWeightAdaptiveBertrandMajorant_eq_logImprovedCubic
    (dyadicScale_pos j) v E

/-- The adaptive majorant improves the preceding constant-floor majorant, but
neither is scale-uniform. -/
theorem concrete_dyadic_adaptiveMajorant_le_bertrandMajorant
    (j : ℕ) (v E : ℝ) :
    pinnedPrimeWeightAdaptiveBertrandMajorant
        (dyadicScale j) v E ≤
      pinnedPrimeWeightBertrandMajorant
        (dyadicScale j) v E :=
  pinnedPrimeWeightAdaptiveBertrandMajorant_le_bertrandMajorant
    (dyadicScale_pos j) v E

/-- Exact obligations remaining after the adaptive floor and the global-bound
audit. -/
def requiredAdaptiveFloorObligations : List String :=
  ["prove one scale-uniform required-capacity ratio bound at threshold 7/8",
   "prove one scale-uniform required-capacity ratio bound at threshold 3/4",
   "supply a genuinely local prime-window mass estimate if a stronger denominator floor is used",
   "prove the cross-scale next-octave target/current-octave amplitude-square inequality",
   "derive any interpreted coefficient from an independent arithmetic source law",
   "account for endpoints, prime powers, normalization, and every residual channel"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["adaptive Bertrand floor -> uniform ratio bound",
   "global Chebyshev bounds -> positive dyadic-window mass",
   "logarithmic cubic improvement -> threshold descent",
   "prime-window theta identity -> cross-scale theta majorization",
   "positive one-prime floor -> scale-uniform positive constant",
   "clause arity -> ratio estimate",
   "MAX-3SAT hardness -> prime or theta estimate",
   "conditional ratio endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightAdaptiveFloorControls
