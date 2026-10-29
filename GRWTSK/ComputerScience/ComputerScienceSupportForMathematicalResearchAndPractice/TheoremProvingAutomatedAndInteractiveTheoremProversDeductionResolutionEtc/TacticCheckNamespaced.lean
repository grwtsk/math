-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabCheckTactic.Variant39953c50c61a7a102def7d1a5b8d004ca5e5f282c24c5b21c1276efac587a976","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39953c50c61a7a102def7d1a5b8d004ca5e5f282c24c5b21c1276efac587a976","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabCheckTactic.Variant39953c50c61a7a102def7d1a5b8d004ca5e5f282c24c5b21c1276efac587a976","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"39953c50c61a7a102def7d1a5b8d004ca5e5f282c24c5b21c1276efac587a976","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic
import Lean.PrettyPrinter
import Lean.Elab.SyntheticMVars

/-!
# `#check` tactic

This module defines a tactic version of the `#check` command.
While `#check t` is similar to `have := t`, it is a little more convenient
since it elaborates `t` in a more tolerant way and so it can be possible to get a result.
For example, `#check` allows metavariables.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabCheckTactic.Variant39953c50c61a7a102def7d1a5b8d004ca5e5f282c24c5b21c1276efac587a976

namespace Mathlib.Tactic

open Lean Meta Elab Tactic

/--
Tactic version of `Lean.Elab.Command.elabCheck`.
Elaborates `term` without modifying tactic/elab/meta state.
Info messages are placed at `tk`.
-/
def elabCheckTactic (tk : Syntax) (ignoreStuckTC : Bool) (term : Term) : TacticM Unit :=
  withoutModifyingStateWithInfoAndMessages <| withMainContext do
    if let `($_:ident) := term then
      -- show signature for `#check ident`
      try
        for c in (← realizeGlobalConstWithInfos term) do
          addCompletionInfo <| .id term c (danglingDot := false) {} none
          logInfoAt tk <| MessageData.signature c
          return
      catch _ => pure ()  -- identifier might not be a constant but constant + projection
    let e ← Term.elabTerm term none
    Term.synthesizeSyntheticMVarsNoPostponing (ignoreStuckTC := ignoreStuckTC)
    let e ← Term.levelMVarToParam (← instantiateMVars e)
    let type ← inferType e
    if e.isSyntheticSorry then
      return
    logInfoAt tk m!"{e} : {type}"

/--
The `#check t` tactic elaborates the term `t` and then pretty prints it with its type as `e : ty`.

If `t` is an identifier, then it pretty prints a type declaration form
for the global constant `t` instead.
Use `#check (t)` to pretty print it as an elaborated expression.

Like the `#check` command, the `#check` tactic allows stuck typeclass instance problems.
These become metavariables in the output.
-/
elab tk:"#check " colGt term:term : tactic => elabCheckTactic tk true term

end Mathlib.Tactic
