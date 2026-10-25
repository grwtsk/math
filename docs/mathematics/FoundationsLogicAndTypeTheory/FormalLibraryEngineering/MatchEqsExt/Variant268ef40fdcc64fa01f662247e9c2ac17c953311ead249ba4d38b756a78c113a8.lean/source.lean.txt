-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchEqns.Variantc6e8d7b3c51517054320bde4b5f0c68b5c9034698cb6b7aa951e551da316e8bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6e8d7b3c51517054320bde4b5f0c68b5c9034698cb6b7aa951e551da316e8bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MatchEqns.Variantc6e8d7b3c51517054320bde4b5f0c68b5c9034698cb6b7aa951e551da316e8bb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c6e8d7b3c51517054320bde4b5f0c68b5c9034698cb6b7aa951e551da316e8bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Match/MatchEqsExt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Match.Basic
public import Lean.Meta.Match.MatcherInfo
import Lean.Meta.Eqns


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchEqns.Variantc6e8d7b3c51517054320bde4b5f0c68b5c9034698cb6b7aa951e551da316e8bb

public section

namespace Lean.Meta.Match

structure MatchEqns where
  eqnNames             : Array Name
  splitterName         : Name
  splitterMatchInfo    : MatcherInfo
deriving Inhabited, Repr

def MatchEqns.size (e : MatchEqns) : Nat :=
  e.eqnNames.size

structure MatchEqnsExtState where
  map : PHashMap Name MatchEqns := {}
  eqns : PHashSet Name := {}
  deriving Inhabited

/- We generate the equations and splitter on demand, and do not save them on .olean files. -/
builtin_initialize matchEqnsExt : EnvExtension MatchEqnsExtState ←
  -- Using `local` allows us to use the extension in `realizeConst` without specifying `replay?`.
  -- The resulting state can still be accessed on the generated declarations using `.asyncEnv`;
  -- see below
  registerEnvExtension (pure {}) (asyncMode := .local)

def registerMatchEqns (matchDeclName : Name) (matchEqns : MatchEqns) : CoreM Unit := do
  modifyEnv fun env => matchEqnsExt.modifyState env fun { map, eqns } => {
    eqns := matchEqns.eqnNames.foldl (init := eqns) fun eqns eqn => eqns.insert eqn
    map := map.insert matchDeclName matchEqns
  }

/-
Forward definition of `getEquationsForImpl`.
We want to use `getEquationsFor` in the simplifier,
getEquationsFor` depends on `mkEquationsFor` which uses the simplifier.
-/
set_option compiler.ignoreBorrowAnnotation true in
@[extern "lean_get_match_equations_for"]
opaque getEquationsFor (matchDeclName : Name) : MetaM MatchEqns

/-
Forward definition of `genMatchCongrEqnsImpl`.
-/
set_option compiler.ignoreBorrowAnnotation true in
@[extern "lean_get_congr_match_equations_for"]
opaque genMatchCongrEqns (matchDeclName : Name) : MetaM (Array Name)

/--
Returns `true` if `declName` is the name of a `match` equational theorem.
-/
def isMatchEqnTheorem (env : Environment) (declName : Name) : Bool := Id.run do
  -- avoid blocking on async decls whose names look nothing like matchers
  let .str _ s := declName.eraseMacroScopes | return false
  if !isEqnLikeSuffix s then
    return false
  (matchEqnsExt.getState (asyncMode := .async .asyncEnv) (asyncDecl := declName) env).eqns.contains declName

end Lean.Meta.Match
