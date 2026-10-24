-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Propagator.Variantde1871001c52197581b1016641caffb4accae5177eec8c1a68adb0e79dce140d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de1871001c52197581b1016641caffb4accae5177eec8c1a68adb0e79dce140d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Propagator.Variantde1871001c52197581b1016641caffb4accae5177eec8c1a68adb0e79dce140d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"de1871001c52197581b1016641caffb4accae5177eec8c1a68adb0e79dce140d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Init.Grind.Propagator
import Lean.Meta.Tactic.Grind.Arith.Cutsat.LeCnstr
import Lean.Meta.Tactic.Grind.Arith.Linear.IneqCnstr
public import Lean.Meta.Tactic.Grind.PropagatorAttr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Propagator.Variantde1871001c52197581b1016641caffb4accae5177eec8c1a68adb0e79dce140d

public section
namespace Lean.Meta.Grind.Arith

builtin_grind_propagator propagateLE ↓LE.le := fun e => do
  if (← isEqTrue e) then
    Cutsat.propagateLe e (eqTrue := true)
    Linear.propagateIneq e (eqTrue := true)
  else if (← isEqFalse e) then
    Cutsat.propagateLe e (eqTrue := false)
    Linear.propagateIneq e (eqTrue := false)

builtin_grind_propagator propagateLT ↓LT.lt := fun e => do
  if (← isEqTrue e) then
    Linear.propagateIneq e (eqTrue := true)
    Cutsat.propagateLt e (eqTrue := true)
  else if (← isEqFalse e) then
    Linear.propagateIneq e (eqTrue := false)
    Cutsat.propagateLt e (eqTrue := false)

end Lean.Meta.Grind.Arith
