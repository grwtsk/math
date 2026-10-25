# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant18e1f2ab3ce7abaa660e2443d50c45632e09ab3601223f7765311dbad972ecce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62da02d3fde484a4195e95d06577e6ad77a61f41` · SHA-256 `d0afdbf59919a3201457fc9925fa1c34852302d999adaeccb07db38be7fbcb40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToString.Variantd8c0b0da1a266c6a178972cf023f8501d95feec972b86d13eb0924670ac9aabf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8c0b0da1a266c6a178972cf023f8501d95feec972b86d13eb0924670ac9aabf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToString.Variantd8c0b0da1a266c6a178972cf023f8501d95feec972b86d13eb0924670ac9aabf","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d8c0b0da1a266c6a178972cf023f8501d95feec972b86d13eb0924670ac9aabf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/ToString/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Init.Data.Repr
import Init.Data.Char.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToString.Variantd8c0b0da1a266c6a178972cf023f8501d95feec972b86d13eb0924670ac9aabf

public section

open Sum Subtype Nat

open Std

/--
Types that can be converted into a string for display.

There is no expectation that the resulting string can be parsed back to the original data (see
`Repr` for a similar class with this expectation).
-/
class ToString (α : Type u) where
  /-- Converts a value into a string. -/
  toString : α → String

export ToString (toString)

-- This instance is needed because `id` is not reducible
instance {α} [ToString α] : ToString (id α) :=
  inferInstanceAs (ToString α)

instance {α} [ToString α] : ToString (Id α) :=
  inferInstanceAs (ToString α)

instance : ToString String :=
  ⟨fun s => s⟩

instance : ToString Substring.Raw :=
  ⟨fun s => Substring.Raw.Internal.toString s⟩

instance : ToString Char :=
  ⟨fun c => Char.toString c⟩

instance : ToString Bool :=
  ⟨fun b => cond b "true" "false"⟩

instance {p : Prop} : ToString (Decidable p) := ⟨fun h =>
  match h with
  | Decidable.isTrue _  => "true"
  | Decidable.isFalse _ => "false"⟩

instance : ToString PUnit.{u+1} :=
  ⟨fun _ => "()"⟩

instance {α : Type u} [ToString α] : ToString (ULift.{v} α) :=
  ⟨fun v => toString v.1⟩

instance : ToString Unit :=
  ⟨fun _ => "()"⟩

instance : ToString Nat :=
  ⟨fun n => Nat.repr n⟩

instance : ToString String.Pos.Raw :=
  ⟨fun p => Nat.repr p.byteIdx⟩

instance (n : Nat) : ToString (Fin n) :=
  ⟨fun f => toString (Fin.val f)⟩

instance : ToString UInt8 :=
  ⟨fun n => toString n.toNat⟩

instance : ToString UInt16 :=
  ⟨fun n => toString n.toNat⟩

instance : ToString UInt32 :=
  ⟨fun n => toString n.toNat⟩

instance : ToString UInt64 :=
  ⟨fun n => toString n.toNat⟩

instance : ToString USize :=
  ⟨fun n => toString n.toNat⟩

instance : ToString Format where
  toString f := f.pretty

def addParenHeuristic (s : String) : String :=
  if String.Internal.isPrefixOf "(" s || String.Internal.isPrefixOf "[" s || String.Internal.isPrefixOf "{" s || String.Internal.isPrefixOf "#[" s then s
  else if !(String.Internal.any s Char.isWhitespace) then s
  else String.Internal.append (String.Internal.append "(" s) ")"

instance {α : Type u} [ToString α] : ToString (Option α) := ⟨fun
  | none => "none"
  | (some a) => String.Internal.append (String.Internal.append "(some " (addParenHeuristic (toString a))) ")"⟩

instance {α : Type u} {β : Type v} [ToString α] [ToString β] : ToString (Sum α β) := ⟨fun
  | (inl a) => String.Internal.append (String.Internal.append "(inl " (addParenHeuristic (toString a))) ")"
  | (inr b) => String.Internal.append (String.Internal.append "(inr " (addParenHeuristic (toString b))) ")"⟩

instance {α : Type u} {β : Type v} [ToString α] [ToString β] : ToString (α × β) := ⟨fun (a, b) =>
  String.Internal.append
    (String.Internal.append
      (String.Internal.append
        (String.Internal.append "(" (toString a))
        ", ")
      (toString b))
    ")"⟩

instance {α : Type u} {β : α → Type v} [ToString α] [∀ x, ToString (β x)] : ToString (Sigma β) := ⟨fun ⟨a, b⟩ =>
  String.Internal.append
    (String.Internal.append
      (String.Internal.append
        (String.Internal.append "⟨" (toString a))
        ", ")
      (toString b))
    "⟩"⟩

instance {α : Type u} {p : α → Prop} [ToString α] : ToString (Subtype p) := ⟨fun s =>
  toString (val s)⟩

instance [ToString ε] [ToString α] : ToString (Except ε α) where
  toString
    | Except.error e => String.Internal.append "error: " (toString e)
    | Except.ok a    => String.Internal.append "ok: " (toString a)

instance [Repr ε] [Repr α] : Repr (Except ε α) where
  reprPrec
    | Except.error e, prec => Repr.addAppParen ("Except.error " ++ reprArg e) prec
    | Except.ok a, prec    => Repr.addAppParen ("Except.ok " ++ reprArg a) prec
```
