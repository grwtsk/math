# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineReconstruction.Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7c79497fed4c76bc4cefc259b9b66f048157485` · SHA-256 `7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.AffineGauge
import Mathlib.Analysis.Calculus.MeanValue

/-!
# Reconstruction modulo affine gauge

This module proves the converse direction of Phase-I affine gauge invariance on
the full real normed vector space.

If two analytic dispersion reconstructions have the same positive dispersion
geometry at every point, then their Hessians agree.  The gradient fields
therefore have the same Frechet derivative everywhere, so their difference is a
constant covector.  After subtracting that linear term, the two potentials have
the same Frechet derivative everywhere, so their remaining difference is a
constant scalar.

Thus equality of dispersion geometry reconstructs the potential globally up to
an affine functional.
-/

namespace FormalResearch.PositiveAtlas

universe u

variable {E : Type u}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace AnalyticDispersionReconstruction

/-- Pointwise equality of dispersion geometry implies pointwise equality of the
analytic Hessian operators. -/
theorem hessian_eq_of_sameDispersionGeometry
    {D₁ D₂ : AnalyticDispersionReconstruction E}
    (h : SameDispersionGeometry D₁ D₂) (x : E) :
    D₁.hessian x = D₂.hessian x := by
  apply ContinuousLinearMap.ext
  intro u
  apply ContinuousLinearMap.ext
  intro v
  rw [← D₁.geometryAt_form x u v, ← D₂.geometryAt_form x u v]
  rw [h x]

/-- Equal dispersion geometry forces the gradient fields to differ by one
constant covector. -/
theorem exists_gradient_affine_shift_of_sameDispersionGeometry
    {D₁ D₂ : AnalyticDispersionReconstruction E}
    (h : SameDispersionGeometry D₁ D₂) :
    ∃ ell : E →L[ℝ] ℝ, ∀ x : E,
      D₁.gradient x = D₂.gradient x + ell := by
  have hd₁ : Differentiable ℝ D₁.gradient :=
    fun x => (D₁.gradient_hasFDeriv x).differentiableAt
  have hd₂ : Differentiable ℝ D₂.gradient :=
    fun x => (D₂.gradient_hasFDeriv x).differentiableAt
  have hfderiv : ∀ x : E,
      fderiv ℝ D₁.gradient x = fderiv ℝ D₂.gradient x := by
    intro x
    rw [D₁.fderiv_gradient_eq, D₂.fderiv_gradient_eq,
      hessian_eq_of_sameDispersionGeometry h x]
  obtain ⟨ell, hell⟩ :=
    isOpen_univ.exists_eq_add_of_fderiv_eq
      isPreconnected_univ hd₁.differentiableOn hd₂.differentiableOn
      (fun x _ => hfderiv x)
  refine ⟨ell, ?_⟩
  intro x
  exact hell (Set.mem_univ x)

/-- Equal dispersion geometry reconstructs the potentials up to one global
affine functional. -/
theorem exists_affine_difference_of_sameDispersionGeometry
    {D₁ D₂ : AnalyticDispersionReconstruction E}
    (h : SameDispersionGeometry D₁ D₂) :
    ∃ (ell : E →L[ℝ] ℝ) (c : ℝ), ∀ x : E,
      D₁.gradient x = D₂.gradient x + ell ∧
      D₁.potential x = D₂.potential x + ell x + c := by
  obtain ⟨ell, hgrad⟩ :=
    exists_gradient_affine_shift_of_sameDispersionGeometry h
  let shiftedPotential : E → ℝ := fun x => D₂.potential x + ell x
  have hd₁ : Differentiable ℝ D₁.potential :=
    fun x => (D₁.potential_hasFDeriv x).differentiableAt
  have hshifted : Differentiable ℝ shiftedPotential := by
    intro x
    exact ((D₂.potential_hasFDeriv x).add ell.hasFDerivAt).differentiableAt
  have hfderiv : ∀ x : E,
      fderiv ℝ D₁.potential x =
        fderiv ℝ shiftedPotential x := by
    intro x
    have hs :
        fderiv ℝ shiftedPotential x =
          D₂.gradient x + ell := by
      exact ((D₂.potential_hasFDeriv x).add ell.hasFDerivAt).fderiv
    rw [D₁.fderiv_potential_eq, hgrad x, hs]
  obtain ⟨c, hc⟩ :=
    isOpen_univ.exists_eq_add_of_fderiv_eq
      isPreconnected_univ hd₁.differentiableOn
      hshifted.differentiableOn (fun x _ => hfderiv x)
  refine ⟨ell, c, ?_⟩
  intro x
  constructor
  · exact hgrad x
  · have hx := hc (Set.mem_univ x)
    simpa [shiftedPotential, add_assoc] using hx

/-- Equivalent subtraction form of the affine reconstruction theorem. -/
theorem potential_difference_is_affine
    {D₁ D₂ : AnalyticDispersionReconstruction E}
    (h : SameDispersionGeometry D₁ D₂) :
    ∃ (ell : E →L[ℝ] ℝ) (c : ℝ), ∀ x : E,
      D₁.potential x - D₂.potential x = ell x + c := by
  obtain ⟨ell, c, hrec⟩ :=
    exists_affine_difference_of_sameDispersionGeometry h
  refine ⟨ell, c, ?_⟩
  intro x
  have hp := (hrec x).2
  linarith

/-- Equivalent subtraction form for the reconstructed gradient gauge. -/
theorem gradient_difference_is_constant
    {D₁ D₂ : AnalyticDispersionReconstruction E}
    (h : SameDispersionGeometry D₁ D₂) :
    ∃ ell : E →L[ℝ] ℝ, ∀ x : E,
      D₁.gradient x - D₂.gradient x = ell := by
  obtain ⟨ell, hgrad⟩ :=
    exists_gradient_affine_shift_of_sameDispersionGeometry h
  refine ⟨ell, ?_⟩
  intro x
  rw [hgrad x]
  abel

/-- The global reconstruction theorem: on the full vector space, same dispersion
geometry means that all potential ambiguity is affine. -/
theorem sameDispersionGeometry_reconstructs_mod_affine
    {D₁ D₂ : AnalyticDispersionReconstruction E}
    (h : SameDispersionGeometry D₁ D₂) :
    ∃ (ell : E →L[ℝ] ℝ) (c : ℝ),
      (∀ x : E, D₁.gradient x = D₂.gradient x + ell) ∧
      (∀ x : E, D₁.potential x = D₂.potential x + ell x + c) := by
  obtain ⟨ell, c, hrec⟩ :=
    exists_affine_difference_of_sameDispersionGeometry h
  exact ⟨ell, c, fun x => (hrec x).1, fun x => (hrec x).2⟩

end AnalyticDispersionReconstruction

end FormalResearch.PositiveAtlas
```
