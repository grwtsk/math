/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Equal exposure maximizes the Euler multiplier

For a fixed mode, total exposure and positive step count, equal
substeps maximize the literal Euler multiplier on the regime of
nonnegative factors. Exact heat compensation uses the same factor
for every such allocation, so equal substeps minimize its deficit.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.OperatorTheory.FiniteEulerBalancedSteps

<<<<<<< HEAD
=======
private theorem uniform_factor_mean {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ) :
    (∑ i, (1 / (m : ℝ)) * (1 - a i)) = 1 - (∑ i, a i) / (m : ℝ) := by
  have positive : (0 : ℝ) < m := by exact_mod_cast hm
  rw [← Finset.mul_sum]
  simp only [Finset.sum_sub_distrib, Finset.sum_const, Finset.card_univ,
    Fintype.card_fin, nsmul_eq_mul, mul_one]
  field_simp

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
theorem product_le_equal_steps {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ)
    (upper : ∀ i, a i ≤ 1) :
    (∏ i, (1 - a i)) ≤ (1 - (∑ i, a i) / (m : ℝ)) ^ m := by
  let z (i : Fin m) := 1 - a i
  have nonneg (i : Fin m) : 0 ≤ z i := sub_nonneg.mpr (upper i)
  have positive : (0 : ℝ) < m := by exact_mod_cast hm
  have normalized : (∑ _i : Fin m, (1 / (m : ℝ))) = 1 := by
    simp [positive.ne']
<<<<<<< HEAD
  have avg : (∑ i : Fin m, (1 / (m : ℝ)) * z i) =
      1 - (∑ i, a i) / (m : ℝ) := by
    rw [← Finset.mul_sum]
    simp only [z, Finset.sum_sub_distrib, Finset.sum_const, Finset.card_univ,
      Fintype.card_fin, nsmul_eq_mul, mul_one]
    field_simp
=======
  have avg := uniform_factor_mean hm a
>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
  have gm := Real.geom_mean_le_arith_mean_weighted Finset.univ
    (fun _ : Fin m => 1 / (m : ℝ)) z (fun _ _ => by positivity) normalized
    (fun i _ => nonneg i)
  rw [Real.finsetProd_rpow _ _ (fun i _ => nonneg i), avg] at gm
  have product : 0 ≤ ∏ i, z i := Finset.prod_nonneg fun i _ => nonneg i
  have bound := Real.rpow_le_rpow (Real.rpow_nonneg product _) gm positive.le
  rwa [← Real.rpow_mul product, one_div_mul_cancel positive.ne',
    Real.rpow_one, Real.rpow_natCast] at bound

<<<<<<< HEAD
=======
/-- The optimal Euler multiplier is attained exactly at constant exposure.
The equality criterion also covers vanishing factors at the endpoint. -/
theorem product_eq_equal_steps_iff {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ)
    (upper : ∀ i, a i ≤ 1) :
    (∏ i, (1 - a i)) = (1 - (∑ i, a i) / (m : ℝ)) ^ m ↔ ∀ i j, a i = a j := by
  let z (i : Fin m) := 1 - a i
  have nonneg (i : Fin m) : 0 ≤ z i := sub_nonneg.mpr (upper i)
  have positive : (0 : ℝ) < m := by exact_mod_cast hm
  have normalized : (∑ _i : Fin m, (1 / (m : ℝ))) = 1 := by
    simp [positive.ne']
  have avg := uniform_factor_mean hm a
  have eq := Real.geom_mean_eq_arith_mean_weighted_iff_of_pos (Finset.univ : Finset (Fin m))
    (fun _ => 1 / (m : ℝ)) z (fun _ _ => by positivity) normalized (fun i _ => nonneg i)
  rw [Real.finsetProd_rpow _ _ (fun i _ => nonneg i), avg] at eq
  have product : 0 ≤ ∏ i, z i := Finset.prod_nonneg fun i _ => nonneg i
  have mean : 0 ≤ 1 - (∑ i, a i) / (m : ℝ) := by
    rw [← avg]
    exact Finset.sum_nonneg (fun i _ => mul_nonneg (by positivity) (nonneg i))
  constructor
  · intro optimal i j
    have root := congrArg (fun x : ℝ => x ^ (1 / (m : ℝ))) optimal
    simp only [one_div, Real.pow_rpow_inv_natCast mean hm.ne'] at root
    have factors := eq.mp (by simpa only [one_div, z] using root) i (Finset.mem_univ i) j (Finset.mem_univ j)
    change 1 - a i = 1 - a j at factors
    linarith
  · intro constant
    have root := eq.mpr (fun i _ j _ => by simp only [z, constant i j])
    have pow := congrArg (fun x : ℝ => x ^ (m : ℝ)) root
    change ((∏ i, z i) ^ (1 / (m : ℝ))) ^ (m : ℝ) =
      (1 - (∑ i, a i) / (m : ℝ)) ^ (m : ℝ) at pow
    rw [← Real.rpow_mul product, one_div_mul_cancel positive.ne',
      Real.rpow_one, Real.rpow_natCast] at pow
    exact pow

/-- Any unequal pair makes the equalized allocation strictly better. -/
theorem product_lt_equal_steps_of_unequal {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ)
    (upper : ∀ i, a i ≤ 1) {i j : Fin m} (unequal : a i ≠ a j) :
    (∏ k, (1 - a k)) < (1 - (∑ k, a k) / (m : ℝ)) ^ m :=
  lt_of_le_of_ne (product_le_equal_steps hm a upper)
    (fun eq => unequal ((product_eq_equal_steps_iff hm a upper).mp eq i j))

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
/-- Under the fixed total exposure, exact exponential compensation preserves
the comparison of Euler multipliers. -/
theorem compensated_deficit_le {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ)
    (upper : ∀ i, a i ≤ 1) :
    let A := ∑ i, a i
    1 - Real.exp A * (1 - A / (m : ℝ)) ^ m ≤
      1 - Real.exp A * ∏ i, (1 - a i) := by
  intro A
  exact sub_le_sub_left (mul_le_mul_of_nonneg_left
    (product_le_equal_steps hm a upper) (Real.exp_pos A).le) _

/-- For a two-step transfer the improvement from equalizing the exposure
is exactly the squared imbalance divided by four. -/
theorem pair_balance_identity (a b : ℝ) :
    (1 - (a + b) / 2) ^ 2 - (1 - a) * (1 - b) = (a - b) ^ 2 / 4 := by ring

<<<<<<< HEAD
=======
private theorem one_sub_sum_le_product {I : Type*} (s : Finset I) (a : I → ℝ)
    (range : ∀ i ∈ s, 0 ≤ a i ∧ a i ≤ 1) :
    1 - (∑ i ∈ s, a i) ≤ ∏ i ∈ s, (1 - a i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert i s absent ih =>
    have hi := range i (Finset.mem_insert_self _ _)
    have tail (j : I) (hj : j ∈ s) := range j (Finset.mem_insert_of_mem hj)
    have total : 0 ≤ ∑ j ∈ s, a j := Finset.sum_nonneg (fun j hj => (tail j hj).1)
    rw [Finset.sum_insert absent, Finset.prod_insert absent]
    calc
      _ ≤ (1 - a i) * (1 - ∑ j ∈ s, a j) := by
        nlinarith [mul_nonneg hi.1 total]
      _ ≤ _ := mul_le_mul_of_nonneg_left (ih tail) (sub_nonneg.mpr hi.2)

/-- Concentrating a total exposure at most one into a single step attains
the smallest Euler multiplier among nonnegative subunit allocations. -/
theorem product_ge_concentrated_steps {m : ℕ} (a : Fin m → ℝ)
    (range : ∀ i, 0 ≤ a i ∧ a i ≤ 1) :
    1 - (∑ i, a i) ≤ ∏ i, (1 - a i) :=
  one_sub_sum_le_product Finset.univ a (fun i _ => range i)

theorem product_gt_concentrated_of_two_positive {m : ℕ} (a : Fin m → ℝ)
    (range : ∀ i, 0 ≤ a i ∧ a i ≤ 1) {i j : Fin m}
    (distinct : i ≠ j) (hi : 0 < a i) (hj : 0 < a j) :
    1 - (∑ k, a k) < ∏ k, (1 - a k) := by
  classical
  let rest : Finset (Fin m) := Finset.univ.erase i
  have sinsert : insert i rest = Finset.univ := Finset.insert_erase (Finset.mem_univ i)
  have absent : i ∉ rest := Finset.notMem_erase _ _
  have jrest : j ∈ rest := Finset.mem_erase.mpr ⟨distinct.symm, Finset.mem_univ j⟩
  have positive : 0 < ∑ k ∈ rest, a k := Finset.sum_pos'
    (fun k _ => (range k).1) ⟨j, jrest, hj⟩
  rw [← sinsert, Finset.sum_insert absent, Finset.prod_insert absent]
  calc
    _ < (1 - a i) * (1 - ∑ k ∈ rest, a k) := by
      nlinarith [mul_pos hi positive]
    _ ≤ _ := mul_le_mul_of_nonneg_left
      (one_sub_sum_le_product rest a (fun k _ => range k)) (sub_nonneg.mpr (range i).2)

theorem concentrated_steps_attain {m : ℕ} (slot : Fin m) (A : ℝ) :
    let a := fun i : Fin m => if i = slot then A else 0
    (∑ i, a i) = A ∧ (∏ i, (1 - a i)) = 1 - A := by
  classical
  intro a
  constructor
  · simp [a]
  · rw [Finset.prod_eq_single slot]
    · simp [a]
    · intro i _ different
      simp [a, different]
    · simp

/-- Below unit total exposure, the concentrated allocation also gives
the largest inverse gain. -/
theorem inverse_gain_le_concentrated {m : ℕ} (a : Fin m → ℝ)
    (range : ∀ i, 0 ≤ a i ∧ a i ≤ 1) (total : (∑ i, a i) < 1) :
    (∏ i, (1 - a i))⁻¹ ≤ (1 - ∑ i, a i)⁻¹ :=
  inv_anti₀ (sub_pos.mpr total) (product_ge_concentrated_steps a range)

/-- The minimum modal gain over the whole feasible total range is the
positive part of one minus the total. For totals at least one, put unit
exposure in the first slot and distribute the remaining total over the rest. -/
theorem exists_steps_attaining_minimum {m : ℕ} (hm : 0 < m) {A : ℝ}
    (nonneg : 0 ≤ A) (feasible : A ≤ (m : ℝ)) :
    ∃ a : Fin m → ℝ, (∀ i, 0 ≤ a i ∧ a i ≤ 1) ∧
      (∑ i, a i) = A ∧ (∏ i, (1 - a i)) = max 0 (1 - A) := by
  classical
  by_cases small : A ≤ 1
  · let slot : Fin m := ⟨0, hm⟩
    let a : Fin m → ℝ := fun i => if i = slot then A else 0
    obtain ⟨total, gain⟩ := concentrated_steps_attain slot A
    refine ⟨a, ?_, total, ?_⟩
    · intro i
      by_cases h : i = slot <;> simp [a, h, nonneg, small]
    · rw [max_eq_right (sub_nonneg.mpr small)]
      exact gain
  · cases m with
    | zero => omega
    | succ n =>
      have enough : 0 ≤ A - 1 := by linarith
      have capacity : A - 1 ≤ (n : ℝ) := by push_cast at feasible; linarith
      have hn : (0 : ℝ) < n := by linarith
      let a : Fin (n + 1) → ℝ := Fin.cons 1 (fun _ => (A - 1) / (n : ℝ))
      refine ⟨a, ?_, ?_, ?_⟩
      · intro i
        refine Fin.cases ?_ (fun j => ?_) i
        · simp [a]
        · simpa [a] using And.intro (div_nonneg enough hn.le)
            ((div_le_iff₀ hn).mpr (by simpa using capacity))
      · rw [Fin.sum_univ_succ]
        simp only [a, Fin.cons_zero, Fin.cons_succ, Finset.sum_const,
          Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
        field_simp
        ring
      · rw [Fin.prod_univ_succ, max_eq_left (by linarith)]
        simp [a]

theorem minimum_gain_le_product {m : ℕ} (a : Fin m → ℝ)
    (range : ∀ i, 0 ≤ a i ∧ a i ≤ 1) :
    max 0 (1 - ∑ i, a i) ≤ ∏ i, (1 - a i) :=
  max_le (Finset.prod_nonneg fun i _ => sub_nonneg.mpr (range i).2)
    (product_ge_concentrated_steps a range)

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
end GRWTSK.OperatorTheory.FiniteEulerBalancedSteps
