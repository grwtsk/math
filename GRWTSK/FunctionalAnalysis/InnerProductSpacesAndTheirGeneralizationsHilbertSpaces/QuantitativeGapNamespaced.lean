-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ProtectedProjector.Variant8e856321d85989203a32fd2d09f45a951e3a14ae115e03f8c4e539b9d6fc5cd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e856321d85989203a32fd2d09f45a951e3a14ae115e03f8c4e539b9d6fc5cd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ProtectedProjector.Variant8e856321d85989203a32fd2d09f45a951e3a14ae115e03f8c4e539b9d6fc5cd0","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"8e856321d85989203a32fd2d09f45a951e3a14ae115e03f8c4e539b9d6fc5cd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/post-release-independent-reconstruction-215333-2/FormalResearch/PositiveAtlas/QuantitativeGap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Tactic

/-!
# Metric-aware quantitative coercivity transport

The inner products and their actual adjoints are part of the type. Supported
vectors are a declared submodule; admissibility transport is a separate premise.
An orthogonal protected projector is distinct from a reconstruction idempotent.
The lower quadratic bound alone is not a positive spectral-gap statement.

Originating direction, theorem selection and evaluation: grwtsk contributors.
Proof construction: OpenAI Codex. No physical Hamiltonian is supplied here.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ProtectedProjector.Variant8e856321d85989203a32fd2d09f45a951e3a14ae115e03f8c4e539b9d6fc5cd0

noncomputable section

namespace FormalResearch.PositiveAtlas.QuantitativeGap

open scoped InnerProductSpace

variable {𝕜 V W : Type*} [RCLike 𝕜]
variable [NormedAddCommGroup V] [InnerProductSpace 𝕜 V] [CompleteSpace V]
variable [NormedAddCommGroup W] [InnerProductSpace 𝕜 W] [CompleteSpace W]

/-- An orthogonal protected-sector projection in the declared Hilbert metric. -/
structure ProtectedProjector (V : Type*) [NormedAddCommGroup V]
    [InnerProductSpace 𝕜 V] [CompleteSpace V] where
  projection : V →L[𝕜] V
  idempotent : projection.comp projection = projection
  selfAdjoint : IsSelfAdjoint projection

/-- The complementary orthogonal projection uses the same metric and carrier. -/
def ProtectedProjector.complement (P : ProtectedProjector (𝕜 := 𝕜) V) : V →L[𝕜] V :=
  ContinuousLinearMap.id 𝕜 V - P.projection

/-- Quadratic coercivity on the explicitly supported domain, with its actual norm. -/
def CoerciveOn (H : V →L[𝕜] V) (P : ProtectedProjector (𝕜 := 𝕜) V)
    (supported : Submodule 𝕜 V) (Δ : ℝ) : Prop :=
  ∀ x ∈ supported, Δ * ‖P.complement x‖ ^ 2 ≤ RCLike.re ⟪x, H x⟫_𝕜

/-- Lower constants may be weakened on precisely the same supported domain. -/
theorem coerciveOn_mono {H : V →L[𝕜] V} {P : ProtectedProjector (𝕜 := 𝕜) V}
    {supported : Submodule 𝕜 V} {δ Δ : ℝ} (h : CoerciveOn H P supported Δ)
    (hδ : δ ≤ Δ) : CoerciveOn H P supported δ := by
  intro x hx
  exact (mul_le_mul_of_nonneg_right hδ (sq_nonneg _)).trans (h x hx)

/-- Exact `T† H T + E` transport loses precisely `ε` after the lower norm factor
`c`. The map runs from the new supported domain to the old supported domain. -/
theorem pullback_coerciveOn
    (H : V →L[𝕜] V) (H' E : W →L[𝕜] W) (T : W →L[𝕜] V)
    (P : ProtectedProjector (𝕜 := 𝕜) V) (P' : ProtectedProjector (𝕜 := 𝕜) W)
    (supported : Submodule 𝕜 V) (supported' : Submodule 𝕜 W)
    (Δ c ε : ℝ) (hΔ : 0 ≤ Δ) (hc : 0 ≤ c)
    (hsource : H' = T.adjoint.comp (H.comp T) + E)
    (hmap : ∀ x ∈ supported', T x ∈ supported)
    (hcoercive : CoerciveOn H P supported Δ)
    (hnorm : ∀ x ∈ supported', c * ‖P'.complement x‖ ≤ ‖P.complement (T x)‖)
    (herror : ∀ x ∈ supported', -ε * ‖P'.complement x‖ ^ 2 ≤
      RCLike.re ⟪x, E x⟫_𝕜) :
    CoerciveOn H' P' supported' (Δ * c ^ 2 - ε) := by
  intro x hx
  have hsq : c ^ 2 * ‖P'.complement x‖ ^ 2 ≤ ‖P.complement (T x)‖ ^ 2 := by
    simpa only [mul_pow] using
      (sq_le_sq₀ (mul_nonneg hc (norm_nonneg _)) (norm_nonneg _)).mpr (hnorm x hx)
  have hlower := hcoercive (T x) (hmap x hx)
  have htransport := mul_le_mul_of_nonneg_left hsq hΔ
  have herr := herror x hx
  rw [hsource, add_apply, ContinuousLinearMap.comp_apply,
    ContinuousLinearMap.comp_apply, inner_add_right,
    ContinuousLinearMap.adjoint_inner_right, map_add]
  nlinarith

/-- Positive coercivity plus actual protected-sector annihilation identifies
the full kernel. This prevents protected small positive modes from being hidden.
The support here is the entire declared Hilbert carrier. -/
theorem kernel_eq_protected_range
    (H : V →L[𝕜] V) (P : ProtectedProjector (𝕜 := 𝕜) V) (Δ : ℝ)
    (hΔ : 0 < Δ) (hcoercive : CoerciveOn H P ⊤ Δ)
    (hannihilate : H.comp P.projection = 0) :
    LinearMap.ker H.toLinearMap = LinearMap.range P.projection.toLinearMap := by
  ext x
  constructor
  · intro hx
    have hz : H x = 0 := hx
    have hb := hcoercive x (Submodule.mem_top)
    rw [hz, inner_zero_right, map_zero] at hb
    have hn : ‖P.complement x‖ = 0 := by
      have hs : ‖P.complement x‖ ^ 2 ≤ 0 :=
        (mul_le_mul_left hΔ).mp (by simpa using hb)
      have hnn := norm_nonneg (P.complement x)
      nlinarith
    have hQ : P.complement x = 0 := norm_eq_zero.mp hn
    have he : x = P.projection x := by
      exact sub_eq_zero.mp hQ
    exact ⟨x, he.symm⟩
  · rintro ⟨y, rfl⟩
    change H (P.projection y) = 0
    exact congrArg (fun f : V →L[𝕜] V => f y) hannihilate

end FormalResearch.PositiveAtlas.QuantitativeGap
