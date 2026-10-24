-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variante8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Main.Variante8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613","mathematical_subject":"Foundations.Unclassified","original_sha256":"e8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Export/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Noeoueue
import Noeoueue.Export.CanonicalExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variante8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613

open Lean

def main : IO Unit := do
  let env <- importModules #[{ module := `Noeoueue }] {} 0
  let rows := env.constants.toList.filterMap fun (name, info) =>
    if name.toString.startsWith "Noeoueue" then
      some s!"{name}\t{Noeoueue.Export.canonicalExpr info.type}"
    else none
  let rows := rows.mergeSort (fun left right => left < right)
  IO.println <| String.intercalate "\n" rows
