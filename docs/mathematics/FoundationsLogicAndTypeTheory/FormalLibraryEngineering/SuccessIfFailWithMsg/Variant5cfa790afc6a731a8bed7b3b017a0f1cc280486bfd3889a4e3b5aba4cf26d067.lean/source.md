# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessIfFailWithMsg.Variant5cfa790afc6a731a8bed7b3b017a0f1cc280486bfd3889a4e3b5aba4cf26d067

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c86eba91cbd8088d26d859846720ce2f4ad2d71` · SHA-256 `fd7b7ce36a0e203e19c7650639a5d45d532af7748fe48892c116f61641513ec3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessIfFailWithMessage.Variant96f1797a52dad960e60510e319cc54dac8087bb48584b65938f408340037b1c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96f1797a52dad960e60510e319cc54dac8087bb48584b65938f408340037b1c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SuccessIfFailWithMessage.Variant96f1797a52dad960e60510e319cc54dac8087bb48584b65938f408340037b1c6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"96f1797a52dad960e60510e319cc54dac8087bb48584b65938f408340037b1c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/SuccessIfFailWithMsg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Simon Hudon, Sébastien Gouëzel, Kim Morrison, Thomas Murrills
-/
import Lean.Elab.Eval
import Lean.Elab.Tactic.BuiltinTactic
import Mathlib.Init
import Lean.Meta.Tactic.TryThis

/-!
# Success If Fail With Message

This file implements a tactic that succeeds only if its argument fails with a specified message.

It's mostly useful in tests, where we want to make sure that tactics fail in certain ways under
circumstances.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessIfFailWithMessage.Variant96f1797a52dad960e60510e319cc54dac8087bb48584b65938f408340037b1c6

open Lean Meta Elab Tactic

namespace Mathlib.Tactic

/-- `success_if_fail_with_msg msg tacs` runs `tacs` and succeeds only if they fail with the message
`msg`.

`msg` can be any term that evaluates to an explicit `String`. -/
syntax (name := successIfFailWithMsg) "success_if_fail_with_msg " term:max tacticSeq : tactic

/-- Evaluates `tacs` and succeeds only if `tacs` both fails and throws an error equal (as a string)
to `msg`. -/
def successIfFailWithMessage {s α : Type} {m : Type → Type} [Monad m] [MonadLiftT BaseIO m]
    [MonadLiftT MetaM m] [MonadBacktrack s m] [MonadError m] (msg : String) (tacs : m α)
    (msgref : Option Syntax := none) (ref : Option Syntax := none) : m Unit := do
  let s ← saveState
  let err ←
    try _ ← tacs; pure none
    catch err => pure (some (← err.toMessageData.toString))
  restoreState s
  if let some err := err then
    unless msg.trim == err.trim do
      if let .some msgref := msgref then
        let suggestion : TryThis.Suggestion :=
          { suggestion := s!"\"{err.trim}\""
            toCodeActionTitle? := .some (fun _ => "Update with tactic error message")}
        TryThis.addSuggestion msgref suggestion (header := "Update with tactic error message: ")

      if let some ref := ref then
        throwErrorAt ref "tactic '{ref}' failed, but got different error message:\n\n{err}"
      else
        throwError "tactic failed, but got different error message:\n\n{err}"
  else
    if let some ref := ref then
      throwErrorAt ref "tactic '{ref}' succeeded, but was expected to fail"
    else
      throwError "tactic succeeded, but was expected to fail"

elab_rules : tactic
| `(tactic| success_if_fail_with_msg $msg:term $tacs:tacticSeq) =>
  Term.withoutErrToSorry <| withoutRecover do
    let msg' ← unsafe Term.evalTerm String (.const ``String []) msg
    successIfFailWithMessage msg' (evalTacticSeq tacs) msg tacs

end Mathlib.Tactic
```
