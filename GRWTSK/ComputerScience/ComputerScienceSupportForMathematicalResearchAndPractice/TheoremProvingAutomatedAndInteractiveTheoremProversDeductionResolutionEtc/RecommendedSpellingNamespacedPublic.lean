-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AllRecommendedSpellings.Variant2a4850b336b5c11966011524d948e30512756465ba5d82bb32e54e8b7efdc442","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a4850b336b5c11966011524d948e30512756465ba5d82bb32e54e8b7efdc442","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AllRecommendedSpellings.Variant2a4850b336b5c11966011524d948e30512756465ba5d82bb32e54e8b7efdc442","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2a4850b336b5c11966011524d948e30512756465ba5d82bb32e54e8b7efdc442","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/RecommendedSpelling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AllRecommendedSpellings.Variant2a4850b336b5c11966011524d948e30512756465ba5d82bb32e54e8b7efdc442

public section

namespace Lean.Elab.Term.Doc
open Lean.Parser.Term.Doc
open Lean.Elab.Command
open Lean.Parser.Command

@[builtin_command_elab «recommended_spelling»] def elabRecommendedSpelling : CommandElab
  | `(«recommended_spelling»|$[$docs:docComment]? recommended_spelling $spelling:str for $«notation»:str in [$[$decls:ident],*]) => do
    let declNames ← liftTermElabM <| decls.mapM (fun decl => realizeGlobalConstNoOverloadWithInfo decl)
    declNames.forM (recordExtraModUseFromDecl (isMeta := false))
    let recommendedSpelling : RecommendedSpelling := {
      «notation» := «notation».getString
      recommendedSpelling := spelling.getString
      additionalInformation? := docs.map (·.getDocString)
    }
    modifyEnv (addRecommendedSpelling · recommendedSpelling declNames)
  | _ => throwError "Malformed recommended spelling command"

/-- Returns an array containing all recommended spellings. -/
def allRecommendedSpellings : MetaM (Array RecommendedSpelling) := do
  let all := recommendedSpellingExt.toEnvExtension.getState (← getEnv)
      |>.importedEntries
      |>.push ((recommendedSpellingExt.exportEntriesFn (← getEnv) (recommendedSpellingExt.getState (← getEnv))).exported)
  return all.flatMap id

end Lean.Elab.Term.Doc
