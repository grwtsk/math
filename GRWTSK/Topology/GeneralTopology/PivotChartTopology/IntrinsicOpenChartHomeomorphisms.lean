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
