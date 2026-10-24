-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant7d2df0cbc0a6b108ba6f0a01f46e3498bf65899ec1477774ad50a741c68eb559","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d2df0cbc0a6b108ba6f0a01f46e3498bf65899ec1477774ad50a741c68eb559","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Eval.Variant7d2df0cbc0a6b108ba6f0a01f46e3498bf65899ec1477774ad50a741c68eb559","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7d2df0cbc0a6b108ba6f0a01f46e3498bf65899ec1477774ad50a741c68eb559","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ApplyWith.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Init
import Lean.Elab.Eval
import Lean.Elab.Tactic.ElabTerm

/-!
# The `applyWith` tactic
The `applyWith` tactic is like `apply`, but allows passing a custom configuration to the underlying
`apply` operation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant7d2df0cbc0a6b108ba6f0a01f46e3498bf65899ec1477774ad50a741c68eb559

namespace Mathlib.Tactic
open Lean Meta Elab Tactic Term

/--
`apply (config := cfg) e` is like `apply e` but allows you to provide a configuration
`cfg : ApplyConfig` to pass to the underlying `apply` operation.
-/
elab (name := applyWith) "apply" " (" &"config" " := " cfg:term ") " e:term : tactic => do
  let cfg ← unsafe evalTerm ApplyConfig (mkConst ``ApplyConfig) cfg
  evalApplyLikeTactic (·.apply · cfg) e

end Mathlib.Tactic
