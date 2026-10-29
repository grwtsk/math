-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.HarmonicPart.Variant2269ffb7a8b51e766cc2e87efb2820e6753232a3075ceef8624a70e518e5a5cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2269ffb7a8b51e766cc2e87efb2820e6753232a3075ceef8624a70e518e5a5cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.HarmonicPart.Variant2269ffb7a8b51e766cc2e87efb2820e6753232a3075ceef8624a70e518e5a5cc","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"2269ffb7a8b51e766cc2e87efb2820e6753232a3075ceef8624a70e518e5a5cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/new-cache-source-audit/source/2269ffb7a8b51e766cc2e87efb2820e6753232a3075ceef8624a70e518e5a5cc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.HodgeGaugeBounds
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# Harmonic obstruction and gauges in a finite inner-product complex

The harmonic residual is constructed by orthogonal projection onto the actual
boundary range. A closed cochain is exact precisely when that residual vanishes.
The preimage gauge is chosen in the kernel complement; a separately proved
spectral gap then supplies its norm bound. This does not identify a finite
complex with a topological Cech realization.

Direction and evaluation: grwtsk contributors. Formalization: OpenAI Codex.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.HarmonicPart.Variant2269ffb7a8b51e766cc2e87efb2820e6753232a3075ceef8624a70e518e5a5cc

namespace FormalResearch.PositiveAtlas.HodgeFiniteComplex

noncomputable section

variable {E₀ E₁ E₂ : Type*}
variable [NormedAddCommGroup E₀] [InnerProductSpace ℝ E₀] [FiniteDimensional ℝ E₀]
variable [NormedAddCommGroup E₁] [InnerProductSpace ℝ E₁] [FiniteDimensional ℝ E₁]
variable [NormedAddCommGroup E₂] [InnerProductSpace ℝ E₂]

/-- The residual is a vector in the declared cochain space, not a proof field. -/
def harmonicPart (D : E₀ →ₗ[ℝ] E₁) (a : E₁) : E₁ :=
  a - D.range.starProjection a

theorem harmonicPart_adjoint (D : E₀ →ₗ[ℝ] E₁) (a : E₁) :
    D.adjoint (harmonicPart D a) = 0 := by
  have h : harmonicPart D a ∈ D.rangeᗮ :=
    Submodule.sub_starProjection_mem_orthogonal a
  rw [D.orthogonal_range] at h
  exact h

omit [FiniteDimensional ℝ E₁] in
theorem harmonicPart_closed (D : E₀ →ₗ[ℝ] E₁) (F : E₁ →ₗ[ℝ] E₂)
    (hcomplex : F.comp D = 0) (a : E₁) (ha : F a = 0) :
    F (harmonicPart D a) = 0 := by
  have hp : F (D.range.starProjection a) = 0 := by
    obtain ⟨b, hb⟩ := D.range.starProjection_apply_mem a
    rw [← hb]
    change (F.comp D) b = 0
    rw [hcomplex]
    rfl
  simp only [harmonicPart, map_sub, ha, hp, sub_self]

omit [FiniteDimensional ℝ E₁] in
/-- The independently defined residual detects exactness without assuming it. -/
theorem harmonicPart_zero_iff (D : E₀ →ₗ[ℝ] E₁) (a : E₁) :
    harmonicPart D a = 0 ↔ ∃ b : E₀, D b = a := by
  rw [harmonicPart, sub_eq_zero, eq_comm, Submodule.starProjection_eq_self_iff]
  rfl

omit [FiniteDimensional ℝ E₁] in
/-- Every cochain has a boundary plus harmonic residual, with the boundary
preimage in the orthogonal complement of the actual kernel. -/
theorem exists_gauge_decomposition (D : E₀ →ₗ[ℝ] E₁) (a : E₁) :
    ∃ b : E₀, b ∈ D.kerᗮ ∧ a = D b + harmonicPart D a := by
  obtain ⟨u, hu⟩ := D.range.starProjection_apply_mem a
  obtain ⟨k, hk, b, hb, hu'⟩ := D.ker.exists_add_mem_mem_orthogonal u
  have hk' : D k = 0 := hk
  have hb' : D b = D.range.starProjection a := by
    rw [hu', map_add, hk', zero_add] at hu
    exact hu
  refine ⟨b, hb, ?_⟩
  rw [hb', harmonicPart]
  abel

/-- Closedness places the constructed residual in both actual kernels. -/
theorem closed_hodge_decomposition (D : E₀ →ₗ[ℝ] E₁) (F : E₁ →ₗ[ℝ] E₂)
    (hcomplex : F.comp D = 0) (a : E₁) (ha : F a = 0) :
    ∃ b : E₀, b ∈ D.kerᗮ ∧ a = D b + harmonicPart D a ∧
      F (harmonicPart D a) = 0 ∧ D.adjoint (harmonicPart D a) = 0 := by
  obtain ⟨b, hb, hd⟩ := exists_gauge_decomposition D a
  exact ⟨b, hb, hd, harmonicPart_closed D F hcomplex a ha, harmonicPart_adjoint D a⟩

omit [FiniteDimensional ℝ E₁] in
/-- A proved positive spectral gap prices the exact kernel-complement gauge. -/
theorem exact_gauge_bound (D : E₀ →ₗ[ℝ] E₁) (a : E₁)
    (ha : harmonicPart D a = 0) (gapConstant : ℝ) (hgapConstant : 0 < gapConstant)
    (hgap : ∀ b : E₀, b ∈ D.kerᗮ → gapConstant * ‖b‖ ^ 2 ≤ ‖D b‖ ^ 2) :
    ∃ b : E₀, b ∈ D.kerᗮ ∧ D b = a ∧ ‖b‖ ≤ ‖a‖ / Real.sqrt gapConstant := by
  obtain ⟨b, hb, hd⟩ := exists_gauge_decomposition D a
  rw [ha, add_zero] at hd
  exact ⟨b, hb, hd.symm,
    HodgeGaugeBounds.gauge_norm_le D b a gapConstant hgapConstant hd.symm (hgap b hb)⟩

end
end FormalResearch.PositiveAtlas.HodgeFiniteComplex
