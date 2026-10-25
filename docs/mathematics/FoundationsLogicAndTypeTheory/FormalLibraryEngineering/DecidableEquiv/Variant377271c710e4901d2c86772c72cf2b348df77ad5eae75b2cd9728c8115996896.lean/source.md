# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant377271c710e4901d2c86772c72cf2b348df77ad5eae75b2cd9728c8115996896

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62ee25afde96847b06402dee7b8152223f9faf5a` · SHA-256 `38b8f410253551c789ce6522f613b9b31feef29b8cb9a548b328a922ecda4e51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstDecidableEquiv.Variantb18f01055629ea799c2d9fe25494071a422fdf6fb0dba0179161856eaa48d8dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b18f01055629ea799c2d9fe25494071a422fdf6fb0dba0179161856eaa48d8dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.InstDecidableEquiv.Variantb18f01055629ea799c2d9fe25494071a422fdf6fb0dba0179161856eaa48d8dc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b18f01055629ea799c2d9fe25494071a422fdf6fb0dba0179161856eaa48d8dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DTreeMap/Raw/DecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.Internal.Lemmas
public import Std.Data.DTreeMap.Raw.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstDecidableEquiv.Variantb18f01055629ea799c2d9fe25494071a422fdf6fb0dba0179161856eaa48d8dc

public section

/-!
# Decidable equivalence for `DTreeMap.Raw`
-/

open Std.DTreeMap.Internal.Impl

namespace Std.DTreeMap.Raw

def instDecidableEquiv {α : Type u} {β : α → Type v} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] [∀ k, BEq (β k)] [∀ k, LawfulBEq (β k)] {t₁ t₂ : Raw α β cmp} (h₁ : t₁.WF) (h₂ : t₂.WF) : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  let : Decidable (t₁.inner ~m t₂.inner) := decidableEquiv t₁.1 t₂.1 h₁ h₂;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.DTreeMap.Raw
```
