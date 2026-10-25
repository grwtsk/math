# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Mul.Variant8125ad18882aad2f74f3098774f0d68377a3da0d5123572236ec553d2fca3a99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa5b4be44e4d4eafe201cacf48bac48b0dd17884` · SHA-256 `122cd14379d5c725fb243034178675d92543d3815272a0eff10e66d8a908ea7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ChooseMulAdd.Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ChooseMulAdd.Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Choose/Mul.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Antoine Chambert-Loir & María-Inés de Frutos—Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir, María-Inés de Frutos—Fernández
-/

import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Tactic.Ring.RingNF

/-! # Two lemmas on choose

The proofs of these lemmas use the `ring` tactic
and can't be given in `Mathlib/Data/Nat/Choose/Basic.lean`

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ChooseMulAdd.Variant31a667045f3c4bf21fb43cef6d0432f701058bc75819a1e25d7120fef990a570

namespace Nat

theorem choose_mul_add {m n : ℕ} (hn : n ≠ 0) :
    (m * n + n).choose n = (m + 1) * (m * n + n - 1).choose (n - 1) := by
  rw [← Nat.mul_left_inj (mul_ne_zero (factorial_ne_zero (m * n)) (factorial_ne_zero n))]
  set p := n - 1
  have hp : n = p + 1 := (succ_pred_eq_of_ne_zero hn).symm
  simp only [hp, add_succ_sub_one]
  calc
    (m * (p + 1) + (p + 1)).choose (p + 1) * ((m * (p+1))! * (p+1)!)
      = (m * (p + 1) + (p + 1)).choose (p + 1) * (m * (p+1))! * (p+1)! := by ring
    _ = (m * (p+ 1) + (p + 1))! := by rw [add_choose_mul_factorial_mul_factorial]
    _ = ((m * (p+ 1) + p) + 1)! := by ring_nf
    _ = ((m * (p + 1) + p) + 1) * (m * (p + 1) + p)! := by rw [factorial_succ]
    _ = (m * (p + 1) + p)! * ((p + 1) * (m + 1)) := by ring
    _ = ((m * (p + 1) + p).choose p * (m * (p+1))! * (p)!) * ((p + 1) * (m + 1)) := by
      rw [add_choose_mul_factorial_mul_factorial]
    _ = (m * (p + 1) + p).choose p * (m * (p+1))! * (((p + 1) * (p)!) * (m + 1)) := by ring
    _ = (m * (p + 1) + p).choose p * (m * (p+1))! * ((p + 1)! * (m + 1)) := by rw [factorial_succ]
    _ = (m + 1) * (m * (p + 1) + p).choose p * ((m * (p + 1))! * (p + 1)!) := by ring

theorem choose_mul_right {m n : ℕ} (hn : n ≠ 0) :
    (m * n).choose n = m * (m * n - 1).choose (n - 1) := by
  by_cases hm : m = 0
  · simp only [hm, zero_mul, choose_eq_zero_iff]
    exact Nat.pos_of_ne_zero hn
  · set p := m - 1; have hp : m = p + 1 := (succ_pred_eq_of_ne_zero hm).symm
    simp only [hp]
    rw [add_mul, one_mul, choose_mul_add hn]

end Nat
```
