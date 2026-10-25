# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stream.Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7be55fd53e6b602fbaa5ece55653a243182ef8a8` · SHA-256 `9f3d59f78aab9232bf248569c80d3e23587b0b2a1a35abb59d87a60c4b71c681`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Drop.Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Drop.Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/Stream.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2. license as described in the file LICENSE.
Authors: François G. Dorais
-/
module


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Drop.Variantd7f65889fb8c115d87696dfb6826e9b255aa71f3d5b5ce0d0062ecf4873bd4f3

@[expose] public section

namespace Std.Stream

/-- Drop up to `n` values from the stream `s`. -/
def drop [Stream σ α] (s : σ) : Nat → σ
  | 0 => s
  | n+1 =>
    match next? s with
    | none => s
    | some (_, s) => drop s n

/-- Read up to `n` values from the stream `s` as a list from first to last. -/
def take [Stream σ α] (s : σ) : Nat → List α × σ
  | 0 => ([], s)
  | n+1 =>
    match next? s with
    | none => ([], s)
    | some (a, s) =>
      match take s n with
      | (as, s) => (a :: as, s)

@[simp] theorem fst_take_zero [Stream σ α] (s : σ) :
    (take s 0).fst = [] := rfl

theorem fst_take_succ [Stream σ α] (s : σ) :
    (take s (n+1)).fst = match next? s with
      | none => []
      | some (a, s) => a :: (take s n).fst := by
  simp only [take]; split <;> rfl

@[simp] theorem snd_take_eq_drop [Stream σ α] (s : σ) (n : Nat) :
    (take s n).snd = drop s n := by
  induction n generalizing s with
  | zero => rfl
  | succ n ih =>
    simp only [take, drop]
    split <;> simp [ih]

/-- Tail recursive version of `Stream.take`. -/
def takeTR [Stream σ α] (s : σ) (n : Nat) : List α × σ :=
  loop s [] n
where
  /-- Inner loop for `Stream.takeTR`. -/
  loop (s : σ) (acc : List α)
    | 0 => (acc.reverse, s)
    | n+1 => match next? s with
      | none => (acc.reverse, s)
      | some (a, s) => loop s (a :: acc) n

theorem fst_takeTR_loop [Stream σ α] (s : σ) (acc : List α) (n : Nat) :
    (takeTR.loop s acc n).fst = acc.reverseAux (take s n).fst := by
  induction n generalizing acc s with
  | zero => rfl
  | succ n ih => simp only [take, takeTR.loop]; split; rfl; simp [ih]

theorem fst_takeTR [Stream σ α] (s : σ) (n : Nat) : (takeTR s n).fst = (take s n).fst :=
  fst_takeTR_loop ..

theorem snd_takeTR_loop [Stream σ α] (s : σ) (acc : List α) (n : Nat) :
    (takeTR.loop s acc n).snd = drop s n := by
  induction n generalizing acc s with
  | zero => rfl
  | succ n ih => simp only [takeTR.loop, drop]; split; rfl; simp [ih]

theorem snd_takeTR [Stream σ α] (s : σ) (n : Nat) :
    (takeTR s n).snd = drop s n := snd_takeTR_loop ..

@[csimp] theorem take_eq_takeTR : @take = @takeTR := by
  funext; ext : 1; rw [fst_takeTR]; rw [snd_takeTR, snd_take_eq_drop]

end Stream

@[simp] theorem List.stream_drop_eq_drop (l : List α) : Stream.drop l n = l.drop n := by
  induction n generalizing l with
  | zero => rfl
  | succ n ih =>
    match l with
    | [] => rfl
    | _::_ => simp [Stream.drop, Stream.next?, List.drop_succ_cons, ih]

@[simp] theorem List.stream_take_eq_take_drop (l : List α) :
    Stream.take l n = (l.take n, l.drop n) := by
  induction n generalizing l with
  | zero => rfl
  | succ n ih =>
    match l with
    | [] => rfl
    | _::_ => simp [Stream.take, Stream.next?, ih]
```
