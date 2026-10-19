import SourceSamplingLedger

/-!
Actual squarefree support sharpens the original short-row sampling inventory.
Direction: grwtsk contributors. Construction: Codex root and graph_review.
-/
set_option autoImplicit false
noncomputable section
namespace RH16SquarefreeSampling

open scoped BigOperators

def reciprocalSqrtSum (N : Nat) : Real :=
  (Finset.Icc 1 N).sum fun n => 1 / Real.sqrt (n : Real)

theorem mobius_four_mul_zero (n : Nat) : ArithmeticFunction.moebius (4 * n) = 0 := by
  apply ArithmeticFunction.moebius_eq_zero_of_not_squarefree
  intro h
  have hu := h 2 (show Dvd.dvd (2 * 2) (4 * n) from by use n; ring)
  norm_num at hu

private theorem reciprocal_upper_step (n : Nat) :
    1 / Real.sqrt ((n + 1 : Nat) : Real) <=
      2 * (Real.sqrt ((n + 1 : Nat) : Real) - Real.sqrt (n : Real)) := by
  have hn : (0 : Real) <= n := Nat.cast_nonneg n
  have hp : (0 : Real) < ((n + 1 : Nat) : Real) := by positivity
  have hs := Real.sq_sqrt hn
  have ht := Real.sq_sqrt hp.le
  have hm := Real.sqrt_le_sqrt (show (n : Real) <= ((n + 1 : Nat) : Real) by norm_num)
  have hpos := Real.sqrt_pos.2 hp
  apply (div_le_iff₀ hpos).2
  norm_num only [Nat.cast_add, Nat.cast_one] at *
  nlinarith [sq_nonneg (Real.sqrt ((n : Real) + 1) - Real.sqrt (n : Real))]

private theorem reciprocal_lower_step (n : Nat) (hn : 1 <= n) :
    2 * (Real.sqrt ((n + 1 : Nat) : Real) - Real.sqrt (n : Real)) <=
      1 / Real.sqrt (n : Real) := by
  have hp : (0 : Real) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  have hs := Real.sq_sqrt hp.le
  have ht := Real.sq_sqrt (show (0 : Real) <= ((n + 1 : Nat) : Real) by positivity)
  have hm := Real.sqrt_le_sqrt (show (n : Real) <= ((n + 1 : Nat) : Real) by norm_num)
  have hpos := Real.sqrt_pos.2 hp
  apply (le_div_iff₀ hpos).2
  norm_num only [Nat.cast_add, Nat.cast_one] at *
  nlinarith [sq_nonneg (Real.sqrt ((n : Real) + 1) - Real.sqrt (n : Real))]

theorem reciprocalSqrtSum_upper_unit (N : Nat) (hN : 1 <= N) :
    reciprocalSqrtSum N <= 2 * Real.sqrt (N : Real) - 1 := by
  induction N, hN using Nat.le_induction with
  | base => norm_num [reciprocalSqrtSum]
  | succ n hn ih =>
    unfold reciprocalSqrtSum at *
    rw [Finset.sum_Icc_succ_top (by omega : 1 <= n + 1)]
    have h := reciprocal_upper_step n
    linarith

theorem reciprocalSqrtSum_lower_next (N : Nat) :
    2 * Real.sqrt ((N + 1 : Nat) : Real) - 2 <= reciprocalSqrtSum N := by
  induction N with
  | zero => norm_num [reciprocalSqrtSum]
  | succ n ih =>
    unfold reciprocalSqrtSum at *
    rw [Finset.sum_Icc_succ_top (by omega : 1 <= n + 1)]
    have h := reciprocal_lower_step (n + 1) (by omega)
    linarith


def squarefreeWeightSum (N : Nat) : Real :=
  (Finset.Icc 1 N).sum fun d =>
    abs ((ArithmeticFunction.moebius d : Int) : Real) / Real.sqrt (d : Real)

private theorem multiples_four_subset (N : Nat) :
    (Finset.Icc 1 (N / 4)).image (fun (j : Nat) => (4 * j : Nat)) ⊆ Finset.Icc 1 N := by
  intro d hd
  obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp hd
  have hj0 := Finset.mem_Icc.mp hj
  apply Finset.mem_Icc.mpr
  omega

