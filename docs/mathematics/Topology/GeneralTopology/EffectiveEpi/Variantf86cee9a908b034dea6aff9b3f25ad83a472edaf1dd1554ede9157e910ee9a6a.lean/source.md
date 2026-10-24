# Complete source: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variantf86cee9a908b034dea6aff9b3f25ad83a472edaf1dd1554ede9157e910ee9a6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab193b03a5af271b7c2055d8b1d9ce0b9f4629b3` · SHA-256 `3d8dccdf2f985ae17ba46be63874eb2a3ff2d89691f2fd312e14733e489833aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.EffectiveEpiIffSurjective.Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.EffectiveEpiIffSurjective.Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad","mathematical_subject":"Topology.GeneralTopology","original_sha256":"78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/LightProfinite/EffectiveEpi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Topology.Category.CompHausLike.EffectiveEpi
import Mathlib.Topology.Category.LightProfinite.Limits
/-!

# Effective epimorphisms in `LightProfinite`

This file proves that `EffectiveEpi` and `Surjective` are equivalent in `LightProfinite`.
As a consequence we deduce from the material in
`Mathlib/Topology/Category/CompHausLike/EffectiveEpi.lean` that `LightProfinite` is `Preregular`
and `Precoherent`.
-/


namespace GRWTSK.Topology.GeneralTopology.EffectiveEpiIffSurjective.Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad

universe u

open CategoryTheory Limits CompHausLike

namespace LightProfinite

theorem effectiveEpi_iff_surjective {X Y : LightProfinite.{u}} (f : X ⟶ Y) :
    EffectiveEpi f ↔ Function.Surjective f := by
  refine ⟨fun h ↦ ?_, fun h ↦ ⟨⟨effectiveEpiStruct f h⟩⟩⟩
  rw [← epi_iff_surjective]
  infer_instance

instance : Preregular LightProfinite.{u} := by
  apply CompHausLike.preregular
  intro _ _ f
  exact (effectiveEpi_iff_surjective f).mp

example : Precoherent LightProfinite.{u} := inferInstance

end LightProfinite
```
