/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.NumberTheory.Padics.Complex
import Mathlib.Analysis.SpecialFunctions.Log.Base
import Mathlib.Tactic

/-!
# From the actual p-adic norm to a finite valuation budget

The logarithmic valuation is defined on Mathlib's `PadicAlgCl p`, with its
canonical norm. Its value at zero is the totalized real value zero. Norm
comparison therefore requires a nonzero integer witness. The selected factors'
nonvanishing follows from the norm comparison itself, while the exact submitted
endpoint is also provided with its original explicit factor hypothesis.

See the adjacent source record for mathematical comparison and evidence scope.
-/

open scoped BigOperators

namespace GRWTSK.NumberTheory.PadicNormValuationBudget

/-- The real logarithmic valuation attached to the canonical p-adic norm.
At zero this is zero, not an extended-real infinite valuation. -/
noncomputable def logValuation (p : ℕ) [Fact p.Prime] (x : PadicAlgCl p) : ℝ :=
  -Real.logb p ‖x‖

@[simp] theorem logValuation_zero (p : ℕ) [Fact p.Prime] :
    logValuation p 0 = 0 := by simp [logValuation]

@[simp] theorem logValuation_one (p : ℕ) [Fact p.Prime] :
    logValuation p 1 = 0 := by simp [logValuation]

/-- The p-adic norm of a nonzero integer has the standard prime-power scale. -/
theorem norm_intCast_eq_rpow (p : ℕ) [Fact p.Prime] (N : ℤ) (hN : N ≠ 0) :
    ‖(N : PadicAlgCl p)‖ = (p : ℝ) ^ (-(padicValInt p N : ℝ)) := by
  have hcast : (N : ℚ_[p]) ≠ 0 := by exact_mod_cast hN
  calc
    ‖(N : PadicAlgCl p)‖ = ‖(N : ℚ_[p])‖ := by
      simpa only [map_intCast] using PadicAlgCl.norm_extends p (N : ℚ_[p])
    _ = (p : ℝ) ^ (-(Padic.valuation (N : ℚ_[p]))) :=
      Padic.norm_eq_zpow_neg_valuation hcast
    _ = (p : ℝ) ^ (-(padicValInt p N : ℝ)) := by
      rw [Padic.valuation_intCast, ← Real.rpow_intCast]
      norm_cast

/-- Integer normalization holds also at zero with the two totalized conventions. -/
@[simp] theorem logValuation_intCast (p : ℕ) [hp : Fact p.Prime] (N : ℤ) :
    logValuation p (N : PadicAlgCl p) = (padicValInt p N : ℝ) := by
  by_cases hN : N = 0
  · simp [hN]
  · have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.out.pos
    have hp1 : (p : ℝ) ≠ 1 := by exact_mod_cast hp.out.ne_one
    rw [logValuation, norm_intCast_eq_rpow p N hN, Real.logb_rpow hp0 hp1, neg_neg]

/-- Multiplicativity becomes additivity only when both factors are nonzero. -/
theorem logValuation_mul (p : ℕ) [Fact p.Prime] (x y : PadicAlgCl p)
    (hx : x ≠ 0) (hy : y ≠ 0) :
    logValuation p (x * y) = logValuation p x + logValuation p y := by
  rw [logValuation, norm_mul,
    Real.logb_mul (norm_ne_zero_iff.mpr hx) (norm_ne_zero_iff.mpr hy), neg_add]
  rfl

/-- Inversion changes the sign, including the totalized value at zero. -/
@[simp] theorem logValuation_inv (p : ℕ) [Fact p.Prime] (x : PadicAlgCl p) :
    logValuation p x⁻¹ = -logValuation p x := by
  simp [logValuation]

/-- Finite products of nonzero elements retain every valuation summand. -/
theorem logValuation_finset_prod (p : ℕ) [Fact p.Prime]
    {I : Type*} (s : Finset I) (f : I → PadicAlgCl p)
    (hf : ∀ i ∈ s, f i ≠ 0) :
    logValuation p (∏ i ∈ s, f i) = ∑ i ∈ s, logValuation p (f i) := by
  simp only [logValuation, norm_prod]
  rw [Real.logb_prod s (fun i => ‖f i‖) (fun i hi => norm_ne_zero_iff.mpr (hf i hi))]
  simp only [Finset.sum_neg_distrib]

/-- The nested orbit/selected-class product has the exact nested valuation sum. -/
theorem logValuation_nested_prod (p : ℕ) [Fact p.Prime]
    {I J : Type*} [Fintype I] (X : I → Finset J) (f : I → J → PadicAlgCl p)
    (hf : ∀ i, ∀ j ∈ X i, f i j ≠ 0) :
    logValuation p (∏ i, ∏ j ∈ X i, f i j) =
      ∑ i, ∑ j ∈ X i, logValuation p (f i j) := by
  rw [logValuation_finset_prod p Finset.univ
    (fun i => ∏ j ∈ X i, f i j)
    (fun i _ => Finset.prod_ne_zero_iff.mpr (fun j hj => hf i j hj))]
  exact Finset.sum_congr rfl (fun i _ => logValuation_finset_prod p (X i) (f i) (hf i))

/-- Negating the increasing logarithm reverses comparison of positive norms. -/
theorem logValuation_le_of_norm_le (p : ℕ) [hp : Fact p.Prime]
    (x y : PadicAlgCl p) (hx : x ≠ 0) (hxy : ‖x‖ ≤ ‖y‖) :
    logValuation p y ≤ logValuation p x := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.out.one_lt
  exact neg_le_neg (Real.logb_le_logb_of_le hp1 (norm_pos_iff.mpr hx) hxy)

