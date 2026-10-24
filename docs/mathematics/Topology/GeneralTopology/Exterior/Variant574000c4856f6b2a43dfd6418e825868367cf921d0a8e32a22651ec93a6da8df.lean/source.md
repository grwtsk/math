# Complete source: GRWTSK.Topology.GeneralTopology.Exterior.Variant574000c4856f6b2a43dfd6418e825868367cf921d0a8e32a22651ec93a6da8df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b60520e9ffa94d77ed34f87623b1584f7447c9a` · SHA-256 `57817b110b8a069f7ea12b8c6ba0a00db1cc80f8fbdcef95c628cb99121a8423`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsCompactExteriorIff.Variant977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsCompactExteriorIff.Variant977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344","mathematical_subject":"Topology.GeneralTopology","original_sha256":"977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Compactness/Exterior.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Tactic.Peel
import Mathlib.Topology.Compactness.Compact
import Mathlib.Topology.Exterior

/-!
# Compactness of the exterior of a set

In this file we prove that the exterior of a set
(defined as the intersection of all of its neighborhoods)
is a compact set if and only if the original set is a compact set.
-/


namespace GRWTSK.Topology.GeneralTopology.IsCompactExteriorIff.Variant977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344

variable {X : Type*} [TopologicalSpace X] {s : Set X}

theorem IsCompact.exterior_iff : IsCompact (exterior s) ↔ IsCompact s := by
  simp only [isCompact_iff_finite_subcover]
  peel with ι U hUo
  simp only [(isOpen_iUnion hUo).exterior_subset,
    (isOpen_iUnion fun i ↦ isOpen_iUnion fun _ ↦ hUo i).exterior_subset]

protected alias ⟨IsCompact.of_exterior, IsCompact.exterior⟩ := IsCompact.exterior_iff
```
