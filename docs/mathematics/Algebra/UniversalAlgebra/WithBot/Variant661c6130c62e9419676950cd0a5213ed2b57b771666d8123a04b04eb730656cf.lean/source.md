# Complete source: GRWTSK.Algebra.UniversalAlgebra.WithBot.Variant661c6130c62e9419676950cd0a5213ed2b57b771666d8123a04b04eb730656cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `992046ccc6beec550ba9252aac3c0deb31fc002f` · SHA-256 `bd891a63b156fcf26875d6ea4baea69727dfdb5b7a1696c1d9eaad5a2c8d17c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SuccNatCast.Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SuccNatCast.Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"f67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/SuccPred/WithBot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies, Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Andrew Yang
-/
import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Order.SuccPred.WithBot

/-!
# Algebraic properties of the successor function on `WithBot`
-/


namespace GRWTSK.Algebra.UniversalAlgebra.SuccNatCast.Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd

namespace WithBot
variable {α : Type*} [Preorder α] [OrderBot α] [AddMonoidWithOne α] [SuccAddOrder α]

lemma succ_natCast (n : ℕ) : succ (n : WithBot α) = n + 1 := by
  rw [← WithBot.coe_natCast, succ_coe, Order.succ_eq_add_one]

@[simp] lemma succ_zero : succ (0 : WithBot α) = 1 := by simpa using succ_natCast 0

@[simp]
lemma succ_one : succ (1 : WithBot α) = 2 := by simpa [one_add_one_eq_two] using succ_natCast 1

@[simp]
lemma succ_ofNat (n : ℕ) [n.AtLeastTwo] :
    succ (ofNat(n) : WithBot α) = ofNat(n) + 1 := succ_natCast n

lemma one_le_iff_pos {α : Type*} [PartialOrder α] [AddMonoidWithOne α]
    [ZeroLEOneClass α] [NeZero (1 : α)] [SuccAddOrder α] (a : WithBot α) : 1 ≤ a ↔ 0 < a := by
  cases a <;> simp [Order.one_le_iff_pos]

end WithBot
```
