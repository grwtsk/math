-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Palindrome.Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Palindrome.Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed","mathematical_subject":"Computation.DataStructures","original_sha256":"ec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/Palindrome.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Google LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Wong
-/
import Mathlib.Data.List.Induction

/-!
# Palindromes

This module defines *palindromes*, lists which are equal to their reverse.

The main result is the `Palindrome` inductive type, and its associated `Palindrome.rec` induction
principle. Also provided are conversions to and from other equivalent definitions.

## References

* [Pierre Castéran, *On palindromes*][casteran]

[casteran]: https://www.labri.fr/perso/casteran/CoqArt/inductive-prop-chap/palindrome.html

## Tags

palindrome, reverse, induction
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Palindrome.Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed

variable {α β : Type*}

namespace List

/-- `Palindrome l` asserts that `l` is a palindrome. This is defined inductively:

* The empty list is a palindrome;
* A list with one element is a palindrome;
* Adding the same element to both ends of a palindrome results in a bigger palindrome.
-/
inductive Palindrome : List α → Prop
  | nil : Palindrome []
  | singleton : ∀ x, Palindrome [x]
  | cons_concat : ∀ (x) {l}, Palindrome l → Palindrome (x :: (l ++ [x]))

namespace Palindrome

variable {l : List α}

theorem reverse_eq {l : List α} (p : Palindrome l) : reverse l = l := by
  induction p <;> try (exact rfl)
  simpa

theorem of_reverse_eq {l : List α} : reverse l = l → Palindrome l := by
  refine bidirectionalRecOn l (fun _ => Palindrome.nil) (fun a _ => Palindrome.singleton a) ?_
  intro x l y hp hr
  rw [reverse_cons, reverse_append] at hr
  rw [head_eq_of_cons_eq hr]
  have : Palindrome l := hp (append_inj_left' (tail_eq_of_cons_eq hr) rfl)
  exact Palindrome.cons_concat x this

theorem iff_reverse_eq {l : List α} : Palindrome l ↔ reverse l = l :=
  Iff.intro reverse_eq of_reverse_eq

theorem append_reverse (l : List α) : Palindrome (l ++ reverse l) := by
  apply of_reverse_eq
  rw [reverse_append, reverse_reverse]

protected theorem map (f : α → β) (p : Palindrome l) : Palindrome (map f l) :=
  of_reverse_eq <| by rw [← map_reverse, p.reverse_eq]

instance [DecidableEq α] (l : List α) : Decidable (Palindrome l) :=
  decidable_of_iff' _ iff_reverse_eq

end Palindrome

end List
