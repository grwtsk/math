# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitblast.Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0b162611fdfa3cdd2bdd4641e6c0c5b403e5c62` · SHA-256 `87ca53d5d630341f7f961aa272579e30d25040327fe4779ce5eaa38643baacd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestBitLimit.Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TestBitLimit.Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/BitVec/Bitblast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 by the authors listed in the file AUTHORS and their
institutional affiliations. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Harun Khan, Abdalrhman M Mohamed, Joe Hendrix
-/
import Std.Data.BitVec.Folds

/-!
# Bitblasting of bitvectors

This module provides theorems for showing the equivalence between BitVec operations using
the `Fin 2^n` representation and Boolean vectors.  It is still under development, but
intended to provide a path for converting SAT and SMT solver proofs about BitVectors
as vectors of bits into proofs about Lean `BitVec` values.

The module is named for the bit-blasting operation in an SMT solver that converts bitvector
expressions into expressions about individual bits in each vector.

## Main results
* `x + y : BitVec w` is equivalent to `adc x y false`.

## Future work
All other operations are to be PR'ed later and are already proved in
https://github.com/mhk119/lean-smt/blob/bitvec/Smt/Data/BitVec.lean.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestBitLimit.Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce

open Nat Bool

/-! ### Preliminaries -/

namespace Std.BitVec

private theorem testBit_limit {x i : Nat} (x_lt_succ : x < 2^(i+1)) :
    testBit x i = decide (x ≥ 2^i) := by
  cases xi : testBit x i with
  | true =>
    simp [testBit_implies_ge xi]
  | false =>
    simp
    cases Nat.lt_or_ge x (2^i) with
    | inl x_lt =>
      exact x_lt
    | inr x_ge =>
      have ⟨j, ⟨j_ge, jp⟩⟩  := ge_two_pow_implies_high_bit_true x_ge
      cases Nat.lt_or_eq_of_le j_ge with
      | inr x_eq =>
        simp [x_eq, jp] at xi
      | inl x_lt =>
        exfalso
        apply Nat.lt_irrefl
        calc x < 2^(i+1) := x_lt_succ
             _ ≤ 2 ^ j := Nat.pow_le_pow_of_le_right Nat.zero_lt_two x_lt
             _ ≤ x := testBit_implies_ge jp

private theorem mod_two_pow_succ (x i : Nat) :
  x % 2^(i+1) = 2^i*(x.testBit i).toNat + x % (2 ^ i):= by
  apply Nat.eq_of_testBit_eq
  intro j
  simp only [Nat.mul_add_lt_is_or, testBit_or, testBit_mod_two_pow, testBit_shiftLeft,
    Nat.testBit_bool_to_nat, Nat.sub_eq_zero_iff_le, Nat.mod_lt, Nat.pow_two_pos,
    testBit_mul_pow_two]
  rcases Nat.lt_trichotomy i j with i_lt_j | i_eq_j | j_lt_i
  · have i_le_j : i ≤ j := Nat.le_of_lt i_lt_j
    have not_j_le_i : ¬(j ≤ i) := Nat.not_le_of_lt i_lt_j
    have not_j_lt_i : ¬(j < i) := Nat.not_lt_of_le i_le_j
    have not_j_lt_i_succ : ¬(j < i + 1) :=
          Nat.not_le_of_lt (Nat.succ_lt_succ i_lt_j)
    simp [i_le_j, not_j_le_i, not_j_lt_i, not_j_lt_i_succ]
  · simp [i_eq_j]
  · have j_le_i : j ≤ i := Nat.le_of_lt j_lt_i
    have j_le_i_succ : j < i + 1 := Nat.succ_le_succ j_le_i
    have not_j_ge_i : ¬(j ≥ i) := Nat.not_le_of_lt j_lt_i
    simp [j_lt_i, j_le_i, not_j_ge_i, j_le_i_succ]

private theorem mod_two_pow_lt (x i : Nat) : x % 2 ^ i < 2^i := Nat.mod_lt _ (Nat.pow_two_pos _)

/-! ### Addition -/

/-- carry w x y c returns true if the `w` carry bit is true when computing `x + y + c`. -/
def carry (w x y : Nat) (c : Bool) : Bool :=  decide (x % 2^w + y % 2^w + c.toNat ≥ 2^w)

