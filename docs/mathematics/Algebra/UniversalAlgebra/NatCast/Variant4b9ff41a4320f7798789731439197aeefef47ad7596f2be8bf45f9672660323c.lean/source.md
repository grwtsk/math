# Complete source: GRWTSK.Algebra.UniversalAlgebra.NatCast.Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a566781c46668b8c947104e5b7e371daebfd0974` · SHA-256 `10409c9065e3c4fc5c08168468facb145a27c2027be3f9d5ea5bd3cb73376de1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.NatCastFactorialOfLe.Variantdfaf55fcb97609379aa2f847d9be528d6540ead2f2f2ffe2e0f74b3d1421c288","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfaf55fcb97609379aa2f847d9be528d6540ead2f2f2ffe2e0f74b3d1421c288","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NatCastFactorialOfLe.Variantdfaf55fcb97609379aa2f847d9be528d6540ead2f2f2ffe2e0f74b3d1421c288","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"dfaf55fcb97609379aa2f847d9be528d6540ead2f2f2ffe2e0f74b3d1421c288","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Factorial/NatCast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Antoine Chambert-Loir, María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir, María Inés de Frutos-Fernández
-/

import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.CharP.Invertible
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Data.Nat.Factorial.Basic

/-!
# Invertibility of factorials

This file contains lemmas providing sufficient conditions for the cast of `n!` to a (semi)ring `A`
to be a unit.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.NatCastFactorialOfLe.Variantdfaf55fcb97609379aa2f847d9be528d6540ead2f2f2ffe2e0f74b3d1421c288

namespace IsUnit

open Nat
section Semiring

variable {A : Type*} [Semiring A]

theorem natCast_factorial_of_le {n : ℕ} (hn_fac : IsUnit (n ! : A))
    {m : ℕ} (hmn : m ≤ n) : IsUnit (m ! : A) := by
  obtain ⟨k, rfl⟩ := exists_add_of_le hmn
  clear hmn
  induction k generalizing m with
  | zero => simpa using hn_fac
  | succ k ih =>
    rw [← add_assoc, add_right_comm] at hn_fac
    have := ih hn_fac
    rw [Nat.factorial_succ, Nat.cast_mul, Nat.cast_commute _ _ |>.isUnit_mul_iff] at this
    exact this.2

theorem natCast_factorial_of_lt {n : ℕ} (hn_fac : IsUnit ((n - 1)! : A))
    {m : ℕ} (hmn : m < n) : IsUnit (m ! : A) :=
  hn_fac.natCast_factorial_of_le <| le_sub_one_of_lt hmn

/-- If `A` is an algebra over a characteristic-zero (semi)field, then `n!` is a unit. -/
theorem natCast_factorial_of_algebra (K : Type*) [Semifield K] [CharZero K] [Algebra K A] (n : ℕ) :
    IsUnit (n ! : A) := by
  suffices IsUnit (n ! : K) by
    simpa using this.map (algebraMap K A)
  simp [isUnit_iff_ne_zero, n.factorial_ne_zero]

end Semiring

section CharP

variable {A : Type*} [Ring A] (p : ℕ) [Fact (Nat.Prime p)] [CharP A p]

theorem natCast_factorial_iff_of_charP {n : ℕ} : IsUnit (n ! : A) ↔ n < p := by
  have hp : p.Prime := Fact.out
  induction n with
  | zero => simp [hp.pos]
  | succ n ih =>
    -- TODO: why is `.symm.symm` needed here!?
    rw [factorial_succ, cast_mul, Nat.cast_commute _ _ |>.isUnit_mul_iff, ih.symm.symm,
      ← Nat.add_one_le_iff, CharP.isUnit_natCast_iff hp]
    exact ⟨fun ⟨h1, h2⟩ ↦ lt_of_le_of_ne h2 (mt (· ▸ dvd_rfl) h1),
      fun h ↦ ⟨not_dvd_of_pos_of_lt (Nat.succ_pos _) h, h.le⟩⟩

end CharP

end IsUnit
```
