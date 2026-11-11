/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.NegativeIndex
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurResidualEnclosure

/-!
# Exact negative-index return for a Schur square completion

For `Q(x,y) = S(x) + R(y + Y(x))`, with `R` nonnegative and both diagonals
zero at zero, this module identifies every finite negative dimension of `Q`
with that of `S`. No finite-dimensional ambient-space assumption is needed.
The lower-to-full lift is `(x, -Y(x))`; the full-to-lower projection is
injective on a strictly negative subspace. These two explicit maps prove the
index identity, rather than inferring it from a finite matrix computation.

The real bilinear specialization REUSES `SchurResidual.block_square_completion`.
Its exact solution-map equation remains an assumption. In the arithmetic
consumer it must be supplied on the true Weil form domain, retaining the
prime powers, conductor, gamma/parity, and both zeta pole orientations.
Nothing here constructs that inverse or proves its analytic domain properties.

Source map: RP-OC-03, manuscript edition 1.0, section 19.4, pp. 41--42;
preceding written derivation, completed-square/Schur equations (27)--(29).
The inertia mechanism is standard algebra, not a novel Weil or GRH theorem.
Existing source baseline: grwtsk/math@6cab1fb0725c00a9d06b112ffc215e3523396c50.
Review and remaining source-return obligations are coordinated in issue #1808.

Manually authored formal source candidates. Elaboration, fresh kernel replay,
transitive axiom audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.LinearAlgebra.SchurNegativeIndex

open GRWTSK.LinearAlgebra.NegativeIndex

section CompletedSquare

variable {𝕜 V W : Type*} [Field 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W]

/-- Exact finite negative dimensions agree across a completed square.
A semidefinite complementary form is enough; its kernel need not be trivial. -/
theorem hasNegativeFrame_completedSquare_iff
    (Q : V × W → ℝ) (S : V → ℝ) (R : W → ℝ) (Y : V →ₗ[𝕜] W)
    (hSzero : S 0 = 0) (hRzero : R 0 = 0) (hR : ∀ y, 0 ≤ R y)
    (hreturn : ∀ z, Q z = S z.1 + R (z.2 + Y z.1)) (n : ℕ) :
    HasNegativeFrame (𝕜 := 𝕜) Q n ↔ HasNegativeFrame (𝕜 := 𝕜) S n := by
  constructor
  · rintro ⟨F, _, hneg⟩
    let P : (Fin n → 𝕜) →ₗ[𝕜] V := (LinearMap.fst 𝕜 V W).comp F
    have hPneg : ∀ x, x ≠ 0 → S (P x) < 0 := by
      intro x hx
      have h := hneg x hx
      rw [hreturn] at h
      exact lt_of_le_of_lt
        (le_add_of_nonneg_right (hR ((F x).2 + Y (F x).1))) h
    refine ⟨P, ?_, hPneg⟩
    intro x y hxy
    by_contra hne
    have hzero : P (x - y) = 0 := by rw [map_sub, hxy, sub_self]
    have h := hPneg (x - y) (sub_ne_zero.mpr hne)
    rw [hzero, hSzero] at h
    exact (lt_irrefl (0 : ℝ)) h
  · intro h
    let J : V →ₗ[𝕜] V × W := (LinearMap.id : V →ₗ[𝕜] V).prod (-Y)
    have hJ : Function.Injective J := by
      intro x y hxy
      exact congrArg Prod.fst hxy
    refine hasNegativeFrame_map J hJ ?_ h
    intro x
    have hx : Q (J x) = S x := by
      simpa [J, hRzero] using hreturn (J x)
    exact hx.le

/-- Schur inertia, including possibly infinite index, from an exact form identity. -/
theorem negativeIndex_completedSquare
    (Q : V × W → ℝ) (S : V → ℝ) (R : W → ℝ) (Y : V →ₗ[𝕜] W)
    (hSzero : S 0 = 0) (hRzero : R 0 = 0) (hR : ∀ y, 0 ≤ R y)
    (hreturn : ∀ z, Q z = S z.1 + R (z.2 + Y z.1)) :
    negativeIndex (𝕜 := 𝕜) Q = negativeIndex (𝕜 := 𝕜) S := by
  apply le_antisymm
  · exact negativeIndex_le_of_frames fun n h =>
      (hasNegativeFrame_completedSquare_iff Q S R Y hSzero hRzero hR hreturn n).1 h
  · exact negativeIndex_le_of_frames fun n h =>
      (hasNegativeFrame_completedSquare_iff Q S R Y hSzero hRzero hR hreturn n).2 h

