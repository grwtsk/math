# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Prod.Variantc308c51358d30af02b4023023549b2515763840efb32e94084ee08512aa562cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ebfeb97f99d22d80f5273658dc01730f0f9d196` · SHA-256 `b1b8c31c56cfefacb03668a3bd9aa7ab45b67fbaae47695d2fcd1d4b9a09bc1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FstIntCast.Variant1ca1529b5e725a579ed6df3facec74326e2dd27e3c96f6f5dfd71436e87e6e1c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ca1529b5e725a579ed6df3facec74326e2dd27e3c96f6f5dfd71436e87e6e1c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FstIntCast.Variant1ca1529b5e725a579ed6df3facec74326e2dd27e3c96f6f5dfd71436e87e6e1c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1ca1529b5e725a579ed6df3facec74326e2dd27e3c96f6f5dfd71436e87e6e1c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/Cast/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Nat.Cast.Prod

/-!
# The product of two `AddGroupWithOne`s.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FstIntCast.Variant1ca1529b5e725a579ed6df3facec74326e2dd27e3c96f6f5dfd71436e87e6e1c

namespace Prod

variable {α β : Type*} [AddGroupWithOne α] [AddGroupWithOne β]

instance : AddGroupWithOne (α × β) :=
  { Prod.instAddMonoidWithOne, Prod.instAddGroup with
    intCast := fun n => (n, n)
    intCast_ofNat := fun _ => by ext <;> simp
    intCast_negSucc := fun _ => by ext <;> simp }

@[simp]
theorem fst_intCast (n : ℤ) : (n : α × β).fst = n :=
  rfl

@[simp]
theorem snd_intCast (n : ℤ) : (n : α × β).snd = n :=
  rfl

end Prod
```
