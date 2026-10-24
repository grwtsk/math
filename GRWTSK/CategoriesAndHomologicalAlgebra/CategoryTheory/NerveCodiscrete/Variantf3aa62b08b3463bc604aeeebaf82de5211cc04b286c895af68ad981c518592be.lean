-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivFun.Variant974f804d6e85226d6fffa56a583a2b2644c1b334571ab5962f94e6d8e4b1bc1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"974f804d6e85226d6fffa56a583a2b2644c1b334571ab5962f94e6d8e4b1bc1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EquivFun.Variant974f804d6e85226d6fffa56a583a2b2644c1b334571ab5962f94e6d8e4b1bc1a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"974f804d6e85226d6fffa56a583a2b2644c1b334571ab5962f94e6d8e4b1bc1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/NerveCodiscrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Arnoud van der Leer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arnoud van der Leer
-/
module

public import Mathlib.CategoryTheory.CodiscreteCategory
public import Mathlib.AlgebraicTopology.SimplicialSet.Nerve

/-!
# The Nerve of a Codiscrete Category

In the codiscrete category on a type `X`, every hom-type is given by `Unit`.
When we take the nerve of such a category, the `n`-simplices become equivalent to
`X`-vectors of length `n + 1`.
Therefore, if `X` has decidable equality, so does the type of `n`-simplices in this nerve.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivFun.Variant974f804d6e85226d6fffa56a583a2b2644c1b334571ab5962f94e6d8e4b1bc1a

@[expose] public section

universe u

namespace CategoryTheory.Codiscrete

open scoped Simplicial

variable {X : Type u} {n : ℕ}

/-- Since the morphisms in a codiscrete category do not carry information, an n-simplex of
coherentIso is equivalent to an X-vector of length (n + 1). -/
@[simps! +dsimpLhs]
def equivFun : nerve (Codiscrete X) _⦋n⦌ ≃ (Fin (n + 1) → X) where
  toFun f k := (f.obj k).as
  invFun f := .mk (fun k ↦ .mk (f k)) (fun _ ↦ iso _ _|>.hom) (fun _ ↦ rfl) (fun _ _ ↦ rfl)

/-- If a type `X` has decidable equality, the nerve of the codiscrete category on `X`
has decidable equality as well. -/
instance [DecidableEq X] : DecidableEq (nerve (Codiscrete X) _⦋n⦌) :=
  fun _ _ ↦ decidable_of_iff _ (Equiv.apply_eq_iff_eq equivFun)

end CategoryTheory.Codiscrete