/-- Two-sided form enclosures give oppositely ordered negative-index bounds.
The whole residual/coupling error belongs in the lower form. -/
theorem negativeIndex_enclosure (lower source upper : V → ℝ)
    (hlower : ∀ x, lower x ≤ source x) (hupper : ∀ x, source x ≤ upper x) :
    negativeIndex (𝕜 := 𝕜) upper ≤ negativeIndex (𝕜 := 𝕜) source ∧
      negativeIndex (𝕜 := 𝕜) source ≤ negativeIndex (𝕜 := 𝕜) lower := by
  exact ⟨negativeIndex_antitone hupper, negativeIndex_antitone hlower⟩

end CompletedSquare

section RealBilinear

variable {V L : Type*} [AddCommGroup V] [Module ℝ V]
  [AddCommGroup L] [Module ℝ L]

/-- Upgrade the existing exact real square completion to an index identity.
This is a real-index theorem; complex forms use the scalar-generic theorem above. -/
theorem block_negativeIndex_eq
    (a : LinearMap.BilinForm ℝ V) (l : LinearMap.BilinForm ℝ L)
    (b : L →ₗ[ℝ] V →ₗ[ℝ] ℝ) (Y : L →ₗ[ℝ] V)
    (hsym : ∀ v w, a v w = a w v)
    (hpos : ∀ v, 0 ≤ a v v)
    (hsolve : ∀ u v, a (Y u) v = b u v) :
    negativeIndex (𝕜 := ℝ)
        (fun z : L × V => l z.1 z.1 + 2 * b z.1 z.2 + a z.2 z.2) =
      negativeIndex (𝕜 := ℝ) (fun u => l u u - b u (Y u)) := by
  apply negativeIndex_completedSquare
    (fun z : L × V => l z.1 z.1 + 2 * b z.1 z.2 + a z.2 z.2)
    (fun u => l u u - b u (Y u)) (fun v => a v v) Y
  · simp
  · simp
  · exact hpos
  · intro z
    exact GRWTSK.LinearAlgebra.SchurResidual.block_square_completion
      a l b Y hsym hsolve z.1 z.2

end RealBilinear

/-- The complete scalar block margin. Positivity of the head alone is not enough.
Neither `x`, `y`, nor the coupling coefficient needs to have a prescribed sign. -/
theorem block_margin_nonnegative (α β η x y : ℝ)
    (hη : η < 1) (hmargin : α + β ^ 2 / (1 - η) ≤ 1) :
    0 ≤ (1 - α) * x ^ 2 - 2 * β * x * y + (1 - η) * y ^ 2 := by
  have hd : 0 < 1 - η := sub_pos.mpr hη
  have hb : β ^ 2 / (1 - η) ≤ 1 - α := by linarith
  have hbudget : β ^ 2 ≤ (1 - α) * (1 - η) := (div_le_iff₀ hd).mp hb
  have hid :
      (1 - η) * ((1 - α) * x ^ 2 - 2 * β * x * y + (1 - η) * y ^ 2) =
        ((1 - η) * y - β * x) ^ 2 +
          ((1 - α) * (1 - η) - β ^ 2) * x ^ 2 := by ring
  have hnonneg :
      0 ≤ (1 - η) * ((1 - α) * x ^ 2 - 2 * β * x * y + (1 - η) * y ^ 2) := by
    rw [hid]
    exact add_nonneg (sq_nonneg _)
      (mul_nonneg (sub_nonneg.mpr hbudget) (sq_nonneg _))
  by_contra h
  exact (not_lt_of_ge hnonneg) (mul_neg_of_pos_of_neg hd (lt_of_not_ge h))

/-- Source return for the block budget: a true full-form lower bound is required.
No operator bound, Fourier comparison, or arithmetic sign is manufactured here. -/
theorem negativeIndex_zero_of_block_bound
    {𝕜 E : Type*} [Field 𝕜] [AddCommGroup E] [Module 𝕜 E]
    (Q head tail : E → ℝ) (α β η : ℝ)
    (hη : η < 1) (hmargin : α + β ^ 2 / (1 - η) ≤ 1)
    (hreturn : ∀ v,
      (1 - α) * (head v) ^ 2 - 2 * β * head v * tail v +
        (1 - η) * (tail v) ^ 2 ≤ Q v) :
    negativeIndex (𝕜 := 𝕜) Q = 0 := by
  apply negativeIndex_eq_zero_of_nonneg
  intro v
  exact (block_margin_nonnegative α β η (head v) (tail v) hη hmargin).trans
    (hreturn v)

/-- An isotropic vector need not be in the radical: testing its diagonal is
insufficient to justify quotienting it out. This is a finite countermodel only. -/
theorem isotropic_not_radical :
    let B : (ℝ × ℝ) → (ℝ × ℝ) → ℝ := fun x y => x.1 * y.1 - x.2 * y.2
    B (1, 1) (1, 1) = 0 ∧ B (1, 1) (1, 0) ≠ 0 := by
  norm_num

end GRWTSK.LinearAlgebra.SchurNegativeIndex
