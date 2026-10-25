# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant5e0fef85195e5d1334484a673b91cb743a6665614d9449bdbc5f486b042ef357

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4eb8e3038cf8ddcfcd98c528bebcef3e3dfdd866` · SHA-256 `8a23a0608cf68530d58617741e278129062b1a5475509cf99c1102b28c1b75cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstDecidableEquiv.Variant1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.InstDecidableEquiv.Variant1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeMap/Raw/DecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude

public import Std.Data.DTreeMap.DecidableEquiv
public import Std.Data.TreeMap.Raw.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstDecidableEquiv.Variant1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca

public section

/-!
# Decidable equivalence for `TreeMap.Raw`
-/

open Std.DTreeMap.Raw

namespace Std.TreeMap.Raw

def instDecidableEquiv {α : Type u} {β : Type v} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] [BEq β] [LawfulBEq β] {t₁ t₂ : Raw α β cmp} (h₁ : t₁.WF) (h₂ : t₂.WF) : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  let : Decidable (t₁.inner ~m t₂.inner) := DTreeMap.Raw.instDecidableEquiv h₁ h₂;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.TreeMap.Raw
```