/-- Norms at most one give nonnegative logarithmic valuations. -/
theorem logValuation_nonneg_of_norm_le_one (p : ℕ) [hp : Fact p.Prime]
    (x : PadicAlgCl p) (hx : ‖x‖ ≤ 1) : 0 ≤ logValuation p x := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.out.one_lt
  exact neg_nonneg.mpr (Real.logb_nonpos hp1 (norm_nonneg x) hx)

/-- A positive integer norm bounded by a product forces every selected factor
to be nonzero. This makes the separate factor premise unnecessary in the core. -/
theorem selected_ne_zero_of_int_norm_le_prod (p : ℕ) [Fact p.Prime]
    {I J : Type*} [Fintype I] (X : I → Finset J) (f : I → J → PadicAlgCl p)
    (N : ℤ) (hN : N ≠ 0)
    (h : ‖(N : PadicAlgCl p)‖ ≤ ∏ i, ∏ j ∈ X i, ‖f i j‖) :
    ∀ i, ∀ j ∈ X i, f i j ≠ 0 := by
  classical
  have hNcast : (N : PadicAlgCl p) ≠ 0 := by exact_mod_cast hN
  have hp : 0 < ∏ i, ∏ j ∈ X i, ‖f i j‖ :=
    lt_of_lt_of_le (norm_pos_iff.mpr hNcast) h
  have houter := Finset.prod_ne_zero_iff.mp hp.ne'
  intro i j hj
  exact norm_ne_zero_iff.mp
    (Finset.prod_ne_zero_iff.mp (houter i (Finset.mem_univ i)) j hj)

/-- Core norm-to-valuation budget. Nonzero selected factors are derived from
the nonzero integer and the norm inequality, not assumed separately. -/
theorem sum_logValuation_le_padicValInt_of_norm_prod_le (p : ℕ) [Fact p.Prime]
    {I J : Type*} [Fintype I] (X : I → Finset J) (f : I → J → PadicAlgCl p)
    (N : ℤ) (hN : N ≠ 0)
    (h : ‖(N : PadicAlgCl p)‖ ≤ ∏ i, ∏ j ∈ X i, ‖f i j‖) :
    ∑ i, ∑ j ∈ X i, logValuation p (f i j) ≤ (padicValInt p N : ℝ) := by
  have hf := selected_ne_zero_of_int_norm_le_prod p X f N hN h
  calc
    ∑ i, ∑ j ∈ X i, logValuation p (f i j) =
        logValuation p (∏ i, ∏ j ∈ X i, f i j) :=
      (logValuation_nested_prod p X f hf).symm
    _ ≤ logValuation p (N : PadicAlgCl p) :=
      logValuation_le_of_norm_le p _ _ (by exact_mod_cast hN) (by simpa [norm_prod] using h)
    _ = (padicValInt p N : ℝ) := logValuation_intCast p N

/-- The same budget on a single finite type, including dependent selected
families represented by a finite sigma type. -/
theorem logValuation_product_le_padicValInt (p : ℕ) [Fact p.Prime]
    {I : Type*} [Fintype I] (f : I → PadicAlgCl p) (N : ℤ) (hN : N ≠ 0)
    (h : ‖(N : PadicAlgCl p)‖ ≤ ∏ i, ‖f i‖) :
    ∑ i, logValuation p (f i) ≤ (padicValInt p N : ℝ) := by
  simpa using sum_logValuation_le_padicValInt_of_norm_prod_le p
    (fun _ : Unit => Finset.univ) (fun _ : Unit => f) N hN (by simpa using h)

/-- Exact retained-hypothesis counterpart of the submitted private `vl_bound`.
The explicit factor hypothesis is redundant for the stronger core theorem. -/
theorem sum_logValuation_le_padicValInt (p : ℕ) [Fact p.Prime]
    {I J : Type*} [Fintype I] (X : I → Finset J) (f : I → J → PadicAlgCl p)
    (N : ℤ) (hN : N ≠ 0) (_hf : ∀ i, ∀ j ∈ X i, f i j ≠ 0)
    (h : ‖(N : PadicAlgCl p)‖ ≤ ∏ i, ∏ j ∈ X i, ‖f i j‖) :
    ∑ i, ∑ j ∈ X i, logValuation p (f i j) ≤ (padicValInt p N : ℝ) :=
  sum_logValuation_le_padicValInt_of_norm_prod_le p X f N hN h

/-- A supplied observation-to-valuation estimate gives the finite length
budget. Its arithmetic/deformation supplier remains an explicit premise. -/
theorem sum_observation_le_mul_padicValInt (p : ℕ) [Fact p.Prime]
    {I J : Type*} [Fintype I] (X : I → Finset J) (f : I → J → PadicAlgCl p)
    (N : ℤ) (hN : N ≠ 0)
    (h : ‖(N : PadicAlgCl p)‖ ≤ ∏ i, ∏ j ∈ X i, ‖f i j‖)
    (c : ℝ) (hc : 0 ≤ c) (a : I → ℝ)
    (ha : ∀ i, a i ≤ c * ∑ j ∈ X i, logValuation p (f i j)) :
    ∑ i, a i ≤ c * (padicValInt p N : ℝ) := by
  calc
    ∑ i, a i ≤ ∑ i, c * ∑ j ∈ X i, logValuation p (f i j) :=
      Finset.sum_le_sum (fun i _ => ha i)
    _ = c * (∑ i, ∑ j ∈ X i, logValuation p (f i j)) := by rw [Finset.mul_sum]
    _ ≤ c * (padicValInt p N : ℝ) :=
      mul_le_mul_of_nonneg_left
        (sum_logValuation_le_padicValInt_of_norm_prod_le p X f N hN h) hc

end GRWTSK.NumberTheory.PadicNormValuationBudget
