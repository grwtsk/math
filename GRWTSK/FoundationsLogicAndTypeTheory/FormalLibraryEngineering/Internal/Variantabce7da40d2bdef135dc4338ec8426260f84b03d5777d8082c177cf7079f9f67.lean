-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OptionsPrime.Variant876ba63e306f608719c5dece7d92266cef9dda97e604b5b6860a9a2ba99f8e18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"876ba63e306f608719c5dece7d92266cef9dda97e604b5b6860a9a2ba99f8e18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OptionsPrime.Variant876ba63e306f608719c5dece7d92266cef9dda97e604b5b6860a9a2ba99f8e18","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"876ba63e306f608719c5dece7d92266cef9dda97e604b5b6860a9a2ba99f8e18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Options/Internal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Check
public import Aesop.Options.Public


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OptionsPrime.Variant876ba63e306f608719c5dece7d92266cef9dda97e604b5b6860a9a2ba99f8e18

public section

open Lean
open Lean.Meta

namespace Aesop

structure Options' extends Options where
  generateScript : Bool
  forwardMaxDepth? : Option Nat
  deriving Inhabited

def Options.toOptions' [Monad m] [MonadOptions m] (opts : Options)
    (forwardMaxDepth? : Option Nat := none) : m Options' := do
  let generateScript ←
    pure (aesop.dev.generateScript.get (← getOptions)) <||>
    pure opts.traceScript <||>
    Check.script.isEnabled <||>
    Check.script.steps.isEnabled
  return { opts with generateScript, forwardMaxDepth? }

end Aesop
