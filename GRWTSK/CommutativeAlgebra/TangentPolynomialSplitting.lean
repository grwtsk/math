/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

The literal polynomial in Mathlib's split-multiplicative predicate, compared
with a supplied integral model before reduction. The exact affine expansion
separates quadratic tangent data from the cubic curve. No conductor or
completed-local statement is inferred. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED: the proof scripts have not been elaborated.
-/
import Mathlib.AlgebraicGeometry.EllipticCurve.Reduction
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Basic
import Mathlib.Algebra.Polynomial.Splits
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.NormNum

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.TangentPolynomialSplitting

open WeierstrassCurve Polynomial

section Algebra
variable {R S : Type*} [CommRing R] [CommRing S]

/-- Exactly the coefficient polynomial used by HasSplitMultiplicativeReduction. -/
def tangentPolynomial (W : WeierstrassCurve R) : R[X] :=
  C W.c₄ * X^2 + C (W.a₁ * W.c₄) * X -
    C (54*W.b₆ - 3*W.b₂*W.b₄ + W.a₂*W.c₄)

theorem map_tangentPolynomial (W : WeierstrassCurve R) (f : R →+* S) :
    (tangentPolynomial W).map f = tangentPolynomial (W.map f) := by
  simp [tangentPolynomial]

/-- The homogeneous degree-two Taylor term, not the full Weierstrass equation. -/
def tangentForm (W : WeierstrassCurve R) (x u v : R) : R :=
  v^2 + W.a₁*u*v - (3*x + W.a₂)*u^2

/-- A coefficient identity with an explicit cubic remainder; no sampling. -/
theorem affine_expansion (W : WeierstrassCurve R) (x y u v : R) :
    W.toAffine.polynomial.evalEval (x+u) (y+v) =
      W.toAffine.polynomial.evalEval x y +
      W.toAffine.polynomialX.evalEval x y * u +
      W.toAffine.polynomialY.evalEval x y * v + tangentForm W x u v - u^3 := by
  simp only [Affine.evalEval_polynomial, Affine.evalEval_polynomialX,
    Affine.evalEval_polynomialY, tangentForm]
  ring

/-- At an actual singular point the constant and first-jet terms vanish. -/
theorem singular_expansion (W : WeierstrassCurve R) (x y : R)
    (he : W.toAffine.Equation x y)
    (hx : W.toAffine.polynomialX.evalEval x y = 0)
    (hy : W.toAffine.polynomialY.evalEval x y = 0) (u v : R) :
    W.toAffine.polynomial.evalEval (x+u) (y+v) = tangentForm W x u v - u^3 := by
  rw [affine_expansion]
  change W.toAffine.polynomial.evalEval x y = 0 at he
  simp only [he, hx, hy, zero_mul, zero_add]

end Algebra

section Field
variable {F K : Type*} [Field F] [Field K]

/-- Splitting is invariant under an actual coefficient-field equivalence. -/
theorem splits_map_equiv (e : F ≃+* K) (f : F[X]) :
    (f.map e.toRingHom).Splits ↔ f.Splits := by
  constructor
  · intro h
    have hi : (f.map e.toRingHom).map e.symm.toRingHom = f := by
      ext i
      simp
    rw [← hi]
    exact h.map e.symm.toRingHom
  · exact fun h => h.map e.toRingHom

theorem splits_C_mul_iff (c : F) (hc : c ≠ 0) (f : F[X]) :
    (C c * f).Splits ↔ f.Splits := by
  constructor
  · intro h
    have hi : C c⁻¹ * (C c * f) = f := by
      rw [← mul_assoc, ← C_mul, inv_mul_cancel₀ hc, C_1, one_mul]
    rw [← hi]
    exact h.C_mul c⁻¹
  · exact fun h => h.C_mul c

/-- Existence of a square root is derived from polynomial splitting and conversely. -/
theorem splits_quadratic_iff (d : F) :
    (X^2 - C d : F[X]).Splits ↔ ∃ r : F, r^2 = d := by
  constructor
  · intro h
    have hd : (X^2 - C d : F[X]).degree ≠ 0 := by
      rw [degree_X_pow_sub_C (by decide : 0 < (2 : ℕ)) d]
      norm_num
    obtain ⟨r, hr⟩ := h.exists_eval_eq_zero hd
    exact ⟨r, by simpa only [eval_sub, eval_pow, eval_X, eval_C, sub_eq_zero] using hr⟩
  · rintro ⟨r, hr⟩
    have hf : (X^2 - C d : F[X]) = (X-C r)*(X+C r) := by
      rw [← hr, map_pow]
      ring
    rw [hf]
    exact (Splits.X_sub_C r).mul (Splits.X_add_C r)

theorem splits_scaled_quadratic_iff (c d : F) (hc : c ≠ 0) :
    (C c * (X^2 - C d)).Splits ↔ ∃ r : F, r^2 = d := by
  rw [splits_C_mul_iff c hc, splits_quadratic_iff]

/-- Odd characteristic and nonzero d produce two DISTINCT slopes. -/
theorem distinct_slopes (d r : F) (h2 : (2 : F) ≠ 0) (hd : d ≠ 0)
    (hr : r^2 = d) : r ≠ -r := by
  have hr0 : r ≠ 0 := by
    intro hz
    apply hd
    simpa only [hz, zero_pow (by decide : (2 : ℕ) ≠ 0)] using hr.symm
  intro h
  have hz : (2 : F)*r = 0 := by linear_combination h
  exact (mul_ne_zero h2 hr0) hz

theorem tangent_factorization (d r u v : F) (hr : r^2 = d) :
    v^2-d*u^2 = (v-r*u)*(v+r*u) := by
  rw [← hr]
  ring

end Field

section LocalModel
variable (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
variable {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]

/-- The canonical integral model equals the supplied model, by coefficient injectivity. -/
theorem supplied_integralModel (W : WeierstrassCurve R)
    [IsIntegral R (W.baseChange K)] :
    WeierstrassCurve.integralModel R (W.baseChange K) = W := by
  apply WeierstrassCurve.ext
  all_goals apply IsFractionRing.injective R K
  · simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_a₁] using
      integralModel_a₁_eq R (W.baseChange K)
  · simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_a₂] using
      integralModel_a₂_eq R (W.baseChange K)
  · simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_a₃] using
      integralModel_a₃_eq R (W.baseChange K)
  · simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_a₄] using
      integralModel_a₄_eq R (W.baseChange K)
  · simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_a₆] using
      integralModel_a₆_eq R (W.baseChange K)

/-- Bind the polynomial to the EXISTING predicate. Multiplicative reduction is retained. -/
theorem split_iff_supplied_model (W : WeierstrassCurve R)
    (hM : HasMultiplicativeReduction R (W.baseChange K)) :
    HasSplitMultiplicativeReduction R (W.baseChange K) ↔
      ((tangentPolynomial W).map (algebraMap R (IsLocalRing.ResidueField R))).Splits := by
  letI := hM
  constructor
  · intro h
    have hs := h.splitMultiplicativeReduction
    change ((tangentPolynomial (WeierstrassCurve.integralModel R (W.baseChange K))).map
      (algebraMap R (IsLocalRing.ResidueField R))).Splits at hs
    rwa [supplied_integralModel R W] at hs
  · intro hs
    refine { toHasMultiplicativeReduction := hM, splitMultiplicativeReduction := ?_ }
    change ((tangentPolynomial (WeierstrassCurve.integralModel R (W.baseChange K))).map
      (algebraMap R (IsLocalRing.ResidueField R))).Splits
    rwa [supplied_integralModel R W]

end LocalModel
end GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.TangentPolynomialSplitting
