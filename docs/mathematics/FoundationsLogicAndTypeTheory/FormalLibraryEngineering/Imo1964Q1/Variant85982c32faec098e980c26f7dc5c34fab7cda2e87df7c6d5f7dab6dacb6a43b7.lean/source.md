# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo1964Q1.Variant85982c32faec098e980c26f7dc5c34fab7cda2e87df7c6d5f7dab6dacb6a43b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d27d6a66a78d485b7266c6cd5250f3498fa305f2` · SHA-256 `fd09cbae02093869f7c01e736304085749dc394ce724f12346bf7318f024208d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwoPowModSeven.Variantaee9931a6f1309763f83f2d5986bb8bf7f6d116fe948d99b58cd31c31247ecbd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aee9931a6f1309763f83f2d5986bb8bf7f6d116fe948d99b58cd31c31247ecbd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TwoPowModSeven.Variantaee9931a6f1309763f83f2d5986bb8bf7f6d116fe948d99b58cd31c31247ecbd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"aee9931a6f1309763f83f2d5986bb8bf7f6d116fe948d99b58cd31c31247ecbd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Imo/Imo1964Q1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard
-/
module

public import Mathlib.Tactic.IntervalCases
public import Mathlib.Data.Nat.ModEq
public import Mathlib.Tactic.Ring

/-!
# IMO 1964 Q1

(a) Find all positive integers $n$ for which $2^n-1$ is divisible by $7$.
(b) Prove that there is no positive integer $n$ for which $2^n+1$ is divisible by $7$.

For (a), we find that the order of $2$ mod $7$ is $3$. Therefore for (b), it suffices to check
$n = 0, 1, 2$.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwoPowModSeven.Variantaee9931a6f1309763f83f2d5986bb8bf7f6d116fe948d99b58cd31c31247ecbd

public section

open Nat

namespace Imo1964Q1

theorem two_pow_mod_seven (n : ℕ) : 2 ^ n ≡ 2 ^ (n % 3) [MOD 7] :=
  let t := n % 3
  calc 2 ^ n = 2 ^ (3 * (n / 3) + t) := by rw [Nat.div_add_mod]
    _ = (2 ^ 3) ^ (n / 3) * 2 ^ t := by rw [pow_add, pow_mul]
    _ ≡ 1 ^ (n / 3) * 2 ^ t [MOD 7] := by gcongr; decide
    _ = 2 ^ t := by ring

end Imo1964Q1

open Imo1964Q1

theorem imo1964_q1a (n : ℕ) (_ : 0 < n) : 7 ∣ 2 ^ n - 1 ↔ 3 ∣ n := by
  let t := n % 3
  have : t < 3 := Nat.mod_lt _ (by decide)
  calc 7 ∣ 2 ^ n - 1 ↔ 2 ^ n ≡ 1 [MOD 7] := by
        rw [Nat.ModEq.comm, Nat.modEq_iff_dvd']
        apply Nat.one_le_pow'
    _ ↔ 2 ^ t ≡ 1 [MOD 7] := ⟨(two_pow_mod_seven n).symm.trans, (two_pow_mod_seven n).trans⟩
    _ ↔ t = 0 := by interval_cases t <;> decide
    _ ↔ 3 ∣ n := by rw [dvd_iff_mod_eq_zero]

theorem imo1964_q1b (n : ℕ) : ¬7 ∣ 2 ^ n + 1 := by
  intro h
  let t := n % 3
  have : t < 3 := Nat.mod_lt _ (by decide)
  have H : 2 ^ t + 1 ≡ 0 [MOD 7] := calc
    2 ^ t + 1 ≡ 2 ^ n + 1 [MOD 7] := by gcongr ?_ + 1; exact (two_pow_mod_seven n).symm
      _ ≡ 0 [MOD 7] := h.modEq_zero_nat
  interval_cases t <;> contradiction
```
