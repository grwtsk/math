# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PredMod.Variant4bae4ce3c6bd4ba192534391a2e1747c036e048cee1ba84505b3bcfce1a7d6c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0f49c45bdb9beaa409ead4b6bfd9f623280ad6d` · SHA-256 `c0d98840264c658570db44b9c42f71f41b4bd34e54a28c6356a4cfea9c3043f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PredModKR.Variant75882a8a2ba9af390683b719ac9965c46b3319b186ff1169cffc8457af304b58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75882a8a2ba9af390683b719ac9965c46b3319b186ff1169cffc8457af304b58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PredModKR.Variant75882a8a2ba9af390683b719ac9965c46b3319b186ff1169cffc8457af304b58","mathematical_subject":"Foundations.Unclassified","original_sha256":"75882a8a2ba9af390683b719ac9965c46b3319b186ff1169cffc8457af304b58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/PrimeCert/PrimeCert/PredMod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/

/-! # Efficient computation of `(a - 1) % N`

`predModKR` computes `(a + (N - 1)) % N` using `Nat.rec` so the kernel can reduce it
via `eagerReduce`, avoiding the overhead of general modular arithmetic.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PredModKR.Variant75882a8a2ba9af390683b719ac9965c46b3319b186ff1169cffc8457af304b58

/-- Kernel-reducible predecessor mod: computes `(a + (N - 1)) % N` for `a ≤ N`. -/
def predModKR (a N : Nat) : Nat :=
  a.rec N.pred fun a _ ↦ a

theorem predModKR_eq {a N : Nat} (hn : N ≠ 0) (ha : a ≤ N) :
    predModKR a N = (a + (N - 1)) % N := by
  delta predModKR
  cases a with
  | zero => rw [Nat.zero_add, Nat.mod_eq_of_lt (by grind)]; rfl
  | succ a =>
    rw [Nat.add_assoc, ← Nat.succ_eq_one_add, ← Nat.pred_eq_sub_one, Nat.succ_pred hn,
      Nat.add_mod_right, Nat.mod_eq_of_lt (by grind), ← Nat.succ_eq_add_one]
```
