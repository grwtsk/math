# Complete source: GRWTSK.Algebra.GroupTheory.Simple.Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ce49829d233caec705005d32dd2db605c66aef3` · SHA-256 `87b08f274aface5ecac7d494bacb9aae8d34de1bcb20bf2885561176f8674187`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.IsSimpleGroup.Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.IsSimpleGroup.Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735","mathematical_subject":"Algebra.Groups","original_sha256":"0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Subgroup/Simple.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.Order.Atoms
import Mathlib.Algebra.Group.Subgroup.Basic

/-!
# Simple groups

This file defines `IsSimpleGroup G`, a class indicating that a group has exactly two normal
subgroups.

## Main definitions

- `IsSimpleGroup G`, a class indicating that a group has exactly two normal subgroups.

## Tags
subgroup, subgroups

-/



namespace GRWTSK.Algebra.GroupTheory.IsSimpleGroup.Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735

variable {G : Type*} [Group G]
variable {A : Type*} [AddGroup A]

section

variable (G) (A)

/-- A `Group` is simple when it has exactly two normal `Subgroup`s. -/
class IsSimpleGroup : Prop extends Nontrivial G where
  /-- Any normal subgroup is either `⊥` or `⊤` -/
  eq_bot_or_eq_top_of_normal : ∀ H : Subgroup G, H.Normal → H = ⊥ ∨ H = ⊤

/-- An `AddGroup` is simple when it has exactly two normal `AddSubgroup`s. -/
class IsSimpleAddGroup : Prop extends Nontrivial A where
  /-- Any normal additive subgroup is either `⊥` or `⊤` -/
  eq_bot_or_eq_top_of_normal : ∀ H : AddSubgroup A, H.Normal → H = ⊥ ∨ H = ⊤

attribute [to_additive] IsSimpleGroup

variable {G} {A}

@[to_additive]
theorem Subgroup.Normal.eq_bot_or_eq_top [IsSimpleGroup G] {H : Subgroup G} (Hn : H.Normal) :
    H = ⊥ ∨ H = ⊤ :=
  IsSimpleGroup.eq_bot_or_eq_top_of_normal H Hn

namespace IsSimpleGroup

@[to_additive]
instance {C : Type*} [CommGroup C] [IsSimpleGroup C] : IsSimpleOrder (Subgroup C) :=
  ⟨fun H => H.normal_of_comm.eq_bot_or_eq_top⟩

open Subgroup

@[to_additive]
theorem isSimpleGroup_of_surjective {H : Type*} [Group H] [IsSimpleGroup G] [Nontrivial H]
    (f : G →* H) (hf : Function.Surjective f) : IsSimpleGroup H :=
  ⟨fun H iH => by
    refine (iH.comap f).eq_bot_or_eq_top.imp (fun h => ?_) fun h => ?_
    · rw [← map_bot f, ← h, map_comap_eq_self_of_surjective hf]
    · rw [← comap_top f] at h
      exact comap_injective hf h⟩

end IsSimpleGroup

end
```
