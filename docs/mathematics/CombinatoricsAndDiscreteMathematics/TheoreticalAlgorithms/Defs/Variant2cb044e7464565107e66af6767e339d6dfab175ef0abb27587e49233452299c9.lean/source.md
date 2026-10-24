# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variant2cb044e7464565107e66af6767e339d6dfab175ef0abb27587e49233452299c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d9a0b186caf78e063664e62f26e535dfed73df5` · SHA-256 `be40c07f04ff008feed7dd597aa09e9cd2964ea1bb7398d90e0c6edb1c443948`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Traverse.Variantd6a8b8d16ded38e748037b67a08761ffcdb9b7c0ea5f180f3866daa908f45098","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6a8b8d16ded38e748037b67a08761ffcdb9b7c0ea5f180f3866daa908f45098","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Traverse.Variantd6a8b8d16ded38e748037b67a08761ffcdb9b7c0ea5f180f3866daa908f45098","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d6a8b8d16ded38e748037b67a08761ffcdb9b7c0ea5f180f3866daa908f45098","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Option/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Init

/-!
# Extra definitions on `Option`

This file defines more operations involving `Option α`. Lemmas about them are located in other
files under `Mathlib/Data/Option/`.
Other basic operations on `Option` are defined in the core library.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Traverse.Variantd6a8b8d16ded38e748037b67a08761ffcdb9b7c0ea5f180f3866daa908f45098

@[expose] public section

namespace Option

/-- Traverse an object of `Option α` with a function `f : α → F β` for an applicative `F`. -/
protected def traverse.{u, v}
    {F : Type u → Type v} [Applicative F] {α : Type*} {β : Type u} (f : α → F β) :
    Option α → F (Option β) := Option.mapA f

variable {α : Type*} {β : Type*}

/-- An elimination principle for `Option`. It is a nondependent version of `Option.rec`. -/
protected def elim' (b : β) (f : α → β) : Option α → β
  | some a => f a
  | none => b

@[simp]
theorem elim'_none (b : β) (f : α → β) : Option.elim' b f none = b := rfl

@[simp]
theorem elim'_some {a : α} (b : β) (f : α → β) : Option.elim' b f (some a) = f a := rfl

@[simp]
theorem elim'_none_some (f : Option α → β) : (Option.elim' (f none) (f ∘ some)) = f :=
  funext fun o ↦ by cases o <;> rfl

lemma elim'_eq_elim {α β : Type*} (b : β) (f : α → β) (a : Option α) :
    Option.elim' b f a = Option.elim a b f := by
  cases a <;> rfl

end Option
```
