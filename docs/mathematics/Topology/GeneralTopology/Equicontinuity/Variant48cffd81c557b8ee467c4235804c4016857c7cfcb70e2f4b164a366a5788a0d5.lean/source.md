# Complete source: GRWTSK.Topology.GeneralTopology.Equicontinuity.Variant48cffd81c557b8ee467c4235804c4016857c7cfcb70e2f4b164a366a5788a0d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4e3bd17d1093b03609553dc8164de8d91770fb5` · SHA-256 `99707473ce93f9c939f35c8e584115428dcc53fbdbeecca389d3cdf19cffc9a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.EquicontinuousOfEquicontinuousAtOne.Variant20fdfd4e1656140d5ce6f9c225e1c4b67adce23ee39b0bb6aa342ef8e8641beb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20fdfd4e1656140d5ce6f9c225e1c4b67adce23ee39b0bb6aa342ef8e8641beb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.EquicontinuousOfEquicontinuousAtOne.Variant20fdfd4e1656140d5ce6f9c225e1c4b67adce23ee39b0bb6aa342ef8e8641beb","mathematical_subject":"Topology.GeneralTopology","original_sha256":"20fdfd4e1656140d5ce6f9c225e1c4b67adce23ee39b0bb6aa342ef8e8641beb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Equicontinuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
import Mathlib.Topology.Algebra.UniformConvergence
import Mathlib.Topology.UniformSpace.Equicontinuity

/-!
# Algebra-related equicontinuity criterions
-/



namespace GRWTSK.Topology.GeneralTopology.EquicontinuousOfEquicontinuousAtOne.Variant20fdfd4e1656140d5ce6f9c225e1c4b67adce23ee39b0bb6aa342ef8e8641beb

open Function

open UniformConvergence

@[to_additive]
theorem equicontinuous_of_equicontinuousAt_one {ι G M hom : Type*} [TopologicalSpace G]
    [UniformSpace M] [Group G] [Group M] [IsTopologicalGroup G] [IsUniformGroup M]
    [FunLike hom G M] [MonoidHomClass hom G M] (F : ι → hom)
    (hf : EquicontinuousAt ((↑) ∘ F) (1 : G)) :
    Equicontinuous ((↑) ∘ F) := by
  rw [equicontinuous_iff_continuous]
  rw [equicontinuousAt_iff_continuousAt] at hf
  let φ : G →* (ι →ᵤ M) :=
    { toFun := swap ((↑) ∘ F)
      map_one' := by dsimp [UniformFun]; ext; exact map_one _
      map_mul' := fun a b => by dsimp [UniformFun]; ext; exact map_mul _ _ _ }
  exact continuous_of_continuousAt_one φ hf

@[to_additive]
theorem uniformEquicontinuous_of_equicontinuousAt_one {ι G M hom : Type*} [UniformSpace G]
    [UniformSpace M] [Group G] [Group M] [IsUniformGroup G] [IsUniformGroup M]
    [FunLike hom G M] [MonoidHomClass hom G M]
    (F : ι → hom) (hf : EquicontinuousAt ((↑) ∘ F) (1 : G)) :
    UniformEquicontinuous ((↑) ∘ F) := by
  rw [uniformEquicontinuous_iff_uniformContinuous]
  rw [equicontinuousAt_iff_continuousAt] at hf
  let φ : G →* (ι →ᵤ M) :=
    { toFun := swap ((↑) ∘ F)
      map_one' := by dsimp [UniformFun]; ext; exact map_one _
      map_mul' := fun a b => by dsimp [UniformFun]; ext; exact map_mul _ _ _ }
  exact uniformContinuous_of_continuousAt_one φ hf
```
