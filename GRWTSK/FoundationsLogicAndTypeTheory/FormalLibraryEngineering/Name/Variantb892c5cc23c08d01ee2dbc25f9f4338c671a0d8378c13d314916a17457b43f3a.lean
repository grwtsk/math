-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsBlackListed.Variant461e2fb0440607120de24dda0e69a3994df20638f939fd985f150caa4f082261","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"461e2fb0440607120de24dda0e69a3994df20638f939fd985f150caa4f082261","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsBlackListed.Variant461e2fb0440607120de24dda0e69a3994df20638f939fd985f150caa4f082261","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"461e2fb0440607120de24dda0e69a3994df20638f939fd985f150caa4f082261","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Name.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.Meta.Match.MatcherInfo
import Lean.Meta.Tactic.Delta
import Std.Data.HashMap.Basic

/-!
# Additional functions on `Lean.Name`.

We provide `allNames` and `allNamesByModule`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsBlackListed.Variant461e2fb0440607120de24dda0e69a3994df20638f939fd985f150caa4f082261

open Lean Meta Elab

private def isBlackListed (declName : Name) : CoreM Bool := do
  if declName.toString.startsWith "Lean" then return true
  let env ← getEnv
  pure <| declName.isInternalDetail
   || isAuxRecursor env declName
   || isNoConfusion env declName
  <||> isRec declName <||> isMatcher declName

/--
Retrieve all names in the environment satisfying a predicate.
-/
def allNames (p : Name → Bool) : CoreM (Array Name) := do
  (← getEnv).constants.foldM (init := #[]) fun names n _ => do
    if p n && !(← isBlackListed n) then
      return names.push n
    else
      return names

/--
Retrieve all names in the environment satisfying a predicate,
gathered together into a `HashMap` according to the module they are defined in.
-/
def allNamesByModule (p : Name → Bool) : CoreM (Std.HashMap Name (Array Name)) := do
  (← getEnv).constants.foldM (init := ∅) fun names n _ => do
    if p n && !(← isBlackListed n) then
      let some m ← findModuleOf? n | return names
      -- TODO use `modify` and/or `alter` when available
      match names[m]? with
      | some others => return names.insert m (others.push n)
      | none => return names.insert m #[n]
    else
      return names

/-- Decapitalize the last component of a name. -/
def Lean.Name.decapitalize (n : Name) : Name :=
  n.modifyBase fun
    | .str p s => .str p s.decapitalize
    | n       => n

/-- Whether the lemma has a name of the form produced by `Lean.Meta.mkAuxLemma`. -/
def Lean.Name.isAuxLemma (n : Name) : Bool :=
  match n with
  | .str _ s => "_proof_".isPrefixOf s
  | _ => false

/-- Unfold all lemmas created by `Lean.Meta.mkAuxLemma`.
The names of these lemmas end in `_auxLemma.nn` where `nn` is a number. -/
def Lean.Meta.unfoldAuxLemmas (e : Expr) : MetaM Expr := do
  deltaExpand e Lean.Name.isAuxLemma
