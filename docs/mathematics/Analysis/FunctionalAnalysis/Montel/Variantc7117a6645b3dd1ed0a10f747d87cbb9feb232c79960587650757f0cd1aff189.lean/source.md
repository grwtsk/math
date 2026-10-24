# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Montel.Variantc7117a6645b3dd1ed0a10f747d87cbb9feb232c79960587650757f0cd1aff189

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7963cf22f3a9b7d9885f4d46001ee19eaeb8ca97` · SHA-256 `dd992e33df2f9d6c942af4dbfceae3c19317c999b2175a28d23c23c438be5679`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.MontelSpace.Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.MontelSpace.Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"dd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/LocallyConvex/Montel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
module

public import Mathlib.Topology.Algebra.Module.Spaces.ContinuousLinearMap
public import Mathlib.Topology.Algebra.Module.Spaces.CompactConvergenceCLM
public import Mathlib.Analysis.Normed.Module.FiniteDimension
/-!
# Montel spaces

A Montel space is a topological vector space `E` that has the Heine-Borel property: every closed and
(von Neumann) bounded set is compact.

Note that we are not requiring that `E` is a barrelled space, so the usual definition of a Montel
space would be `[MontelSpace 𝕜 E] [BarrelledSpace 𝕜 E]`.

* `MontelSpace.finiteDimensional_of_normedSpace`: every normed Montel space is finite dimensional.
* `ContinuousLinearEquiv.toCompactConvergenceCLM`: if `E` is a Montel space then topology of compact
  convergence and the strong topology on `E →SL[σ] F` coincide. We record this as a continuous
  linear equivalence between `E →SL[σ] F` and `E →SL_c[σ] F`. This is Proposition 34.5 in
  [F. Trèves][treves1967].

## References
* [F. Trèves, *Topological vector spaces, distributions and kernels*][treves1967]

-/


namespace GRWTSK.Analysis.FunctionalAnalysis.MontelSpace.Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad

@[expose] public section

open Filter Set ContinuousLinearMap Bornology

section Definition

variable {𝕜 E : Type*}
variable [SeminormedRing 𝕜] [Zero E] [SMul 𝕜 E]
  [TopologicalSpace E]

/-- A Montel space is a topological vector space that has the Heine-Borel property: every closed and
(von Neumann) bounded set is compact.

Note that we are not requiring that `E` is a barrelled space, so the usual definition of a Montel
space would be `[MontelSpace 𝕜 E] [BarrelledSpace 𝕜 E]`. -/
class MontelSpace (𝕜 E : Type*) [SeminormedRing 𝕜] [Zero E] [SMul 𝕜 E]
    [TopologicalSpace E] : Prop where
  heine_borel : ∀ s : Set E, IsClosed s → IsVonNBounded 𝕜 s → IsCompact s

namespace MontelSpace

variable (𝕜) in
theorem isCompact_of_isClosed_of_isVonNBounded [hm : MontelSpace 𝕜 E] {s : Set E}
    (h_closed : IsClosed s) (h_bounded : IsVonNBounded 𝕜 s) : IsCompact s :=
  hm.heine_borel s h_closed h_bounded

end MontelSpace

end Definition

section Normed

namespace MontelSpace

variable {𝕜 E : Type*}
variable [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E] [CompleteSpace 𝕜]
  [hM : MontelSpace 𝕜 E]

theorem finiteDimensional_of_normedSpace : FiniteDimensional 𝕜 E :=
  FiniteDimensional.of_isCompact_closedBall₀ 𝕜 zero_lt_one
    (isCompact_of_isClosed_of_isVonNBounded 𝕜 Metric.isClosed_closedBall
      (NormedSpace.isVonNBounded_closedBall _ _ _))

end MontelSpace

end Normed

variable {𝕜₁ 𝕜₂ : Type*} [NormedField 𝕜₁] [NormedField 𝕜₂] {σ : 𝕜₁ →+* 𝕜₂}
variable {E F : Type*}
  [AddCommGroup E] [Module 𝕜₁ E]
  [TopologicalSpace E] [IsTopologicalAddGroup E] [ContinuousSMul 𝕜₁ E]
  [AddCommGroup F] [Module 𝕜₂ F]
  [TopologicalSpace F] [IsTopologicalAddGroup F] [ContinuousSMul 𝕜₂ F]

open CompactConvergenceCLM

set_option backward.privateInPublic true in
variable (σ E F) in
/-- The linear equivalence that sends a continuous linear map to the type copy endowed with the
topology of compact convergence.

This definition is only used to prove the continuous linear equivalence. -/
private def _root_.GRWTSK.Analysis.FunctionalAnalysis.MontelSpace.Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.LinearEquiv.toCompactConvergenceCLM :
    (E →SL[σ] F) ≃ₗ[𝕜₂] E →SL_c[σ] F :=
  LinearEquiv.refl 𝕜₂ _

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
variable (σ E F) in
/-- If `E` is a Montel space, then the strong topology on `E →L[𝕜] F` coincides with the topology
of compact convergence.

We realize this equality in terms of a continuous linear equivalence between the type synonyms. -/
def _root_.GRWTSK.Analysis.FunctionalAnalysis.MontelSpace.Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.ContinuousLinearEquiv.toCompactConvergenceCLM [T1Space E] [MontelSpace 𝕜₁ E] :
    (E →SL[σ] F) ≃L[𝕜₂] E →SL_c[σ] F where
  __ := LinearEquiv.toCompactConvergenceCLM σ E F
  continuous_toFun := by
    simp only [AddHom.toFun_eq_coe, LinearMap.coe_toAddHom, LinearEquiv.coe_coe, continuous_def]
    intro s hs
    apply hs.mono
    apply UniformConvergenceCLM.topologicalSpace_mono
    intro x hx
    exact hx.isVonNBounded 𝕜₁
  continuous_invFun := by
    apply continuous_of_continuousAt_zero (LinearEquiv.toCompactConvergenceCLM σ E F).symm
    rw [ContinuousAt, _root_.map_zero, CompactConvergenceCLM.hasBasis_nhds_zero.tendsto_iff
      ContinuousLinearMap.hasBasis_nhds_zero]
    rintro ⟨a, b⟩ ⟨ha, hb⟩
    use ⟨closure a, b⟩
    exact ⟨⟨MontelSpace.isCompact_of_isClosed_of_isVonNBounded 𝕜₁ isClosed_closure
      ha.closure, hb⟩, fun _ hf _ hx ↦ hf _ (subset_closure hx)⟩

@[simp]
theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.MontelSpace.Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.ContinuousLinearEquiv.toCompactConvergenceCLM_apply [T1Space E] [MontelSpace 𝕜₁ E]
    (f : E →SL[σ] F) (x : E) : ContinuousLinearEquiv.toCompactConvergenceCLM σ E F f x = f x := rfl

@[simp]
theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.MontelSpace.Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.ContinuousLinearEquiv.toCompactConvergenceCLM_symm_apply [T1Space E]
    [MontelSpace 𝕜₁ E] (f : E →SL_c[σ] F) (x : E) :
    (ContinuousLinearEquiv.toCompactConvergenceCLM σ E F).symm f x = f x := rfl
```
