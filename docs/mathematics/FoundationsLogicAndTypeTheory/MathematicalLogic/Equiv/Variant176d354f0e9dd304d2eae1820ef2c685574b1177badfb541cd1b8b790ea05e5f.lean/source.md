# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant176d354f0e9dd304d2eae1820ef2c685574b1177badfb541cd1b8b790ea05e5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04d5ae71ffafc7bf0126b585be4d20d8a7e4478c` · SHA-256 `ee4d141f6033d44c7bae25303197d556ccc9420b6ac3d28d06a4ec79693d0e2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.XorInvolutive.Variantd0a84b4a43162522027a38831ab37a46adff587e1618d9c29b803c065bebf582","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0a84b4a43162522027a38831ab37a46adff587e1618d9c29b803c065bebf582","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.XorInvolutive.Variantd0a84b4a43162522027a38831ab37a46adff587e1618d9c29b803c065bebf582","mathematical_subject":"Logic.Foundations","original_sha256":"d0a84b4a43162522027a38831ab37a46adff587e1618d9c29b803c065bebf582","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/LawfulXor/Equiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Wrenna Robson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wrenna Robson
-/

module
public import Mathlib.Data.LawfulXor.Basic
public import Mathlib.Algebra.Group.End

/-!
# LawfulXor equivalences
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.XorInvolutive.Variantd0a84b4a43162522027a38831ab37a46adff587e1618d9c29b803c065bebf582

@[expose] public section

namespace Equiv

open LawfulXor

variable {α : Type*} [XorOp α] [Zero α] [LawfulXor α] {a b : α}

/-- `XorOp.xor` as a permutation. -/
@[simps! apply] protected def xor (a : α) : Perm α where
  toFun := (a ^^^ ·)
  invFun := (a ^^^ ·)
  left_inv := xor_cancel_left a
  right_inv := xor_cancel_left a

@[simp] theorem xor_symm : (Equiv.xor a).symm = Equiv.xor a := rfl

theorem xor_involutive (a : α) : Function.Involutive (Equiv.xor a) := xor_right_involutive a

@[simp] theorem xor_zero : Equiv.xor (0 : α) = 1 := Equiv.ext zero_xor

@[simp] theorem xor_eq_one_iff : Equiv.xor a = 1 ↔ a = 0 :=
  Equiv.coe_inj.symm.trans xor_left_eq_id_iff

theorem isFixedPt_xor : Function.IsFixedPt (Equiv.xor a) b ↔ a = 0 := isFixedPt_xor_left_iff

@[simp] theorem xor_trans_xor : (Equiv.xor b).trans (Equiv.xor a) = Equiv.xor (a ^^^ b) :=
  Equiv.ext <| (.symm <| xor_assoc a b ·)

end Equiv
```
