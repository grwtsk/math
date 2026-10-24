-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoSingleton.Variante236aa8c3ed3806f4f2798042c6f4938fbedff04422758409e878e9d098c7ac4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e236aa8c3ed3806f4f2798042c6f4938fbedff04422758409e878e9d098c7ac4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.OrderIsoSingleton.Variante236aa8c3ed3806f4f2798042c6f4938fbedff04422758409e878e9d098c7ac4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e236aa8c3ed3806f4f2798042c6f4938fbedff04422758409e878e9d098c7ac4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Fin/Finset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Order.Fin.Tuple
import Mathlib.Order.Hom.Set
import Mathlib.Data.Finset.Insert

/-!
# Order isomorphisms from Fin to finsets

We define order isomorphisms like `Fin.orderIsoTriple` from `Fin 3`
to the finset `{a, b, c}` when `a < b` and `b < c`.

## Future works

* Do the same for `Set` without too much duplication of code (TODO)
* Provide a definition which would take as an input an order
  isomorphism `e : Fin (n + 1) ≃o s` (with `s : Set α` (or `Finset α`)) and
  extend it to an order isomorphism `Fin (n + 2) ≃o Finset.insert i s` when `i < e 0` (TODO).

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoSingleton.Variante236aa8c3ed3806f4f2798042c6f4938fbedff04422758409e878e9d098c7ac4

namespace Fin

variable {α : Type*} [Preorder α]

/-- This is the order isomorphism from `Fin 1` to a finset `{a}`. -/
noncomputable def orderIsoSingleton (a : α) :
    Fin 1 ≃o ({a} : Finset α) :=
  OrderIso.ofUnique _ _

@[simp]
lemma orderIsoSingleton_apply (a : α) (i : Fin 1) :
    orderIsoSingleton a i = a := rfl

variable [DecidableEq α]

section

variable (a b : α) (hab : a < b)

/-- This is the order isomorphism from `Fin 2` to a finset `{a, b}` when `a < b`. -/
noncomputable def orderIsoPair :
    Fin 2 ≃o ({a, b} : Finset α) :=
  StrictMono.orderIsoOfSurjective ![⟨a, by simp⟩, ⟨b, by simp⟩]
    (strictMono_vecEmpty.vecCons hab) (fun ⟨x, hx⟩ ↦ by
      simp only [Finset.mem_insert, Finset.mem_singleton] at hx
      obtain rfl | rfl := hx
      · exact ⟨0, rfl⟩
      · exact ⟨1, rfl⟩)

@[simp] lemma orderIsoPair_zero : orderIsoPair a b hab 0 = a := rfl
@[simp] lemma orderIsoPair_one : orderIsoPair a b hab 1 = b := rfl

end

section

variable (a b c : α) (hab : a < b) (hbc : b < c)

/-- This is the order isomorphism from `Fin 3`
to a finset `{a, b, c}` when `a < b` and `b < c`. -/
noncomputable def orderIsoTriple :
    Fin 3 ≃o ({a, b, c} : Finset α) :=
  StrictMono.orderIsoOfSurjective ![⟨a, by simp⟩, ⟨b, by simp⟩, ⟨c, by simp⟩]
    (StrictMono.vecCons (strictMono_vecEmpty.vecCons hbc) hab) (fun ⟨x, hx⟩ ↦ by
      simp only [Finset.mem_insert, Finset.mem_singleton] at hx
      obtain rfl | rfl | rfl := hx
      · exact ⟨0, rfl⟩
      · exact ⟨1, rfl⟩
      · exact ⟨2, rfl⟩)

@[simp] lemma orderIsoTriple_zero : orderIsoTriple a b c hab hbc 0 = a := rfl
@[simp] lemma orderIsoTriple_one : orderIsoTriple a b c hab hbc 1 = b := rfl
@[simp] lemma orderIsoTriple_two : orderIsoTriple a b c hab hbc 2 = c := rfl

end

end Fin
