-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShortCircuitPass.Variantb8660efec9c336d4f5b336374cfe8a09cfc55539c018765af83c5d62c247b69e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8660efec9c336d4f5b336374cfe8a09cfc55539c018765af83c5d62c247b69e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ShortCircuitPass.Variantb8660efec9c336d4f5b336374cfe8a09cfc55539c018765af83c5d62c247b69e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b8660efec9c336d4f5b336374cfe8a09cfc55539c018765af83c5d62c247b69e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Normalize/ShortCircuit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Tobias Grosser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tobias Grosser
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Normalize.Basic
public import Std.Tactic.BVDecide.Normalize.BitVec

/-!
This module contains the implementation of the short-circuiting pass, which is responsible for
applying short-circuit optimizations for `*`, e.g., translating `x1 * y == x2 * y` to
`!(!x1 == x2 && !x1 * y == x2 * y)`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShortCircuitPass.Variantb8660efec9c336d4f5b336374cfe8a09cfc55539c018765af83c5d62c247b69e

namespace Lean.Meta.Tactic.BVDecide
namespace Normalize

open Std.Tactic.BVDecide.Normalize.BitVec

/--
Responsible for applying short-circuit optimizations for `*`, e.g.,
translating `x1 * y == x2 * y` to `!(!x1 == x2 && !x1 * y == x2 * y)`.
-/
public def shortCircuitPass : Pass where
  name := `shortCircuitPass
  run' goal := do
    goal.withContext do
      let mut theorems : SimpTheoremsArray := #[]
      theorems ← theorems.addTheorem
        (Lean.Meta.Origin.decl ``mul_beq_mul_short_circuit_left)
        (mkConst ``mul_beq_mul_short_circuit_left)
      theorems ← theorems.addTheorem
        (Lean.Meta.Origin.decl ``mul_beq_mul_short_circuit_right)
        (mkConst ``mul_beq_mul_short_circuit_right)

      let simpCtx ← Simp.mkContext
        (config := {
          failIfUnchanged := false,
          zetaDelta := true,
          singlePass := true,
          maxSteps := (← PreProcessM.getConfig).maxSteps
        })
        (simpTheorems := theorems)
        (congrTheorems := (← getSimpCongrTheorems))

      let hyps ← getPropHyps
      let ⟨result?, _⟩ ← simpGoal goal
        (ctx := simpCtx)
        (simprocs := #[])
        (fvarIdsToSimp := hyps)
      let some (_, newGoal) := result? | return none
      return newGoal

end Normalize
end Lean.Meta.Tactic.BVDecide
