/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic

/-! Finite transfers and the integral gluing obstruction in a projected Petersson lattice. -/

open scoped BigOperators

namespace GRWTSK.AlpogeHigherThetaMetric

variable {G V W : Type*} [Group G] [Fintype G] [AddCommGroup V] [DistribMulAction G V]

/-- The unnormalized transfer from a finite stabilizer takes values in its invariants. -/
theorem transfer_fixed (x : V) (g : G) :
    g • (∑ a : G, a • x) = ∑ a : G, a • x := by
  simp only [Finset.smul_sum, smul_smul]
  exact Equiv.sum_comp (Equiv.mulLeft g) (fun a : G => a • x)

/-- Evaluation against a fixed functional cancels the stabilizer denominator. -/
theorem transfer_pair [AddCommGroup W] (f : V →+ W) (x : V)
    (h : ∀ a : G, f (a • x) = f x) :
    f (∑ a : G, a • x) = Fintype.card G • f x := by
  simp [map_sum, h]

/-- The denominator obstruction for an idempotent is precisely integral splitting. -/
theorem projection_mem_iff_integral_splitting (p : V →+ V) (hp : ∀ x, p (p x) = p x)
    (N : AddSubgroup V) (x : V) (hx : x ∈ N) :
    p x ∈ N ↔ ∃ u ∈ N, ∃ w ∈ N, p u = u ∧ p w = 0 ∧ u + w = x := by
  constructor
  · intro hu
    exact ⟨p x, hu, x - p x, N.sub_mem hx hu, hp x, by simp [hp], by abel⟩
  · rintro ⟨u, hu, w, _, hpU, hpW, rfl⟩
    simpa [hpU, hpW] using hu

/-- A separated integral splitting clears the denominator of the projection. -/
theorem separator_clears_projection {R : Type*} [CommRing R] [Module R V]
    (p A B : V →ₗ[R] V) (N : Submodule R V) (r : R)
    (hA : ∀ x, p (A x) = 0) (hB : ∀ x, p (B x) = B x)
    (hsep : ∀ x, A x + B x = r • x) (hInt : ∀ x ∈ N, B x ∈ N)
    (x : V) (hx : x ∈ N) : r • p x ∈ N := by
  have e := congrArg p (hsep x)
  simpa [hA, hB] using (show p (r • x) ∈ N from e ▸ (by simpa [hA, hB] using hInt x hx))

/-- Index bookkeeping for the projected transfer and the normalized covolume. -/
theorem normalized_volume_square (D N B P I J T : ℝ)
    (hD : D * B = 1) (hI : D = I * N) (hJ : N = J * P) (hT : B = T * P) :
    T * D ^ 2 = I * J := by
  rw [hT] at hD
  calc
    T * D ^ 2 = D * T * D := by ring
    _ = I * J * (D * (T * P)) := by
      conv_lhs => rhs; rw [hI, hJ]
      ring
    _ = I * J := by rw [hD, mul_one]

/-- The integer denominator of the normalized Fischer determinant in the rank-two block. -/
theorem symmetric_power_gram_denominator (m : ℕ) :
    (∏ j ∈ Finset.range (m + 1), m.choose j) *
      (∏ j ∈ Finset.range (m + 1), j.factorial * (m - j).factorial) =
        m.factorial ^ (m + 1) := by
  rw [← Finset.prod_mul_distrib]
  calc
    _ = ∏ _j ∈ Finset.range (m + 1), m.factorial := by
      apply Finset.prod_congr rfl
      intro j hj
      rw [← Nat.mul_assoc]
      exact Nat.choose_mul_factorial_mul_factorial (by simpa using hj)
    _ = _ := by simp

/-- Summing translates with distinct characters multiplies the squared norm by the orbit size. -/
theorem orthogonal_translates_sum {ι H : Type*} [Fintype ι] [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] (v : ι → H) (c : ℂ)
    (diag : ∀ i, inner ℂ (v i) (v i) = c)
    (off : ∀ i j, i ≠ j → inner ℂ (v i) (v j) = 0) :
    inner ℂ (∑ i, v i) (∑ j, v j) = Fintype.card ι • c := by
  classical
  rw [sum_inner]
  simp_rw [inner_sum]
  have h (i : ι) : ∑ j, inner ℂ (v i) (v j) = c := by
    rw [Finset.sum_eq_single i]
    · exact diag i
    · intro j _ hji
      exact off i j (Ne.symm hji)
    · simp
  simp [h]

end GRWTSK.AlpogeHigherThetaMetric
