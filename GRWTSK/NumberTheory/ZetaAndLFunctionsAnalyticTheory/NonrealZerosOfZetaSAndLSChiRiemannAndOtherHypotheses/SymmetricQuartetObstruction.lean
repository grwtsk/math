/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DirichletQuadraticClusterReturn
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Symmetric quartets: strip confinement does not imply critical-line localization

RP-OC-09 / NC9-SYM. Source: grwtsk contributors, *Typed Mathematical Architecture
and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), sections
14.5 and 20.5, printed pages 30 and 45. The function below is the literal
quartic from the monograph, not an arithmetic L-function.

This file reuses RP-OC-05's `quadratic`, `AllRootsReal`, and analytic collision
order, and RP-OC-02/05's spectral/arithmetic coordinates. For nonzero separation
it has nonreal roots even when EVERY root is inside the critical spectral
strip. At zero separation the two distinct centers have analytic order two.
The center-zero regression instead has order four; a distinct-root set would
lose this information. The final witness concerns the synthetic quartic only,
not `DirichletCharacter.LFunction` or the original pole-inclusive Weil form.

Source proof candidate. Elaboration, fresh kernel replay, transitive axiom
audit, CI and independent mathematical review: NOT_RUN. No novelty asserted.
See the adjacent provenance records and grwtsk/math#1803.
-/

noncomputable section

namespace GRWTSK.NumberTheory.SymmetricQuartetObstruction

open GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality
open GRWTSK.Analysis.ComplexAnalysis
open GRWTSK.NumberTheory.WeilNegativeWitness (spectralCoordinate)
open GRWTSK.NumberTheory.DirichletQuadraticClusterReturn (arithmeticCoordinate)

/-- The monograph's literal synthetic family, with real parameters. -/
def quartet (gamma epsilon : ℝ) (z : ℂ) : ℂ :=
  ((z - (gamma : ℂ)) ^ 2 + (epsilon : ℂ) ^ 2) *
    ((z + (gamma : ℂ)) ^ 2 + (epsilon : ℂ) ^ 2)

/-- Return to the already maintained quadratic cluster representation. -/
theorem quartet_eq_quadratics (gamma epsilon : ℝ) (z : ℂ) :
    quartet gamma epsilon z =
      quadratic gamma (-(epsilon ^ 2)) z * quadratic (-gamma) (-(epsilon ^ 2)) z := by
  simp [quartet, quadratic, sub_neg_eq_add]

/-- The coefficient identity makes the real, monic, quartic source explicit. -/
theorem quartet_expansion (gamma epsilon : ℝ) (z : ℂ) :
    quartet gamma epsilon z = z ^ 4 +
      2 * ((epsilon : ℂ) ^ 2 - (gamma : ℂ) ^ 2) * z ^ 2 +
      ((gamma : ℂ) ^ 2 + (epsilon : ℂ) ^ 2) ^ 2 := by
  unfold quartet
  ring

theorem quartet_even (gamma epsilon : ℝ) (z : ℂ) :
    quartet gamma epsilon (-z) = quartet gamma epsilon z := by
  rw [quartet_expansion, quartet_expansion]
  ring

theorem quartet_conj (gamma epsilon : ℝ) (z : ℂ) :
    quartet gamma epsilon (starRingEnd ℂ z) =
      starRingEnd ℂ (quartet gamma epsilon z) := by
  simp [quartet, map_mul, map_add, map_sub, map_pow]

theorem quartet_differentiable (gamma epsilon : ℝ) :
    Differentiable ℂ (quartet gamma epsilon) := by
  unfold quartet
  fun_prop

/-- Interchanging the two centers changes neither the function nor its order. -/
theorem quartet_neg_center (gamma epsilon : ℝ) :
    quartet (-gamma) epsilon = quartet gamma epsilon := by
  funext z
  simp only [quartet, Complex.ofReal_neg]
  ring

theorem imaginary_displacement_sq (epsilon : ℝ) :
    ((epsilon : ℂ) * Complex.I) ^ 2 = (-(epsilon ^ 2) : ℝ) := by
  rw [mul_pow, Complex.I_sq]
  push_cast
  ring

