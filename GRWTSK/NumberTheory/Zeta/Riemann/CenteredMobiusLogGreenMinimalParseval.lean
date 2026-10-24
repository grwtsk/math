/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authenticated historical Parseval source:
f047ec7814a03bf2b6175fc3b96a465ff2b86804
DyadicGreenFourierFrame blob bfcb1be51b040d2fc2d6359f78a149f5f07da130.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogHistoricalDyadicEnergy
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- Historical centered residual, directly in the restored thin scalar source. -/
def thinHistoricalGreenResidual (X : ℕ) (t : ℝ) : ℂ :=
  ((cumulative X t - center X : ℝ) : ℂ)

def thinHistoricalGreenFourierCoeff (X : ℕ) (k : ℤ) : ℂ :=
  fourierCoeffOn (show (0 : ℝ) < 1 by norm_num)
    (thinHistoricalGreenResidual X) k

/-- Exact L2 norm identity for the restored historical residual. -/
theorem thinHistoricalGreenResidual_interval_norm_sq
    (X : ℕ) :
    (∫ t in (0 : ℝ)..1, ‖thinHistoricalGreenResidual X t‖^2) =
      greenEnergy X := by
  unfold thinHistoricalGreenResidual greenEnergy
  apply intervalIntegral.integral_congr
  intro t ht
  simp [Real.norm_eq_abs, sq_abs]

/-- Minimal Parseval HasSum, directly from Mathlib's interval Fourier theorem. -/
theorem thinHistoricalGreenFourier_parseval_hasSum
    (X : ℕ)
    (hmem : MemLp (thinHistoricalGreenResidual X) 2
      (volume.restrict (Set.Ioc (0 : ℝ) 1))) :
    HasSum
      (fun k : ℤ => ‖thinHistoricalGreenFourierCoeff X k‖^2)
      (greenEnergy X) := by
  have h :=
    hasSum_sq_fourierCoeffOn
      (show (0 : ℝ) < 1 by norm_num) hmem
  rw [thinHistoricalGreenResidual_interval_norm_sq] at h
  simpa [thinHistoricalGreenFourierCoeff] using h

/-- Exact comparison target: if the thin arithmetic coordinate is identified
modewise with the restored historical Fourier coefficient, Parseval gives the
desired energy identity immediately. -/
theorem thinGreenEnergy_eq_greenEnergy_of_coeff
    {X : ℕ} (hX : 2 ≤ X)
    (hmem : MemLp (thinHistoricalGreenResidual X) 2
      (volume.restrict (Set.Ioc (0 : ℝ) 1)))
    (hcoeff : ∀ k : ℤ,
      thinGreenArithmeticFourierCoordinate X k =
        thinHistoricalGreenFourierCoeff X k) :
    thinGreenEnergy X = greenEnergy X := by
  unfold thinGreenEnergy
  have hs := thinHistoricalGreenFourier_parseval_hasSum X hmem
  rw [← hs.tsum_eq]
  apply tsum_congr
  intro k
  by_cases hk : k = 0
  · subst k
    simp [hcoeff]
  · simp only [hk, ↓reduceIte]
    rw [hcoeff]

end GRWTSK.RiemannHypothesis
