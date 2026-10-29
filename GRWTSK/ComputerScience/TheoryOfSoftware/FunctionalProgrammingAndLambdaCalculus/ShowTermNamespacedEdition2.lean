-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variant9237b26b6e0558e47291c7664b1e0c65cd18ed18170e8b1fd2ffec760ddfd373","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9237b26b6e0558e47291c7664b1e0c65cd18ed18170e8b1fd2ffec760ddfd373","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ElabRules.Variant9237b26b6e0558e47291c7664b1e0c65cd18ed18170e8b1fd2ffec760ddfd373","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9237b26b6e0558e47291c7664b1e0c65cd18ed18170e8b1fd2ffec760ddfd373","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/ShowTerm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Mario Carneiro
-/
import Lean.Elab.ElabRules
import Std.Tactic.TryThis


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variant9237b26b6e0558e47291c7664b1e0c65cd18ed18170e8b1fd2ffec760ddfd373

namespace Std.Tactic
open Lean Elab Tactic TryThis

/--
`show_term tac` runs `tac`, then prints the generated term in the form
"exact X Y Z" or "refine X ?_ Z" if there are remaining subgoals.

(For some tactics, the printed term will not be human readable.)
-/
elab (name := showTermTac) tk:"show_term " t:tacticSeq : tactic => withMainContext do
  let g ← getMainGoal
  evalTactic t
  addExactSuggestion tk (← instantiateMVars (mkMVar g)).headBeta (origSpan? := ← getRef)

/-- Implementation of `show_term`. -/
local elab (name := showTermImpl) tk:"show_term_impl " t:term : term <= ty => do
  let e ← Term.elabTermEnsuringType t ty
  Term.synthesizeSyntheticMVarsNoPostponing
  addTermSuggestion tk (← instantiateMVars e).headBeta (origSpan? := ← getRef)
  pure e

/--
`show_term e` elaborates `e`, then prints the generated term.

(For some tactics, the printed term will not be human readable.)
-/
macro (name := showTerm) tk:"show_term " t:term : term =>
  `(no_implicit_lambda% (show_term_impl%$tk $t))

/--
The command `by?` will print a suggestion for replacing the proof block with a proof term
using `show_term`.
-/
macro (name := by?) tk:"by?" t:tacticSeq : term => `(show_term%$tk by%$tk $t)
