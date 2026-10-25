# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exfalso.Variant964a9aaa4fe3a213feaf92adb177395e49709573cb557f37977fb619c298770a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11626d606e161ce4cbcd33bbf147ad6a0f34375e` · SHA-256 `ae4a9e2564ac7ee863ba9e033388c063a655e1056ab49944acd94f053edc02dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FalseProp.Variant4a644e69365001f8cbbca7dd97ace22279ad12563de4fa567fe65b9d8510e976","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a644e69365001f8cbbca7dd97ace22279ad12563de4fa567fe65b9d8510e976","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FalseProp.Variant4a644e69365001f8cbbca7dd97ace22279ad12563de4fa567fe65b9d8510e976","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4a644e69365001f8cbbca7dd97ace22279ad12563de4fa567fe65b9d8510e976","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Exfalso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FalseProp.Variant4a644e69365001f8cbbca7dd97ace22279ad12563de4fa567fe65b9d8510e976

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do
open Lean Elab Tactic Meta


-- set_option pp.all true in
-- #check ⌜False⌝
private def falseProp (u : Level) (σs : Expr) : Expr := -- ⌜False⌝ standing in for an empty conjunction of hypotheses
  SPred.mkPure u σs (mkConst ``False)

@[builtin_tactic Lean.Parser.Tactic.mexfalso]
def elabMExfalso : Tactic | _ => do
  let mvar ← getMainGoal
  mvar.withContext do
  let g ← instantiateMVars <| ← mvar.getType
  let some goal := parseMGoal? g | throwError "not in proof mode"
  let newGoal := { goal with target := falseProp goal.u goal.σs }
  let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
  let prf := mkApp4 (mkConst ``SPred.exfalso [goal.u]) goal.σs goal.hyps goal.target m
  mvar.assign prf
  replaceMainGoal [m.mvarId!]
```
