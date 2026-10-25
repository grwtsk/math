# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Thunk.Variante32ff42c14d734aa08a959c22f3a66003de14c905a98459093ef67d8fcc91a48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `700bbf6b3e6db613c27d4dc0d3c852e8a32abeea` · SHA-256 `e214c4ea86def6411adb466ea14e59fd3feb33c4441810b613f177df703ed03d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Ext.Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Lean/Thunk.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Mathport.Rename
import Std.Tactic.Ext

/-!
# Basic facts about `Thunk`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787

set_option autoImplicit true

namespace Thunk

#align thunk.mk Thunk.mk

-- Porting note: Added `Thunk.ext` to get `ext` tactic to work.
@[ext]
theorem ext {α : Type u} {a b : Thunk α} (eq : a.get = b.get) : a = b := by
  have ⟨_⟩ := a
  have ⟨_⟩ := b
  congr
  exact funext fun _ ↦ eq

instance {α : Type u} [DecidableEq α] : DecidableEq (Thunk α) := by
  intro a b
  have : a = b ↔ a.get = b.get := ⟨by intro x; rw [x], by intro; ext; assumption⟩
  rw [this]
  infer_instance

/-- The product of two thunks. -/
def prod (a : Thunk α) (b : Thunk β) : Thunk (α × β) := Thunk.mk fun _ => (a.get, b.get)

@[simp] theorem prod_get_fst : (prod a b).get.1 = a.get := rfl
@[simp] theorem prod_get_snd : (prod a b).get.2 = b.get := rfl

end Thunk
```
