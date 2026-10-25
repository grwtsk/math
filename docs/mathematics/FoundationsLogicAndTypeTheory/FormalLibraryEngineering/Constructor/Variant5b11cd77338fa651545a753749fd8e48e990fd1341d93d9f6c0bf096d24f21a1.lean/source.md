# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Constructor.Variant5b11cd77338fa651545a753749fd8e48e990fd1341d93d9f6c0bf096d24f21a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d0ea2b25bc50496b7bfbc01ee35613553041453` · SHA-256 `dfa71c518bb72528a753c64c090af971ee31257fe21e65fe67295e4959f0d9b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MConstructorCore.Variantcc931a3304b9d7dc5b149bf5dde42b0f529a78ff3dac73697321e695af009fcd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc931a3304b9d7dc5b149bf5dde42b0f529a78ff3dac73697321e695af009fcd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MConstructorCore.Variantcc931a3304b9d7dc5b149bf5dde42b0f529a78ff3dac73697321e695af009fcd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cc931a3304b9d7dc5b149bf5dde42b0f529a78ff3dac73697321e695af009fcd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Constructor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Std.Tactic.Do.Syntax
public import Lean.Elab.Tactic.Do.ProofMode.MGoal


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MConstructorCore.Variantcc931a3304b9d7dc5b149bf5dde42b0f529a78ff3dac73697321e695af009fcd

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do
open Lean Elab Tactic Meta

def mConstructorCore (mvar : MVarId) : MetaM (MVarId × MVarId) := do
  let g ← instantiateMVars <| ← mvar.getType
  let some goal := parseMGoal? g | throwError "not in proof mode"

  let mkApp3 (.const ``SPred.and _) σs L R := goal.target | throwError "target is not SPred.and"

  let leftGoal ← mkFreshExprSyntheticOpaqueMVar {goal with target := L}.toExpr
  let rightGoal ← mkFreshExprSyntheticOpaqueMVar {goal with target := R}.toExpr
  mvar.assign (mkApp6 (mkConst ``SPred.and_intro [goal.u]) σs goal.hyps L R leftGoal rightGoal)
  return (leftGoal.mvarId!, rightGoal.mvarId!)

@[builtin_tactic Lean.Parser.Tactic.mconstructor]
def elabMConstructor : Tactic | _ => do
  let mvar ← getMainGoal
  mvar.withContext do
  let (leftGoal, rightGoal) ← mConstructorCore mvar
  replaceMainGoal [leftGoal, rightGoal]
```
