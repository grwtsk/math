/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.FieldTheory.Finite.GaloisField
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination

/-! # Finite Hermitian counts for an inert unitary lattice neighbor -/

namespace GRWTSK.NumberTheory.AlpogeInertDoublingNeighbors

variable (K L : Type*) [Field K] [Field L] [Fintype K] [Fintype L] [Algebra K L]

private theorem norm_fiber_card [DecidableEq K] (hdeg : Module.finrank K L = 2) (a : K) :
    Nat.card {x : L // Algebra.norm K x = a} = if a = 0 then 1 else Nat.card K + 1 := by
  classical
  let F : K → ℕ := fun y => Fintype.card {x : L // Algebra.norm K x = y}
  have hz : F 0 = 1 := by simp [F, Algebra.norm_eq_zero_iff]
  have heq (y : K) (hy : y ≠ 0) : F y = F 1 := by
    obtain ⟨z, h⟩ := FiniteField.norm_surjective K L y
    have hn : z ≠ 0 := Algebra.norm_ne_zero_iff.mp (h ▸ hy)
    let e : L ≃ L := Equiv.mulLeft₀ z hn
    apply Eq.symm <| Fintype.card_congr (Equiv.subtypeEquiv e ?_)
    intro x
    change Algebra.norm K x = 1 ↔ Algebra.norm K (z*x) = y
    rw [map_mul, h, mul_eq_left₀ hy]
  have htotal := Fintype.card_congr (Equiv.sigmaFiberEquiv (Algebra.norm K (S := L)))
  rw [Fintype.card_sigma, Module.card_eq_pow_finrank (K := K), hdeg] at htotal
  change (∑ y : K, F y) = _ at htotal
  have hs (y : K) : F y = if y = 0 then 1 else F 1 := by
    split_ifs with h
    · simpa [h] using hz
    · exact heq y h
  rw [Finset.sum_congr rfl (fun y _ => hs y)] at htotal
  rw [Finset.sum_ite] at htotal
  simp [Finset.filter_eq', Finset.filter_ne', Finset.card_erase_of_mem] at htotal
  have hq := Fintype.one_lt_card (α := K)
  have he : Fintype.card K - 1 + 1 = Fintype.card K := by omega
  have hcard : F 1 = Fintype.card K + 1 := by
    have hc : (Fintype.card K - 1) * F 1 = (Fintype.card K - 1) * (Fintype.card K + 1) := by
      nlinarith [htotal, congrArg (fun n : ℕ => n * Fintype.card K) he]
    exact Nat.eq_of_mul_eq_mul_left (by omega) hc
  rw [Nat.card_eq_fintype_card, Nat.card_eq_fintype_card]
  change F a = _
  split_ifs with h
  · simpa [h] using hz
  · exact (heq a h).trans hcard

/-- The number of zeros of the diagonal Hermitian form in dimension `r`, including zero. -/
noncomputable def isotropicVectors (r : ℕ) : ℕ := Nat.card {v : Fin r → L // ∑ i, Algebra.norm K (v i) = 0}

/-- Isolating one Hermitian coordinate counts actual residue vectors over a quadratic
finite field extension. Every nonzero norm fiber contributes `q+1` possible coordinates. -/
theorem isotropicVectors_succ (hdeg : Module.finrank K L = 2) (r : ℕ) :
    isotropicVectors K L (r+1) = isotropicVectors K L r +
      ((Nat.card K ^ 2) ^ r - isotropicVectors K L r) * (Nat.card K + 1) := by
  classical
  let h : (Fin r → L) → K := fun v => ∑ i, Algebra.norm K (v i)
  let e : {v : Fin (r+1) → L // ∑ i, Algebra.norm K (v i) = 0} ≃
      (v : Fin r → L) × {x : L // Algebra.norm K x = - h v} :=
    { toFun := fun ⟨v,hv⟩ => ⟨Fin.tail v, v 0, eq_neg_of_add_eq_zero_left (by simpa [Fin.sum_univ_succ,h,Fin.tail] using hv)⟩
      invFun := fun ⟨v,x⟩ => ⟨Fin.cons x.val v, by simp [Fin.sum_univ_succ,x.property,h]⟩
      left_inv := fun ⟨v,hv⟩ => by simp
      right_inv := fun ⟨v,x⟩ => by
        apply Sigma.ext (by simp)
        exact (Subtype.heq_iff_coe_eq (fun _ => by simp)).2 rfl }
  rw [isotropicVectors, Nat.card_congr e, Nat.card_eq_fintype_card, Fintype.card_sigma]
  simp_rw [← Nat.card_eq_fintype_card (α := {x : L // _}), norm_fiber_card K L hdeg, neg_eq_zero]
  rw [Finset.sum_ite]
  have hh : (Finset.univ.filter (fun v => h v = 0)).card = isotropicVectors K L r := by
    rw [isotropicVectors, Nat.card_eq_fintype_card, Fintype.card_subtype]
  have hc := Fintype.card_subtype_compl (fun v => h v = 0)
  simp only [Fintype.card_subtype, Fintype.card_fun, Fintype.card_fin, hh] at hc
  simp [hh, hc, Module.card_eq_pow_finrank (K := K) (V := L), hdeg, Nat.card_eq_fintype_card]

/-- The closed form, including the zero vector, for every finite quadratic extension.
Multiplication by `q` avoids subtraction or division in the exponents at rank zero. -/
theorem isotropicVectors_closed (hdeg : Module.finrank K L = 2) (r : ℕ) :
    let q : ℤ := Nat.card K
    q * (isotropicVectors K L r : ℤ) = (q ^ 2) ^ r + (-1 : ℤ) ^ r * (q-1) * q ^ r := by
  classical
  dsimp only
  induction r with
  | zero =>
    have hz : isotropicVectors K L 0 = 1 := by
      simp [isotropicVectors]
    rw [hz]
    ring
  | succ r ih =>
    have hle : isotropicVectors K L r ≤ (Nat.card K ^ 2) ^ r := by
      calc
        isotropicVectors K L r ≤ Fintype.card (Fin r → L) := by
          rw [isotropicVectors, Nat.card_eq_fintype_card]
          exact Fintype.card_subtype_le (fun v : Fin r → L => ∑ i, Algebra.norm K (v i) = 0)
        _ = _ := by
          rw [Fintype.card_fun, Fintype.card_fin, Module.card_eq_pow_finrank (K := K) (V := L),
            hdeg, Nat.card_eq_fintype_card]
    rw [isotropicVectors_succ K L hdeg r]
    push_cast [Nat.cast_sub hle]
    simp only [pow_succ] at ih ⊢
    linear_combination -(Nat.card K : ℤ) * ih

end GRWTSK.NumberTheory.AlpogeInertDoublingNeighbors
