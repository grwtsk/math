# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Queue.Variant82ee382a672c1e9c8065e6bbd1e75758e2750ba16525b0ad42aac4ce00ef0620

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c3f4ba12d6f12bc928ddd9b3f75e2233544f433` · SHA-256 `734a11eee3fe78e1969afc45d6dc90867afd261ff542aea6e9d9facc1a40d279`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActiveGoal.Variant3ef26820f9353eb26342c06a2388b743422d0bc5f40fa99dc8af9304311ac952","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ef26820f9353eb26342c06a2388b743422d0bc5f40fa99dc8af9304311ac952","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ActiveGoal.Variant3ef26820f9353eb26342c06a2388b743422d0bc5f40fa99dc8af9304311ac952","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3ef26820f9353eb26342c06a2388b743422d0bc5f40fa99dc8af9304311ac952","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Search/Queue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Search.Queue.Class
public import Batteries.Data.BinomialHeap.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActiveGoal.Variant3ef26820f9353eb26342c06a2388b743422d0bc5f40fa99dc8af9304311ac952

public section

open Lean
open Batteries (BinomialHeap)

namespace Aesop.BestFirstQueue

structure ActiveGoal where
  goal : GoalRef
  priority : Percent
  lastExpandedInIteration : Iteration
    -- Iteration of the search loop when this goal was last expanded (counting
    -- from 1), or 0 if the goal was never expanded.
  addedInIteration : Iteration
    -- Iteration of the search loop when this goal was added. 0 for the root
    -- goal.

namespace ActiveGoal

-- We prioritise active goals lexicographically by the following criteria:
--
--  1. Goals with higher priority have priority.
--  2. Goals which were last expanded in an earlier iteration have priority.
--  3. Goals which were added in an earlier iteration have priority.
--
-- The last two criteria ensure a very weak form of fairness: if a search
-- produces infinitely many goals with the same success probability, each of
-- them will be expanded infinitely often.
--
-- Note that since we use a min-queue, `le x y` means `x` has priority over `y`.
protected def le (g h : ActiveGoal) : Bool :=
  g.priority > h.priority ||
    (g.priority == h.priority &&
      (g.lastExpandedInIteration ≤ h.lastExpandedInIteration ||
        (g.lastExpandedInIteration == h.lastExpandedInIteration &&
          g.addedInIteration ≤ h.addedInIteration)))

protected def ofGoalRef (gref : GoalRef) : BaseIO ActiveGoal := do
  let g ← gref.get
  return {
    goal := gref
    priority := g.priority
    lastExpandedInIteration := g.lastExpandedInIteration
    addedInIteration := g.addedInIteration
  }

end BestFirstQueue.ActiveGoal

@[expose] def BestFirstQueue :=
  BinomialHeap BestFirstQueue.ActiveGoal BestFirstQueue.ActiveGoal.le

namespace BestFirstQueue

protected def init : BestFirstQueue :=
  BinomialHeap.empty

protected def addGoals (q : BestFirstQueue) (grefs : Array GoalRef) :
    BaseIO BestFirstQueue :=
  grefs.foldlM (init := q) λ q gref =>
    return q.insert (← ActiveGoal.ofGoalRef gref)

protected def popGoal (q : BestFirstQueue) : Option GoalRef × BestFirstQueue :=
  match q.deleteMin with
  | none => (none, q)
  | some (ag, q) => (some ag.goal, q)

end BestFirstQueue

instance : Queue BestFirstQueue where
  init := return BestFirstQueue.init
  addGoals := BestFirstQueue.addGoals
  popGoal q := return BestFirstQueue.popGoal q


structure LIFOQueue where
  goals : Array GoalRef

namespace LIFOQueue

protected def init : LIFOQueue :=
  ⟨#[]⟩

protected def addGoals (q : LIFOQueue) (grefs : Array GoalRef) : LIFOQueue :=
  ⟨q.goals ++ grefs.reverse⟩

protected def popGoal (q : LIFOQueue) : Option GoalRef × LIFOQueue :=
  match q.goals.back? with
  | some g => (some g, ⟨q.goals.pop⟩)
  | none => (none, q)

instance : Queue LIFOQueue where
  init := return .init
  addGoals q grefs := return q.addGoals grefs
  popGoal q := return q.popGoal

end LIFOQueue


structure FIFOQueue where
  goals : Array GoalRef
  pos : Nat

namespace FIFOQueue

protected def init : FIFOQueue :=
  ⟨#[], 0⟩

protected def addGoals (q : FIFOQueue) (grefs : Array GoalRef) : FIFOQueue :=
  { q with goals := q.goals ++ grefs }

protected def popGoal (q : FIFOQueue) : Option GoalRef × FIFOQueue :=
  if h : q.pos < q.goals.size then
    (some q.goals[q.pos], { q with pos := q.pos + 1 })
  else
    (none, q)

instance : Queue FIFOQueue where
  init := return .init
  addGoals q grefs := return q.addGoals grefs
  popGoal q := return q.popGoal

end FIFOQueue

def Options.queue (opts : Aesop.Options) : Σ Q, Queue Q :=
  match opts.strategy with
  | .bestFirst => ⟨BestFirstQueue, inferInstance⟩
  | .depthFirst => ⟨LIFOQueue, inferInstance⟩
  | .breadthFirst => ⟨FIFOQueue, inferInstance⟩

end Aesop
```
