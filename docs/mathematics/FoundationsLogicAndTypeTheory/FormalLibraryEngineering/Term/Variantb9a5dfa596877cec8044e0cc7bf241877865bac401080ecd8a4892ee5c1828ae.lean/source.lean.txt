-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabPattern.Variantcaf4bd74b1685c8b7edbb958bd6c2e5454e895df3c3808e0dff4e892467ef2c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"caf4bd74b1685c8b7edbb958bd6c2e5454e895df3c3808e0dff4e892467ef2c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabPattern.Variantcaf4bd74b1685c8b7edbb958bd6c2e5454e895df3c3808e0dff4e892467ef2c0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"caf4bd74b1685c8b7edbb958bd6c2e5454e895df3c3808e0dff4e892467ef2c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Elab/Term.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Init
import Lean.Elab.SyntheticMVars

/-!
# Additions to `Lean.Elab.Term`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabPattern.Variantcaf4bd74b1685c8b7edbb958bd6c2e5454e895df3c3808e0dff4e892467ef2c0

namespace Lean.Elab.Term

/-- Fully elaborates the term `patt`, allowing typeclass inference failure,
but while setting `errToSorry` to false.
Typeclass failures result in plain metavariables.
Instantiates all assigned metavariables. -/
def elabPattern (patt : Term) (expectedType? : Option Expr) : TermElabM Expr := do
  withTheReader Term.Context ({ · with ignoreTCFailures := true, errToSorry := false }) <|
    withSynthesizeLight do
      let t ← elabTerm patt expectedType?
      synthesizeSyntheticMVars (postpone := .no) (ignoreStuckTC := true)
      instantiateMVars t

end Lean.Elab.Term
