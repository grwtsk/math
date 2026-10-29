-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeRef.Variant6b9401204d8b69e878edd762c1212705e326fb1deb8f89b71922377dff666feb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b9401204d8b69e878edd762c1212705e326fb1deb8f89b71922377dff666feb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TreeRef.Variant6b9401204d8b69e878edd762c1212705e326fb1deb8f89b71922377dff666feb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6b9401204d8b69e878edd762c1212705e326fb1deb8f89b71922377dff666feb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Tree/Traversal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.Data


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeRef.Variant6b9401204d8b69e878edd762c1212705e326fb1deb8f89b71922377dff666feb

public section

namespace Aesop

inductive TreeRef
  | goal (gref : GoalRef)
  | rapp (rref : RappRef)
  | mvarCluster (cref : MVarClusterRef)

section

open TreeRef

variable
  {m} [Monad m] [MonadLiftT (ST IO.RealWorld) m]
  (visitGoalPre : GoalRef → m Bool)
  (visitGoalPost : GoalRef → m Unit)
  (visitRappPre : RappRef → m Bool)
  (visitRappPost : RappRef → m Unit)
  (visitMVarClusterPre : MVarClusterRef → m Bool)
  (visitMVarClusterPost : MVarClusterRef → m Unit)

@[specialize]
partial def traverseDown : TreeRef → m Unit
  | goal gref => do
    if ← visitGoalPre gref then
      (← gref.get).children.forM (traverseDown ∘ rapp)
      visitGoalPost gref
  | rapp rref => do
    if ← visitRappPre rref then
      (← rref.get).children.forM (traverseDown ∘ mvarCluster)
      visitRappPost rref
  | mvarCluster cref => do
    if ← visitMVarClusterPre cref then
      (← cref.get).goals.forM (traverseDown ∘ goal)
      visitMVarClusterPost cref

@[specialize]
partial def traverseUp : TreeRef → m Unit
  | goal gref => do
    if ← visitGoalPre gref then
      traverseUp $ mvarCluster (← gref.get).parent
      visitGoalPost gref
  | rapp rref => do
    if ← visitRappPre rref then
      traverseUp $ goal (← rref.get).parent
      visitRappPost rref
  | mvarCluster cref => do
    if ← visitMVarClusterPre cref then
      if let (some parent) := (← cref.get).parent? then
        traverseUp $ rapp parent
      visitMVarClusterPost cref

end

variable [Monad m] [MonadLiftT (ST IO.RealWorld) m]

@[inline]
def preTraverseDown (visitGoal : GoalRef → m Bool)
    (visitRapp : RappRef → m Bool) (visitMVarCluster : MVarClusterRef → m Bool) :
    TreeRef → m Unit :=
  traverseDown
    visitGoal
    (λ _ => pure ())
    visitRapp
    (λ _ => pure ())
    visitMVarCluster
    (λ _ => pure ())

@[inline]
def preTraverseUp (visitGoal : GoalRef → m Bool) (visitRapp : RappRef → m Bool)
    (visitMVarCluster : MVarClusterRef → m Bool) : TreeRef → m Unit :=
  traverseUp
    visitGoal
    (λ _ => pure ())
    visitRapp
    (λ _ => pure ())
    visitMVarCluster
    (λ _ => pure ())

@[inline]
def postTraverseDown (visitGoal : GoalRef → m Unit)
    (visitRapp : RappRef → m Unit) (visitMVarCluster : MVarClusterRef → m Unit) :
    TreeRef → m Unit :=
  traverseDown
    (λ _ => pure true)
    visitGoal
    (λ _ => pure true)
    visitRapp
    (λ _ => pure true)
    visitMVarCluster

@[inline]
def postTraverseUp (visitGoal : GoalRef → m Unit) (visitRapp : RappRef → m Unit)
    (visitMVarCluster : MVarClusterRef → m Unit) : TreeRef → m Unit :=
  traverseUp
    (λ _ => pure true)
    visitGoal
    (λ _ => pure true)
    visitRapp
    (λ _ => pure true)
    visitMVarCluster

end Aesop
