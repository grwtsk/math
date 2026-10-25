-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variantf98b19966930a809e6784d95d9a2e8ee02339f7084465e00b76d37918f0b3f14","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f98b19966930a809e6784d95d9a2e8ee02339f7084465e00b76d37918f0b3f14","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabTerm.Variantf98b19966930a809e6784d95d9a2e8ee02339f7084465e00b76d37918f0b3f14","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f98b19966930a809e6784d95d9a2e8ee02339f7084465e00b76d37918f0b3f14","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ClearExclamation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joshua Clune. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joshua Clune
-/
import Mathlib.Init
import Lean.Elab.Tactic.ElabTerm

/-! # `clear!` tactic -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variantf98b19966930a809e6784d95d9a2e8ee02339f7084465e00b76d37918f0b3f14

namespace Mathlib.Tactic
open Lean Meta Elab.Tactic

/-- A variant of `clear` which clears not only the given hypotheses but also any other hypotheses
    depending on them -/
elab (name := clear!) "clear!" hs:(ppSpace colGt ident)* : tactic => do
  let fvarIds ← getFVarIds hs
  liftMetaTactic1 fun goal ↦ do
    goal.tryClearMany <| (← collectForwardDeps (fvarIds.map .fvar) true).map (·.fvarId!)

end Mathlib.Tactic
