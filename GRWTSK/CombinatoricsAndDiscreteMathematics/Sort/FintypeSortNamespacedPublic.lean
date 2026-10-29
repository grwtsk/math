-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MonoEquivOfFin.Variant738468ba1ee64045d5818e2c8e0df43e0e6af22435c3137e6c839c2258dbeffb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"738468ba1ee64045d5818e2c8e0df43e0e6af22435c3137e6c839c2258dbeffb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MonoEquivOfFin.Variant738468ba1ee64045d5818e2c8e0df43e0e6af22435c3137e6c839c2258dbeffb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"738468ba1ee64045d5818e2c8e0df43e0e6af22435c3137e6c839c2258dbeffb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Fintype/Sort.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Finset.Sort
public import Mathlib.Data.Fintype.Basic

/-!
# Sorting a finite type

This file provides two equivalences for linearly ordered fintypes:
* `monoEquivOfFin`: Order isomorphism between `α` and `Fin (card α)`.
* `finSumEquivOfFinset`: Equivalence between `α` and `Fin m ⊕ Fin n` where `m` and `n` are
  respectively the cardinalities of some `Finset α` and its complement.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MonoEquivOfFin.Variant738468ba1ee64045d5818e2c8e0df43e0e6af22435c3137e6c839c2258dbeffb

@[expose] public section


open Finset

/-- Given a linearly ordered fintype `α` of cardinal `k`, the order isomorphism
`monoEquivOfFin α h` is the increasing bijection between `Fin k` and `α`. Here, `h` is a proof
that the cardinality of `α` is `k`. We use this instead of an isomorphism `Fin (card α) ≃o α` to
avoid casting issues in further uses of this function. -/
def monoEquivOfFin (α : Type*) [Fintype α] [LinearOrder α] {k : ℕ} (h : Fintype.card α = k) :
    Fin k ≃o α :=
  (univ.orderIsoOfFin h).trans <| (Set.orderIsoOfEq _ _ coe_univ).trans OrderIso.Set.univ

variable {α : Type*} [DecidableEq α] [Fintype α] [LinearOrder α] {m n : ℕ} {s : Finset α}

/-- If `α` is a linearly ordered fintype, `s : Finset α` has cardinality `m` and its complement has
cardinality `n`, then `Fin m ⊕ Fin n ≃ α`. The equivalence sends elements of `Fin m` to
elements of `s` and elements of `Fin n` to elements of `sᶜ` while preserving order on each
"half" of `Fin m ⊕ Fin n` (using `Set.orderIsoOfFin`). -/
def finSumEquivOfFinset (hm : #s = m) (hn : #sᶜ = n) : Fin m ⊕ Fin n ≃ α :=
  calc
    Fin m ⊕ Fin n ≃ (s : Set α) ⊕ (sᶜ : Set α) :=
      Equiv.sumCongr (s.orderIsoOfFin hm).toEquiv <|
        (sᶜ.orderIsoOfFin hn).toEquiv.trans <| Set.equivOfEq s.coe_compl
    _ ≃ α := Equiv.Set.sumCompl _

@[simp]
theorem finSumEquivOfFinset_inl (hm : #s = m) (hn : #sᶜ = n) (i : Fin m) :
    finSumEquivOfFinset hm hn (Sum.inl i) = s.orderEmbOfFin hm i :=
  rfl

@[simp]
theorem finSumEquivOfFinset_inr (hm : #s = m) (hn : #sᶜ = n) (i : Fin n) :
    finSumEquivOfFinset hm hn (Sum.inr i) = sᶜ.orderEmbOfFin hn i :=
  rfl
