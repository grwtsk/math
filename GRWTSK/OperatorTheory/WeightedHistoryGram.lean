/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Analysis.InnerProductSpace.StarOrder
import Mathlib.Analysis.SpecificLimits.Normed

/-! # A weighted history Gram operator

Each live edge of a rooted history contributes a row `x (n+1) - 2 * x n`.
The terminal row is zero, and unused coordinates have identity rows.
The Gram operator has zero in its spectrum exactly when the live prefix ends.
MSC2020 47A10.
-/

set_option autoImplicit false

namespace GRWTSK.OperatorTheory.WeightedHistory

open scoped ENNReal lp
noncomputable section

abbrev HistorySpace := ℓ²(ℕ, ℂ)
abbrev End := HistorySpace →L[ℂ] HistorySpace

private theorem two_toReal_pos : 0 < (2 : ℝ≥0∞).toReal := by norm_num

private def shiftVector (x : HistorySpace) : HistorySpace :=
  ⟨fun n => x (n+1), (memℓp_gen_iff two_toReal_pos).mpr
    ((lp.memℓp x).summable two_toReal_pos |>.comp_injective Nat.succ_injective)⟩

private theorem norm_shiftVector_le (x : HistorySpace) : ‖shiftVector x‖ ≤ ‖x‖ := by
  apply lp.norm_le_of_tsum_le two_toReal_pos (norm_nonneg x)
  rw [lp.norm_rpow_eq_tsum two_toReal_pos x]
  exact Summable.tsum_le_tsum_of_inj Nat.succ Nat.succ_injective
    (fun _ _ => by positivity) (fun _ => le_rfl)
    ((lp.memℓp (shiftVector x)).summable two_toReal_pos)
    ((lp.memℓp x).summable two_toReal_pos)

private def backwardShift : End :=
  (show HistorySpace →ₗ[ℂ] HistorySpace from
    { toFun := shiftVector
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }).mkContinuous 1
    (fun x => by rw [one_mul]; exact norm_shiftVector_le x)

private theorem norm_backwardShift_le : ‖backwardShift‖ ≤ 1 :=
  backwardShift.opNorm_le_bound zero_le_one
    (fun x => by rw [one_mul]; exact norm_shiftVector_le x)

private def maskVector (keep : ℕ → Bool) (x : HistorySpace) : HistorySpace :=
  ⟨fun n => if keep n then x n else 0,
    (lp.memℓp x).mono' (fun n => by split <;> simp)⟩

private def mask (keep : ℕ → Bool) : End :=
  (show HistorySpace →ₗ[ℂ] HistorySpace from
    { toFun := maskVector keep
      map_add' := by
        intro x y
        ext n
        change (if keep n then x n + y n else 0) =
          (if keep n then x n else 0) + (if keep n then y n else 0)
        cases keep n <;> simp
      map_smul' := by
        intro c x
        ext n
        change (if keep n then c • x n else 0) = c • (if keep n then x n else 0)
        cases keep n <;> simp }).mkContinuous 1 (fun x => by
    rw [one_mul]
    exact lp.norm_mono (by norm_num : (2 : ℝ≥0∞) ≠ 0)
      (fun n => by change ‖if keep n then x n else 0‖ ≤ ‖x n‖; split <;> simp))

/-- The bounded difference operator of a history, with identity on unused coordinates. -/
def difference (live : ℕ → Bool) : End :=
  mask (fun n => live (n+1)) * (backwardShift - (2 : ℂ) • (1 : End)) +
    mask (fun n => !live n)

theorem difference_apply (live : ℕ → Bool) (x : HistorySpace) (n : ℕ) :
    difference live x n =
      (if live (n+1) then x (n+1) - 2 * x n else 0) +
      (if live n then 0 else x n) := by
  change (if live (n+1) then x (n+1) - 2 * x n else 0) +
    (if !live n then x n else 0) = _
  cases live n <;> rfl

/-- The positive self-adjoint Gram operator on the whole history Hilbert space. -/
def gram (live : ℕ → Bool) : End :=
  star (difference live) * difference live

theorem gram_isSelfAdjoint (live : ℕ → Bool) : IsSelfAdjoint (gram live) :=
  IsSelfAdjoint.star_mul_self _

theorem gram_nonneg (live : ℕ → Bool) : 0 ≤ gram live :=
  star_mul_self_nonneg _

