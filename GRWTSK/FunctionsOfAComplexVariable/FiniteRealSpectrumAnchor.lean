/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Calculus.LogDeriv
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Imaginary anchors for finite real spectral products

The finite real family `λ : ι → ℝ` is indexed with repetitions: no injectivity
hypothesis is imposed and no set of distinct eigenvalues is substituted for it.
At the nonreal anchor `β * I`, the imaginary part of the logarithmic derivative
of a real-exponentially tilted normalized product determines exactly
`∑ j, (λ j ^ 2 + β ^ 2)⁻¹`.

This is a standard finite-product/Cauchy-kernel calculation used in RP-OC-08
(edition 1.0, section 20.4 of *Typed Mathematical Architecture and
Zero-Distribution-Dependent Continuity*). It is not an arithmetic realization,
a determinant compactness theorem, a Hurwitz theorem, or a proof of GRH.

Source and verification scope: `math` issue #1805 and adjacent provenance.
Elaboration, fresh kernel replay, and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

noncomputable section

open scoped BigOperators Topology
open Filter

namespace GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum

variable {ι : Type*} [Fintype ι]

/-- A nonreal normalization point when `β ≠ 0`. -/
def anchor (β : ℝ) : ℂ := (β : ℂ) * Complex.I

@[simp] theorem anchor_im (β : ℝ) : (anchor β).im = β := by
  simp [anchor]

/-- The finite root product, with every indexed occurrence retained. -/
def rootProduct (λ : ι → ℝ) (z : ℂ) : ℂ := ∏ j, (z - (λ j : ℂ))

/-- Normalization does not require the real point zero to be zero-free. -/
def normalizedProduct (λ : ι → ℝ) (β : ℝ) (z : ℂ) : ℂ :=
  rootProduct λ z * (rootProduct λ (anchor β))⁻¹

/-- Allow a complex slope so that its contribution to the anchor identity is explicit. -/
def normalizedExpProduct (λ : ι → ℝ) (β : ℝ) (c : ℂ) (z : ℂ) : ℂ :=
  Complex.exp (c * (z - anchor β)) * normalizedProduct λ β z

/-- Reciprocal-square spectral mass, including repeated entries. -/
def anchorMass (λ : ι → ℝ) (β : ℝ) : ℝ :=
  ∑ j, (λ j ^ 2 + β ^ 2)⁻¹

lemma sub_ofReal_ne_zero {z : ℂ} (hz : z.im ≠ 0) (x : ℝ) :
    z - (x : ℂ) ≠ 0 := by
  intro h
  have him := congrArg Complex.im h
  exact hz (by simpa using him)

lemma rootProduct_ne_zero {z : ℂ} (λ : ι → ℝ) (hz : z.im ≠ 0) :
    rootProduct λ z ≠ 0 := by
  classical
  unfold rootProduct
  exact Finset.prod_ne_zero_iff.mpr fun j _ => sub_ofReal_ne_zero hz (λ j)

@[simp] theorem normalizedProduct_anchor (λ : ι → ℝ) {β : ℝ} (hβ : β ≠ 0) :
    normalizedProduct λ β (anchor β) = 1 := by
  unfold normalizedProduct
  exact mul_inv_cancel₀ (rootProduct_ne_zero λ (by simpa using hβ))

@[simp] theorem normalizedExpProduct_anchor (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c : ℂ) : normalizedExpProduct λ β c (anchor β) = 1 := by
  simp [normalizedExpProduct, normalizedProduct_anchor λ hβ]

/-- Scalar normalization and an exponential cannot introduce nonreal zeros. -/
theorem normalizedExpProduct_ne_zero (λ : ι → ℝ) {β : ℝ} (hβ : β ≠ 0)
    (c : ℂ) {z : ℂ} (hz : z.im ≠ 0) : normalizedExpProduct λ β c z ≠ 0 := by
  unfold normalizedExpProduct normalizedProduct
  exact mul_ne_zero (Complex.exp_ne_zero _)
    (mul_ne_zero (rootProduct_ne_zero λ hz)
      (inv_ne_zero (rootProduct_ne_zero λ (by simpa using hβ))))

theorem normalizedExpProduct_zero_im (λ : ι → ℝ) {β : ℝ} (hβ : β ≠ 0)
    (c : ℂ) {z : ℂ} (hz : normalizedExpProduct λ β c z = 0) : z.im = 0 := by
  by_contra him
  exact normalizedExpProduct_ne_zero λ hβ c him hz

theorem differentiable_normalizedExpProduct (λ : ι → ℝ) (β : ℝ) (c : ℂ) :
    Differentiable ℂ (normalizedExpProduct λ β c) := by
  unfold normalizedExpProduct normalizedProduct rootProduct
  fun_prop

