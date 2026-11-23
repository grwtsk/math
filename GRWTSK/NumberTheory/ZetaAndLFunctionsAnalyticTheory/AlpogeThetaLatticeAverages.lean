/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.GroupTheory.IndexNSmul
import Mathlib.RingTheory.Norm.Transitivity
import Mathlib.Analysis.Normed.Field.Basic

/-!
# Lattice indices and inert character weights in the two theta averages

These lemmas control two different scalars in the double lattice intertwiner.
The index bound also proves finiteness when the denominator is nonzero.
The character bound permits arbitrary support of the norm-one ideal in the
upper field. See §16 of `AlpogeEllipticCubicalB4.md` for the selected CM data.
-/

namespace GRWTSK.NumberTheory.AlpogeThetaLatticeAverages

variable {V : Type*} [AddCommGroup V]

/-- The denominator of the intertwiner divides a power of a common lattice multiplier. -/
theorem index_dvd_multiplier_pow (A B : AddSubgroup V) [Module.Free ℤ ↥B.toIntSubmodule]
    [Module.Finite ℤ ↥B.toIntSubmodule] (n : ℕ) (h : ∀ x ∈ B, n • x ∈ A) :
    A.relIndex B ∣ n ^ Module.finrank ℤ B := by
  rw [← AddSubgroup.relIndex_map_nsmul n B]
  apply AddSubgroup.relIndex_dvd_of_le_left
  rintro _ ⟨x, hx, rfl⟩
  exact h x hx

/-- Both finiteness and prime-to-p cardinality follow from a single multiplier. -/
theorem index_positive_coprime (A B : AddSubgroup V) [Module.Free ℤ ↥B.toIntSubmodule]
    [Module.Finite ℤ ↥B.toIntSubmodule] {n p : ℕ} (hn : 0 < n) (hp : n.Coprime p)
    (h : ∀ x ∈ B, n • x ∈ A) : 0 < A.relIndex B ∧ (A.relIndex B).Coprime p := by
  have hd := index_dvd_multiplier_pow A B n h
  exact ⟨Nat.pos_of_dvd_of_pos hd (pow_pos hn _), (hp.pow_left _).of_dvd_left hd⟩

/-- A power prescribed by the CM type product has unit norm at every embedding whose
restriction to the lower field is invariant in absolute value under conjugation. -/
theorem norm_character_eq_one {K E C : Type*} [Field K] [Field E] [NormedField C]
    [Algebra K E] [Algebra K C] [FiniteDimensional K E] [Algebra.IsSeparable K E]
    [IsAlgClosed C] (cK : K ≃+* K) (cE : E ≃+* E)
    (hcomm : (algebraMap K E).comp cK = cE.toRingHom.comp (algebraMap K E))
    (hplace : ∀ k, ‖algebraMap K C (cK k)‖ = ‖algebraMap K C k‖)
    (v : E) (hv : cE v * v = 1) (a : C) {m : ℕ} (hm : m ≠ 0)
    (ha : a ^ m = ∏ σ : E →ₐ[K] C, (σ v)⁻¹) : ‖a‖ = 1 := by
  classical
  have hnorm : cK (Algebra.norm K v) = Algebra.norm K (cE v) :=
    (cK.eq_symm_apply.mp (Algebra.norm_eq_of_equiv_equiv cK cE hcomm v))
  have hmul : cK (Algebra.norm K v) * Algebra.norm K v = 1 := by
    rw [hnorm, ← map_mul, hv, map_one]
  have hsq := congrArg (fun z : K => ‖algebraMap K C z‖) hmul
  simp only [map_mul, map_one, norm_mul, norm_one, hplace] at hsq
  have hu : ‖algebraMap K C (Algebra.norm K v)‖ = 1 :=
    (pow_eq_one_iff_of_nonneg (norm_nonneg _) (by decide : 2 ≠ 0)).mp (by simpa [pow_two] using hsq)
  rw [Finset.prod_inv_distrib, ← Algebra.norm_eq_prod_embeddings K C v] at ha
  apply (pow_eq_one_iff_of_nonneg (norm_nonneg a) hm).mp
  rw [← norm_pow, ha, norm_inv, hu, inv_one]

end GRWTSK.NumberTheory.AlpogeThetaLatticeAverages
