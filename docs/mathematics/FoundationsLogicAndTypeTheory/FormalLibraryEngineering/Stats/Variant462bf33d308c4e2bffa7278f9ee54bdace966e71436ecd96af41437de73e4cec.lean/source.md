# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stats.Variant462bf33d308c4e2bffa7278f9ee54bdace966e71436ecd96af41437de73e4cec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14c4b61d662a64b7efb36da842e1940954cb3dd2` · SHA-256 `d59a3590ac7bcba87e2ce36efc2c5b48e530aa964691232ba9a57be44a8ea7bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalStats.Variantbc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GoalStats.Variantbc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Tree/Stats.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.TreeM
import Aesop.Tree.Traversal


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalStats.Variantbc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc

public section

namespace Aesop

def Goal.stats (g : Goal) : TreeM GoalStats := do
  let (goal, metaState) ← g.currentGoalAndMetaState (← getRootMetaState)
  let decl := metaState.meta.mctx.getDecl goal
  let lctxSize := decl.lctx.foldl (init := 0) fun acc ldecl =>
    if ldecl.isImplementationDetail then acc else acc + 1
  return {
    goalId := g.id.toNat
    goalKind := if g.isNormal then .postNorm else .preNorm
    forwardStateStats := g.forwardState.stats
    depth := g.depth
    lctxSize
  }

def collectGoalStatsIfEnabled : TreeM Unit := do
  if ← enableStats then
    let go : StateRefT (Array GoalStats) TreeM Unit :=
      postTraverseDown
        (fun gref => do
          let stats ← (← gref.get).stats
          modify (·.push stats))
        (fun _rref => return)
        (fun _cref => return)
        (.mvarCluster (← getThe Tree).root)
    let goalStats ← (·.2) <$> go.run #[]
    modifyStats ({ · with goalStats })

end Aesop
```