/-- Finite product differentiation, without deduplication of roots. -/
theorem logDeriv_rootProduct (λ : ι → ℝ) {z : ℂ} (hz : z.im ≠ 0) :
    logDeriv (rootProduct λ) z = ∑ j, (z - (λ j : ℂ))⁻¹ := by
  classical
  calc
    logDeriv (rootProduct λ) z =
        ∑ j, logDeriv (fun w : ℂ => w - (λ j : ℂ)) z := by
      simpa only [rootProduct] using
        (logDeriv_fun_prod (s := Finset.univ)
          (f := fun j (w : ℂ) => w - (λ j : ℂ))
          (fun j _ => sub_ofReal_ne_zero hz (λ j))
          (fun j _ => (differentiableAt_id.sub_const (λ j : ℂ))))
    _ = ∑ j, (z - (λ j : ℂ))⁻¹ := by
      apply Finset.sum_congr rfl
      intro j _
      rw [logDeriv_apply, ((hasDerivAt_id z).sub_const (λ j : ℂ)).deriv]
      simp only [one_div]

theorem logDeriv_normalizedProduct (λ : ι → ℝ) {β : ℝ} (hβ : β ≠ 0)
    {z : ℂ} (hz : z.im ≠ 0) :
    logDeriv (normalizedProduct λ β) z = ∑ j, (z - (λ j : ℂ))⁻¹ := by
  unfold normalizedProduct
  rw [logDeriv_mul_const z _
    (inv_ne_zero (rootProduct_ne_zero λ (by simpa using hβ)))]
  exact logDeriv_rootProduct λ hz

lemma logDeriv_exp_linear (c a z : ℂ) :
    logDeriv (fun w : ℂ => Complex.exp (c * (w - a))) z = c := by
  have hd := (((hasDerivAt_id z).sub_const a).const_mul c).cexp
  rw [logDeriv_apply, hd.deriv]
  field_simp [Complex.exp_ne_zero] <;> ring

/-- The exponential slope is part of the source, not a disposable normalization. -/
theorem logDeriv_normalizedExpProduct (λ : ι → ℝ) {β : ℝ} (hβ : β ≠ 0)
    (c : ℂ) {z : ℂ} (hz : z.im ≠ 0) :
    logDeriv (normalizedExpProduct λ β c) z = c + ∑ j, (z - (λ j : ℂ))⁻¹ := by
  have hp : normalizedProduct λ β z ≠ 0 :=
    mul_ne_zero (rootProduct_ne_zero λ hz)
      (inv_ne_zero (rootProduct_ne_zero λ (by simpa using hβ)))
  have he : DifferentiableAt ℂ (fun w : ℂ => Complex.exp (c * (w - anchor β))) z := by
    fun_prop
  have hd : DifferentiableAt ℂ (normalizedProduct λ β) z := by
    unfold normalizedProduct rootProduct
    fun_prop
  unfold normalizedExpProduct
  rw [logDeriv_fun_mul z (Complex.exp_ne_zero _) hp he hd,
    logDeriv_exp_linear, logDeriv_normalizedProduct λ hβ hz]

lemma inverse_anchor_sub_im (β x : ℝ) :
    ((anchor β - (x : ℂ))⁻¹).im = -β * (x ^ 2 + β ^ 2)⁻¹ := by
  simp [anchor, Complex.inv_im, Complex.normSq_apply, pow_two, div_eq_mul_inv]

/-- Exact finite spectral identity, including the imaginary exponential-slope defect. -/
theorem im_logDeriv_normalizedExpProduct_anchor (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c : ℂ) :
    (logDeriv (normalizedExpProduct λ β c) (anchor β)).im =
      c.im - β * anchorMass λ β := by
  rw [logDeriv_normalizedExpProduct λ hβ c (by simpa using hβ), Complex.add_im]
  have hsum : (∑ j, (anchor β - (λ j : ℂ))⁻¹).im = -β * anchorMass λ β := by
    change Complex.imAddGroupHom (∑ j, (anchor β - (λ j : ℂ))⁻¹) = _
    rw [map_sum]
    change (∑ j, ((anchor β - (λ j : ℂ))⁻¹).im) = _
    simp_rw [inverse_anchor_sub_im]
    exact (Finset.mul_sum Finset.univ (fun j => (λ j ^ 2 + β ^ 2)⁻¹) (-β)).symm
  rw [hsum]
  ring