/-- Four linear factors are retained even when some labels collide. -/
theorem quartet_factorization (gamma epsilon : ℝ) (z : ℂ) :
    quartet gamma epsilon z =
      ((z - ((gamma : ℂ) + (epsilon : ℂ) * Complex.I)) *
        (z - ((gamma : ℂ) - (epsilon : ℂ) * Complex.I))) *
      ((z - (((-gamma : ℝ) : ℂ) + (epsilon : ℂ) * Complex.I)) *
        (z - (((-gamma : ℝ) : ℂ) - (epsilon : ℂ) * Complex.I))) := by
  rw [quartet_eq_quadratics,
    quadratic_eq_two_factors gamma (-(epsilon ^ 2))
      ((epsilon : ℂ) * Complex.I) z (imaginary_displacement_sq epsilon),
    quadratic_eq_two_factors (-gamma) (-(epsilon ^ 2))
      ((epsilon : ℂ) * Complex.I) z (imaginary_displacement_sq epsilon)]

/-- Complete zero-set equality, separately from the multiplicity assertions below. -/
theorem quartet_zero_iff (gamma epsilon : ℝ) (z : ℂ) :
    quartet gamma epsilon z = 0 ↔
      (z = (gamma : ℂ) + (epsilon : ℂ) * Complex.I ∨
        z = (gamma : ℂ) - (epsilon : ℂ) * Complex.I) ∨
      (z = ((-gamma : ℝ) : ℂ) + (epsilon : ℂ) * Complex.I ∨
        z = ((-gamma : ℝ) : ℂ) - (epsilon : ℂ) * Complex.I) := by
  rw [quartet_factorization]
  simp only [mul_eq_zero, sub_eq_zero]

theorem quartet_at_positive_root (gamma epsilon : ℝ) :
    quartet gamma epsilon ((gamma : ℂ) + (epsilon : ℂ) * Complex.I) = 0 :=
  (quartet_zero_iff gamma epsilon _).mpr (Or.inl (Or.inl rfl))

/-- Every root has the prescribed displacement; there are no unlisted extra roots. -/
theorem quartet_zero_im_abs (gamma epsilon : ℝ) {z : ℂ}
    (hz : quartet gamma epsilon z = 0) : |z.im| = |epsilon| := by
  rcases (quartet_zero_iff gamma epsilon z).mp hz with (rfl | rfl) | (rfl | rfl) <;>
    simp [Complex.mul_im]

theorem quartet_roots_in_strip (gamma epsilon A : ℝ) (hA : |epsilon| < A)
    {z : ℂ} (hz : quartet gamma epsilon z = 0) : |z.im| < A := by
  rw [quartet_zero_im_abs gamma epsilon hz]
  exact hA

/-- Symmetry is present for every parameter; real-rootedness occurs exactly at collision. -/
theorem quartet_allRootsReal_iff (gamma epsilon : ℝ) :
    AllRootsReal (quartet gamma epsilon) ↔ epsilon = 0 := by
  constructor
  · intro h
    have hi := h _ (quartet_at_positive_root gamma epsilon)
    simpa [Complex.mul_im] using hi
  · intro hepsilon z hz
    rcases (quartet_zero_iff gamma epsilon z).mp hz with (rfl | rfl) | (rfl | rfl) <;>
      simp [hepsilon]

theorem quartet_at_zero (gamma epsilon : ℝ) :
    quartet gamma epsilon 0 = (((gamma ^ 2 + epsilon ^ 2) ^ 2 : ℝ) : ℂ) := by
  unfold quartet
  push_cast
  ring

