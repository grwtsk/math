# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Pi.Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `435ad501e761904436fb36b5bd56890fd29758ea` · SHA-256 `48d648f6fc2cf71e1003685948f39b39aa905277c78715810bdf58f8051549ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.IntCastApply.Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IntCastApply.Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/Cast/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Batteries.Tactic.Alias
import Mathlib.Data.Int.Notation
import Mathlib.Tactic.TypeStar
import Mathlib.Util.AssertExists

/-!
# Cast of integers to function types

This file provides a (pointwise) cast from `ℤ` to function types.

## Main declarations

* `Pi.instIntCast`: map `n : ℤ` to the constant function `n : ∀ i, π i`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.IntCastApply.Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a

assert_not_exists OrderedCommMonoid RingHom

namespace Pi

variable {ι : Type*} {π : ι → Type*} [∀ i, IntCast (π i)]

instance instIntCast : IntCast (∀ i, π i) where intCast n _ := n

@[simp]
theorem intCast_apply (n : ℤ) (i : ι) : (n : ∀ i, π i) i = n :=
  rfl

theorem intCast_def (n : ℤ) : (n : ∀ i, π i) = fun _ => ↑n :=
  rfl

end Pi

@[simp]
theorem Sum.elim_intCast_intCast {α β γ : Type*} [IntCast γ] (n : ℤ) :
    Sum.elim (n : α → γ) (n : β → γ) = n :=
  Sum.elim_lam_const_lam_const (γ := γ) n
```
