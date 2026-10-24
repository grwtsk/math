# Complete source: GRWTSK.Topology.GeneralTopology.NhdsKer.Variant9333f369d57323fc7b671f3275fa415e6b7252ad4e87dafe5ab6ca2d025d8247

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d81776bbe46d124b2205890965b13769d905449b` · SHA-256 `73562ffc55695e1b16d11973899d3217570615dc1ed21a26249ef4bfd77b5f8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsCompactNhdsKerIff.Variantb42e2b5c598413e6cc669792c4e2f90b355e308d52914dc04725e6b88cb7f927","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b42e2b5c598413e6cc669792c4e2f90b355e308d52914dc04725e6b88cb7f927","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsCompactNhdsKerIff.Variantb42e2b5c598413e6cc669792c4e2f90b355e308d52914dc04725e6b88cb7f927","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b42e2b5c598413e6cc669792c4e2f90b355e308d52914dc04725e6b88cb7f927","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Compactness/NhdsKer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Tactic.Peel
public import Mathlib.Topology.Compactness.Compact
public import Mathlib.Topology.NhdsKer

/-!
# Compactness of the neighborhoods kernel of a set

In this file we prove that the neighborhoods kernel of a set
(defined as the intersection of all of its neighborhoods)
is a compact set if and only if the original set is a compact set.
-/


namespace GRWTSK.Topology.GeneralTopology.IsCompactNhdsKerIff.Variantb42e2b5c598413e6cc669792c4e2f90b355e308d52914dc04725e6b88cb7f927

public section

variable {X : Type*} [TopologicalSpace X] {s : Set X}

theorem IsCompact.nhdsKer_iff : IsCompact (nhdsKer s) ↔ IsCompact s := by
  simp only [isCompact_iff_finite_subcover]
  congr! with ι U hUo
  simp only [(isOpen_iUnion hUo).nhdsKer_subset,
    (isOpen_iUnion fun i ↦ isOpen_iUnion fun _ ↦ hUo i).nhdsKer_subset]

protected alias ⟨IsCompact.of_nhdsKer, IsCompact.nhdsKer⟩ := IsCompact.nhdsKer_iff
```
