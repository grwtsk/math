# Complete source: GRWTSK.Analysis.FunctionalAnalysis.QuantitativeGap.Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ceab499b608c18ff22d270bbc19b792f45570c6` · SHA-256 `f8fc5e00827c002e851c2d6285872f8d509221420027a5fdfaac4ee4ee56618f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ProtectedProjector.Variant3add27cbc83b5316de91a4e417c9447af59c25f962a562e0a22fd93096353b3d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3add27cbc83b5316de91a4e417c9447af59c25f962a562e0a22fd93096353b3d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ProtectedProjector.Variant3add27cbc83b5316de91a4e417c9447af59c25f962a562e0a22fd93096353b3d","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"3add27cbc83b5316de91a4e417c9447af59c25f962a562e0a22fd93096353b3d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/PositiveAtlas/QuantitativeGap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Metric-aware quantitative coercivity transport

The inner products and their actual adjoints are part of the type. Supported
vectors are a declared submodule; admissibility transport is a separate premise.
An orthogonal protected projector is distinct from a reconstruction idempotent.
The lower quadratic bound alone is not a positive spectral-gap statement.
The pullback inequality itself does not need self-adjointness; its eigenvalue
consequence additionally uses self-adjointness and protected annihilation.

Originating direction, theorem selection and evaluation: grwtsk contributors.
Proof construction: OpenAI Codex. No physical Hamiltonian is supplied here.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ProtectedProjector.Variant3add27cbc83b5316de91a4e417c9447af59c25f962a562e0a22fd93096353b3d

noncomputable section
set_option autoImplicit false

namespace FormalResearch.PositiveAtlas.QuantitativeGap

open scoped InnerProductSpace

variable {𝕜 V W : Type*} [RCLike 𝕜]
variable [NormedAddCommGroup V] [InnerProductSpace 𝕜 V] [CompleteSpace V]
variable [NormedAddCommGroup W] [InnerProductSpace 𝕜 W] [CompleteSpace W]

/-- An orthogonal protected-sector projection in the declared Hilbert metric. -/
structure ProtectedProjector (V : Type*) [NormedAddCommGroup V]
    [InnerProductSpace 𝕜 V] [CompleteSpace V] where
  /-- The continuous projection onto the protected sector in the declared metric. -/
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
        le_of_mul_le_mul_left (by simpa using hb) hΔ
      have hnn := norm_nonneg (P.complement x)
      nlinarith
    have hQ : P.complement x = 0 := norm_eq_zero.mp hn
    have he : x = P.projection x := by
      exact sub_eq_zero.mp hQ
    exact ⟨x, he.symm⟩
  · rintro ⟨y, rfl⟩
    change H (P.projection y) = 0
    exact congrArg (fun f : V →L[𝕜] V => f y) hannihilate

/-- Every positive eigenvalue of an actually self-adjoint packet lies above the
coercivity bound once the protected range is annihilated. In finite dimension
this excludes the open eigenvalue interval `(0,Δ)`. -/
theorem positive_eigenvalue_lower_bound (H : V →L[𝕜] V)
    (P : ProtectedProjector (𝕜 := 𝕜) V) (Δ eigenvalue : ℝ)
    (hH : IsSelfAdjoint H) (hcoercive : CoerciveOn H P ⊤ Δ)
    (hannihilate : H.comp P.projection = 0) (hpositive : 0 < eigenvalue)
    (x : V) (hx : x ≠ 0) (heigen : H x = (eigenvalue : 𝕜) • x) : Δ ≤ eigenvalue := by
  have hPH : P.projection.comp H = 0 := by
    have h := congrArg (fun A : V →L[𝕜] V => A.adjoint) hannihilate
    simpa only [ContinuousLinearMap.adjoint_comp, hH.adjoint_eq,
      P.selfAdjoint.adjoint_eq, map_zero] using h
  have hPx : P.projection x = 0 := by
    have h := congrArg (fun A : V →L[𝕜] V => A x) hPH
    change P.projection (H x) = 0 at h
    rw [heigen, map_smul] at h
    exact (smul_eq_zero.mp h).resolve_left (RCLike.ofReal_ne_zero.mpr (ne_of_gt hpositive))
  have hQ : P.complement x = x := by simp [ProtectedProjector.complement, hPx]
  have hb := hcoercive x Submodule.mem_top
  rw [hQ, heigen, inner_smul_right, RCLike.re_ofReal_mul, inner_self_eq_norm_sq] at hb
  exact le_of_mul_le_mul_right hb (sq_pos_of_pos (norm_pos_iff.mpr hx))

end FormalResearch.PositiveAtlas.QuantitativeGap
```
