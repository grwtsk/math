# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SearchM.Variant2bf9f6f18e75be55667c7f3065c06b224931f2100bd399f33becf4b9cf6c97e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97751f5ddea26d577cb12f50b955d9c17abac7c4` · SHA-256 `cee84f943450b64f1391fd3be07d60ec035b1e345591cad9e4f181060949ff90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormSimpContext.Variant2fa61f1477d9df307637caa0fbe29de553b6dc7a83d2ad9dad4845078ef6fbee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fa61f1477d9df307637caa0fbe29de553b6dc7a83d2ad9dad4845078ef6fbee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NormSimpContext.Variant2fa61f1477d9df307637caa0fbe29de553b6dc7a83d2ad9dad4845078ef6fbee","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2fa61f1477d9df307637caa0fbe29de553b6dc7a83d2ad9dad4845078ef6fbee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Search/SearchM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Search.Queue.Class
public import Aesop.Tree.TreeM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormSimpContext.Variant2fa61f1477d9df307637caa0fbe29de553b6dc7a83d2ad9dad4845078ef6fbee

public section

open Lean
open Lean.Meta

namespace Aesop

structure NormSimpContext where
  toContext : Simp.Context
  enabled : Bool
  useHyps : Bool
  configStx? : Option Term
  simprocs : Simp.SimprocsArray
  deriving Inhabited

namespace SearchM

structure Context where
  ruleSet : LocalRuleSet
  normSimpContext : NormSimpContext
  options : Aesop.Options'
  deriving Nonempty

structure State (Q) [Aesop.Queue Q] where
  iteration : Iteration
  queue : Q
  maxRuleApplicationDepthReached : Bool
  deriving Inhabited

end SearchM

abbrev SearchM Q [Aesop.Queue Q] :=
  ReaderT SearchM.Context $ StateRefT (SearchM.State Q) $
    StateRefT TreeM.State BaseM

variable [Aesop.Queue Q]

namespace SearchM

-- Generate specialized pure/bind implementations so we don't need to optimise
-- them on the fly at each use site.
instance : Monad (SearchM Q) :=
  { (inferInstance : Monad (SearchM Q)) with }

instance : MonadRef (SearchM Q) :=
  { (inferInstance : MonadRef (SearchM Q)) with }

instance : Inhabited (SearchM Q α) where
  default := failure

instance : MonadState (State Q) (SearchM Q) :=
  { (inferInstance : MonadStateOf (State Q) (SearchM Q)) with }

instance : MonadReader Context (SearchM Q) :=
  { (inferInstance : MonadReaderOf Context (SearchM Q)) with }

instance : MonadLift TreeM (SearchM Q) where
  monadLift x := do
    let ctx := {
      currentIteration := (← get).iteration
      ruleSet := (← read).ruleSet
    }
    liftM $ ReaderT.run x ctx

protected def run' (ctx : SearchM.Context) (σ : SearchM.State Q) (tree : Tree)
    (x : SearchM Q α) : BaseM (α × SearchM.State Q × Tree) := do
  let ((a, σ), t) ←
    x.run ctx |>.run σ |>.run { tree }
  return (a, σ, t.tree)

protected def run (ruleSet : LocalRuleSet) (options : Aesop.Options')
    (simpConfig : Simp.Config) (simpConfigStx? : Option Term)
    (goal : MVarId) (x : SearchM Q α) : BaseM (α × State Q × Tree) := do
  let t ← mkInitialTree goal ruleSet
  let normSimpContext := {
    toContext := ← Simp.mkContext simpConfig (simpTheorems := ruleSet.simpTheoremsArray.map (·.snd))
      (congrTheorems := ← getSimpCongrTheorems)
    simprocs := ruleSet.simprocsArray.map (·.snd)
    configStx? := simpConfigStx?
    enabled := options.enableSimp
    useHyps := options.useSimpAll
  }
  let ctx := { ruleSet, options, normSimpContext }
  let #[rootGoal] := (← t.root.get).goals
    | throwError "aesop: internal error: root mvar cluster does not contain exactly one goal."
  let state := {
    queue := ← Queue.init' #[rootGoal]
    iteration := Iteration.one
    maxRuleApplicationDepthReached := false
  }
  x.run' ctx state t

end SearchM

def getTree : SearchM Q Tree :=
  getThe Tree

def setTree : Tree → SearchM Q Unit :=
  setThe Tree

def modifyTree : (Tree → Tree) → SearchM Q Unit :=
  modifyThe Tree

def getIteration : SearchM Q Iteration :=
  return (← get).iteration

def incrementIteration : SearchM Q Unit :=
  modify λ s => { s with iteration := s.iteration.succ }

def popGoal? : SearchM Q (Option GoalRef) := do
  let s ← get
  let (goal?, queue) ← Queue.popGoal s.queue
  set { s with queue }
  return goal?

def enqueueGoals (gs : Array GoalRef) : SearchM Q Unit := do
  let s ← get
  let queue ← Queue.addGoals s.queue gs
  set { s with queue }

def setMaxRuleApplicationDepthReached : SearchM Q Unit :=
  modify λ s => { s with maxRuleApplicationDepthReached := true }

def wasMaxRuleApplicationDepthReached : SearchM Q Bool :=
  return (← get).maxRuleApplicationDepthReached

end Aesop
```
