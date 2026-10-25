# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Free.Variant75cd518fcde79fdc9b3f58edbb52b2dd6d94934210cca77788276d92b66fac66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0048235b105264911898ee6be38e62094e9a4046` · SHA-256 `b96c9e234b2af4a2e648a3c7b62449295d4e853d59d63e05e57425e0a0560dc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FreeGoalRef.Variant46a55621040a2c41891df504fb8b9d81e9958cd17afb8ecf4472f33c34f4db76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46a55621040a2c41891df504fb8b9d81e9958cd17afb8ecf4472f33c34f4db76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FreeGoalRef.Variant46a55621040a2c41891df504fb8b9d81e9958cd17afb8ecf4472f33c34f4db76","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"46a55621040a2c41891df504fb8b9d81e9958cd17afb8ecf4472f33c34f4db76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Tree/Free.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.TreeM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FreeGoalRef.Variant46a55621040a2c41891df504fb8b9d81e9958cd17afb8ecf4472f33c34f4db76

public section

namespace Aesop

-- In Lean 4, cylic structures -- such as our trees with their parent pointers
-- -- are not freed automatically. This is because the runtime uses reference
-- counting and a parent node and its child, holding references to each other,
-- will always have a reference count ≥ 1. So in order to free a tree, we must
-- break the cycles by removing the parent pointers.

mutual
  variable
    (dummyGoalRef : GoalRef)
    (dummyMVarClusterRef : MVarClusterRef)

  private partial def freeGoalRef (gref : GoalRef) : BaseIO Unit := do
    gref.modify λ g => g.setParent dummyMVarClusterRef
    (← gref.get).children.forM freeRappRef

  private partial def freeRappRef (rref : RappRef) : BaseIO Unit := do
    rref.modify λ r => r.setParent dummyGoalRef
    (← rref.get).children.forM freeMVarClusterRef

  private partial def freeMVarClusterRef (cref : MVarClusterRef) :
      BaseIO Unit := do
    cref.modify λ c => c.setParent none
    (← cref.get).goals.forM freeGoalRef
end

private def mkDummyRefs : BaseIO (GoalRef × MVarClusterRef) := do
  let cref ← IO.mkRef $ by refine' MVarCluster.mk {..} <;> exact default
  let gref ← IO.mkRef $ by refine' Goal.mk { parent := cref, .. } <;> exact default
  return (gref, cref)

def GoalRef.free (gref : GoalRef) : BaseIO Unit := do
  let (dgref, dcref) ← mkDummyRefs
  freeGoalRef dgref dcref gref

def RappRef.free (rref : RappRef) : BaseIO Unit := do
  let (dgref, dcref) ← mkDummyRefs
  freeRappRef dgref dcref rref

def MVarClusterRef.free (cref : MVarClusterRef) : BaseIO Unit := do
  let (dgref, dcref) ← mkDummyRefs
  freeMVarClusterRef dgref dcref cref

def freeTree : TreeM Unit := do
  (← getThe Tree).root.free

end Aesop
```
