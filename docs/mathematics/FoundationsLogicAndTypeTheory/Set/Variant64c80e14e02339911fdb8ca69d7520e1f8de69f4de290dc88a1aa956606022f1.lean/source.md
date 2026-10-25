# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Set.Variant64c80e14e02339911fdb8ca69d7520e1f8de69f4de290dc88a1aa956606022f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00b50ca1133b7fe3b9a5561af7eef6cfe690f617` · SHA-256 `d8f8a6ffba3ad8266cd17a34f59235e3c13606f42f58e88eec1d239d87e1301e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ZeroUnionRangeSucc.Variant8d69a5972fdbea2f823878079ee9a9d29b418e8baae3748471da90e141ec19d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d69a5972fdbea2f823878079ee9a9d29b418e8baae3748471da90e141ec19d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ZeroUnionRangeSucc.Variant8d69a5972fdbea2f823878079ee9a9d29b418e8baae3748471da90e141ec19d6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8d69a5972fdbea2f823878079ee9a9d29b418e8baae3748471da90e141ec19d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Nat/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Data.Set.Image

/-!
# Recursion on the natural numbers and `Set.range`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ZeroUnionRangeSucc.Variant8d69a5972fdbea2f823878079ee9a9d29b418e8baae3748471da90e141ec19d6

public section


namespace Nat

section Set

open Set

theorem zero_union_range_succ : {0} ∪ range succ = univ := by
  ext n
  cases n <;> simp

@[simp]
protected theorem range_succ : range succ = { i | 0 < i } := by
  ext (_ | i) <;> simp

variable {α : Type*}

theorem range_of_succ (f : ℕ → α) : {f 0} ∪ range (f ∘ succ) = range f := by
  rw [← image_singleton, range_comp, ← image_union, zero_union_range_succ, image_univ]

theorem range_rec {α : Type*} (x : α) (f : ℕ → α → α) :
    (Set.range fun n => Nat.rec x f n : Set α) =
      {x} ∪ Set.range fun n => Nat.rec (f 0 x) (f ∘ succ) n := by
  convert! (range_of_succ (fun n => Nat.rec x f n : ℕ → α)).symm using 4
  dsimp
  rename_i n
  induction n with
  | zero => rfl
  | succ n ihn => dsimp at ihn ⊢; rw [ihn]

theorem range_casesOn {α : Type*} (x : α) (f : ℕ → α) :
    (Set.range fun n => Nat.casesOn n x f : Set α) = {x} ∪ Set.range f :=
  (range_of_succ _).symm

end Set

end Nat
```
