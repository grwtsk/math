# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Class.Variante298b9f891b3e2b8db2cdc74ad6be5a8af94ecbd2d100b240856296b1476d6f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdc26651e09b06c53e7f7942f9f9ff15b01185b2` · SHA-256 `fe7df7663b1eecfac9feba17ceaab4193fb442578b62bbcc79e60d37a4da144a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Formula.Variant77a86bc4a09801cc1c4f5dd66735aae2176d5506baa875ab5aa3b360457c5fa8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77a86bc4a09801cc1c4f5dd66735aae2176d5506baa875ab5aa3b360457c5fa8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Formula.Variant77a86bc4a09801cc1c4f5dd66735aae2176d5506baa875ab5aa3b360457c5fa8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"77a86bc4a09801cc1c4f5dd66735aae2176d5506baa875ab5aa3b360457c5fa8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Internal/Formula/Class.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Internal.Clause


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Formula.Variant77a86bc4a09801cc1c4f5dd66735aae2176d5506baa875ab5aa3b360457c5fa8

@[expose] public section

/-!
This module contains the definition of the `Formula` typeclass. It is the interface that needs to
be satisfied by any LRAT implementation that can be used by the generic `LRATChecker` module.
-/

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

open Std.Sat

/--
Typeclass for formulas. An instance `[Formula α β σ]` indicates that `σ` is the type of a formula
with variables of type `α`, clauses of type `β`, and clause ids of type `Nat`.
-/
class Formula (α : outParam (Type u)) (β : outParam (Type v)) [Clause α β] (σ : Type w) [Entails α σ] where
  /-- A function used exclusively for defining Formula's satisfiability semantics. -/
  toList : σ → List β
  /-- A predicate that indicates whether a formula can soundly be passed into performRupAdd. -/
  ReadyForRupAdd : σ → Prop
  /-- A predicate that indicates whether a formula can soundly be passed into performRatAdd. -/
  ReadyForRatAdd : σ → Prop
  ofArray : Array (Option β) → σ
  readyForRupAdd_ofArray : ∀ arr : Array (Option β), ReadyForRupAdd (ofArray arr)
  readyForRatAdd_ofArray : ∀ arr : Array (Option β), ReadyForRatAdd (ofArray arr)
  insert : σ → β → σ
  insert_iff : ∀ f : σ, ∀ c1 : β, ∀ c2 : β,
    c2 ∈ toList (insert f c1) ↔ c2 = c1 ∨ c2 ∈ toList f
  readyForRupAdd_insert : ∀ f : σ, ∀ c : β, ReadyForRupAdd f → ReadyForRupAdd (insert f c)
  readyForRatAdd_insert : ∀ f : σ, ∀ c : β, ReadyForRatAdd f → ReadyForRatAdd (insert f c)
  delete : σ → Array Nat → σ
  delete_subset : ∀ f : σ, ∀ arr : Array Nat, ∀ c : β,
    c ∈ toList (delete f arr) → c ∈ toList f
  readyForRupAdd_delete : ∀ f : σ, ∀ arr : Array Nat, ReadyForRupAdd f → ReadyForRupAdd (delete f arr)
  readyForRatAdd_delete : ∀ f : σ, ∀ arr : Array Nat, ReadyForRatAdd f → ReadyForRatAdd (delete f arr)
  formulaEntails_def : ∀ p : α → Bool, ∀ f : σ, Entails.eval p f = (toList f).all (fun c => p ⊨ c)
  performRupAdd : σ → β → Array Nat → σ × Bool
  rupAdd_result : ∀ f : σ, ∀ c : β, ∀ rupHints : Array Nat, ∀ f' : σ,
    ReadyForRupAdd f → performRupAdd f c rupHints = (f', true) → f' = insert f c
  rupAdd_sound : ∀ f : σ, ∀ c : β, ∀ rupHints : Array Nat, ∀ f' : σ,
    ReadyForRupAdd f → performRupAdd f c rupHints = (f', true) → Liff α f f'
  performRatAdd : σ → β → Literal α → Array Nat → Array (Nat × Array Nat) → σ × Bool
  ratAdd_result :
    ∀ f : σ, ∀ c : β, ∀ p : Literal α, ∀ rupHints : Array Nat, ∀ ratHints : Array (Nat × Array Nat), ∀ f' : σ,
    ReadyForRatAdd f → p ∈ Clause.toList c → performRatAdd f c p rupHints ratHints = (f', true) → f' = insert f c
  ratAdd_sound :
    ∀ f : σ, ∀ c : β, ∀ p : Literal α, ∀ rupHints : Array Nat, ∀ ratHints : Array (Nat × Array Nat), ∀ f' : σ,
    ReadyForRatAdd f → p ∈ Clause.toList c → performRatAdd f c p rupHints ratHints = (f', true) → Equisat α f f'

open Formula

attribute [grind =] insert_iff
attribute [grind →] delete_subset

grind_pattern readyForRupAdd_insert => ReadyForRupAdd (insert f c)
grind_pattern readyForRupAdd_delete => ReadyForRupAdd (delete f arr)
grind_pattern readyForRatAdd_insert => ReadyForRatAdd (insert f c)
grind_pattern readyForRatAdd_delete => ReadyForRatAdd (delete f arr)

attribute [grind →]
  rupAdd_result rupAdd_sound ratAdd_result ratAdd_sound

end Internal
end LRAT
end Std.Tactic.BVDecide
```
