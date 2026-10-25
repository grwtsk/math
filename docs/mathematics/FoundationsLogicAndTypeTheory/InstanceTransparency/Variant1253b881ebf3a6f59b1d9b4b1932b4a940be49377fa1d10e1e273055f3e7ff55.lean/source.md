# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.InstanceTransparency.Variant1253b881ebf3a6f59b1d9b4b1932b4a940be49377fa1d10e1e273055f3e7ff55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ed6d8c6c212bbfba50b0e2f0e99072017477f00` · SHA-256 `9f867eb69ae2001adf873784e2daa9adc48d55257693084350af992abe59faf2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Real.Variant969adbcc7de3e2d3867cf82a71ad6e2589a3fd45ffd7b3983b63a8f09709bd9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"969adbcc7de3e2d3867cf82a71ad6e2589a3fd45ffd7b3983b63a8f09709bd9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Real.Variant969adbcc7de3e2d3867cf82a71ad6e2589a3fd45ffd7b3983b63a8f09709bd9f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"969adbcc7de3e2d3867cf82a71ad6e2589a3fd45ffd7b3983b63a8f09709bd9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/InstanceTransparency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic

/-! # Test transparency level of `Div` field in `DivInvMonoid`

It is desirable that particular `DivInvMonoid`s have their `Div` instance not unfold at `.instance`
transparency level, in the same way that the `Div` field of a generic `DivInvMonoid` does not.

To ensure this, in examples where the `Div` field is defined as `fun a b ↦ a * b⁻¹`, we hide this
under one layer of other function (so for example the `Div` instance for `Rat` is defined to be
`⟨Rat.div⟩`, where `Rat.div` is defined to be `fun a b ↦ a * b⁻¹`).

This file checks that this and similar tricks have had the desired effect:
`with_reducible_and_instances apply mul_le_mul` fails although `apply mul_le_mul` succeeds.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Real.Variant969adbcc7de3e2d3867cf82a71ad6e2589a3fd45ffd7b3983b63a8f09709bd9f

set_option autoImplicit true

example {a b : α} [LinearOrderedField α] : a / 2 ≤ b / 2 := by
  fail_if_success with_reducible_and_instances apply mul_le_mul -- fails, as desired
  sorry

example {a b : ℚ} : a / 2 ≤ b / 2 := by
  fail_if_success with_reducible_and_instances apply mul_le_mul -- fails, as desired
  apply mul_le_mul
  repeat sorry

example {a b : ℝ} : a / 2 ≤ b / 2 := by
  fail_if_success with_reducible_and_instances apply mul_le_mul -- fails, as desired
  apply mul_le_mul
  repeat sorry
```
