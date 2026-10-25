# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantb97e4d98c1a842a01edea2d6088461a41cd068dd44891cd8e6ada77d57c1dcca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c9ef29856065e11655fc27af6801837db9665e5` · SHA-256 `052782c88bd3350794f47ea1446210b11fde164ea9723dcd0ab373201ef004b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant146ef8b3ebf4b02f6cf4f317c9f7220901cfed6d83e5ddc597dcc17ebf1f70a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"146ef8b3ebf4b02f6cf4f317c9f7220901cfed6d83e5ddc597dcc17ebf1f70a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Ext.Variant146ef8b3ebf4b02f6cf4f317c9f7220901cfed6d83e5ddc597dcc17ebf1f70a3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"146ef8b3ebf4b02f6cf4f317c9f7220901cfed6d83e5ddc597dcc17ebf1f70a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Subtype/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
module

prelude
public import Init.Ext


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant146ef8b3ebf4b02f6cf4f317c9f7220901cfed6d83e5ddc597dcc17ebf1f70a3

public section

namespace Subtype

universe u
variable {α : Sort u} {p q : α → Prop}

@[simp]
protected theorem «forall» {q : { a // p a } → Prop} : (∀ x, q x) ↔ ∀ a b, q ⟨a, b⟩ :=
  ⟨fun h a b ↦ h ⟨a, b⟩, fun h ⟨a, b⟩ ↦ h a b⟩

@[simp]
protected theorem «exists» {q : { a // p a } → Prop} :
    (Exists fun x => q x) ↔ Exists fun a => Exists fun b => q ⟨a, b⟩ :=
  ⟨fun ⟨⟨a, b⟩, h⟩ ↦ ⟨a, b, h⟩, fun ⟨a, b, h⟩ ↦ ⟨⟨a, b⟩, h⟩⟩

end Subtype
```
