/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoHighFloor
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualSourceComparison

/-!
# A finite comparison for the smaller radius-two high complement

Move `1/5` of the mass from the desired floor to the physical shift.
The known tail floor beyond mode 344064 then leaves `1/5` for the
Schur residual at shift `-3/10`. The scalar pole is fixed to zero
because this comparison concerns the core. A matching finite trial
for each middle vector pays both the observed and complete remote
residual. Its sign is required only on vectors whose first 64
coordinates vanish. That finite comparison remains a premise.
Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoHighFloorReduction

open OddLiteralWindow OddHighComplement OddBorderedExpansion
open OddResidualSourceComparison OddResidualMajorant OddSineForm OddSineParseval

private theorem shiftedCore_threeTenths (f : ℝ → ℝ) :
    shiftedOddCoreEnergy 2 (-3 / 10) f =
      shiftedOddCoreEnergy 2 (-1 / 2) f - (1 / 5) * (∫ t, ‖f t‖ ^ 2) := by
  unfold shiftedOddCoreEnergy
  ring

/-- The usable tail floor after reserving the desired smaller floor. -/
theorem tailFloor_threeTenths {N : ℕ} (hN : 344064 ≤ N) :
    HighFloor 2 (-3 / 10) (1 / 5) N := by
  intro f hf hfm hfo hfs hhead henergy
  have h := RadiusTwoHighFloor.highFloor_two_sharp hN hf hfm hfo hfs hhead henergy
  rw [shiftedCore_threeTenths]
  linarith only [h]

/-- Return a residual-paid sign on the finite middle to the whole high
complement above mode 64. The comparison uses the shifted core and no
scalar pole coordinate. -/
theorem highFloor_two_of_paidMiddle {M L J : ℕ}
    (hM : 344064 ≤ M) (hL : M ≤ L) (hJ : L ≤ J) (s : ℝ) (hs : 0 < s)
    (trial : (Fin 344064 → ℝ) → ℕ → ℝ)
    (hmatch : ∀ u (i : Fin 344064), trial u (i.val + 1) = u i)
    (hpaid : ∀ u : Fin 344064 → ℝ, (∀ i, i.val < 64 → u i = 0) →
      ((∑ n ∈ Finset.range (L - 344064),
        (literalAugmentedRow M 2 (trial u) 0 (-3 / 10) (344065 + n)) ^ 2) +
        completeRemoteAllowance M L J 2 (trial u) 0 s) / (1 / 5) ≤
      shiftedOddCoreEnergy 2 (-3 / 10)
        (finiteSine 2 (fun i : Fin M => trial u (i.val + 1)))) :
    HighFloor 2 (-1 / 2) (1 / 5) 64 := by
  intro f hf hfm hfo hfs hhead henergy
  let u (i : Fin 344064) : ℝ := sineCoefficient 2 f (i.val + 1)
  have hu : ∀ i : Fin 344064, i.val < 64 → u i = 0 := fun i hi => hhead i.val hi
  have htrial : ∀ n < 344064, sineCoefficient 2 f (n + 1) = trial u (n + 1) := by
    intro n hn
    exact (hmatch u ⟨n, hn⟩).symm
  let observed := shiftedOddCoreEnergy 2 (-3 / 10)
    (finiteSine 2 (fun i : Fin M => trial u (i.val + 1)))
  let finiteGram := ∑ n ∈ Finset.range (L - 344064),
    (literalAugmentedRow M 2 (trial u) 0 (-3 / 10) (344065 + n)) ^ 2
  let remote := completeRemoteAllowance M L J 2 (trial u) 0 s
  have h := shiftedOddBorderedEnergy_lower_of_matching_head_with_floor
    hM hL (by omega) hJ 2 (by norm_num) (trial u) 0 (-3 / 10) s (1 / 5) hs (by norm_num)
    (tailFloor_threeTenths (N := 344064) le_rfl) hf hfm hfo hfs htrial henergy
    observed 0 finiteGram remote (by simp [shiftedOddBorderedEnergy, observed]) le_rfl le_rfl
  have hsign : 0 ≤ observed - 0 - (finiteGram + remote) / (1 / 5) := by
    rw [sub_zero]
    exact sub_nonneg.mpr (hpaid u hu)
  have hcore : 0 ≤ shiftedOddCoreEnergy 2 (-3 / 10) f := by
    simpa only [shiftedOddBorderedEnergy, mul_zero, zero_mul, add_zero, zero_pow (by decide : 2 ≠ 0),
      zero_div] using hsign.trans h
  rw [shiftedCore_threeTenths] at hcore
  exact sub_nonneg.mp hcore

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoHighFloorReduction
