# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Says.Variant3d0c0e58670ec460948d7864c2456fc900b992031cc9fe7d3faf97d427e26cb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05060644501555b77b929902bb68fb80ec643d60` · SHA-256 `06b7607efd34b73ee36f383feffccaa4c2eee5d5fb1336f772f2f4e8b7065d32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseAsTacticSeq.Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ParseAsTacticSeq.Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/Says.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Liesinger. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Liesinger
-/
import Std.Data.String.Basic
import Std.Tactic.GuardMsgs
import Qq.Match

/-!
# The `says` tactic combinator.

If you write `X says`, where `X` is a tactic that produces a "Try this: Y" message,
then you will get a message "Try this: X says Y".
Once you've clicked to replace `X says` with `X says Y`,
afterwards `X says Y` will only run `Y`.

The typical usage case is:
```
simp? [X] says simp only [X, Y, Z]
```
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseAsTacticSeq.Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6

open Lean Elab Tactic
open Std.Tactic.TryThis

namespace Mathlib.Tactic.Says

register_option says.verify : Bool :=
  { defValue := false
    group := "says"
    descr := "For every appearance of the `X says Y` combinator, " ++
      "re-verify that running `X` produces `Try this: Y`." }

register_option says.no_verify_in_CI : Bool :=
  { defValue := false
    group := "says"
    descr := "Disable reverification, even if `the `CI` environment variable is set." }

open Parser Tactic

/-- This is a slight modification of `Parser.runParserCategory`. -/
def parseAsTacticSeq (env : Environment) (input : String) (fileName := "<input>") :
    Except String (TSyntax ``tacticSeq) :=
  let p := andthenFn whitespace Tactic.tacticSeq.fn
  let ictx := mkInputContext input fileName
  let s := p.run ictx { env, options := {} } (getTokenTable env) (mkParserState input)
  if s.hasError then
    Except.error (s.toErrorMsg ictx)
  else if input.atEnd s.pos then
    Except.ok ⟨s.stxStack.back⟩
  else
    Except.error ((s.mkError "end of input").toErrorMsg ictx)

/--
Run `evalTactic`, capturing any new messages.
The optional `only` argument allows selecting which messages should be captured,
or left in the message log.
-/
def evalTacticCapturingMessages (tac : TSyntax `tactic) (only : Message → Bool := fun _ => true) :
    TacticM (List Message) := do
  let mut msgs ← modifyGetThe Core.State fun st => (st.messages, { st with messages := {} })
  try
    evalTactic tac
    let (capture, leave) := (← getThe Core.State).messages.msgs.toList.partition only
    msgs := ⟨leave.foldl (fun m => m.push) msgs.msgs⟩
    return capture
  catch e =>
    msgs := msgs ++ (← getThe Core.State).messages
    throw e
  finally
    modifyThe Core.State fun st => { st with messages := msgs }

/--
Run `evalTactic`, capturing any new info messages.
-/
def evalTacticCapturingInfo (tac : TSyntax `tactic) : TacticM (List Message) :=
  evalTacticCapturingMessages tac fun m => match m.severity with | .information => true | _ => false

/--
Run `evalTactic`, capturing a "Try this:" message and converting it back to syntax.
-/
def evalTacticCapturingTryThis (tac : TSyntax `tactic) : TacticM (TSyntax ``tacticSeq) := do
  let msg ← match ← evalTacticCapturingInfo tac with
  | [] => throwError m!"Tactic `{tac}` did not produce any messages."
  | [msg] => msg.toString
  | _ => throwError m!"Tactic `{tac}` produced multiple messages."
  let tryThis ← match msg.dropPrefix? "Try this: " with
  | none => throwError m!"Tactic output did not begin with 'Try this:': {msg}"
  | some S => pure S.toString
  match parseAsTacticSeq (← getEnv) tryThis with
  | .ok stx => return stx
  | .error err => throwError m!"Failed to parse tactic output: {tryThis}\n{err}"

syntax (name := says) tactic " says" (colGt tacticSeq)? : tactic

elab_rules : tactic
  | `(tactic| $tac:tactic says%$tk $[$result:tacticSeq]?) => do
  let verify := says.verify.get (← getOptions) ||
    !says.no_verify_in_CI.get (← getOptions) && (← IO.getEnv "CI").isSome
  match result, verify with
  | some _, true
  | none, _ =>
    let stx ← evalTacticCapturingTryThis tac
    match result with
    | some r =>
        let stx' := (← Lean.PrettyPrinter.ppTactic ⟨Syntax.stripPos stx⟩).pretty
        let r' := (← Lean.PrettyPrinter.ppTactic ⟨Syntax.stripPos r⟩).pretty
        if stx' != r' then
          throwError m!"Tactic `{tac}` produced `{stx'}`,\nbut was expecting it to produce `{r'}`!"
    | none =>
    addSuggestion tk (← `(tactic| $tac says $stx)) (origSpan? := (← `(tactic| $tac says)))
  | some result, false =>
    evalTactic result

initialize Std.Linter.UnreachableTactic.addIgnoreTacticKind `Mathlib.Tactic.Says.says
````