@[simp] theorem carry_zero : carry 0 x y c = c := by
  cases c <;> simp [carry, mod_one]

/-- Carry function for bitwise addition. -/
def adcb (x y c : Bool) : Bool × Bool := (x && y || x && c || y && c, Bool.xor x (Bool.xor y c))

/-- Bitwise addition implemented via a ripple carry adder. -/
def adc (x y : BitVec w) : Bool → Bool × BitVec w :=
  iunfoldr fun (i : Fin w) c => adcb (x.getLsb i) (y.getLsb i) c

theorem adc_overflow_limit (x y i : Nat) (c : Bool) : x % 2^i + (y % 2^i + c.toNat) < 2^(i+1) := by
  apply Nat.lt_of_succ_le
  simp only [←Nat.succ_add, Nat.pow_succ, Nat.mul_two]
  apply Nat.add_le_add (mod_two_pow_lt _ _)
  apply Nat.le_trans
  exact (Nat.add_le_add_left (Bool.toNat_le_one c) _)
  exact Nat.mod_lt _ (Nat.pow_two_pos i)

theorem carry_succ (w x y : Nat) (c : Bool) : carry (succ w) x y c =
    decide ((x.testBit w).toNat + (y.testBit w).toNat + (carry w x y c).toNat ≥ 2) := by
  simp only [carry, mod_two_pow_succ _ w, decide_eq_decide]
  generalize testBit x w = xh
  generalize testBit y w = yh
  have sum_bnd : x%2^w + (y%2^w + c.toNat) < 2*2^w := by
          simp [Nat.mul_comm 2 _, ←Nat.pow_succ ]
          exact adc_overflow_limit x y w c
  simp only [Nat.pow_succ]
  cases xh <;> cases yh <;> cases Decidable.em (x%2^w + (y%2^w + toNat c) ≥ 2 ^ w) with | _ pred =>
    simp [Nat.one_shiftLeft, Nat.add_assoc, Nat.add_left_comm _ (2^_) _, Nat.mul_comm (2^_) _,
          Nat.not_le_of_lt, Nat.add_succ, Nat.succ_le_succ,
          mul_le_add_right, le_add_right, sum_bnd, pred]

theorem adc_value_step {i : Nat} (i_lt : i < w) (x y : BitVec w) (c : Bool) :
    getLsb (x + y + zeroExtend w (ofBool c)) i =
      Bool.xor (getLsb x i) (Bool.xor (getLsb y i) (carry i x.toNat y.toNat c)) := by
  let ⟨x, x_lt⟩ := x
  let ⟨y, y_lt⟩ := y
  simp only [getLsb, toNat_add, toNat_zeroExtend, i_lt, toNat_ofFin, toNat_ofBool,
    Nat.mod_add_mod, Nat.add_mod_mod]
  apply Eq.trans
  rw [← Nat.div_add_mod x (2^i), ← Nat.div_add_mod y (2^i)]
  simp only
    [ Nat.testBit_mod_two_pow,
      Nat.testBit_mul_two_pow_add_eq,
      i_lt,
      decide_True,
      Bool.true_and,
      Nat.add_assoc,
      Nat.add_left_comm (_%_) (_ * _) _,
      testBit_limit (adc_overflow_limit x y i c)
    ]
  simp [testBit_to_div_mod, carry, Nat.add_assoc]

theorem adc_correct (x y : BitVec w) (c : Bool) :
    adc x y c = (carry w x.toNat y.toNat c, x + y + zeroExtend w (ofBool c)) := by
  simp only [adc]
  apply iunfoldr_replace
          (fun i => carry i x.toNat y.toNat c)
          (x + y + zeroExtend w (ofBool c))
          c
  case init =>
    simp [carry, Nat.mod_one]
    cases c <;> rfl
  case step =>
    intro ⟨i, lt⟩
    simp only [adcb, Prod.mk.injEq, carry_succ]
    apply And.intro
    case left =>
      rw [testBit_toNat, testBit_toNat]
      cases x.getLsb i <;>
      cases y.getLsb i <;>
      cases carry i x.toNat y.toNat c <;> simp [Nat.succ_le_succ_iff]
    case right =>
      simp [adc_value_step lt]

theorem add_as_adc (w : Nat) (x y : BitVec w) : x + y = (adc x y false).snd := by
  simp [adc_correct]
```
