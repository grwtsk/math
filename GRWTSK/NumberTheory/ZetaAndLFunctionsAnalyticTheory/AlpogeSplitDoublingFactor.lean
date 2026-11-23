/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Card
import Mathlib.GroupTheory.Index
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Analysis.Complex.Basic
import Mathlib.LinearAlgebra.Complex.FiniteDimensional
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# Hermite profiles and the split doubling normalizer

The companion note evaluates the unramified split graph section by summing first over a
common sublattice. These results evaluate the complex series over its elementary Hermite
parameters and identify the reciprocal at integral `2s` with a residue-matrix density.
-/

namespace GRWTSK.NumberTheory.AlpogeSplitDoublingFactor

/-- The common-sublattice kernel factors through the intersection. The exponents are
`p`-adic valuations of the actual finite indices. Over residue size `p^f` they equal
`f` times the local lengths, so the same identity holds in the length variables. -/
theorem common_sublattice_weight {G : Type*} [AddCommGroup G] (p : ℕ)
    (L M C : AddSubgroup G) (hC : C ≤ L ⊓ M)
    (hI : C.relIndex (L ⊓ M) ≠ 0) (hL : (L ⊓ M).relIndex L ≠ 0)
    (hM : (L ⊓ M).relIndex M ≠ 0) (u v : ℂ) :
    u ^ (C.relIndex L).factorization p * v ^ (C.relIndex M).factorization p =
      (u ^ ((L ⊓ M).relIndex L).factorization p * v ^ ((L ⊓ M).relIndex M).factorization p) *
        (u*v) ^ (C.relIndex (L ⊓ M)).factorization p := by
  rw [← AddSubgroup.relIndex_mul_relIndex C (L ⊓ M) L hC inf_le_left,
    ← AddSubgroup.relIndex_mul_relIndex C (L ⊓ M) M hC inf_le_right,
    Nat.factorization_mul hI hL, Nat.factorization_mul hI hM]
  simp only [Finsupp.add_apply, pow_add, mul_pow]
  ring

/-- Independent nonnegative Hermite exponents, with possibly complex character weights. -/
theorem hasSum_hermite_profiles {r : ℕ} (w : Fin r → ℂ) (hw : ∀ i, ‖w i‖ < 1) :
    HasSum (fun e : Fin r → ℕ => ∏ i, w i ^ e i) (∏ i, (1 - w i)⁻¹) := by
  induction r with
  | zero => simp
  | succ r ih =>
    have h₀ := hasSum_geometric_of_norm_lt_one (hw 0)
    have h₁ := ih (fun i => w i.succ) (fun i => hw i.succ)
    have hm := summable_mul_of_summable_norm (f := fun n : ℕ => w 0 ^ n)
      (g := fun e : Fin r → ℕ => ∏ i, w i.succ ^ e i) h₀.summable.norm h₁.summable.norm
    have h := h₀.mul h₁ hm
    apply (Fin.consEquiv (fun _ : Fin (r+1) => ℕ)).hasSum_iff.mp
    simpa only [Function.comp_def, Fin.prod_univ_succ, Fin.consEquiv_apply,
      Fin.cons_zero, Fin.cons_succ] using h

/-- The normalized count of full-row-rank `r × (r+t)` residue matrices. With the
indices in Hermite order, its factors are those of the inverse split normalizer at `2s=t`. -/
theorem residue_full_rank_density (k : Type*) [Field k] [Fintype k] (r t : ℕ) :
    (Nat.card {v : Fin r → Fin (r+t) → k // LinearIndependent k v} : ℚ) /
        (Nat.card (Fin r → Fin (r+t) → k) : ℚ) =
      ∏ i : Fin r, (1 - (Fintype.card k : ℚ) ^ (i : ℕ) / (Fintype.card k : ℚ) ^ (r+t)) := by
  have hcard := @card_linearIndependent k (Fin (r+t) → k) _ _ _ _ _ r
    (by rw [Module.finrank_fin_fun]; omega)
  rw [Module.finrank_fin_fun] at hcard
  have hq : 0 < Fintype.card k := Fintype.card_pos
  have hq' : (Fintype.card k : ℚ) ≠ 0 := by exact_mod_cast hq.ne'
  rw [hcard, Nat.card_fun, Nat.card_fun, Nat.card_eq_fintype_card (α := k)]
  simp only [Nat.card_fin, Nat.cast_prod, Nat.cast_pow]
  rw [← show (∏ _ : Fin r, (Fintype.card k : ℚ) ^ (r+t)) =
      ((Fintype.card k : ℚ) ^ (r+t)) ^ r by simp, ← Finset.prod_div_distrib]
  refine Finset.prod_congr rfl fun i _ => ?_
  rw [Nat.cast_sub (Nat.pow_le_pow_right hq (by omega : (i : ℕ) ≤ r+t)),
    Nat.cast_pow, Nat.cast_pow, sub_div, div_self (pow_ne_zero _ hq')]

end GRWTSK.NumberTheory.AlpogeSplitDoublingFactor
