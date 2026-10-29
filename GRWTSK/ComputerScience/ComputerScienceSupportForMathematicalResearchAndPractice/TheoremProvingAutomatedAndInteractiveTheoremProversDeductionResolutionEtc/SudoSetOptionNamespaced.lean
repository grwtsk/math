-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetOption.Variante738d959b9a22e7ebe5a491d579afe2903bbaf398ae12c80bba5a9a77a83972f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e738d959b9a22e7ebe5a491d579afe2903bbaf398ae12c80bba5a9a77a83972f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SetOption.Variante738d959b9a22e7ebe5a491d579afe2903bbaf398ae12c80bba5a9a77a83972f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e738d959b9a22e7ebe5a491d579afe2903bbaf398ae12c80bba5a9a77a83972f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/SudoSetOption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Mathlib.Init
import Lean.Elab.ElabRules

/-!
# Defines the `sudo set_option` command.

Allows setting undeclared options.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetOption.Variante738d959b9a22e7ebe5a491d579afe2903bbaf398ae12c80bba5a9a77a83972f

open Lean Elab

private def setOption {m : Type → Type} [Monad m] [MonadError m]
    (name val : Syntax) (opts : Options) : m Options := do
  let val ← match val with
    | Syntax.ident _ _ `true _  => pure <| DataValue.ofBool true
    | Syntax.ident _ _ `false _ => pure <| DataValue.ofBool false
    | _ => match val.isNatLit? with
      | some num => pure <| DataValue.ofNat num
      | none => match val.isStrLit? with
        | some str => pure <| DataValue.ofString str
        | none => throwError "unsupported option value {val}"
  pure <| opts.insert name.getId val

open Elab.Command in
/--
The command `sudo set_option name val` is similar to `set_option name val`,
but it also allows to set undeclared options.
-/
elab "sudo " "set_option " n:ident ppSpace val:term : command => do
  let options ← setOption n val (← getOptions)
  modify fun s ↦ { s with maxRecDepth := maxRecDepth.get options }
  modifyScope fun scope ↦ { scope with opts := options }

open Elab.Term in
/--
The command `sudo set_option name val in term` is similar to `set_option name val in term`,
but it also allows to set undeclared options.
-/
elab "sudo " "set_option " n:ident ppSpace val:term " in " body:term : term <= expectedType => do
  let options ← setOption n val (← getOptions)
  withTheReader Core.Context (fun ctx ↦
      { ctx with maxRecDepth := maxRecDepth.get options, options := options }) do
    elabTerm body expectedType

/-
sudo set_option trace.Elab.resuming true in #check 4
#check sudo set_option trace.Elab.resuming true in by exact 4
-/
