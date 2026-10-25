# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemma.Variant9a0b47b405938e1ce07b78ae2c842ccc27ef4aa22797382ebfee39fd92cad4c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9016ce9ed2763117ec8882cb3b90617680daace3` · SHA-256 `8c660b28822227482800adc80b39746e1f35015f0568478a0a174c3393e31060`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckLangLemmaCmd.Variant20998de2489c19e3e1a0bc5eadb03e3d0344aaaeb5ca84196629bba96ccf1165","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20998de2489c19e3e1a0bc5eadb03e3d0344aaaeb5ca84196629bba96ccf1165","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CheckLangLemmaCmd.Variant20998de2489c19e3e1a0bc5eadb03e3d0344aaaeb5ca84196629bba96ccf1165","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"20998de2489c19e3e1a0bc5eadb03e3d0344aaaeb5ca84196629bba96ccf1165","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Tactic/Lemma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Damiano Testa
-/
module

public meta import Lean.Meta.Tactic.TryThis
public meta import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckLangLemmaCmd.Variant20998de2489c19e3e1a0bc5eadb03e3d0344aaaeb5ca84196629bba96ccf1165

public meta section

/-!
#  Control for `lemma` command

The `lemma` command exists in `Mathlib`, but not in `Std`.

This file enforces the convention by introducing a code-action
to replace `lemma` by `theorem`.
-/

namespace Batteries.Tactic.Lemma

open Lean Elab.Command Meta.Tactic

/-- Enables the use of `lemma` as a synonym for `theorem` -/
register_option lang.lemmaCmd : Bool := {
  defValue := false
  descr := "enable the use of the `lemma` command as a synonym for `theorem`"
}

/-- Check whether `lang.lemmaCmd` option is enabled -/
def checkLangLemmaCmd (o : Options) : Bool := o.get `lang.lemmaCmd lang.lemmaCmd.defValue

/-- `lemma` is not supported, please use `theorem` instead -/
syntax (name := lemmaCmd) declModifiers
  group("lemma " declId ppIndent(declSig) declVal) : command

/-- Elaborator for the `lemma` command, if the option `lang.lemmaCmd` is false the command
emits a warning and code action instructing the user to use `theorem` instead.-/
@[command_elab «lemmaCmd»] def elabLemma : CommandElab := fun stx => do
  unless checkLangLemmaCmd (← getOptions) do
    let lemmaStx := stx[1][0]
    Elab.Command.liftTermElabM <|
      TryThis.addSuggestion lemmaStx { suggestion := "theorem" }
    logErrorAt lemmaStx
      "`lemma` is not supported by default, please use `theorem` instead.\n\
      Use `set_option lang.lemmaCmd true` to enable the use of the `lemma` command in a file.\n\
      Use the command line option `-Dlang.lemmaCmd=true` to enable the use of `lemma` globally."
  let out ← Elab.liftMacroM <| do
    let stx := stx.modifyArg 1 fun stx =>
      let stx := stx.modifyArg 0 (mkAtomFrom · "theorem" (canonical := true))
      stx.setKind ``Parser.Command.theorem
    pure <| stx.setKind ``Parser.Command.declaration
  Elab.Command.elabCommand out
```
