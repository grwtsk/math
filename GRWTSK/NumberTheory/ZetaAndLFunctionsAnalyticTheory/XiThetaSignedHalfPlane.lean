/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiThetaAntiPickSource
import Mathlib.Tactic

/-!
# Cleared signed conjugate-zero pair and exact Xi half-plane target

The adjacent XiThetaSignedHalfPlane.md proves analytically, without an RH
premise, the ACTUAL Xi anti-Pick numerator is strictly negative when
Re(w) >= -24 and Im(w) > 0. This is NOT the all-upper-half-plane
RH-equivalent claim. Its theta identity, unconditional genus-zero
factorization and infinite zero-divisor sum are not formalized here.

This file provides only the exact elementary algebra needed by that
argument, a rational source budget, and an explicitly unproved
source-attached statement. No synthetic operator or zero list is used.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.XiThetaSignedHalfPlane

open GRWTSK.NumberTheory.XiThetaAntiPickSource

/-- Source-attached analytic target, not an admitted Lean theorem.
It covers a proper half-plane, NOT all Im(w)>0. -/
def ActualXiSignedHalfPlane : Prop :=
  ∀ w : ℂ, -(24 : ℝ) ≤ w.re →
    0 < w.im → xiAntiPickNumerator w < 0

/-- If a true Xi zero is written rho=1/2+a+i*gamma,
strip containment and the unconditional zero-free w-disc of radius
121/4 force gamma^2 > 30. The analytic disc proof is in the .md. -/
theorem strip_disc_height (a gamma : ℝ)
    (hstrip : a ^ 2 < (1 / 4 : ℝ))
    (hout : (121 / 4 : ℝ) < a ^ 2 + gamma ^ 2) :
    30 < gamma ^ 2 := by
  linarith

/-- Purely rational part of xi(6) < 2*xi(1/2). The xi bounds
themselves are proved in the adjacent analytic note, not Lean. -/
theorem xi_six_center_rational_budget :
    (2 : ℚ) / 63 * ((22 : ℚ) / 7) ^ 3 <
      (113 : ℚ) / 114 := by
  norm_num

/-- Denominator of the conjugate-zero-pair logarithmic derivative,
where u = Re(w)+A and the zeros are -A +/- iB. -/
def pairDenominator (u y B : ℝ) : ℂ :=
  ⟨u ^ 2 - y ^ 2 + B ^ 2, 2 * u * y⟩

/-- Numerator cleared by the squared modulus of the denominator. -/
def pairClearedNumerator (u y B : ℝ) : ℂ :=
  (⟨2 * u, 2 * y⟩ : ℂ) * Complex.conj (pairDenominator u y B)

/-- The exact signed numerator; unlike a Gram-square replacement,
its B^2 term is not discarded. -/
theorem pair_cleared_im (u y B : ℝ) :
    (pairClearedNumerator u y B).im =
      2 * y * (B ^ 2 - u ^ 2 - y ^ 2) := by
  simp [pairClearedNumerator, pairDenominator,
    Complex.mul_im, Complex.conj_re, Complex.conj_im]
  ring

/-- The signed numerator is strictly negative in the true zero
sector once the height/source bounds provide B^2 <= u^2. -/
theorem pair_cleared_im_neg (u y B : ℝ)
    (hy : 0 < y) (hcone : B ^ 2 ≤ u ^ 2) :
    (pairClearedNumerator u y B).im < 0 := by
  rw [pair_cleared_im]
  have hyy : 0 < y ^ 2 := pow_pos hy _
  have hinner : B ^ 2 - u ^ 2 - y ^ 2 < 0 := by
    linarith
  exact mul_neg_of_pos_of_neg (by positivity) hinner

/-- The actual denominator is nonzero for u,y>0. -/
theorem pair_denominator_ne_zero (u y B : ℝ)
    (hu : 0 < u) (hy : 0 < y) :
    pairDenominator u y B ≠ 0 := by
  intro h
  have him : (pairDenominator u y B).im = 0 := by
    rw [h]
    rfl
  have hz : 2 * u * y = 0 := by
    simpa [pairDenominator] using him
  have hp : 0 < 2 * u * y := by positivity
  linarith

end GRWTSK.NumberTheory.XiThetaSignedHalfPlane
