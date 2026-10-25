-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delta.Varianta58fd3df2128531284f836d20da79fd94c70651a1cd12215d7d7324f97f64477","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a58fd3df2128531284f836d20da79fd94c70651a1cd12215d7d7324f97f64477","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Delta.Varianta58fd3df2128531284f836d20da79fd94c70651a1cd12215d7d7324f97f64477","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a58fd3df2128531284f836d20da79fd94c70651a1cd12215d7d7324f97f64477","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Conv/Delta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Tactic.Delta
public import Lean.Elab.Tactic.Conv.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delta.Varianta58fd3df2128531284f836d20da79fd94c70651a1cd12215d7d7324f97f64477

public section

namespace Lean.Elab.Tactic.Conv
open Meta

@[builtin_tactic Lean.Parser.Tactic.Conv.delta] def evalDelta : Tactic := fun stx => withMainContext do
  let declNames ← stx[1].getArgs.mapM fun stx => realizeGlobalConstNoOverloadWithInfo stx
  let lhsNew ← deltaExpand (← instantiateMVars (← getLhs)) declNames.contains
  changeLhs lhsNew

end Lean.Elab.Tactic.Conv
