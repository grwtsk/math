-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Varianta86c542ec759967936d4c812e1a869bccc42d370e9409ed2390969801bd92903","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a86c542ec759967936d4c812e1a869bccc42d370e9409ed2390969801bd92903","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Ext.Varianta86c542ec759967936d4c812e1a869bccc42d370e9409ed2390969801bd92903","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a86c542ec759967936d4c812e1a869bccc42d370e9409ed2390969801bd92903","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/NormCast/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/

import Std.Tactic.NormCast.Ext
import Lean.Elab.ElabRules


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Varianta86c542ec759967936d4c812e1a869bccc42d370e9409ed2390969801bd92903

open Lean Meta
/-- `add_elim foo` registers `foo` as an elim-lemma in `norm_cast`. -/
local elab "add_elim " id:ident : command =>
  Elab.Command.liftCoreM do MetaM.run' do
    Std.Tactic.NormCast.addElim (← resolveGlobalConstNoOverload id)

add_elim ne_eq

attribute [coe] Fin.val Array.ofSubarray
