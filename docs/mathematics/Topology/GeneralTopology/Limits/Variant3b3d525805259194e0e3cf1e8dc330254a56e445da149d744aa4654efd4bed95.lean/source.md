# Complete source: GRWTSK.Topology.GeneralTopology.Limits.Variant3b3d525805259194e0e3cf1e8dc330254a56e445da149d744aa4654efd4bed95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30566ffc5c3810d33355ef0d4e04e63a6e074890` · SHA-256 `fd72dbb8bae839e218e88bdd3013ed0262a5c30c33d8cae844b2acfa09d869f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsTerminalPUnit.Variant9cf73e270341cac996785a8e714f32723163016f9c5fee685e807a6306cdf402","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9cf73e270341cac996785a8e714f32723163016f9c5fee685e807a6306cdf402","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsTerminalPUnit.Variant9cf73e270341cac996785a8e714f32723163016f9c5fee685e807a6306cdf402","mathematical_subject":"Topology.GeneralTopology","original_sha256":"9cf73e270341cac996785a8e714f32723163016f9c5fee685e807a6306cdf402","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/LightProfinite/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Topology.Category.CompHausLike.Limits
import Mathlib.Topology.Category.LightProfinite.Basic
/-!

# Explicit limits and colimits

This file applies the general API for explicit limits and colimits in `CompHausLike P` (see
the file `Mathlib/Topology/Category/CompHausLike/Limits.lean`) to the special case of
`LightProfinite`.
-/


namespace GRWTSK.Topology.GeneralTopology.IsTerminalPUnit.Variant9cf73e270341cac996785a8e714f32723163016f9c5fee685e807a6306cdf402

namespace LightProfinite

universe u w

open CategoryTheory Limits CompHausLike

instance : HasExplicitPullbacks
    (fun Y ↦ TotallyDisconnectedSpace Y ∧ SecondCountableTopology Y) where
  hasProp _ _ := {
    hasProp := ⟨show TotallyDisconnectedSpace {_xy : _ | _} from inferInstance,
      show SecondCountableTopology {_xy : _ | _} from inferInstance⟩ }

instance : HasExplicitFiniteCoproducts.{w, u}
    (fun Y ↦ TotallyDisconnectedSpace Y ∧ SecondCountableTopology Y) where
  hasProp _ := { hasProp :=
    ⟨show TotallyDisconnectedSpace (Σ (_a : _), _) from inferInstance,
      show SecondCountableTopology (Σ (_a : _), _) from inferInstance⟩ }

/-- A one-element space is terminal in `Profinite` -/
abbrev isTerminalPUnit : IsTerminal (LightProfinite.of PUnit.{u + 1}) :=
  CompHausLike.isTerminalPUnit

example : FinitaryExtensive LightProfinite.{u} := inferInstance

noncomputable example : PreservesFiniteCoproducts lightProfiniteToCompHaus.{u} := inferInstance

end LightProfinite
```