/-- For a real exponential slope, one imaginary anchor recovers the spectral mass. -/
theorem anchorMass_eq_neg_im_logDeriv_div (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (r : ℝ) :
    anchorMass λ β =
      -(logDeriv (normalizedExpProduct λ β (r : ℂ)) (anchor β)).im / β := by
  rw [im_logDeriv_normalizedExpProduct_anchor λ hβ]
  simp only [Complex.ofReal_im, zero_sub, neg_neg]
  field_simp [hβ] <;> ring

theorem anchorMass_nonneg (λ : ι → ℝ) (β : ℝ) : 0 ≤ anchorMass λ β := by
  unfold anchorMass
  exact Finset.sum_nonneg fun j _ => inv_nonneg.mpr (add_nonneg (sq_nonneg _) (sq_nonneg _))

/-- A bound on the anchor logarithmic derivative bounds the whole finite spectral mass. -/
theorem anchorMass_le_of_logDeriv_bound (λ : ι → ℝ) {β M : ℝ}
    (hβ : 0 < β) (r : ℝ)
    (hM : ‖logDeriv (normalizedExpProduct λ β (r : ℂ)) (anchor β)‖ ≤ M) :
    anchorMass λ β ≤ M / β := by
  rw [anchorMass_eq_neg_im_logDeriv_div λ hβ.ne' r]
  apply (div_le_div_iff_of_pos_right hβ).mpr
  exact ((neg_le_abs _).trans (Complex.abs_im_le_norm _)).trans hM

/-- A repeated zero contributes once per index, not once per distinct root. -/
theorem anchorMass_two_zero_roots (β : ℝ) :
    anchorMass (fun _ : Fin 2 => (0 : ℝ)) β = 2 * (β ^ 2)⁻¹ := by
  simp [anchorMass, Fin.sum_univ_succ, two_mul]

/-- A complex exponential slope invalidates the real-slope mass extraction rule. -/
theorem nonreal_slope_obstruction :
    -(logDeriv (normalizedExpProduct (fun _ : Fin 0 => (0 : ℝ)) 1 Complex.I)
      (anchor 1)).im ≠ anchorMass (fun _ : Fin 0 => (0 : ℝ)) 1 := by
  rw [im_logDeriv_normalizedExpProduct_anchor _ (by norm_num)]
  norm_num [anchorMass]

section Limits

variable (d : ℕ → ℕ) (λ : (n : ℕ) → Fin (d n) → ℝ) (r : ℕ → ℝ)
  {β : ℝ} {f : ℂ → ℂ}

/-- The fixed anchor rules out an identically zero locally uniform limit. -/
theorem limit_anchor_eq_one (hβ : β ≠ 0)
    (hconv : TendstoLocallyUniformlyOn
      (fun n => normalizedExpProduct (λ n) β (r n : ℂ)) f atTop Set.univ) :
    f (anchor β) = 1 := by
  have hpoint := hconv.tendsto_at (Set.mem_univ (anchor β))
  have hconst : (fun n => normalizedExpProduct (λ n) β (r n : ℂ) (anchor β)) =
      (fun _ : ℕ => (1 : ℂ)) :=
    funext fun n => normalizedExpProduct_anchor (λ n) hβ (r n : ℂ)
  rw [hconst] at hpoint
  exact tendsto_nhds_unique hpoint tendsto_const_nhds

/-- Genuine locally uniform source convergence forces convergence of the anchor mass.
This is a necessary consequence; it does not construct such a convergent family. -/
theorem tendsto_anchorMass_of_locallyUniform (hβ : β ≠ 0)
    (hconv : TendstoLocallyUniformlyOn
      (fun n => normalizedExpProduct (λ n) β (r n : ℂ)) f atTop Set.univ) :
    Tendsto (fun n => anchorMass (λ n) β) atTop
      (𝓝 (-(logDeriv f (anchor β)).im / β)) := by
  have hf : f (anchor β) ≠ 0 := by
    rw [limit_anchor_eq_one d λ r hβ hconv]
    exact one_ne_zero
  have hlog := Complex.logDeriv_tendsto isOpen_univ (Set.mem_univ (anchor β)) hconv
    (Filter.Eventually.of_forall fun n =>
      (differentiable_normalizedExpProduct (λ n) β (r n : ℂ)).differentiableOn) hf
  have him := Complex.continuous_im.continuousAt.tendsto.comp hlog
  have hmass : Tendsto
      (fun n => -(logDeriv (normalizedExpProduct (λ n) β (r n : ℂ))
        (anchor β)).im / β) atTop (𝓝 (-(logDeriv f (anchor β)).im / β)) :=
    him.neg.div_const β
  have heq : (fun n => -(logDeriv (normalizedExpProduct (λ n) β (r n : ℂ))
      (anchor β)).im / β) = (fun n => anchorMass (λ n) β) :=
    funext fun n => (anchorMass_eq_neg_im_logDeriv_div (λ n) hβ (r n)).symm
  rwa [heq] at hmass

end Limits

end GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum
