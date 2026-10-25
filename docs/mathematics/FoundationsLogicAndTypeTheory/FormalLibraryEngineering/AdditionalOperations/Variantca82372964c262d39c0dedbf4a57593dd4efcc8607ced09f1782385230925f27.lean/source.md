# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionalOperations.Variantca82372964c262d39c0dedbf4a57593dd4efcc8607ced09f1782385230925f27

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d061e92c866e5934b1ce7d696afa530d52ac32c0` · SHA-256 `071de1ebb0bc57fe1cb01cdd90ddcf06da8d41ff0dfd68e98cff2c21a44d1f7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant1c177e4dd8465ebee342ae6c402e18393239dc2ac924fb67563b5e58b5688d69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c177e4dd8465ebee342ae6c402e18393239dc2ac924fb67563b5e58b5688d69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FilterMap.Variant1c177e4dd8465ebee342ae6c402e18393239dc2ac924fb67563b5e58b5688d69","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1c177e4dd8465ebee342ae6c402e18393239dc2ac924fb67563b5e58b5688d69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeMap/Raw/AdditionalOperations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.TreeMap.Basic
public import Std.Data.TreeMap.Raw.Basic
public import Std.Data.DTreeMap.Raw.AdditionalOperations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant1c177e4dd8465ebee342ae6c402e18393239dc2ac924fb67563b5e58b5688d69

@[expose] public section

/-!
# Additional raw tree map operations

This file defines more operations on `Std.TreeMap.Raw`.
We currently do not provide lemmas for these functions.
-/

set_option autoImplicit false
set_option linter.missingDocs true

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w} {cmp : α → α → Ordering}

namespace Std.TreeMap.Raw

@[inline, inherit_doc DTreeMap.Raw.filterMap]
def filterMap (f : (a : α) → β → Option γ) (t : Raw α β cmp) : Raw α γ cmp :=
  ⟨t.inner.filterMap f⟩

@[inline, inherit_doc DTreeMap.Raw.map]
def map (f : α → β → γ) (t : Raw α β cmp) : Raw α γ cmp :=
  ⟨t.inner.map f⟩

/-!
We do not provide `get*GE`, `get*GT`, `get*LE` and `get*LT` functions for the raw trees.
-/

end Std.TreeMap.Raw
```
