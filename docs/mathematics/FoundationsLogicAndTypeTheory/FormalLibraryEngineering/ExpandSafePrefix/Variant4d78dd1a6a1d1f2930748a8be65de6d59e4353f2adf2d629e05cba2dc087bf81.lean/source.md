# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpandSafePrefix.Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e832810218c99cf2365d26d8cd257b656585682b` · SHA-256 `ad8e7f8d55a26c1ed75f7b0a5317f1df1485308d4b371e9a4127f48cab9b48b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeExpansionMState.Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SafeExpansionMState.Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Search/ExpandSafePrefix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Search.Expansion
import Aesop.Exception


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeExpansionMState.Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d

public section

open Lean Lean.Meta

namespace Aesop

declare_aesop_exception
  safeExpansionFailedException safeExpansionFailedExceptionId
  isSafeExpansionFailedException

structure SafeExpansionM.State where
  numRapps : Nat := 0

abbrev SafeExpansionM Q [Queue Q] := StateRefT SafeExpansionM.State (SearchM Q)

variable [Queue Q]

private def Goal.isSafeExpanded (g : Goal) : BaseIO Bool :=
  (pure g.unsafeRulesSelected) <||> g.hasSafeRapp

-- Typeclass inference struggles with inferring Q, so we have to lift
-- explicitly.
private def liftSearchM (x : SearchM Q α) : SafeExpansionM Q α :=
  x

mutual
  private partial def expandSafePrefixGoal (gref : GoalRef) :
      SafeExpansionM Q Unit := do
    let g ← gref.get
    if g.state.isProven then
      aesop_trace[steps] "Skipping safe rule expansion of goal {g.id} since it is already proven."
      return
    if ! (← g.isSafeExpanded) then
      aesop_trace[steps] "Applying safe rules to goal {g.id}."
      if ← liftSearchM $ normalizeGoalIfNecessary gref then
          -- Goal was already proved by normalisation.
          return
      let maxRapps := (← read).options.maxSafePrefixRuleApplications
      if maxRapps > 0 && (← getThe SafeExpansionM.State).numRapps > maxRapps then
        throw safeExpansionFailedException
      discard $ liftSearchM $ runFirstSafeRule gref
      modifyThe SafeExpansionM.State λ s =>
        { s with numRapps := s.numRapps + 1 }
    else
      aesop_trace[steps] "Skipping safe rule expansion of goal {g.id} since safe rules have already been applied."
    let g ← gref.get
    if g.state.isProven then
      return
    let safeRapps ← g.safeRapps
    if h₁ : 0 < safeRapps.size then
      if safeRapps.size > 1 then
        throwError "aesop: internal error: goal {g.id} has multiple safe rapps"
      expandFirstPrefixRapp safeRapps[0]

  private partial def expandFirstPrefixRapp (rref : RappRef) :
      SafeExpansionM Q Unit := do
    (← rref.get).children.forM expandSafePrefixMVarCluster

  private partial def expandSafePrefixMVarCluster (cref : MVarClusterRef) :
      SafeExpansionM Q Unit := do
    (← cref.get).goals.forM expandSafePrefixGoal
end

def expandSafePrefix : SearchM Q Bool := do
  aesop_trace[steps] "Expanding safe subtree of the root goal."
  try
    expandSafePrefixGoal (← getRootGoal) |>.run' {}
    return true
  catch e =>
    if isSafeExpansionFailedException e then
      return false
    else
      throw e

end Aesop
```
