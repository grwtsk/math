# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestCeil.Variant139fee8a7ded0cb0070b7147efa74c3b76f5baccbcd602523a1f9609e0936e8d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2961eab89f69c584e127074c4b17ef9d351f1145` · SHA-256 `b7121d6dd6884e3fae2e3affcae8cb8648799e9af730c8ef8e87528f24a454d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variantdce09e51efe40be967b7039b9eda69e433aee4e5c16a7a2705909576981c93dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dce09e51efe40be967b7039b9eda69e433aee4e5c16a7a2705909576981c93dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntervalAuto.Variantdce09e51efe40be967b7039b9eda69e433aee4e5c16a7a2705909576981c93dc","mathematical_subject":"Foundations.Unclassified","original_sha256":"dce09e51efe40be967b7039b9eda69e433aee4e5c16a7a2705909576981c93dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_ceil.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.IntervalAuto

/-!
# Tests for Nat.ceil preprocessing in interval_decide

These tests verify that `interval_decide` can automatically handle goals
involving `⌈e⌉₊` (Nat.ceil) by reducing to real-valued inequalities
via `Nat.ceil_le`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variantdce09e51efe40be967b7039b9eda69e433aee4e5c16a7a2705909576981c93dc

section Basic
-- Basic: ⌈e⌉₊ ≤ n  (no offset)
example : ⌈Real.exp 1⌉₊ ≤ 3 := by interval_decide
-- sqrt
example : ⌈Real.sqrt 2⌉₊ ≤ 2 := by interval_decide
-- pi
example : ⌈Real.pi⌉₊ ≤ 4 := by interval_decide
-- log
example : ⌈Real.log 10⌉₊ ≤ 3 := by interval_decide
end Basic

section WithOffset
-- ⌈e⌉₊ + k ≤ n
example : ⌈Real.exp 1⌉₊ + 1 ≤ 4 := by interval_decide
-- sqrt with offset
example : ⌈Real.sqrt 2⌉₊ + 3 ≤ 5 := by interval_decide
-- Offset on the left:  k + ⌈e⌉₊ ≤ n
example : 1 + ⌈Real.exp 1⌉₊ ≤ 4 := by interval_decide
-- Larger offset
example : ⌈Real.exp 1⌉₊ + 100 ≤ 103 := by interval_decide
end WithOffset

section TightBounds
-- e ≈ 2.718..., so ⌈e⌉₊ = 3.  Bound = 3 is tight.
example : ⌈Real.exp 1⌉₊ ≤ 3 := by interval_decide
-- sqrt(2) ≈ 1.414..., so ⌈sqrt(2)⌉₊ = 2.  Bound = 2 is tight.
example : ⌈Real.sqrt 2⌉₊ ≤ 2 := by interval_decide
-- pi ≈ 3.14159..., so ⌈pi⌉₊ = 4.  Bound = 4 is tight.
example : ⌈Real.pi⌉₊ ≤ 4 := by interval_decide
end TightBounds

section CompoundExpressions
-- ⌈e₁ * e₂⌉₊ ≤ n
example : ⌈Real.exp 1 * Real.sqrt 2⌉₊ ≤ 4 := by interval_decide
-- ⌈e₁ + e₂⌉₊ ≤ n
example : ⌈Real.exp 1 + Real.sqrt 2⌉₊ ≤ 5 := by interval_decide
-- ⌈e₁ - e₂⌉₊ ≤ n  (where e₁ > e₂)
example : ⌈Real.exp 1 - Real.sqrt 2⌉₊ ≤ 2 := by interval_decide
end CompoundExpressions

section GEForm
-- n ≥ ⌈e⌉₊  (reversed inequality)
example : 3 ≥ ⌈Real.exp 1⌉₊ := by interval_decide
-- n ≥ ⌈e⌉₊ + k
example : 4 ≥ ⌈Real.exp 1⌉₊ + 1 := by interval_decide
end GEForm

section LargerValues
-- exp(5) ≈ 148.41..., so ⌈exp(5)⌉₊ = 149
example : ⌈Real.exp 5⌉₊ ≤ 149 := by interval_decide
example : ⌈Real.exp 5⌉₊ + 1 ≤ 150 := by interval_decide
-- exp(10) ≈ 22026.47..., so ⌈exp(10)⌉₊ = 22027
example : ⌈Real.exp 10⌉₊ ≤ 22027 := by interval_decide
end LargerValues

section ZeroAndOne
-- ⌈0⌉₊ = 0
example : ⌈(0 : ℝ)⌉₊ ≤ 0 := by interval_decide
-- ⌈1⌉₊ = 1
example : ⌈(1 : ℝ)⌉₊ ≤ 1 := by interval_decide
-- ⌈0.5⌉₊ = 1
example : ⌈(1 : ℝ) / 2⌉₊ ≤ 1 := by interval_decide
end ZeroAndOne

section MotivatingExample
-- From PNT#980 — the original motivation for this feature.
-- exp(59) ≈ 5.3×10²⁵, so ⌈exp(59)⌉₊ + 4 is about that.
-- The bound 11325 * 10^22 = 1.1325×10²⁶ should be large enough.
example : ⌈Real.exp 59⌉₊ + 4 ≤ 11325 * 10 ^ 22 := by interval_decide
-- exp(60) ≈ 1.14×10²⁶
example : ⌈Real.exp 60⌉₊ + 4 ≤ 7785131284000000000000000004 := by interval_decide
end MotivatingExample
```
