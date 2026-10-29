-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Do.Variant888ab83456966b910b5e6dc356e335e1cd5408ee143053fd6f22d0a17da054e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"888ab83456966b910b5e6dc356e335e1cd5408ee143053fd6f22d0a17da054e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Do.Variant888ab83456966b910b5e6dc356e335e1cd5408ee143053fd6f22d0a17da054e3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"888ab83456966b910b5e6dc356e335e1cd5408ee143053fd6f22d0a17da054e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/BuiltinDo/Jump.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Do.Basic
meta import Lean.Parser.Do


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Do.Variant888ab83456966b910b5e6dc356e335e1cd5408ee143053fd6f22d0a17da054e3

public section

namespace Lean.Elab.Do

open Lean.Parser.Term
open Lean.Meta

@[builtin_doElem_elab Lean.Parser.Term.doReturn] def elabDoReturn : DoElab := fun stx dec => do
  let `(doReturn| return $[$e?]?) := stx | throwUnsupportedSyntax
  let returnCont ← getReturnCont
  -- When using the EffectForwarder framework, `returnCont.resultType` can be different than the
  -- result type of the `do` block. That's why we track it separately.
  -- trace[Elab.do] "return e: {e} with type {returnCont.resultType}"
  let e ← match e? with
    | none   => Term.ensureHasType returnCont.resultType (← mkPUnitUnit)
    | some e => Term.elabTermEnsuringType e returnCont.resultType
  dec.elabAsSyntacticallyDeadCode -- emit dead code warnings
  returnCont.k e

@[builtin_doElem_elab Lean.Parser.Term.doBreak] def elabDoBreak : DoElab := fun _stx dec => do
  let some breakCont := (← getBreakCont)
    | throwError "`break` must be nested inside a loop"
  dec.elabAsSyntacticallyDeadCode -- emit dead code warnings
  breakCont

@[builtin_doElem_elab Lean.Parser.Term.doContinue] def elabDoContinue : DoElab := fun _stx dec => do
  let some continueCont := (← getContinueCont)
    | throwError "`continue` must be nested inside a loop"
  dec.elabAsSyntacticallyDeadCode -- emit dead code warnings
  continueCont
