# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EmbeddedConstraint.Variant0ecc77b48644e375034657a52eb39e773604ee34df5ef925a80665b8bdf99bd4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c5ab3a2808fa1f15a028468578389be56e1ffcd` · SHA-256 `af2661833ea65c19de53a6ebe001b8c3d0844c660ea0a2199766ce3047e6b439`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EmbeddedConstraintPass.Variantfbc8c890758d69c5e368046b09247f4fcb0ed536b3ed54740249459c9f4482b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbc8c890758d69c5e368046b09247f4fcb0ed536b3ed54740249459c9f4482b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EmbeddedConstraintPass.Variantfbc8c890758d69c5e368046b09247f4fcb0ed536b3ed54740249459c9f4482b8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fbc8c890758d69c5e368046b09247f4fcb0ed536b3ed54740249459c9f4482b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Normalize/EmbeddedConstraint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Normalize.Bool
public import Lean.Meta.Tactic.BVDecide.Normalize.Basic

/-!
This module contains the implementation of the embedded constraint substitution pass in the fixpoint
pipeline, substituting hypotheses of the form `h : x = true` in other hypotheses.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EmbeddedConstraintPass.Variantfbc8c890758d69c5e368046b09247f4fcb0ed536b3ed54740249459c9f4482b8

namespace Lean.Meta.Tactic.BVDecide
namespace Normalize

/--
Substitute embedded constraints. That is look for hypotheses of the form `h : x = true` and use
them to substitute occurrences of `x` within other hypotheses. Additionally this drops all
redundant top level hypotheses.
-/
public def embeddedConstraintPass : Pass where
  name := `embeddedConstraintSubstitution
  run' goal := do
    goal.withContext do
      let hyps ← getPropHyps
      let mut relevantHyps : SimpTheoremsArray := #[]
      let mut seen : Std.HashSet Expr := {}
      let mut duplicates : Array FVarId := #[]
      for hyp in hyps do
        let typ ← hyp.getType
        let_expr Eq _ lhs rhs := typ | continue
        let_expr Bool.true := rhs | continue
        if seen.contains lhs then
          duplicates := duplicates.push hyp
        else
          seen := seen.insert lhs
          let localDecl ← hyp.getDecl
          let proof := localDecl.toExpr
          relevantHyps ← relevantHyps.addTheorem (.fvar hyp) proof

      let goal ← goal.tryClearMany duplicates

      if relevantHyps.isEmpty then
        return goal

      let cfg ← PreProcessM.getConfig
      let targets ← goal.withContext getPropHyps
      let simpCtx ← Simp.mkContext
        (config := {
          failIfUnchanged := false,
          implicitDefEqProofs := false, -- leanprover/lean4/pull/7509
          maxSteps := cfg.maxSteps,
          instances := true
        })
        (simpTheorems := relevantHyps)
        (congrTheorems := (← getSimpCongrTheorems))
      let ⟨result?, _⟩ ← simpGoal goal (ctx := simpCtx) (fvarIdsToSimp := targets)
      let some (_, newGoal) := result? | return none
      return newGoal


end Normalize
end Lean.Meta.Tactic.BVDecide
```
