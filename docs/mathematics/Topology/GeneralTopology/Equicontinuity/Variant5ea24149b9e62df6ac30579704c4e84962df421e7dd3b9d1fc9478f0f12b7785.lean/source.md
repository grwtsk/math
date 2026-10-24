# Complete source: GRWTSK.Topology.GeneralTopology.Equicontinuity.Variant5ea24149b9e62df6ac30579704c4e84962df421e7dd3b9d1fc9478f0f12b7785

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7676ea87158e4607bb4aac73493eef4c4e95d47d` · SHA-256 `e47159f2a714b1bfa094d7c8907bdc1928bb39186f4082cbd81faa2483d73341`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.EquicontinuousOfEquicontinuousAtOne.Variant395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.EquicontinuousOfEquicontinuousAtOne.Variant395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00","mathematical_subject":"Topology.GeneralTopology","original_sha256":"395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Equicontinuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
module

public import Mathlib.Topology.Algebra.UniformConvergence
public import Mathlib.Topology.UniformSpace.Equicontinuity

/-!
# Algebra-related equicontinuity criteria
-/


namespace GRWTSK.Topology.GeneralTopology.EquicontinuousOfEquicontinuousAtOne.Variant395a0e3541694b30824ae9de80b14da1950cfdf4bf030c5c3cfbe637e1bc7a00

public section


open Function

open scoped UniformConvergence

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
