# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variante6f0dc5bb754f5ddc7f59b26474997d114d5ead74dbea6b1481193894b28c38f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2f9c4effbf970a4ab53161d1a6ccf59c7093e7d` · SHA-256 `e6f0dc5bb754f5ddc7f59b26474997d114d5ead74dbea6b1481193894b28c38f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

public import Batteries.Tactic.Alias
public import Batteries.Data.BitVec.Basic
public import Batteries.Data.Fin.OfBits
public import Batteries.Data.Nat.Lemmas
public import Batteries.Data.Int

@[expose] public section

namespace BitVec

@[simp]
theorem toNat_pow (b : BitVec w) (n : Nat) : (b ^ n).toNat = (b.toNat ^ n) % (2 ^ w) := by
  induction n <;> simp_all [Lean.Grind.Semiring.pow_succ]

@[simp]
theorem ofNat_pow (w x n : Nat) : BitVec.ofNat w (x ^ n) = BitVec.ofNat w x ^ n := by
  rw [← toNat_inj, toNat_ofNat, toNat_pow, toNat_ofNat, Nat.pow_mod]

@[simp] theorem toNat_ofFnLEAux (m : Nat) (f : Fin n → Bool) :
    (ofFnLEAux m f).toNat = Nat.ofBits f % 2 ^ m := by
  simp only [ofFnLEAux]
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [Fin.foldr_succ, toNat_shiftConcat, Nat.shiftLeft_eq, Nat.pow_one, Nat.ofBits_succ, ih,
      ← Nat.mod_add_div (Nat.ofBits (f ∘ Fin.succ)) (2 ^ m), Nat.mul_add 2, Nat.add_right_comm,
      Nat.mul_left_comm, Nat.add_mul_mod_self_left, Nat.mul_comm 2]
    rfl

@[simp] theorem toFin_ofFnLEAux (m : Nat) (f : Fin n → Bool) :
    (ofFnLEAux m f).toFin = Fin.ofNat (2 ^ m) (Nat.ofBits f) := by
  ext; simp

@[simp, grind =] theorem toNat_ofFnLE (f : Fin n → Bool) : (ofFnLE f).toNat = Nat.ofBits f := by
  rw [ofFnLE, toNat_ofFnLEAux, Nat.mod_eq_of_lt (Nat.ofBits_lt_two_pow f)]

@[simp, grind =] theorem toFin_ofFnLE (f : Fin n → Bool) : (ofFnLE f).toFin = Fin.ofBits f := by
  ext; simp

@[simp, grind =] theorem toInt_ofFnLE (f : Fin n → Bool) : (ofFnLE f).toInt = Int.ofBits f := by
  simp only [BitVec.toInt, Int.ofBits, toNat_ofFnLE, Int.subNatNat_eq_coe]; rfl

-- TODO: consider these for global `grind` attributes.
attribute [local grind =] Fin.succ Fin.rev Fin.last Fin.zero_eta

theorem getElem_ofFnLEAux (f : Fin n → Bool) (i) (h : i < n) (h' : i < m) :
    (ofFnLEAux m f)[i] = f ⟨i, h⟩ := by
  simp only [ofFnLEAux]
  induction n generalizing i m with
  | zero => contradiction
  | succ n ih =>
    simp only [Fin.foldr_succ, getElem_shiftConcat]
    cases i with
    | zero => grind
    | succ i => rw [ih] <;> grind

@[simp, grind =] theorem getElem_ofFnLE (f : Fin n → Bool) (i) (h : i < n) :
    (ofFnLE f)[i] = f ⟨i, h⟩ :=
  getElem_ofFnLEAux ..

@[grind =]
theorem getLsb_ofFnLE (f : Fin n → Bool) (i) : (ofFnLE f).getLsb i = f i := by simp

theorem getLsbD_ofFnLE (f : Fin n → Bool) (i) :
    (ofFnLE f).getLsbD i = if h : i < n then f ⟨i, h⟩ else false := by
  grind

@[simp, grind =] theorem getMsb_ofFnLE (f : Fin n → Bool) (i) : (ofFnLE f).getMsb i = f i.rev := by
  grind

@[grind =]
theorem getMsbD_ofFnLE (f : Fin n → Bool) (i) :
    (ofFnLE f).getMsbD i = if h : i < n then f (Fin.rev ⟨i, h⟩) else false := by
  grind

theorem msb_ofFnLE (f : Fin n → Bool) :
    (ofFnLE f).msb = if h : n ≠ 0 then f ⟨n-1, Nat.sub_one_lt h⟩ else false := by
  grind

@[simp, grind =] theorem toNat_ofFnBE (f : Fin n → Bool) :
    (ofFnBE f).toNat = Nat.ofBits (f ∘ Fin.rev) := by
  simp [ofFnBE]; rfl

@[simp, grind =] theorem toFin_ofFnBE (f : Fin n → Bool) :
    (ofFnBE f).toFin = Fin.ofBits (f ∘ Fin.rev) := by
  ext; simp

@[simp, grind =] theorem toInt_ofFnBE (f : Fin n → Bool) :
    (ofFnBE f).toInt = Int.ofBits (f ∘ Fin.rev) := by
  simp [ofFnBE]; rfl

@[simp, grind =] theorem getElem_ofFnBE (f : Fin n → Bool) (i) (h : i < n) :
    (ofFnBE f)[i] = f (Fin.rev ⟨i, h⟩) := by simp [ofFnBE]

@[grind =]
theorem getLsb_ofFnBE (f : Fin n → Bool) (i) : (ofFnBE f).getLsb i = f i.rev := by
  simp

theorem getLsbD_ofFnBE (f : Fin n → Bool) (i) :
    (ofFnBE f).getLsbD i = if h : i < n then f (Fin.rev ⟨i, h⟩) else false := by
  grind

@[simp, grind =] theorem getMsb_ofFnBE (f : Fin n → Bool) (i) : (ofFnBE f).getMsb i = f i := by
  simp [ofFnBE]

@[grind =]
theorem getMsbD_ofFnBE (f : Fin n → Bool) (i) :
    (ofFnBE f).getMsbD i = if h : i < n then f ⟨i, h⟩ else false := by
  grind

@[grind =]
theorem msb_ofFnBE (f : Fin n → Bool) :
    (ofFnBE f).msb = if h : n ≠ 0 then f ⟨0, Nat.zero_lt_of_ne_zero h⟩ else false := by
  grind
```
