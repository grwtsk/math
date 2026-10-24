# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Floor.Variant6de40489f163254dca5c83e5fe81b1aa8e51f7ab1fdfbe3ffc2e53de61ab7d39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2248a3d1bdcdcaa1e50b68cd57b9edd9ac2eb970` · SHA-256 `573310991139c2e19d2ab6e13e1d1bf6c746eb2e106f667c95c0a1448a1bf681`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FloorSemiringEventuallyMulPowLtFactorialSub.Varianta0fd602c31208b32d9728e380ed49092b8177420214449e282a908dfe97fefa0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0fd602c31208b32d9728e380ed49092b8177420214449e282a908dfe97fefa0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FloorSemiringEventuallyMulPowLtFactorialSub.Varianta0fd602c31208b32d9728e380ed49092b8177420214449e282a908dfe97fefa0","mathematical_subject":"Algebra.OrderTheory","original_sha256":"a0fd602c31208b32d9728e380ed49092b8177420214449e282a908dfe97fefa0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Filter/AtTopBot/Floor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yuyang Zhao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuyang Zhao
-/
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Order.Filter.AtTopBot.Finite

/-!
# `a * c ^ n < (n - d)!` holds true for sufficiently large `n`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FloorSemiringEventuallyMulPowLtFactorialSub.Varianta0fd602c31208b32d9728e380ed49092b8177420214449e282a908dfe97fefa0

open Filter
open scoped Nat

variable {K : Type*} [Ring K] [LinearOrder K] [IsStrictOrderedRing K] [FloorSemiring K]

theorem FloorSemiring.eventually_mul_pow_lt_factorial_sub (a c : K) (d : ℕ) :
    ∀ᶠ n in atTop, a * c ^ n < (n - d)! := by
  filter_upwards [Nat.eventually_mul_pow_lt_factorial_sub ⌈|a|⌉₊ ⌈|c|⌉₊ d] with n h
  calc a * c ^ n
    _ ≤ |a * c ^ n| := le_abs_self _
    _ ≤ ⌈|a|⌉₊ * (⌈|c|⌉₊ : K) ^ n := ?_
    _ = ↑(⌈|a|⌉₊ * ⌈|c|⌉₊ ^ n) := ?_
    _ < (n - d)! := Nat.cast_lt.mpr h
  · rw [abs_mul, abs_pow]
    gcongr <;> try first | positivity | apply Nat.le_ceil
  · simp_rw [Nat.cast_mul, Nat.cast_pow]
```
