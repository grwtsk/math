# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Properties.Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcd414b272af396ab37591d54190be2126f38103` · SHA-256 `b4a813a9e900151006aecc682a44871325e26d37ce316d1b531ee11e44f95726`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EndComponentComplInfinite.Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.EndComponentComplInfinite.Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/SimpleGraph/Ends/Properties.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Anand Rao, Rémi Bottinelli. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anand Rao, Rémi Bottinelli
-/
import Mathlib.Combinatorics.SimpleGraph.Ends.Defs
import Mathlib.CategoryTheory.CofilteredSystem

/-!
# Properties of the ends of graphs

This file is meant to contain results about the ends of (locally finite connected) graphs.

-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EndComponentComplInfinite.Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a

variable {V : Type} (G : SimpleGraph V)

namespace SimpleGraph

instance [Finite V] : IsEmpty G.end where
  false := by
    rintro ⟨s, _⟩
    cases nonempty_fintype V
    obtain ⟨v, h⟩ := (s <| Opposite.op Finset.univ).nonempty
    exact Set.disjoint_iff.mp (s _).disjoint_right
        ⟨by simp only [Opposite.unop_op, Finset.coe_univ, Set.mem_univ], h⟩

/-- The `componentCompl`s chosen by an end are all infinite. -/
lemma end_componentCompl_infinite (e : G.end) (K : (Finset V)ᵒᵖ) :
    ((e : (j : (Finset V)ᵒᵖ) → G.componentComplFunctor.obj j) K).supp.Infinite := by
  refine (e.val K).infinite_iff_in_all_ranges.mpr (fun L h => ?_)
  change Opposite.unop K ⊆ Opposite.unop (Opposite.op L) at h
  exact ⟨e.val (Opposite.op L), (e.prop (CategoryTheory.opHomOfLE h))⟩

instance compononentComplFunctor_nonempty_of_infinite [Infinite V] (K : (Finset V)ᵒᵖ) :
    Nonempty (G.componentComplFunctor.obj K) := G.componentCompl_nonempty_of_infinite K.unop

instance componentComplFunctor_finite [LocallyFinite G] [Fact G.Preconnected]
    (K : (Finset V)ᵒᵖ) : Finite (G.componentComplFunctor.obj K) := G.componentCompl_finite K.unop

/-- A locally finite preconnected infinite graph has at least one end. -/
lemma nonempty_ends_of_infinite [LocallyFinite G] [Fact G.Preconnected] [Infinite V] :
    G.end.Nonempty := by
  classical
  apply nonempty_sections_of_finite_inverse_system G.componentComplFunctor

end SimpleGraph
```
