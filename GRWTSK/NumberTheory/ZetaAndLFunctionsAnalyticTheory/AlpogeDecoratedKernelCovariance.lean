/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Data.Matrix.Mul
import Mathlib.GroupTheory.Coset.Basic
import Mathlib.SetTheory.Cardinal.Finite
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Ring.Subring.Basic
import Mathlib.Tactic.Ring

/-! # Finite cutoff changes and the terminal fractional Fourier factor -/

namespace GRWTSK.NumberTheory.AlpogeDecoratedKernelCovariance

/-- A fine finite additive lattice quotient counts each coarse class with
multiplicity equal to the order of the kernel of reduction. -/
theorem sum_refined_classes {G H K : Type*} [AddCommGroup G] [Fintype G]
    [AddCommGroup H] [Fintype H] [Semiring K] (π : G →+ H) (hπ : Function.Surjective π)
    (f : H → K) : ∑ x, f (π x) = (Nat.card π.ker : K) * ∑ y, f y := by
  classical
  rw [← Fintype.sum_fiberwise' π f, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro y _
  simp only [Finset.sum_const, nsmul_eq_mul]
  congr 1
  have e := AddMonoidHom.fiberEquivKerOfSurjective hπ y
  have hc := Nat.card_congr e
  rw [Finset.card_univ]
  apply congrArg (fun n : ℕ => (n : K))
  exact (Nat.card_eq_fintype_card.symm).trans hc

/-- An ambient affine permutation may move the cutoff itself. It suffices
that the support of the function and its inverse image both fit inside. -/
theorem sum_cutoff_equiv {C K : Type*} [AddCommMonoid K] (s : Finset C) (T : C ≃ C)
    (f : C → K) (hs : ∀ x, f x ≠ 0 → x ∈ s ∧ T.symm x ∈ s) :
    ∑ x ∈ s, f (T x) = ∑ x ∈ s, f x := by
  classical
  let t := s.map T.toEmbedding
  have h₁ : ∑ x ∈ t, f x = ∑ x ∈ t ∪ s, f x := by
    refine Finset.sum_subset Finset.subset_union_left fun x _ hx => ?_
    by_contra hn
    exact hx (Finset.mem_map.mpr ⟨T.symm x, (hs x hn).2, T.apply_symm_apply x⟩)
  have h₂ : ∑ x ∈ s, f x = ∑ x ∈ t ∪ s, f x := by
    refine Finset.sum_subset Finset.subset_union_right fun x _ hx => ?_
    by_contra hn
    exact hx (hs x hn).1
  simpa [t] using h₁.trans h₂.symm

/-- The simple-root entry of a product of upper unipotent matrices is
additive. Rectangular unfolding blocks give the same identity after
padding by the last coordinate. -/
theorem simple_root_mul {F : Type*} [Semiring F] {n : ℕ} (u v : Matrix (Fin n) (Fin n) F)
    (hu : ∀ i j, j < i → u i j = 0) (hv : ∀ i j, j < i → v i j = 0)
    (du : ∀ i, u i i = 1) (dv : ∀ i, v i i = 1)
    {i j : Fin n} (hij : j.val = i.val + 1) :
    (u*v) i j = v i j + u i j := by
  classical
  have hne : i ≠ j := fun e => by rw [e] at hij; omega
  rw [Matrix.mul_apply]
  calc
    _ = ∑ k ∈ ({i,j} : Finset (Fin n)), u i k * v k j := by
      symm
      refine Finset.sum_subset (Finset.subset_univ _) fun k _ hk => ?_
      have e : k ≠ i ∧ k ≠ j := by simpa using hk
      have h : k < i ∨ j < k := by
        change k.val < i.val ∨ j.val < k.val
        have hi : k.val ≠ i.val := fun h => e.1 (Fin.ext h)
        have hj : k.val ≠ j.val := fun h => e.2 (Fin.ext h)
        omega
      rcases h with h | h
      · rw [hu i k h, zero_mul]
      · rw [hv k j h, mul_zero]
    _ = _ := by simp [hne, du, dv]

/-- For frequency denominator b and position denominator c, the phase
argument has denominator at most bc. Shifting the frequency by c times
an integral vector preserves both the cutoff and the Fourier value. -/
theorem fractional_fourier_period {F K ι : Type*} [Field F] [Zero K] [Fintype ι]
    (R : Subring F) {b c : F} (hc : c ≠ 0) (hbR : b ∈ R) (hcR : c ∈ R) (ψ : F → K)
    (hψ : ∀ x t, (b*c)*x ∈ R → t ∈ R → ψ (x+t) = ψ x)
    (η δ y : ι → F) (hδ : ∀ i, δ i / c ∈ R) (hy : ∀ i, c*y i ∈ R)
    [DecidablePred (fun v : ι → F => ∀ i, b*v i ∈ R)] :
    (if ∀ i, b*(η+δ) i ∈ R then ψ (∑ i, (η+δ) i*y i) else 0) =
      (if ∀ i, b*η i ∈ R then ψ (∑ i, η i*y i) else 0) := by
  have hδ' (i : ι) : b * δ i ∈ R := by
    have h := R.mul_mem (R.mul_mem hbR hcR) (hδ i)
    rwa [mul_assoc, mul_div_cancel₀ _ hc] at h
  have hiff : (∀ i, b*(η+δ) i ∈ R) ↔ ∀ i, b*η i ∈ R := by
    simp only [Pi.add_apply, mul_add]
    exact forall_congr' fun i => R.add_mem_cancel_right (hδ' i)
  split_ifs with h₁ h₂ h₂
  · simp only [Pi.add_apply, add_mul, Finset.sum_add_distrib]
    apply hψ
    · rw [Finset.mul_sum]
      apply R.sum_mem
      intro i _
      convert R.mul_mem (h₂ i) (hy i) using 1
      ring
    · apply R.sum_mem
      intro i _
      have h := R.mul_mem (hδ i) (hy i)
      rwa [← mul_assoc, div_mul_cancel₀ _ hc] at h
  · exact (h₂ (hiff.mp h₁)).elim
  · exact (h₁ (hiff.mpr h₂)).elim
  · rfl

end GRWTSK.NumberTheory.AlpogeDecoratedKernelCovariance
