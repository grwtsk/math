-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateProjEq.Variant99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PropagateProjEq.Variant99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Proj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateProjEq.Variant99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f

public section
namespace Lean.Meta.Grind

/--
If `parent` is a projection-application `proj_i c`,
check whether the root of the equivalence class containing `c` is a constructor-application `ctor ... a_i ...`.
If so, internalize the term `proj_i (ctor ... a_i ...)` and add the equality `proj_i (ctor ... a_i ...) = a_i`.
-/
def propagateProjEq (parent : Expr) : GoalM Unit := do
  let .const declName _ := parent.getAppFn | return ()
  let some info ← getProjectionFnInfo? declName | return ()
  unless info.numParams + 1 == parent.getAppNumArgs do return ()
  -- It is wasteful to add equation if `parent` is not the root of its congruence class
  unless (← isCongrRoot parent) do return ()
  let arg := parent.appArg!
  let ctorNode ← getRootENode arg
  let ctor := ctorNode.self
  unless ctor.isAppOf info.ctorName do return ()
  let parentNew ← if isSameExpr arg ctor then
    pure parent
  else
    let parentNew ← if ctorNode.heqProofs then
      /-
      When the equivalence class contains heterogeneous equalities,
      type of `arg` and `ctor` may not be definitionally equal.
      To ensure the projection application is type correct, we use
      the `ctor` parameters.
      -/
      let projFn := parent.getAppFn
      let params := ctor.getAppArgs[:info.numParams].toArray
      shareCommon (mkApp (mkAppN projFn params) ctor)
    else
      shareCommon (mkApp parent.appFn! ctor)
    internalize parentNew (← getGeneration parent)
    pure parentNew
  trace_goal[grind.debug.proj] "{parentNew}"
  let idx := info.numParams + info.i
  unless idx < ctor.getAppNumArgs do return ()
  let v := ctor.getArg! idx
  let h ← mkEqRefl v
  let h := mkExpectedPropHint h (← mkEq parentNew v)
  pushEq parentNew v h

end Lean.Meta.Grind
