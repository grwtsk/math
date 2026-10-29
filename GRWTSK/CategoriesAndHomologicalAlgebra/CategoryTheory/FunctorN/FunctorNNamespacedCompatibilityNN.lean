-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.N.Variant643137737e150336e13d6f99ffe3fb330d16924916b63eb4b33dd0b037f44957","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"643137737e150336e13d6f99ffe3fb330d16924916b63eb4b33dd0b037f44957","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.N.Variant643137737e150336e13d6f99ffe3fb330d16924916b63eb4b33dd0b037f44957","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"643137737e150336e13d6f99ffe3fb330d16924916b63eb4b33dd0b037f44957","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/AlgebraicTopology/DoldKan/FunctorN.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.DoldKan.PInfty


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.N.Variant643137737e150336e13d6f99ffe3fb330d16924916b63eb4b33dd0b037f44957

#align_import algebraic_topology.dold_kan.functor_n from "leanprover-community/mathlib"@"32a7e535287f9c73f2e4d2aef306a39190f0b504"

/-!

# Construction of functors N for the Dold-Kan correspondence

In this file, we construct functors `N₁ : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ)`
and `N₂ : Karoubi (SimplicialObject C) ⥤ Karoubi (ChainComplex C ℕ)`
for any preadditive category `C`. (The indices of these functors are the number of occurrences
of `Karoubi` at the source or the target.)

In the case `C` is additive, the functor `N₂` shall be the functor of the equivalence
`CategoryTheory.Preadditive.DoldKan.equivalence` defined in `EquivalenceAdditive.lean`.

In the case the category `C` is pseudoabelian, the composition of `N₁` with the inverse of the
equivalence `ChainComplex C ℕ ⥤ Karoubi (ChainComplex C ℕ)` will be the functor
`CategoryTheory.Idempotents.DoldKan.N` of the equivalence of categories
`CategoryTheory.Idempotents.DoldKan.equivalence : SimplicialObject C ≌ ChainComplex C ℕ`
defined in `EquivalencePseudoabelian.lean`.

When the category `C` is abelian, a relation between `N₁` and the
normalized Moore complex functor shall be obtained in `Normalized.lean`.

(See `Equivalence.lean` for the general strategy of proof of the Dold-Kan equivalence.)

-/


open CategoryTheory CategoryTheory.Category CategoryTheory.Idempotents

noncomputable section

namespace AlgebraicTopology

namespace DoldKan

variable {C : Type*} [Category C] [Preadditive C]

/-- The functor `SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ)` which maps
`X` to the formal direct factor of `K[X]` defined by `PInfty`. -/
@[simps]
def N₁ : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ) where
  obj X :=
    { X := AlternatingFaceMapComplex.obj X
      p := PInfty
      idem := PInfty_idem }
  map f :=
    { f := PInfty ≫ AlternatingFaceMapComplex.map f }
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.N₁ AlgebraicTopology.DoldKan.N₁

/-- The extension of `N₁` to the Karoubi envelope of `SimplicialObject C`. -/
@[simps!]
def N₂ : Karoubi (SimplicialObject C) ⥤ Karoubi (ChainComplex C ℕ) :=
  (functorExtension₁ _ _).obj N₁
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.N₂ AlgebraicTopology.DoldKan.N₂

-- porting note: added to ease the port of `AlgebraicTopology.DoldKan.NCompGamma`
lemma compatibility_N₁_N₂ : toKaroubi (SimplicialObject C) ⋙ N₂ = N₁ :=
  Functor.congr_obj (functorExtension₁_comp_whiskeringLeft_toKaroubi _ _) N₁

end DoldKan

end AlgebraicTopology
