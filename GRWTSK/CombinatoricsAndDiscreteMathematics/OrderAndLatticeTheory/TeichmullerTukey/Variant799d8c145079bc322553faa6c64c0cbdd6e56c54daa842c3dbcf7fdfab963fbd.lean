-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsOfFiniteCharacter.Variant5184792a0637a75c09cf237755a8a229dd9445b2234deb6756c5af8eae08458b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5184792a0637a75c09cf237755a8a229dd9445b2234deb6756c5af8eae08458b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IsOfFiniteCharacter.Variant5184792a0637a75c09cf237755a8a229dd9445b2234deb6756c5af8eae08458b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5184792a0637a75c09cf237755a8a229dd9445b2234deb6756c5af8eae08458b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/TeichmullerTukey.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Ansar Azhdarov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ansar Azhdarov
-/
module

public import Mathlib.Data.Set.Finite.Range
public import Mathlib.Data.Set.Finite.Lattice
public import Mathlib.Order.Zorn

/-!
# Teichmuller-Tukey

This file defines the notion of being of finite character for a family of sets and proves the
Teichmuller-Tukey lemma.

## Main definitions

- `IsOfFiniteCharacter` : A family of sets $F$ is of finite character iff for every set $X$,
  $X ∈ F$ iff every finite subset of $X$ is in $F$.

## Main results

- `IsOfFiniteCharacter.exists_maximal` : Teichmuller-Tukey lemma, saying that every nonempty
  family of finite character has a maximal element.

## References

- <https://en.wikipedia.org/wiki/Teichm%C3%BCller%E2%80%93Tukey_lemma>
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsOfFiniteCharacter.Variant5184792a0637a75c09cf237755a8a229dd9445b2234deb6756c5af8eae08458b

@[expose] public section

open Set

variable {α : Type*} (F : Set (Set α))

namespace Order

/-- A family of sets $F$ is of finite character iff for every set $X$, $X ∈ F$ iff every finite
subset of $X$ is in $F$ -/
def IsOfFiniteCharacter := ∀ x, x ∈ F ↔ ∀ y ⊆ x, y.Finite → y ∈ F

/-- **Teichmuller-Tukey lemma**. Every nonempty family of finite character has a maximal element. -/
theorem IsOfFiniteCharacter.exists_maximal {F} (hF : IsOfFiniteCharacter F) {x : Set α}
    (xF : x ∈ F) : ∃ m, x ⊆ m ∧ Maximal (· ∈ F) m := by
  /- Apply Zorn's lemma. Take the union of the elements of a chain as its upper bound. -/
  refine zorn_subset_nonempty F (fun c cF cch cne ↦
    ⟨sUnion c, ?_, fun s sc ↦ subset_sUnion_of_mem sc⟩) x xF
  /- Prove that the union belongs to `F`. -/
  refine (hF (sUnion c)).mpr fun s sc sfin ↦ ?_
  /- Use the finite character property and the fact that any finite subset of the union is also a
  subset of some element of the chain. -/
  obtain ⟨t, tc, st⟩ := cch.directedOn.exists_mem_subset_of_finite_of_subset_sUnion cne sfin sc
  exact (hF t).mp (cF tc) s st sfin

end Order
