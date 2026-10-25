-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForEachComposition.Variant7baeca6ef140581c1df09d06c3d0a59dbeceee8993b535a3ae489d258c09596c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7baeca6ef140581c1df09d06c3d0a59dbeceee8993b535a3ae489d258c09596c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ForEachComposition.Variant7baeca6ef140581c1df09d06c3d0a59dbeceee8993b535a3ae489d258c09596c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7baeca6ef140581c1df09d06c3d0a59dbeceee8993b535a3ae489d258c09596c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/CategoryTheory/CheckCompositions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Aesop
public import Mathlib.CategoryTheory.Category.Basic
public meta import Mathlib.Tactic.ToDual

/-!
The `check_compositions` tactic,
which checks the typing of categorical compositions in the goal,
reporting discrepancies at "instances and reducible" transparency.

Reports from this tactic do not necessarily indicate a problem,
although typically `simp` should reduce rather than increase the reported discrepancies.

`check_compositions` may be useful in diagnosing uses of `erw` in the category theory library.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForEachComposition.Variant7baeca6ef140581c1df09d06c3d0a59dbeceee8993b535a3ae489d258c09596c

public meta section

namespace Mathlib.Tactic.CheckCompositions

open CategoryTheory

open Lean Meta Elab Tactic

/-- Find appearances of `CategoryStruct.comp C inst X Y Z f g`, and apply `f` to each. -/
def forEachComposition (e : Expr) (f : Expr → MetaM Unit) : MetaM Unit := do
  e.forEach (fun e ↦ if e.isAppOfArity ``CategoryStruct.comp 7 then f e else pure ())

/-- Given a composition `CategoryStruct.comp _ _ X Y Z f g`,
infer the types of `f` and `g` and check whether their sources and targets agree,
at "instances and reducible" transparency, with `X`, `Y`, and `Z`,
reporting any discrepancies. -/
def checkComposition (e : Expr) : MetaM Unit := do
  match_expr e with
  | CategoryStruct.comp _ _ X Y Z f g =>
    match_expr ← inferType f with
    | Quiver.Hom _ _ X' Y' =>
      withReducibleAndInstances do
        if !(← isDefEq X' X) then
          let (X', X) ← addPPExplicitToExposeDiff X' X
          logInfo m!"In composition{indentD e}\n\
            the source of{indentD f}\nis{indentD X'}\nbut should be{indentD X}"
        if !(← isDefEq Y' Y) then
          let (Y', Y) ← addPPExplicitToExposeDiff Y' Y
          logInfo m!"In composition{indentD e}\n\
            the target of{indentD f}\nis{indentD Y'}\nbut should be{indentD Y}"
    | _ => throwError "In composition{indentD e}\nthe type of{indentD f}\nis not a morphism."
    match_expr ← inferType g with
    | Quiver.Hom _ _ Y' Z' =>
      withReducibleAndInstances do
        if !(← isDefEq Y' Y) then
          let (Y', Y) ← addPPExplicitToExposeDiff Y' Y
          logInfo m!"In composition{indentD e}\n\
            the source of{indentD g}\nis{indentD Y'}\nbut should be{indentD Y}"
        if !(← isDefEq Z' Z) then
          let (Z', Z) ← addPPExplicitToExposeDiff Z' Z
          logInfo m!"In composition{indentD e}\n\
            the target of{indentD g}\nis{indentD Z'}\nbut should be{indentD Z}"
    | _ => throwError "In composition{indentD e}\nthe type of{indentD g}\nis not a morphism."
  | _ => throwError "{e} is not a composition."

/-- Check the typing of categorical compositions in an expression. -/
def checkCompositions (e : Expr) : MetaM Unit := do
  forEachComposition e checkComposition

/-- Check the typing of categorical compositions in the goal. -/
def checkCompositionsTac : TacticM Unit := withMainContext do
  let e ← getMainTarget
  checkCompositions e

/-- For each composition `f ≫ g` in the goal,
which internally is represented as `CategoryStruct.comp C inst X Y Z f g`,
infer the types of `f` and `g` and check whether their sources and targets agree
with `X`, `Y`, and `Z` at "instances and reducible" transparency,
reporting any discrepancies.

An example:

```
example (j : J) :
    colimit.ι ((F ⋙ G) ⋙ H) j ≫ (preservesColimitIso (G ⋙ H) F).inv =
      H.map (G.map (colimit.ι F j)) := by

  -- We know which lemma we want to use, and it's even a simp lemma, but `rw`
  -- won't let us apply it
  fail_if_success rw [ι_preservesColimitIso_inv]
  fail_if_success rw [ι_preservesColimitIso_inv (G ⋙ H)]
  fail_if_success simp only [ι_preservesColimitIso_inv]

  -- This would work:
  -- erw [ι_preservesColimitIso_inv (G ⋙ H)]

  -- `check_compositions` checks if the two morphisms we're composing are
  -- composed by abusing defeq, and indeed it tells us that we are abusing
  -- definitional associativity of composition of functors here: it prints
  -- the following.

  -- info: In composition
  --   colimit.ι ((F ⋙ G) ⋙ H) j ≫ (preservesColimitIso (G ⋙ H) F).inv
  -- the source of
  --   (preservesColimitIso (G ⋙ H) F).inv
  -- is
  --   colimit (F ⋙ G ⋙ H)
  -- but should be
  --   colimit ((F ⋙ G) ⋙ H)

  check_compositions

  -- In this case, we can "fix" this by reassociating in the goal, but
  -- usually at this point the right thing to do is to back off and
  -- check how we ended up with a bad goal in the first place.
  dsimp only [Functor.assoc]

  -- This would work now, but it is not needed, because simp works as well
  -- rw [ι_preservesColimitIso_inv]

  simp
```
-/
elab "check_compositions" : tactic => checkCompositionsTac

end Mathlib.Tactic.CheckCompositions
