# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Defs.Varianta330626fdab2ce29203c8de1a603becb7e9e99cf6a61bd166f6ac07e98b2a9de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7693c5de31ddf81bd142821db98e75bad892d086` · SHA-256 `d6db593ba797c4816a713691c2a53a05ac4079d7c165f8fbbc2c079c6ba3ec1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.LucasUPair.Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LucasUPair.Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Engine/Pisano/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 LeanCert contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib.Data.Nat.Fib.Basic
import Mathlib.Data.ZMod.Basic

/-! # Lucas Sequences — Computable Definitions

We define the generalized Lucas sequences `U_n(P, Q)` and `V_n(P, Q)` satisfying:
- `U_0 = 0, U_1 = 1, U_{n+2} = P · U_{n+1} - Q · U_n`
- `V_0 = 2, V_1 = P, V_{n+2} = P · V_{n+1} - Q · V_n`

Special cases:
- Fibonacci: `U_n(1, -1) = F_n`
- Pell: `U_n(2, -1) = P_n`
- Lucas numbers: `V_n(1, -1) = L_n`

All definitions are computable over `ℤ` for use with `native_decide`. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.LucasUPair.Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60

namespace LeanCert.Engine.Pisano

/-! ### Lucas sequence computation -/

/-- Compute `(U_n, U_{n+1})` for the Lucas U-sequence with parameters `(P, Q)` over `ℤ`. -/
def lucasUPair (P Q : Int) : Nat → Int × Int
  | 0 => (0, 1)
  | n + 1 =>
    let (u, u') := lucasUPair P Q n
    (u', P * u' - Q * u)

/-- The Lucas U-sequence: `U_n(P, Q)`. -/
def lucasU (P Q : Int) (n : Nat) : Int :=
  (lucasUPair P Q n).1

/-- Compute `(V_n, V_{n+1})` for the Lucas V-sequence with parameters `(P, Q)` over `ℤ`. -/
def lucasVPair (P Q : Int) : Nat → Int × Int
  | 0 => (2, P)
  | n + 1 =>
    let (v, v') := lucasVPair P Q n
    (v', P * v' - Q * v)

/-- The Lucas V-sequence: `V_n(P, Q)`. -/
def lucasV (P Q : Int) (n : Nat) : Int :=
  (lucasVPair P Q n).1

/-! ### Modular versions -/

/-- Compute `(U_n mod m, U_{n+1} mod m)` efficiently, reducing at each step. -/
def lucasUPairMod (P Q : Int) (m : Nat) : Nat → Int × Int
  | 0 => (0, 1 % m)
  | n + 1 =>
    let (u, u') := lucasUPairMod P Q m n
    (u' % m, (P * u' - Q * u) % m)

/-- `U_n(P, Q) mod m`, computed efficiently with modular reduction at each step. -/
def lucasUMod (P Q : Int) (m : Nat) (n : Nat) : Int :=
  (lucasUPairMod P Q m n).1

/-! ### Basic recurrence lemmas -/

@[simp] theorem lucasUPair_zero (P Q : Int) : lucasUPair P Q 0 = (0, 1) := rfl

theorem lucasUPair_succ (P Q : Int) (n : Nat) :
    lucasUPair P Q (n + 1) =
      let (u, u') := lucasUPair P Q n
      (u', P * u' - Q * u) := rfl

@[simp] theorem lucasU_zero (P Q : Int) : lucasU P Q 0 = 0 := rfl

@[simp] theorem lucasU_one (P Q : Int) : lucasU P Q 1 = 1 := rfl

theorem lucasU_succ_succ (P Q : Int) (n : Nat) :
    lucasU P Q (n + 2) = P * lucasU P Q (n + 1) - Q * lucasU P Q n := by
  simp only [lucasU, lucasUPair]

/-! ### Connection to Nat.fib (Fibonacci = Lucas U with P=1, Q=-1) -/

theorem lucasU_fib (n : Nat) : lucasU 1 (-1) n = Nat.fib n := by
  induction n using Nat.strongRecOn with
  | _ n ih =>
    match n with
    | 0 => simp
    | 1 => simp [Nat.fib]
    | n + 2 =>
      rw [lucasU_succ_succ]
      simp only [one_mul]
      rw [ih (n + 1) (by omega), ih n (by omega)]
      rw [Nat.fib_add_two]
      omega

/-! ### Modular congruence -/

private theorem lucasUPairMod_eq_mod (P Q : Int) (m : Nat) (n : Nat) :
    lucasUPairMod P Q m n =
      ((lucasUPair P Q n).1 % m, (lucasUPair P Q n).2 % m) := by
  induction n with
  | zero =>
    simp [lucasUPairMod, lucasUPair]
  | succ n ih =>
    simp only [lucasUPairMod, lucasUPair]
    rw [ih]
    ext
    · -- fst: (snd % m) % m = snd % m
      exact Int.emod_emod_of_dvd _ dvd_rfl
    · -- snd: (P * (snd % m) - Q * (fst % m)) % m = (P * snd - Q * fst) % m
      rw [Int.sub_emod, Int.mul_emod (a := P), Int.mul_emod (a := Q)]
      simp only [Int.emod_emod_of_dvd _ dvd_rfl]
      rw [← Int.mul_emod (a := P), ← Int.mul_emod (a := Q), ← Int.sub_emod]

theorem lucasUMod_eq_mod (P Q : Int) (m : Nat) (hm : 0 < m) (n : Nat) :
    lucasUMod P Q m n = lucasU P Q n % m := by
  simp only [lucasUMod, lucasU, lucasUPairMod_eq_mod P Q m n]

end LeanCert.Engine.Pisano
```
