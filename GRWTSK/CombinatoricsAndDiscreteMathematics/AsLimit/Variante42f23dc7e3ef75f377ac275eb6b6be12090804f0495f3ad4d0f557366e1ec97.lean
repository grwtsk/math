-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FintypeDiagram.Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FintypeDiagram.Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Category/Profinite/AsLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Calle Sönne, Adam Topaz
-/
import Mathlib.Topology.Category.Profinite.Basic
import Mathlib.Topology.DiscreteQuotient


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FintypeDiagram.Variant1e070739a7b0e46488b7e5f5c5857d3fcdeb16869c5692deccf4c9120b82fd53

#align_import topology.category.Profinite.as_limit from "leanprover-community/mathlib"@"d101e93197bb5f6ea89bd7ba386b7f7dff1f3903"

/-!
# Profinite sets as limits of finite sets.

We show that any profinite set is isomorphic to the limit of its
discrete (hence finite) quotients.

## Definitions

There are a handful of definitions in this file, given `X : Profinite`:
1. `X.fintypeDiagram` is the functor `DiscreteQuotient X ⥤ FintypeCat` whose limit
  is isomorphic to `X` (the limit taking place in `Profinite` via `FintypeCat.toProfinite`, see 2).
2. `X.diagram` is an abbreviation for `X.fintypeDiagram ⋙ FintypeCat.toProfinite`.
3. `X.asLimitCone` is the cone over `X.diagram` whose cone point is `X`.
4. `X.isoAsLimitConeLift` is the isomorphism `X ≅ (Profinite.limitCone X.diagram).X` induced
  by lifting `X.asLimitCone`.
5. `X.asLimitConeIso` is the isomorphism `X.asLimitCone ≅ (Profinite.limitCone X.diagram)`
  induced by `X.isoAsLimitConeLift`.
6. `X.asLimit` is a term of type `IsLimit X.asLimitCone`.
7. `X.lim : CategoryTheory.Limits.LimitCone X.asLimitCone` is a bundled combination of 3 and 6.

-/


noncomputable section

open CategoryTheory

namespace Profinite

universe u

variable (X : Profinite.{u})

/-- The functor `DiscreteQuotient X ⥤ Fintype` whose limit is isomorphic to `X`. -/
def fintypeDiagram : DiscreteQuotient X ⥤ FintypeCat where
  obj S := @FintypeCat.of S (Fintype.ofFinite S)
  map f := DiscreteQuotient.ofLE f.le
  -- Porting note: `map_comp` used to be proved by default by `aesop_cat`.
  -- once `aesop_cat` can prove this again, remove the entire `map_comp` here.
  map_comp _ _ := by ext; aesop_cat
set_option linter.uppercaseLean3 false in
#align Profinite.fintype_diagram Profinite.fintypeDiagram

/-- An abbreviation for `X.fintypeDiagram ⋙ FintypeCat.toProfinite`. -/
abbrev diagram : DiscreteQuotient X ⥤ Profinite :=
  X.fintypeDiagram ⋙ FintypeCat.toProfinite
set_option linter.uppercaseLean3 false in
#align Profinite.diagram Profinite.diagram

/-- A cone over `X.diagram` whose cone point is `X`. -/
def asLimitCone : CategoryTheory.Limits.Cone X.diagram :=
  { pt := X
    π := { app := fun S => ⟨S.proj, IsLocallyConstant.continuous (S.proj_isLocallyConstant)⟩ } }
set_option linter.uppercaseLean3 false in
#align Profinite.as_limit_cone Profinite.asLimitCone

instance isIso_asLimitCone_lift : IsIso ((limitConeIsLimit X.diagram).lift X.asLimitCone) :=
  isIso_of_bijective _
    (by
      refine' ⟨fun a b h => _, fun a => _⟩
      · refine' DiscreteQuotient.eq_of_forall_proj_eq fun S => _
        apply_fun fun f : (limitCone X.diagram).pt => f.val S at h
        exact h
      · obtain ⟨b, hb⟩ :=
          DiscreteQuotient.exists_of_compat (fun S => a.val S) fun _ _ h => a.prop (homOfLE h)
        use b
        -- ext S : 3 -- Porting note: `ext` does not work, replaced with following three lines.
        apply Subtype.ext
        apply funext
        rintro S
        -- Porting note: end replacement block
        apply hb
    )
set_option linter.uppercaseLean3 false in
#align Profinite.is_iso_as_limit_cone_lift Profinite.isIso_asLimitCone_lift

/-- The isomorphism between `X` and the explicit limit of `X.diagram`,
induced by lifting `X.asLimitCone`.
-/
def isoAsLimitConeLift : X ≅ (limitCone X.diagram).pt :=
  asIso <| (limitConeIsLimit _).lift X.asLimitCone
set_option linter.uppercaseLean3 false in
#align Profinite.iso_as_limit_cone_lift Profinite.isoAsLimitConeLift

/-- The isomorphism of cones `X.asLimitCone` and `Profinite.limitCone X.diagram`.
The underlying isomorphism is defeq to `X.isoAsLimitConeLift`.
-/
def asLimitConeIso : X.asLimitCone ≅ limitCone _ :=
  Limits.Cones.ext (isoAsLimitConeLift _) fun _ => rfl
set_option linter.uppercaseLean3 false in
#align Profinite.as_limit_cone_iso Profinite.asLimitConeIso

/-- `X.asLimitCone` is indeed a limit cone. -/
def asLimit : CategoryTheory.Limits.IsLimit X.asLimitCone :=
  Limits.IsLimit.ofIsoLimit (limitConeIsLimit _) X.asLimitConeIso.symm
set_option linter.uppercaseLean3 false in
#align Profinite.as_limit Profinite.asLimit

/-- A bundled version of `X.asLimitCone` and `X.asLimit`. -/
def lim : Limits.LimitCone X.diagram :=
  ⟨X.asLimitCone, X.asLimit⟩
set_option linter.uppercaseLean3 false in
#align Profinite.lim Profinite.lim

end Profinite