private def terminalVector (live : ℕ → Bool)
    (hprefix : ∀ n, live (n+1) = true → live n = true)
    (t : ℕ) (ht : live t = false) : HistorySpace := by
  let x (n : ℕ) : ℂ := if live n then 2^n else 0
  refine ⟨x, (memℓp_zero_iff.mpr ?_).of_exponent_ge (by norm_num)⟩
  refine (Set.finite_lt_nat t).subset ?_
  intro n hn
  by_contra! h
  have htail (k : ℕ) : live (t + k) = false := by
    induction k with
    | zero => simpa using ht
    | succ k ih =>
      cases he : live (t + k + 1) with
      | false => rfl
      | true =>
        have hc := hprefix (t + k) he
        simp [ih] at hc
  have hle : t ≤ n := by simpa using h
  have hn' : live n = false := by simpa [Nat.add_sub_of_le hle] using htail (n-t)
  exact hn (by simp [x, hn'])

private theorem difference_terminalVector (live : ℕ → Bool)
    (hprefix : ∀ n, live (n+1) = true → live n = true)
    (t : ℕ) (ht : live t = false) :
    difference live (terminalVector live hprefix t ht) = 0 := by
  ext n
  rw [difference_apply]
  change (if live (n+1) then (if live (n+1) then (2:ℂ)^(n+1) else 0) -
    2 * (if live n then (2:ℂ)^n else 0) else 0) +
    (if live n then 0 else (if live n then (2:ℂ)^n else 0)) = 0
  cases hn : live (n+1) with
  | false => cases live n <;> simp
  | true => simp [hprefix n hn, pow_succ, mul_comm]

private theorem gram_not_isUnit_of_terminal (live : ℕ → Bool) (hstart : live 0 = true)
    (hprefix : ∀ n, live (n+1) = true → live n = true)
    (t : ℕ) (ht : live t = false) : ¬ IsUnit (gram live) := by
  let x := terminalVector live hprefix t ht
  have hx0 : x 0 = 1 := by change (if live 0 then (2:ℂ)^0 else 0) = 1; simp [hstart]
  have hx : x ≠ 0 := by
    intro hz
    rw [hz] at hx0
    simp at hx0
  have hzero : gram live x = 0 := by
    change star (difference live) (difference live x) = 0
    rw [difference_terminalVector, map_zero]
  rintro ⟨u, hu⟩
  have hinv := congrArg (fun A : End => A x) u.inv_mul
  change (↑u⁻¹ : End) ((↑u : End) x) = x at hinv
  rw [hu, hzero, map_zero] at hinv
  exact hx hinv.symm

private theorem difference_eq_shift_sub (live : ℕ → Bool)
    (hall : ∀ n, live n = true) :
    difference live = backwardShift - (2 : ℂ) • (1 : End) := by
  ext x n
  rw [difference_apply]
  change _ = x (n+1) - 2 * x n
  simp [hall]

private theorem difference_isUnit_of_all_live (live : ℕ → Bool)
    (hall : ∀ n, live n = true) : IsUnit (difference live) := by
  rw [difference_eq_shift_sub live hall]
  have hsmall : ‖(1/2 : ℂ) • backwardShift‖ < 1 := by
    rw [norm_smul]
    norm_num [norm_div]
    linarith [norm_backwardShift_le]
  have hfactor :
      backwardShift - (2 : ℂ) • (1 : End) =
        algebraMap ℂ End (-2) * (1 - (1/2 : ℂ) • backwardShift) := by
    rw [← Algebra.smul_def]
    module
  rw [hfactor]
  exact ((isUnit_iff_ne_zero.mpr (by norm_num : (-2 : ℂ) ≠ 0)).map
    (algebraMap ℂ End)).mul (isUnit_one_sub_of_norm_lt_one hsmall)

/-- The history Gram operator has a spectral zero exactly when some coordinate is unused. -/
theorem zero_in_spectrum_iff_terminated (live : ℕ → Bool) (hstart : live 0 = true)
    (hprefix : ∀ n, live (n+1) = true → live n = true) :
    (0 : ℂ) ∈ spectrum ℂ (gram live) ↔ ∃ n, live n = false := by
  rw [spectrum.zero_mem_iff]
  constructor
  · intro h
    by_contra hn
    have hall (n : ℕ) : live n = true := by
      cases he : live n
      · exact (hn ⟨n, he⟩).elim
      · rfl
    have hu := difference_isUnit_of_all_live live hall
    exact h (hu.star.mul hu)
  · rintro ⟨t, ht⟩
    exact gram_not_isUnit_of_terminal live hstart hprefix t ht

end

end GRWTSK.OperatorTheory.WeightedHistory
