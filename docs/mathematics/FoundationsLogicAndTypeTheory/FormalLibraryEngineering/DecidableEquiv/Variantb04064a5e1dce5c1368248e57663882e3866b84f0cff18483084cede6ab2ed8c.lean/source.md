# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variantb04064a5e1dce5c1368248e57663882e3866b84f0cff18483084cede6ab2ed8c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75b4a4279604dc18b4d92f51abc25eec2a949957` · SHA-256 `51ffb5c8dd8059c50e9001a8293004dfec1667ce01c71254487ab3b16003e3f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant829aa586319dc756477a9b170f5888ecf8aa52b29591dfcfc99b12b02498e808","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"829aa586319dc756477a9b170f5888ecf8aa52b29591dfcfc99b12b02498e808","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DecidableEquiv.Variant829aa586319dc756477a9b170f5888ecf8aa52b29591dfcfc99b12b02498e808","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"829aa586319dc756477a9b170f5888ecf8aa52b29591dfcfc99b12b02498e808","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeMap/DecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.DecidableEquiv
public import Std.Data.TreeMap.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant829aa586319dc756477a9b170f5888ecf8aa52b29591dfcfc99b12b02498e808

public section

/-!
# Decidable equivalence for `TreeMap`
-/

open Std.DTreeMap

namespace Std.TreeMap

instance {α : Type u} {β : Type v} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] [BEq β] [LawfulBEq β] {t₁ t₂ : TreeMap α β cmp} : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.TreeMap
```
