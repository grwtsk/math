# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantb48e794e13c8066c1cd1de9f9d03aa61fbd6583b6339623c6cb92dfd3c8af5f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73e5cac9fae676d08b3d57c790b9abc1b77a6920` · SHA-256 `c919a3ff55469ef21ccf43d59d94fbd8a481c19202c2de0697f0c9356c38869d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplaceFVar.Variantfec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReplaceFVar.Variantfec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Util/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Basic
import Lean.Meta.Tactic.Assert


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplaceFVar.Variantfec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b

public section

open Lean Lean.Meta Lean.Elab.Tactic

namespace Aesop

/--
A `MetaM` version of the `replace` tactic. If `fvarId` refers to the
hypothesis `h`, this tactic asserts a new hypothesis `h : type` with proof
`proof : type` and then tries to clear `fvarId`. Unlike `replaceLocalDecl`,
`replaceFVar` always adds the new hypothesis at the end of the local context.

`replaceFVar` returns the new goal, the `FVarId` of the newly asserted
hypothesis and whether the old hypothesis was cleared.
-/
def replaceFVar (goal : MVarId) (fvarId : FVarId) (type : Expr) (proof : Expr) :
    MetaM (MVarId × FVarId × Bool) := do
  let userName ← goal.withContext $ fvarId.getUserName
  let preClearGoal ← goal.assert userName type proof
  let goal ← preClearGoal.tryClear fvarId
  let clearSuccess := preClearGoal != goal
  let (newFVarId, goal) ← intro1Core goal (preserveBinderNames := true)
  return (goal, newFVarId, clearSuccess)

/-- Introduce as many binders as possible while unfolding definitions with the
ambient transparency. -/
partial def introsUnfolding (mvarId : MVarId) : MetaM (Array FVarId × MVarId) :=
  run mvarId #[]
where
  run (mvarId : MVarId) (fvars : Array FVarId) : MetaM (Array FVarId × MVarId) :=
    mvarId.withContext do
      let type ← whnf (← mvarId.getType)
      let size := getIntrosSize type
      if 0 < size then
        let (fvars', mvarId') ← mvarId.introN size
        run mvarId' (fvars ++ fvars')
      else
        return (fvars, mvarId)

end Aesop
```