private theorem reciprocal_four_sum (N : Nat) :
    (((Finset.Icc 1 (N / 4)).image (fun (j : Nat) => (4 * j : Nat))).sum fun d =>
      1 / Real.sqrt (d : Real)) = reciprocalSqrtSum (N / 4) / 2 := by
  rw [Finset.sum_image (by intro a _ b _ h; dsimp at h; omega)]
  unfold reciprocalSqrtSum
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro j hj
  have he : Real.sqrt ((4 * j : Nat) : Real) = 2 * Real.sqrt (j : Real) := by
    push_cast
    rw [Real.sqrt_mul (by norm_num : (0 : Real) <= 4)]
    norm_num
  rw [he]
  ring

theorem squarefreeWeightSum_subtract_four (N : Nat) :
    squarefreeWeightSum N <=
      reciprocalSqrtSum N - reciprocalSqrtSum (N / 4) / 2 := by
  classical
  let T := Finset.Icc 1 N
  let V := (Finset.Icc 1 (N / 4)).image (fun (j : Nat) => (4 * j : Nat))
  have hVT : V ⊆ T := multiples_four_subset N
  have hzero : (V.sum fun d =>
      abs ((ArithmeticFunction.moebius d : Int) : Real) / Real.sqrt (d : Real)) = 0 := by
    apply Finset.sum_eq_zero
    intro d hd
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp hd
    rw [mobius_four_mul_zero]
    simp
  have hm : squarefreeWeightSum N <=
      ((T \ V).sum fun (d : Nat) => 1 / Real.sqrt (d : Real)) := by
    unfold squarefreeWeightSum
    change (T.sum fun d => abs ((ArithmeticFunction.moebius d : Int) : Real) /
      Real.sqrt (d : Real)) <= _
    rw [← Finset.sum_sdiff hVT, hzero, add_zero]
    apply Finset.sum_le_sum
    intro d hd
    have hab : abs ((ArithmeticFunction.moebius d : Int) : Real) <= 1 := by
      exact_mod_cast ArithmeticFunction.abs_moebius_le_one (n := d)
    exact div_le_div_of_nonneg_right hab (Real.sqrt_nonneg _)
  have he : ((T \ V).sum fun (d : Nat) => 1 / Real.sqrt (d : Real)) =
      reciprocalSqrtSum N - reciprocalSqrtSum (N / 4) / 2 := by
    have h := Finset.sum_sdiff hVT (f := fun (d : Nat) => 1 / Real.sqrt (d : Real))
    have hv := reciprocal_four_sum N
    change (V.sum fun (d : Nat) => 1 / Real.sqrt (d : Real)) = _ at hv
    unfold reciprocalSqrtSum at *
    linarith
  exact hm.trans_eq he

theorem squarefreeWeightSum_three_halves (N : Nat) :
    squarefreeWeightSum N <= (3 / 2 : Real) * Real.sqrt (N : Real) := by
  by_cases hN : N = 0
  · subst N
    norm_num [squarefreeWeightSum]
  have hu := reciprocalSqrtSum_upper_unit N (by omega)
  have hl := reciprocalSqrtSum_lower_next (N / 4)
  have hf : (N : Real) <= 4 * ((N / 4 + 1 : Nat) : Real) := by
    exact_mod_cast (show N <= 4 * (N / 4 + 1) by omega)
  have hf4 : (N : Real) / 4 <= ((N / 4 + 1 : Nat) : Real) := by linarith
  have hhalf : Real.sqrt (N : Real) / 2 <=
      Real.sqrt ((N / 4 + 1 : Nat) : Real) := by
    have h := Real.sqrt_le_sqrt hf4
    rw [Real.sqrt_div (Nat.cast_nonneg N)] at h
    norm_num at h
    simpa only [Nat.cast_add, Nat.cast_one] using h
  have h := squarefreeWeightSum_subtract_four N
  linarith

end RH16SquarefreeSampling
