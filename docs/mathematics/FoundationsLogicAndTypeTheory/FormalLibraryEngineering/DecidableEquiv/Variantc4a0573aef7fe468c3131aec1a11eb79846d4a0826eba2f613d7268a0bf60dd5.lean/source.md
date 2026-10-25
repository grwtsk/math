# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variantc4a0573aef7fe468c3131aec1a11eb79846d4a0826eba2f613d7268a0bf60dd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2747fe1e53fca8ac4164eb0da6f4602bbfba7f4e` · SHA-256 `5ef5aa1a79c102e2f6bc2e39699e0b777356a47a25c36dd02d975c4b689c3edd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Raw.Variant14ee482f0d3952f7b92939dc998536909c7474523f35d094bbc4f98154f23c2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14ee482f0d3952f7b92939dc998536909c7474523f35d094bbc4f98154f23c2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Raw.Variant14ee482f0d3952f7b92939dc998536909c7474523f35d094bbc4f98154f23c2d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"14ee482f0d3952f7b92939dc998536909c7474523f35d094bbc4f98154f23c2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DTreeMap/DecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.Raw


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Raw.Variant14ee482f0d3952f7b92939dc998536909c7474523f35d094bbc4f98154f23c2d

public section

/-!
# Decidable equivalence for `DTreeMap`
-/

open Std.DTreeMap.Internal.Impl

namespace Std.DTreeMap

instance {α : Type u} {β : α → Type v} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] [∀ k, BEq (β k)] [∀ k, LawfulBEq (β k)] {t₁ t₂ : DTreeMap α β cmp} : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  let : Decidable (t₁.inner ~m t₂.inner) := decidableEquiv t₁.1 t₂.1 t₁.2 t₂.2;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.DTreeMap
```
