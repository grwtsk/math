# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant25d3afa3294f152ef47bd87e56b630f7dc68f2f53265e26fed925d6d7e61378f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `013dc1346d89a11df69b8ee7b6ede0b594c06989` · SHA-256 `01faff7909b4d09e43b483e28657693442fd9a83c3f5eb6fc28e441c1e6f4c5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstDecidableEquiv.Variantc1848db878145ff4ffd343f2c57ef1d3da76fb80027738baced6d039f203229e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1848db878145ff4ffd343f2c57ef1d3da76fb80027738baced6d039f203229e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.InstDecidableEquiv.Variantc1848db878145ff4ffd343f2c57ef1d3da76fb80027738baced6d039f203229e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c1848db878145ff4ffd343f2c57ef1d3da76fb80027738baced6d039f203229e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeSet/Raw/DecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude

public import Std.Data.TreeMap.Raw.DecidableEquiv
public import Std.Data.TreeSet.Raw.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstDecidableEquiv.Variantc1848db878145ff4ffd343f2c57ef1d3da76fb80027738baced6d039f203229e

public section

/-!
# Decidable equivalence for `TreeSet.Raw`
-/

open Std.TreeMap.Raw

namespace Std.TreeSet.Raw

def instDecidableEquiv {α : Type u} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] {t₁ t₂ : Raw α cmp} (h₁ : t₁.WF) (h₂ : t₂.WF) : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  let : Decidable (t₁.inner ~m t₂.inner) := TreeMap.Raw.instDecidableEquiv h₁ h₂;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.TreeSet.Raw
```
