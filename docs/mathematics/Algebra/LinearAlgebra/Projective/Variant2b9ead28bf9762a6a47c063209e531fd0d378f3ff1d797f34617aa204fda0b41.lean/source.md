# Complete source: GRWTSK.Algebra.LinearAlgebra.Projective.Variant2b9ead28bf9762a6a47c063209e531fd0d378f3ff1d797f34617aa204fda0b41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a14924b07dddce2114c7bd087f9843f55da6fdd9` · SHA-256 `1e3a885fda48f40758cf5a969662195ecf7102c079ca88e9b9366f0a903603fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsProjectiveIffProjective.Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsProjectiveIffProjective.Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/Projective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Scott Morrison
-/
import Mathlib.Algebra.Category.ModuleCat.EpiMono
import Mathlib.Algebra.Module.Projective
import Mathlib.CategoryTheory.Preadditive.Projective
import Mathlib.LinearAlgebra.FinsuppVectorSpace
import Mathlib.Data.Finsupp.Basic


namespace GRWTSK.Algebra.LinearAlgebra.IsProjectiveIffProjective.Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011

#align_import algebra.category.Module.projective from "leanprover-community/mathlib"@"201a3f4a0e59b5f836fe8a6c1a462ee674327211"

/-!
# The category of `R`-modules has enough projectives.
-/

set_option autoImplicit true

universe v u

open CategoryTheory

open CategoryTheory.Limits

open LinearMap

open ModuleCat

open scoped Module

/-- The categorical notion of projective object agrees with the explicit module-theoretic notion. -/
theorem IsProjective.iff_projective {R : Type u} [Ring R] {P : Type max u v} [AddCommGroup P]
    [Module R P] : Module.Projective R P ↔ Projective (ModuleCat.of R P) := by
  refine' ⟨fun h => _, fun h => _⟩
  · letI : Module.Projective R (ModuleCat.of R P) := h
    exact ⟨fun E X epi => Module.projective_lifting_property _ _
      ((ModuleCat.epi_iff_surjective _).mp epi)⟩
  · refine' Module.Projective.of_lifting_property.{u,v} _
    intro E X mE mX sE sX f g s
    haveI : Epi (↟f) := (ModuleCat.epi_iff_surjective (↟f)).mpr s
    letI : Projective (ModuleCat.of R P) := h
    exact ⟨Projective.factorThru (↟g) (↟f), Projective.factorThru_comp (↟g) (↟f)⟩
#align is_projective.iff_projective IsProjective.iff_projective

namespace ModuleCat

variable {R : Type u} [Ring R] {M : ModuleCat.{max u v} R}

-- We transport the corresponding result from `Module.Projective`.
/-- Modules that have a basis are projective. -/
theorem projective_of_free {ι : Type u'} (b : Basis ι R M) : Projective M :=
  Projective.of_iso (ModuleCat.ofSelfIso M)
    (IsProjective.iff_projective.{v,u}.mp (Module.Projective.of_basis b))
set_option linter.uppercaseLean3 false in
#align Module.projective_of_free ModuleCat.projective_of_free

/-- The category of modules has enough projectives, since every module is a quotient of a free
    module. -/
instance moduleCat_enoughProjectives : EnoughProjectives (ModuleCat.{max u v} R) where
  presentation M :=
    ⟨{  p := ModuleCat.of R (M →₀ R)
        projective :=
          projective_of_free.{v,u} (ι := M) (M := ModuleCat.of R (M →₀ R)) <|
            Finsupp.basisSingleOne
        f := Finsupp.basisSingleOne.constr ℕ _root_.id
        epi := (epi_iff_range_eq_top _).mpr
            (range_eq_top.2 fun m => ⟨Finsupp.single m (1 : R), by
              -- Porting note: simp [Finsupp.total_single] fails but rw succeeds
              dsimp [Basis.constr]
              simp only [Finsupp.lmapDomain_id, comp_id]
              rw [Finsupp.total_single, one_smul]
              rfl ⟩) }⟩
set_option linter.uppercaseLean3 false in
#align Module.Module_enough_projectives ModuleCat.moduleCat_enoughProjectives

end ModuleCat
```
