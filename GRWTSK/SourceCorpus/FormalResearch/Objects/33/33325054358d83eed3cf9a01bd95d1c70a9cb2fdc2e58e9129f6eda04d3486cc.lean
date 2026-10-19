import FormalResearch.PositiveAtlas.AffineReconstruction

/-!
# Equal dispersion geometry does not determine the scalar source root

Batch 25 B25-L05 refers to the existing PositiveAtlas affine-gauge and global
reconstruction modules. This local consumer uses those qualified declarations:
an arbitrary scalar value at a fixed point is compatible with the same full
dispersion geometry, so geometry-only decoding and upper bounds fail on that
information class. Gradient and potential calibration at zero, by contrast,
remove the exact global affine ambiguity. No actual RH source is replaced by
an arbitrary potential and no arithmetic readout law is inferred.

Human root/calibration distinction: grwtsk contributors. Local information
consumer and Lean implementation: OpenAI Codex. PositiveAtlas source modules
retain their FormalResearch.PositiveAtlas identities; their historical credit
and contribution delta remain separate from this local application.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.AffineRootConsumer

open FormalResearch.PositiveAtlas
open AnalyticDispersionReconstruction

universe u
variable {E : Type u} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem arbitrary_scalar_at_same_geometry (D : AnalyticDispersionReconstruction E)
    (x : E) (target : ℝ) :
    ∃ D' : AnalyticDispersionReconstruction E,
      SameDispersionGeometry D' D ∧ D'.potential x = target := by
  refine ⟨D.affineGauge 0 (target - D.potential x),
    D.affineGauge_sameDispersionGeometry 0 _, ?_⟩
  rw [D.affineGauge_potential]
  simp

theorem scalar_root_unbounded_with_fixed_geometry (D : AnalyticDispersionReconstruction E)
    (x : E) (C : ℝ) :
    ∃ D' : AnalyticDispersionReconstruction E,
      SameDispersionGeometry D' D ∧ C < D'.potential x := by
  obtain ⟨D', hg, hv⟩ := arbitrary_scalar_at_same_geometry D x (C + 1)
  exact ⟨D', hg, by rw [hv]; linarith⟩

theorem no_geometry_only_scalar_decoder (D : AnalyticDispersionReconstruction E) (x : E) :
    ¬ ∃ decode : (E → PositiveForm E) → ℝ,
      ∀ D' : AnalyticDispersionReconstruction E, decode D'.geometryAt = D'.potential x := by
  rintro ⟨decode, hdecode⟩
  obtain ⟨D', hg, hv⟩ := arbitrary_scalar_at_same_geometry D x (D.potential x + 1)
  have heq : D'.geometryAt = D.geometryAt := funext hg
  have hd := hdecode D'
  rw [heq, hdecode D, hv] at hd
  linarith

theorem calibrated_geometry_recovers_potential {D₁ D₂ : AnalyticDispersionReconstruction E}
    (hg : SameDispersionGeometry D₁ D₂) (hgrad : D₁.gradient 0 = D₂.gradient 0)
    (hvalue : D₁.potential 0 = D₂.potential 0) :
    D₁.potential = D₂.potential ∧ D₁.gradient = D₂.gradient := by
  obtain ⟨ell, c, hrec⟩ := exists_affine_difference_of_sameDispersionGeometry hg
  have hell : ell = 0 := by
    have hz := (hrec (0 : E)).1
    rw [hgrad] at hz
    exact (add_eq_left.mp hz.symm)
  have hc : c = 0 := by
    have hz := (hrec (0 : E)).2
    rw [hvalue, hell] at hz
    simp only [zero_apply, add_zero] at hz
    exact add_eq_left.mp hz.symm
  constructor
  · funext x
    simpa only [hell, hc, zero_apply, add_zero] using (hrec x).2
  · funext x
    simpa only [hell, add_zero] using (hrec x).1

end GRWTSK.RiemannHypothesis.Conversation.AffineRootConsumer
