/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoModes65And66
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddModeDependentTail

/-!
# Signed sine coefficients of the radius-two Schur coupling

Polarized Parseval pairs the original shifted mode output with the receiving
function. Above the receiving cutoff an eliminated column contributes its
literal signed entry, including the full gamma term and prime-power sum.
This supplies the two couplings in `RadiusTwoModes65And66.schurPayment`
as convergent series for a weighted receiving-tail estimate.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoModes65And66

open OddConcreteResidual OddModeDependentTail OddResidualSourceComparison OddSineParseval

/-- The signed pairing in the Schur payment is the entire literal column
paired with the receiving sine coefficients. When the trial index is
within the removed head, the diagonal shift contributes no term. -/
theorem hasSum_coupling_high {N n : ℕ} (hn : n ≤ N) {g : ℝ → ℝ}
    (hg : MemLp g 2 volume) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → g t = 0)
    (hhead : ∀ j < N, sineCoefficient 2 g (j + 1) = 0) :
    HasSum (fun j : ℕ => sineCoefficient 2 g (N + 1 + j) *
      literalCoreEntry 2 (N + 1 + j) n) (coupling n g) := by
  have hs := highSine_pair_hasSum 2 (by norm_num) (N := N) (f := modeOutput n)
    (coreSineOutput_memLp 2 (by norm_num) (-3 / 10) n) hg
    (coreSineOutput_odd 2 (-3 / 10) n) hgo
    (Filter.Eventually.of_forall (fun _ ht => coreSineOutput_support 2 (-3 / 10) n ht))
    hgs hhead
  have hpair : (∫ t : ℝ, modeOutput n t * g t) = coupling n g := by
    unfold coupling
    simp only [mul_comm]
  rw [hpair] at hs
  apply hs.congr_fun
  intro j
  have hrow : sineCoefficient 2 (modeOutput n) (N + 1 + j) =
      literalCoreEntry 2 (N + 1 + j) n := by
    change sineCoefficient 2 (coreSineOutput 2 (-3 / 10) n) (N + 1 + j) = _
    rw [show N + 1 + j = (N + j) + 1 by omega,
      sineCoefficient_coreSineOutput 2 (by norm_num), ite_eq_right (by omega), sub_zero]
  rw [hrow, mul_comm]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoModes65And66
