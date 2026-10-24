# Complete source: GRWTSK.Topology.GeneralTopology.CompactlyGenerated.Variantefd2ab0554df62ef0f3c7b2b8613d4ff10983fd23dc1ce842ec2b7aca20e1dd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66bb67d67d3521e9315ec3f029ff71a04413aa37` · SHA-256 `417a02341415d12b52f8a9bc3df8ffe3872d6f502c09603799e8a5c39ba2b0aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsProperMapIffIsCompactPreimage.Variant28c04088c7caf4953862add27bc44e5e626309e9e8342d9820affd225d754400","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28c04088c7caf4953862add27bc44e5e626309e9e8342d9820affd225d754400","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsProperMapIffIsCompactPreimage.Variant28c04088c7caf4953862add27bc44e5e626309e9e8342d9820affd225d754400","mathematical_subject":"Topology.GeneralTopology","original_sha256":"28c04088c7caf4953862add27bc44e5e626309e9e8342d9820affd225d754400","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Maps/Proper/CompactlyGenerated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker, Etienne Marion
-/
module

public import Mathlib.Topology.Compactness.CompactlyCoherentSpace
public import Mathlib.Topology.Maps.Proper.Basic

/-!
# A map is proper iff preimage of compact sets are compact

This file proves that if `Y` is a Hausdorff and compactly coherent space, a continuous map
`f : X → Y` is proper if and only if preimage of compact sets are compact.
-/


namespace GRWTSK.Topology.GeneralTopology.IsProperMapIffIsCompactPreimage.Variant28c04088c7caf4953862add27bc44e5e626309e9e8342d9820affd225d754400

public section

open Set Filter

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
variable [T2Space Y] [CompactlyCoherentSpace Y]
variable {f : X → Y}

/-- If `Y` is Hausdorff and compactly coherent, then proper maps `X → Y` are exactly
continuous maps such that the preimage of any compact set is compact. This is in particular true
if `Y` is Hausdorff and sequential or locally compact. -/
theorem isProperMap_iff_isCompact_preimage :
    IsProperMap f ↔ Continuous f ∧ ∀ ⦃K⦄, IsCompact K → IsCompact (f ⁻¹' K) where
  mp hf := ⟨hf.continuous, fun _ ↦ hf.isCompact_preimage⟩
  mpr := fun ⟨hf, h⟩ ↦ isProperMap_iff_isClosedMap_and_compact_fibers.2
    ⟨hf, fun s hs ↦ (CompactlyCoherentSpace.isClosed_iff _).mpr fun K hK ↦ by
        convert! (((h hK).inter_left hs).image hf).isClosed.preimage continuous_subtype_val using 1
        aesop, fun _ ↦ h isCompact_singleton⟩

/-- Version of `isProperMap_iff_isCompact_preimage` in terms of `cocompact`. -/
lemma isProperMap_iff_tendsto_cocompact :
    IsProperMap f ↔ Continuous f ∧ Tendsto f (cocompact X) (cocompact Y) := by
  simp_rw [isProperMap_iff_isCompact_preimage,
    hasBasis_cocompact.tendsto_right_iff, ← mem_preimage, eventually_mem_set, preimage_compl]
  refine and_congr_right fun f_cont ↦
    ⟨fun H K hK ↦ (H hK).compl_mem_cocompact, fun H K hK ↦ ?_⟩
  rcases mem_cocompact.mp (H K hK) with ⟨K', hK', hK'y⟩
  exact hK'.of_isClosed_subset (hK.isClosed.preimage f_cont)
    (compl_le_compl_iff_le.mp hK'y)
```
