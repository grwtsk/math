# Complete source: GRWTSK.Topology.GeneralTopology.PivotChartTopology.Variant78ca422a710f2554a24021bf2fccebef3c51a2c2836ef64a3f908d80918263e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9375aaa69432d483aafa80b58186bcf84407599` · SHA-256 `3df737a0396ad8c7fe878453fe90032c0e6528236e008daf04e565ee20312bce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.NormalizedPivotPlaneInjective.Variantc0c1dd29d77ca9f74618b61220b8775cfe0247e5e68a9937289c16c76cc71acb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0c1dd29d77ca9f74618b61220b8775cfe0247e5e68a9937289c16c76cc71acb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.NormalizedPivotPlaneInjective.Variantc0c1dd29d77ca9f74618b61220b8775cfe0247e5e68a9937289c16c76cc71acb","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c0c1dd29d77ca9f74618b61220b8775cfe0247e5e68a9937289c16c76cc71acb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/FormalResearch/PositiveAtlas/Grassmannian/PivotChartTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.PivotCech
import Mathlib.Topology.Homeomorph.Lemmas

/-!
# Intrinsic open chart homeomorphisms

The actual normalized-frame charts are open embeddings for the final atlas
topology: openness is proved on every other chart using the continuous
transition on its actual open overlap. No standard-Grassmannian topology
comparison or realization weak equivalence is assumed here.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/


namespace GRWTSK.Topology.GeneralTopology.NormalizedPivotPlaneInjective.Variantc0c1dd29d77ca9f74618b61220b8775cfe0247e5e68a9937289c16c76cc71acb

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

variable {k n : ℕ}

/-- A normalized pivot frame is uniquely determined by its intrinsic plane. -/
theorem normalizedPivotPlane_injective (I : Fin k ↪o Fin n) :
    Function.Injective (normalizedPivotPlane I) := by
  intro A B h
  apply Subtype.ext
  exact normalized_eq_of_frameRowSpace_eq A.val B.val I A.property B.property
    (congrArg Subtype.val h)

/-- Transition of actual normalized overlap points preserves their intrinsic plane. -/
theorem normalizedOverlapChange_plane (I J : Fin k ↪o Fin n)
    (B : NormalizedPivotOverlap I J) :
    normalizedPivotPlane J (normalizedOverlapChange I J B).val =
      normalizedPivotPlane I B.val := by
  apply Subtype.ext
  exact frameRowSpace_pivotNormalize B.val.val J B.property

/-- An image-open chart test is exactly the retained overlap preimage. -/
theorem chart_image_preimage_eq_overlap_image (I J : Fin k ↪o Fin n)
    (V : Set (NormalizedPivotFrame I)) :
    normalizedPivotPlane J ⁻¹' (normalizedPivotPlane I '' V) =
      Subtype.val '' ((fun B : NormalizedPivotOverlap J I =>
        (normalizedOverlapChange J I B).val) ⁻¹' V) := by
  ext B
  constructor
  · rintro ⟨C, hC, hCB⟩
    have hBI : columnMinor B.val I ≠ 0 :=
      (representedPlane_mem_intrinsicPivotDomain_iff
        ⟨B.val, normalizedPivotFrame_rank J B⟩ I).mp ⟨C, hCB⟩
    let D : NormalizedPivotOverlap J I := ⟨B, hBI⟩
    refine ⟨D, ?_, rfl⟩
    have he : (normalizedOverlapChange J I D).val = C :=
      normalizedPivotPlane_injective I ((normalizedOverlapChange_plane J I D).trans hCB.symm)
    change (normalizedOverlapChange J I D).val ∈ V
    rw [he]
    exact hC
  · rintro ⟨D, hD, rfl⟩
    exact ⟨(normalizedOverlapChange J I D).val, hD, normalizedOverlapChange_plane J I D⟩

/-- Every normalized pivot chart sends actual open subsets to intrinsic open subsets. -/
theorem isOpenMap_normalizedPivotPlane (I : Fin k ↪o Fin n) :
    IsOpenMap (normalizedPivotPlane I) := by
  intro V hV
  rw [isOpen_coinduced, isOpen_sigma_iff]
  intro J
  change IsOpen (normalizedPivotPlane J ⁻¹' (normalizedPivotPlane I '' V))
  rw [chart_image_preimage_eq_overlap_image I J V]
  have hdomain : IsOpen {B : NormalizedPivotFrame J | columnMinor B.val I ≠ 0} :=
    (isOpen_framePivotDomain I).preimage continuous_subtype_val
  have htransition : Continuous (fun B : NormalizedPivotOverlap J I =>
      (normalizedOverlapChange J I B).val) :=
    continuous_subtype_val.comp (continuous_normalizedOverlapChange J I)
  exact hdomain.isOpenMap_subtype_val _ (hV.preimage htransition)

/-- Actual intrinsic charts are open embeddings, including rank zero and full dimension. -/
theorem isOpenEmbedding_normalizedPivotPlane (I : Fin k ↪o Fin n) :
    Topology.IsOpenEmbedding (normalizedPivotPlane I) :=
  Topology.isOpenEmbedding_iff_continuous_injective_isOpenMap.mpr
    ⟨continuous_normalizedPivotPlane I, normalizedPivotPlane_injective I,
      isOpenMap_normalizedPivotPlane I⟩

/-- An actual normalized matrix chart is homeomorphic to its intrinsic open pivot domain. -/
def normalizedPivotChartHomeomorph (I : Fin k ↪o Fin n) :
    NormalizedPivotFrame I ≃ₜ intrinsicPivotDomain I :=
  (isOpenEmbedding_normalizedPivotPlane I).toIsEmbedding.toHomeomorph

end

end FormalResearch.PositiveAtlas.Grassmannian
```
