-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchEq.Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MatchEq.Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/MatchUtil.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.Recognizers
public import Lean.Meta.CtorRecognizer


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchEq.Variant5e2bf9f820fa6beba21196ced924a5b93d3c06619fa3cb51a5dc32843d8ff47f

public section

namespace Lean.Meta

@[inline] def testHelper (e : Expr) (p : Expr → MetaM Bool) : MetaM Bool := do
  if (← p e) then
    return true
  else
    p (← whnf e)

@[inline] def matchHelper? (e : Expr) (p? : Expr → MetaM (Option α)) : MetaM (Option α) := do
  match (← p? e) with
  | none => p? (← whnf e)
  | s    => return s

/-- Matches `e` with `lhs = (rhs : α)` and returns `(α, lhs, rhs)`. -/
def matchEq? (e : Expr) : MetaM (Option (Expr × Expr × Expr)) :=
  matchHelper? e fun e => return Expr.eq? e

def matchHEq? (e : Expr) : MetaM (Option (Expr × Expr × Expr × Expr)) :=
  matchHelper? e fun e => return Expr.heq? e

/--
  Return `some (α, lhs, rhs)` if `e` is of the form `@Eq α lhs rhs` or `@HEq α lhs α rhs`
-/
def matchEqHEq? (e : Expr) : MetaM (Option (Expr × Expr × Expr)) := do
  if let some r ← matchEq? e then
    return some r
  else if let some (α, lhs, β, rhs) ← matchHEq? e then
    if (← isDefEq α β) then
      return some (α, lhs, rhs)
    return none
  else
    return none

/--
  Return `some (α, lhs)` if `e` is of the form `@Eq α lhs rhs` or `@HEq α lhs β rhs`
-/
def matchEqHEqLHS? (e : Expr) : MetaM (Option (Expr × Expr)) := do
  if let some (α, lhs, _rhs) ← matchEq? e then
    return some (α, lhs)
  else if let some (α, lhs, _β, _rhs) ← matchHEq? e then
    return some (α, lhs)
  else
    return none


def matchFalse (e : Expr) : MetaM Bool := do
  testHelper e fun e => return e.isFalse

def matchNot? (e : Expr) : MetaM (Option Expr) :=
  matchHelper? e fun e => do
    if let some e := e.not? then
      return e
    else if let some (a, b) := e.arrow? then
      if (← matchFalse b) then return some a else return none
    else
      return none

def matchNe? (e : Expr) : MetaM (Option (Expr × Expr × Expr)) :=
  matchHelper? e fun e => do
    if let some r := e.ne? then
      return r
    else if let some e ← matchNot? e then
      matchEq? e
    else
      return none

def matchConstructorApp? (e : Expr) : MetaM (Option ConstructorVal) := do
  matchHelper? e isConstructorApp?

end Lean.Meta
