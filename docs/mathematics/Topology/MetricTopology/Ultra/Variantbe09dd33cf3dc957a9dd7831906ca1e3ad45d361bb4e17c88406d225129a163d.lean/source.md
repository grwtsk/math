# Complete source: GRWTSK.Topology.MetricTopology.Ultra.Variantbe09dd33cf3dc957a9dd7831906ca1e3ad45d361bb4e17c88406d225129a163d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16eb649d72c6034fd0c7be815d0eadcdccd2a4d5` · SHA-256 `7fea7f46d23995c96a4c4f59482ede30c56347374f37f767accceaf0003160eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.AddGroupSeminormClassIsUltrametricDist.Variant3c4136189c5616d6b873e3eff2a008aade6059b363c4b37f9043c6a54ff13396","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c4136189c5616d6b873e3eff2a008aade6059b363c4b37f9043c6a54ff13396","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.AddGroupSeminormClassIsUltrametricDist.Variant3c4136189c5616d6b873e3eff2a008aade6059b363c4b37f9043c6a54ff13396","mathematical_subject":"Topology.MetricSpaces","original_sha256":"3c4136189c5616d6b873e3eff2a008aade6059b363c4b37f9043c6a54ff13396","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Order/Hom/Ultra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Analysis.Normed.Order.Hom.Basic
import Mathlib.Topology.MetricSpace.Ultra.Basic

/-!
# Constructing nonarchimedean (ultrametric) normed groups from nonarchimedean normed homs

This file defines constructions that upgrade `Add(Comm)Group` to `(Semi)NormedAdd(Comm)Group`
using an `AddGroup(Semi)normClass` when the codomain is the reals and the hom is nonarchimedean.

## Implementation details

The lemmas need to assume `[Dist α]` to be able to be stated, so they take an extra argument
that shows that this distance instance is propositionally equal to the one that comes from the
hom-based `AddGroupSeminormClass.toSeminormedAddGroup f` construction. To help at use site,
the argument is an autoparam that resolves by definitional equality when using these constructions.
-/


namespace GRWTSK.Topology.MetricTopology.AddGroupSeminormClassIsUltrametricDist.Variant3c4136189c5616d6b873e3eff2a008aade6059b363c4b37f9043c6a54ff13396

variable {F α : Type*} [FunLike F α ℝ]

/-- Proves that when a `SeminormedAddGroup` structure is constructed from an
`AddGroupSeminormClass` that satisfies `IsNonarchimedean`, the group has an `IsUltrametricDist`. -/
lemma AddGroupSeminormClass.isUltrametricDist [AddGroup α] [AddGroupSeminormClass F α ℝ]
    [inst : Dist α] {f : F} (hna : IsNonarchimedean f)
    (hd : inst = (AddGroupSeminormClass.toSeminormedAddGroup f).toDist := by rfl) :
    IsUltrametricDist α :=
  ⟨fun x y z ↦ by simpa only [hd, dist_eq_norm, AddGroupSeminormClass.toSeminormedAddGroup_norm_eq,
      ← sub_add_sub_cancel x y z] using hna _ _⟩
```