/-- The source is not the identically zero function; `gamma != 0` suffices. -/
theorem quartet_not_identically_zero (gamma epsilon : ℝ) (hgamma : gamma ≠ 0) :
    quartet gamma epsilon ≠ (fun _ : ℂ => 0) := by
  have hpos : 0 < gamma ^ 2 + epsilon ^ 2 :=
    add_pos_of_pos_of_nonneg (sq_pos_of_ne_zero hgamma) (sq_nonneg epsilon)
  have hn : ((gamma ^ 2 + epsilon ^ 2) ^ 2 : ℝ) ≠ 0 :=
    ne_of_gt (pow_pos hpos 2)
  have hnC : (((gamma ^ 2 + epsilon ^ 2) ^ 2 : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast hn
  intro h
  have h0 := congrFun h 0
  rw [quartet_at_zero] at h0
  exact hnC h0

/-- At distinct centers, the collision has actual analytic order two. -/
theorem quartet_order_at_positive_collision (gamma : ℝ) (hgamma : gamma ≠ 0) :
    analyticOrderAt (quartet gamma 0) (gamma : ℂ) = 2 := by
  have hf : quartet gamma 0 = quadratic gamma 0 * quadratic (-gamma) 0 := by
    funext z
    simpa using quartet_eq_quadratics gamma 0 z
  have hnonzero : quadratic (-gamma) 0 (gamma : ℂ) ≠ 0 := by
    simp only [quadratic, Complex.ofReal_zero, sub_zero]
    apply pow_ne_zero
    intro h
    have hr := congrArg Complex.re h
    simp at hr
    exact hgamma (by linarith)
  rw [hf]
  exact (AnalyticOrderTransport.order_mul_nonzero_right
    (quadratic gamma 0) (quadratic (-gamma) 0) (gamma : ℂ)
    (by unfold quadratic; fun_prop) (by unfold quadratic; fun_prop) hnonzero).trans
      (quadratic_order_at_collision gamma)

theorem quartet_order_at_negative_collision (gamma : ℝ) (hgamma : gamma ≠ 0) :
    analyticOrderAt (quartet gamma 0) (-(gamma : ℂ)) = 2 := by
  simpa only [quartet_neg_center, Complex.ofReal_neg] using
    quartet_order_at_positive_collision (-gamma) (neg_ne_zero.mpr hgamma)

/-- Hostile boundary: merging the centers gives order four, not order two. -/
theorem zero_center_order_four : analyticOrderAt (quartet 0 0) 0 = 4 := by
  have hf : quartet 0 0 = fun z : ℂ => (z - 0) ^ 4 := by
    funext z
    simp [quartet] <;> ring
  rw [hf]
  exact analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := 0) (n := 4)

/-- Exact rejected implication: entire real type, evenness and full strip confinement
still do not imply real-zero localization. No arithmetic functional equation is asserted. -/
theorem symmetric_strip_counterexample (gamma epsilon : ℝ)
    (hgamma : 0 < gamma) (hepsilon : 0 < epsilon) (hhalf : epsilon < 1 / 2) :
    Differentiable ℂ (quartet gamma epsilon) ∧
    (∀ z, quartet gamma epsilon (-z) = quartet gamma epsilon z) ∧
    (∀ z, quartet gamma epsilon (starRingEnd ℂ z) =
      starRingEnd ℂ (quartet gamma epsilon z)) ∧
    quartet gamma epsilon ≠ (fun _ : ℂ => 0) ∧
    (∀ z, quartet gamma epsilon z = 0 → |z.im| < 1 / 2) ∧
    ¬ AllRootsReal (quartet gamma epsilon) := by
  refine ⟨quartet_differentiable gamma epsilon, quartet_even gamma epsilon,
    quartet_conj gamma epsilon,
    quartet_not_identically_zero gamma epsilon (ne_of_gt hgamma), ?_, ?_⟩
  · intro z hz
    exact quartet_roots_in_strip gamma epsilon (1 / 2)
      (by simpa [abs_of_pos hepsilon] using hhalf) hz
  · intro h
    exact (ne_of_gt hepsilon) ((quartet_allRootsReal_iff gamma epsilon).mp h)

/-- Reuse the actual spectral coordinate, but return only to the synthetic source.
This is NOT a zero of `DirichletCharacter.LFunction`. -/
theorem arithmetic_strip_witness (gamma epsilon : ℝ)
    (hepsilon : 0 < epsilon) (hhalf : epsilon < 1 / 2) :
    ∃ s : ℂ, 0 < s.re ∧ s.re < 1 ∧ s.re ≠ 1 / 2 ∧ s.im = gamma ∧
      quartet gamma epsilon (spectralCoordinate s) = 0 := by
  let z : ℂ := (gamma : ℂ) + (epsilon : ℂ) * Complex.I
  let s : ℂ := arithmeticCoordinate z
  have hre : s.re = 1 / 2 - epsilon := by
    simp [s, z, arithmeticCoordinate, Complex.mul_re, Complex.mul_im]
  have him : s.im = gamma := by
    simp [s, z, arithmeticCoordinate, Complex.mul_re, Complex.mul_im]
  have hinverse : spectralCoordinate s = z := by
    apply Complex.ext <;>
      simp [s, z, arithmeticCoordinate, spectralCoordinate,
        Complex.mul_re, Complex.mul_im] <;> ring
  refine ⟨s, ?_, ?_, ?_, him, ?_⟩
  · rw [hre]
    linarith
  · rw [hre]
    linarith
  · rw [hre]
    linarith
  · rw [hinverse]
    exact quartet_at_positive_root gamma epsilon

end GRWTSK.NumberTheory.SymmetricQuartetObstruction
