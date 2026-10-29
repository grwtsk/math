-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InclusionExt.Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InclusionExt.Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Inclusion/Core/Extensions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public meta import Mathlib.Tactic.Inclusion.Core.DiscrTreeExt
public meta import Mathlib.Tactic.Inclusion.Core.Types

/-!
# Environment extensions for the `inclusion` tactic

This file defines the environment extensions used in the `inclusion` tactic.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InclusionExt.Variantd03f12c0dbec96eac843eff3b7bfb28381028cba9735b99669013a9a46a03c6b

public meta section

open Lean Meta DiscrTreeExt

namespace Inclusion

/-- An extension used by the `inclusion` tactic to construct `ExprInclusionBody`s. -/
structure InclusionExt where
  /-- Name of the declaration of the extension. -/
  declName : Name := by exact decl_name%
  /-- The family in which the extension is registered. -/
  family : Name
  /-- The user-facing name of the extension. -/
  userName : Name := declName
  /-- Attempt to construct an `ExprInclusionBody` for `e`. -/
  derive (e : Expr) : InclusionM ExprInclusionBody
  /-- The priority of the extension. Extensions with higher priority are tried first. -/
  priority : Nat := eval_prio default

/-- An extension used by the `inclusion` tactic to construct inclusion hypotheses from local
declarations. -/
structure HypothesisExt where
  /-- Name of the declaration of the extension. -/
  declName : Name := by exact decl_name%
  /-- The family in which the extension is registered. -/
  family : Name
  /-- The user-facing name of the extension. -/
  userName : Name := declName
  /-- Attempt to construct inclusion hypotheses from `h`. -/
  derive (h : Expr) : HypothesisM Unit
  /-- The priority of the extension. Extensions with higher priority are tried first. -/
  priority : Nat := eval_prio default

/-- A family of inclusion and hypothesis extensions. -/
structure InclusionFamily where
  /-- The `DiscrTree`-indexed collection of inclusion extensions. -/
  inclusionExt : EnvExt InclusionExt
  /-- The `DiscrTree`-indexed collection of hypothesis extensions. -/
  hypothesisExt : EnvExt HypothesisExt
  deriving Nonempty

/-- A map from family names to registered inclusion families. -/
abbrev InclusionFamilies := Std.HashMap Name InclusionFamily

/-- The registry of inclusion families. -/
initialize inclusionFamiliesRef : IO.Ref InclusionFamilies ← IO.mkRef {}

/-- Register an inclusion family. -/
def registerInclusionFamily (name : Name) (ref : Name := by exact decl_name%) :
    IO InclusionFamily := do
  if (← inclusionFamiliesRef.get).contains name then
    throw <| IO.userError s!"Inclusion family `{name}` is already registered"
  let inclusionExt ← initializeEnvExt ``InclusionExt (ref.str "inclusionExt")
  let hypothesisExt ← initializeEnvExt ``HypothesisExt (ref.str "hypothesisExt")
  let family := { inclusionExt, hypothesisExt }
  inclusionFamiliesRef.modify (·.insert name family)
  return family

/-- If `name` is the name of an `InclusionFamily` `family` then return `some family`,
otherwise return `none`. -/
def getInclusionFamily? (name : Name) : CoreM (Option InclusionFamily) := do
  let family? := (← inclusionFamiliesRef.get)[name]?
  if let some family := family? then
    recordExtraModUseFromDecl (isMeta := true) family.inclusionExt.ext.name
  return family?

/-- Return the registered inclusion family named `name`, or fail if it is not registered. -/
def getInclusionFamily (name : Name) : CoreM InclusionFamily := do
  let some family ← getInclusionFamily? name
    | throwError "Unknown inclusion family `{name}`"
  return family

/-- Return an array of the inclusion extensions in `families` whose `DiscrTree` key matches `e`,
sorted in order of highest to lowest priority. -/
def getInclusionExtMatches (families : Array Name) (e : Expr) :
    MetaM (Array InclusionExt) := do
  let env ← getEnv
  let mut matched := #[]
  for familyName in families do
    let family ← getInclusionFamily familyName
    for ext in ← family.inclusionExt.getState env |>.getMatch e do
      matched := matched.push ext
  return matched.qsort fun a b => a.priority > b.priority

/-- Return an array of the hypothesis extensions in `families` whose `DiscrTree` key matches `e`,
sorted in order of highest to lowest priority. -/
def getHypothesisExtMatches (families : Array Name) (e : Expr) :
    MetaM (Array HypothesisExt) := do
  let env ← getEnv
  let mut matched := #[]
  for familyName in families do
    let family ← getInclusionFamily familyName
    for ext in ← family.hypothesisExt.getState env |>.getMatch e do
      matched := matched.push ext
  return matched.qsort fun a b => a.priority > b.priority

section InclusionParam

/-- A registered named parameter that can be set by the user and used across inclusion and
hypothesis extensions. -/
structure InclusionParamDecl where
  /-- The name of the parameter. -/
  name : Name
  /-- The type of the parameter (as an expression). -/
  type : Expr
  /-- The default value of the parameter, if present. -/
  defaultValue? : Option Expr := none

/-- The collection of registered inclusion parameters, indexed by name. -/
abbrev InclusionParams := NameMap InclusionParamDecl

/-- Evaluate the declaration `n` as an `InclusionParamDecl`. -/
def mkInclusionParamDecl (name : Name) : ImportM InclusionParamDecl := do
  let { env, opts, .. } ← read
  IO.ofExcept <| unsafe env.evalConstCheck InclusionParamDecl opts ``InclusionParamDecl name

/-- Initialize the `InclusionParamExt` environment extension. -/
initialize inclusionParamExt :
    ScopedEnvExtension Name (Name × InclusionParamDecl) InclusionParams ←
  registerScopedEnvExtension {
    mkInitial := pure {}
    ofOLeanEntry := fun _ name => return (name, ← mkInclusionParamDecl name)
    toOLeanEntry := (·.1)
    addEntry := fun state (_, decl) => state.insert decl.name decl
  }

end InclusionParam

end Inclusion
