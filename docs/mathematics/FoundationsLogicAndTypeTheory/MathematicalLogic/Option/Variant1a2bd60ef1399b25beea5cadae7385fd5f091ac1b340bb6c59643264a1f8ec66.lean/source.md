# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variant1a2bd60ef1399b25beea5cadae7385fd5f091ac1b340bb6c59643264a1f8ec66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c743ecf65986e789b5cfb06ea940217e8514315a` · SHA-256 `cc7d7a0fe90b6440c3d9223ee983f5d88ae94f419454efe19c937599991fe91b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InsertNone.Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.InsertNone.Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677","mathematical_subject":"Logic.Foundations","original_sha256":"52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/FinEnum/Option.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Tom Kranz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tom Kranz
-/
import Mathlib.Data.FinEnum
import Mathlib.Logic.Equiv.Fin.Basic

/-!
# FinEnum instance for Option

Provides a recursor for FinEnum types like `Fintype.truncRecEmptyOption`, but capable of producing
non-truncated data.

## TODO
* recreate rest of `Mathlib/Data/Fintype/Option.lean`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InsertNone.Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677

namespace FinEnum
universe u v

/-- Inserting an `Option.none` anywhere in an enumeration yields another enumeration. -/
def insertNone (α : Type u) [FinEnum α] (i : Fin (card α + 1)) : FinEnum (Option α) where
  card := card α + 1
  equiv := equiv.optionCongr.trans <| finSuccEquiv' i |>.symm

/-- This is an arbitrary choice of insertion rank for a default instance.
It keeps the mapping of the existing `α`-inhabitants intact, modulo `Fin.castSucc`. -/
instance instFinEnumOptionLast (α : Type u) [FinEnum α] : FinEnum (Option α) :=
  insertNone α (Fin.last _)

/-- A recursor principle for finite-and-enumerable types, analogous to `Nat.rec`.
It effectively says that every `FinEnum` is either `Empty` or `Option α`, up to an `Equiv` mediated
by `Fin`s of equal cardinality.
In contrast to the `Fintype` case, data can be transported along such an `Equiv`.
Also, since order matters, the choice of element that gets replaced by `Option.none` has
to be provided for every step.

Since every `FinEnum` instance implies a `Fintype` instance and `Prop` is squashed already,
`Fintype.induction_empty_option` can be used if a `Prop` needs to be constructed.
Cf. `Data.Fintype.Option`
-/
def recEmptyOption {P : Type u → Sort v}
    (finChoice : (n : ℕ) → Fin (n + 1))
    (congr : {α β : Type u} → (_ : FinEnum α) → (_ : FinEnum β) → card β = card α → P α → P β)
    (empty : P PEmpty.{u + 1})
    (option : {α : Type u} → FinEnum α → P α → P (Option α))
    (α : Type u) [FinEnum α] :
    P α :=
  match cardeq : card α with
  | 0 => congr _ _ cardeq empty
  | n + 1 =>
    let fN := ULift.instFinEnum (α := Fin n)
    have : card (ULift.{u} <| Fin n) = n := card_ulift.trans card_fin
    congr (insertNone _ <| finChoice n) _
      (cardeq.trans <| congrArg Nat.succ this.symm) <|
        option fN (recEmptyOption finChoice congr empty option _)
termination_by card α

/--
For an empty type, the recursion principle evaluates to whatever `congr`
makes of the base case.
-/
theorem recEmptyOption_of_card_eq_zero {P : Type u → Sort v}
    (finChoice : (n : ℕ) → Fin (n + 1))
    (congr : {α β : Type u} → (_ : FinEnum α) → (_ : FinEnum β) → card β = card α → P α → P β)
    (empty : P PEmpty.{u + 1})
    (option : {α : Type u} → FinEnum α → P α → P (Option α))
    (α : Type u) [FinEnum α] (h : card α = 0) (_ : FinEnum PEmpty.{u + 1}) :
    recEmptyOption finChoice congr empty option α =
      congr _ _ (h.trans card_eq_zero.symm) empty := by
  unfold recEmptyOption
  split
  · congr 1; exact Subsingleton.allEq _ _
  · exact Nat.noConfusion <| h.symm.trans ‹_›

/--
For a type with positive `card`, the recursion principle evaluates to whatever
`congr` makes of the step result, where `Option.none` has been inserted into the
`(finChoice (card α - 1))`th rank of the enumeration.
-/
theorem recEmptyOption_of_card_pos {P : Type u → Sort v}
    (finChoice : (n : ℕ) → Fin (n + 1))
    (congr : {α β : Type u} → (_ : FinEnum α) → (_ : FinEnum β) → card β = card α → P α → P β)
    (empty : P PEmpty.{u + 1})
    (option : {α : Type u} → FinEnum α → P α → P (Option α))
    (α : Type u) [FinEnum α] (h : 0 < card α) :
    recEmptyOption finChoice congr empty option α =
      congr (insertNone _ <| finChoice (card α - 1)) ‹_›
        (congrArg (· + 1) card_fin |>.trans <| (card α).succ_pred_eq_of_pos h).symm
        (option ULift.instFinEnum <|
          recEmptyOption finChoice congr empty option (ULift.{u} <| Fin (card α - 1))) := by
  conv => lhs; unfold recEmptyOption
  split
  · exact absurd (‹_› ▸ h) (card α).lt_irrefl
  · rcases Nat.succ.inj <| (card α).succ_pred_eq_of_pos h |>.trans ‹_› with rfl; rfl

/-- A recursor principle for finite-and-enumerable types, analogous to `Nat.recOn`.
It effectively says that every `FinEnum` is either `Empty` or `Option α`, up to an `Equiv` mediated
by `Fin`s of equal cardinality.
In contrast to the `Fintype` case, data can be transported along such an `Equiv`.
Also, since order matters, the choice of element that gets replaced by `Option.none` has
to be provided for every step.
-/
abbrev recOnEmptyOption {P : Type u → Sort v}
    {α : Type u} (aenum : FinEnum α)
    (finChoice : (n : ℕ) → Fin (n + 1))
    (congr : {α β : Type u} → (_ : FinEnum α) → (_ : FinEnum β) → card β = card α → P α → P β)
    (empty : P PEmpty.{u + 1})
    (option : {α : Type u} → FinEnum α → P α → P (Option α)) :
    P α :=
  @recEmptyOption P finChoice congr empty option α aenum

end FinEnum
```
