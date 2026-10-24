# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Disjoint.Variantea64df1df6d185d5061a129d3803ccf5516ffdea7d2a4cc2fc4add744c04b972

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c7e7f6871929319ad4cac610a4d1f9708bc719b` · SHA-256 `267bcadde35688d269206b634b08fe5108b5c8f4642b483bbf82feaefabd2dd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DisjointAtBotPrincipalIoi.Variant3eb903725ce4859ab7ab5b2d5704977113dc2e195e4754f9f1d6628f54e19a96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3eb903725ce4859ab7ab5b2d5704977113dc2e195e4754f9f1d6628f54e19a96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.DisjointAtBotPrincipalIoi.Variant3eb903725ce4859ab7ab5b2d5704977113dc2e195e4754f9f1d6628f54e19a96","mathematical_subject":"Algebra.OrderTheory","original_sha256":"3eb903725ce4859ab7ab5b2d5704977113dc2e195e4754f9f1d6628f54e19a96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Filter/AtTopBot/Disjoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jeremy Avigad, Yury Kudryashov, Patrick Massot
-/
module

public import Mathlib.Order.Filter.AtTopBot.Defs
public import Mathlib.Order.Interval.Set.Disjoint

/-!
# Disjointness of `Filter.atTop` and `Filter.atBot`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DisjointAtBotPrincipalIoi.Variant3eb903725ce4859ab7ab5b2d5704977113dc2e195e4754f9f1d6628f54e19a96

public section

assert_not_exists Finset

variable {α : Type*}

open Set

namespace Filter

@[to_dual disjoint_atTop_principal_Iio]
theorem disjoint_atBot_principal_Ioi [Preorder α] (x : α) : Disjoint atBot (𝓟 (Ioi x)) :=
  disjoint_of_disjoint_of_mem (Iic_disjoint_Ioi le_rfl) (Iic_mem_atBot x) (mem_principal_self _)

@[to_dual disjoint_atBot_principal_Ici]
theorem disjoint_atTop_principal_Iic [Preorder α] [NoTopOrder α] (x : α) :
    Disjoint atTop (𝓟 (Iic x)) :=
  disjoint_of_disjoint_of_mem (Iic_disjoint_Ioi le_rfl).symm (Ioi_mem_atTop x)
    (mem_principal_self _)

@[to_dual disjoint_pure_atBot]
theorem disjoint_pure_atTop [Preorder α] [NoTopOrder α] (x : α) : Disjoint (pure x) atTop :=
  Disjoint.symm <| (disjoint_atTop_principal_Iic x).mono_right <| le_principal_iff.2 <|
    mem_pure.2 self_mem_Iic

@[to_dual disjoint_atTop_atBot]
theorem disjoint_atBot_atTop [PartialOrder α] [Nontrivial α] :
    Disjoint (atBot : Filter α) atTop := by
  rcases exists_pair_ne α with ⟨x, y, hne⟩
  by_cases hle : x ≤ y
  · refine disjoint_of_disjoint_of_mem ?_ (Iic_mem_atBot x) (Ici_mem_atTop y)
    exact Iic_disjoint_Ici.2 (hle.lt_of_ne hne).not_ge
  · refine disjoint_of_disjoint_of_mem ?_ (Iic_mem_atBot y) (Ici_mem_atTop x)
    exact Iic_disjoint_Ici.2 hle

end Filter
```
