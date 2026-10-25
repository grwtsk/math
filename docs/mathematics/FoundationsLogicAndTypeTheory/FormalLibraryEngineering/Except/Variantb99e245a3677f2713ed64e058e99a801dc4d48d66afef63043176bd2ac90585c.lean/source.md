# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Except.Variantb99e245a3677f2713ed64e058e99a801dc4d48d66afef63043176bd2ac90585c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bde9cd1050e52effb21d2690cb5dfe995eef865` · SHA-256 `19463f1bc3497a31dad4c688d7a51ea7b871fb26d243b7c7b68857efd6617407`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Emoji.Variant7c5731b86a795219f00cd59a4424434beb8fee82e822473a7e1473ce0968e2eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c5731b86a795219f00cd59a4424434beb8fee82e822473a7e1473ce0968e2eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Emoji.Variant7c5731b86a795219f00cd59a4424434beb8fee82e822473a7e1473ce0968e2eb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7c5731b86a795219f00cd59a4424434beb8fee82e822473a7e1473ce0968e2eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/Except.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Lean.Util.Trace


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Emoji.Variant7c5731b86a795219f00cd59a4424434beb8fee82e822473a7e1473ce0968e2eb

@[expose] public section

open Lean

deriving instance DecidableEq for Except

namespace Except

/-- Visualize an `Except` using a checkmark or a cross. -/
def emoji : Except ε α → String
  | .error _ => crossEmoji
  | .ok _ => checkEmoji

@[simp] theorem map_error {ε : Type u} (f : α → β) (e : ε) :
    f <$> (.error e : Except ε α) = .error e := rfl

@[simp] theorem map_ok {ε : Type u} (f : α → β) (x : α) :
    f <$> (.ok x : Except ε α) = .ok (f x) := rfl

/-- Map a function over an `Except` value, using a proof that the value is `.ok`. -/
def pmap {ε : Type u} {α β : Type v} (x : Except ε α) (f : (a : α) → x = .ok a → β) : Except ε β :=
  match x with
  | .error e => .error e
  | .ok a => .ok (f a rfl)

@[simp] theorem pmap_error {ε : Type u} {α β : Type v} (e : ε)
    (f : (a : α) → Except.error e = Except.ok a → β) :
    Except.pmap (.error e) f = .error e := rfl

@[simp] theorem pmap_ok {ε : Type u} {α β : Type v} (a : α)
    (f : (a' : α) → (.ok a : Except ε α) = .ok a' → β) :
    Except.pmap (.ok a) f = .ok (f a rfl) := rfl

@[simp] theorem pmap_id {ε : Type u} {α : Type v} (x : Except ε α) :
    x.pmap (fun a _ => a) = x := by cases x <;> simp

@[simp] theorem map_pmap (g : β → γ) (x : Except ε α) (f : (a : α) → x = .ok a → β) :
    g <$> x.pmap f = x.pmap fun a h => g (f a h) := by
  cases x <;> simp

end Except

namespace ExceptT

-- This will be redundant after nightly-2024-11-08.
attribute [ext] ExceptT.ext

@[simp] theorem mk_run (x : ExceptT ε m α) : ExceptT.mk (ExceptT.run x) = x := rfl

@[simp]
theorem map_mk [Monad m] [LawfulMonad m] (f : α → β) (x : m (Except ε α)) :
    f <$> ExceptT.mk x = ExceptT.mk ((f <$> · ) <$> x) := by
  simp only [Functor.map, Except.map, ExceptT.map, map_eq_pure_bind]
  congr
  funext a
  split <;> simp

end ExceptT
```
