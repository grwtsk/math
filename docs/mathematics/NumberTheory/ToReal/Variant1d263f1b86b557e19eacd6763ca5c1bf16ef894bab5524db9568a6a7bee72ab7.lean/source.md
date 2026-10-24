# Complete source: GRWTSK.NumberTheory.ToReal.Variant1d263f1b86b557e19eacd6763ca5c1bf16ef894bab5524db9568a6a7bee72ab7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b91b3466f8b942e46d8c3fbb19d3133307382823` · SHA-256 `e728986e87962c2f52b896b45fc8972cc7ee4651ade632464ff67f584f8e683c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ToReal.Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToReal.Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/Zsqrtd/ToReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Data.Real.Sqrt
import Mathlib.NumberTheory.Zsqrtd.Basic

/-!
# Image of `Zsqrtd` in `ℝ`

This file defines `Zsqrtd.toReal` and related lemmas.
It is in a separate file to avoid pulling in all of `Data.Real` into `Data.Zsqrtd`.
-/



namespace GRWTSK.NumberTheory.ToReal.Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4

namespace Zsqrtd

/-- The image of `Zsqrtd` in `ℝ`, using `Real.sqrt` which takes the positive root of `d`.

If the negative root is desired, use `toReal h (star a)`. -/
@[simps!]
noncomputable def toReal {d : ℤ} (h : 0 ≤ d) : ℤ√d →+* ℝ :=
  lift ⟨√↑d, Real.mul_self_sqrt (Int.cast_nonneg.mpr h)⟩

theorem toReal_injective {d : ℤ} (h0d : 0 ≤ d) (hd : ∀ n : ℤ, d ≠ n * n) :
    Function.Injective (toReal h0d) :=
  lift_injective _ hd

end Zsqrtd
```
