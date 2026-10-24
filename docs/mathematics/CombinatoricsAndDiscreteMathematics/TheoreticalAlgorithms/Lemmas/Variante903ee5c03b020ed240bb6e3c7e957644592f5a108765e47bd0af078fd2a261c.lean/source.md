# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variante903ee5c03b020ed240bb6e3c7e957644592f5a108765e47bd0af078fd2a261c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9690570a48cb371900c8b156f4b33e75552d196` · SHA-256 `c14514a6e751e4b97af2116f5637b7bdd4d076f0fb87e0239279a99adeb91bff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToNatPow.Variante6f0dc5bb754f5ddc7f59b26474997d114d5ead74dbea6b1481193894b28c38f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6f0dc5bb754f5ddc7f59b26474997d114d5ead74dbea6b1481193894b28c38f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ToNatPow.Variante6f0dc5bb754f5ddc7f59b26474997d114d5ead74dbea6b1481193894b28c38f","mathematical_subject":"Computation.DataStructures","original_sha256":"e6f0dc5bb754f5ddc7f59b26474997d114d5ead74dbea6b1481193894b28c38f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/batteries/Batteries/Data/BitVec/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToNatPow.Variante6f0dc5bb754f5ddc7f59b26474997d114d5ead74dbea6b1481193894b28c38f

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
