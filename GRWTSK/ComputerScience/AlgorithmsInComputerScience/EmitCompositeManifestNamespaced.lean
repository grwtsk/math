-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variantafdf6b2b7b0eade2fd757518245b820157f26c72ffb45debfa5d78fb25a93539","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"afdf6b2b7b0eade2fd757518245b820157f26c72ffb45debfa5d78fb25a93539","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Main.Variantafdf6b2b7b0eade2fd757518245b820157f26c72ffb45debfa5d78fb25a93539","mathematical_subject":"Computation.DataStructures","original_sha256":"afdf6b2b7b0eade2fd757518245b820157f26c72ffb45debfa5d78fb25a93539","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/composite/Tools/EmitCompositeManifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CompositeElements.Export


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variantafdf6b2b7b0eade2fd757518245b820157f26c72ffb45debfa5d78fb25a93539

def main (arguments : List String) : IO Unit := do
  match arguments with
  | [output] =>
      IO.FS.writeFile output
        (URSM.Composite.formalManifestJson ++ "\n")
  | _ =>
      throw <| IO.userError
        "usage: emit_composite_manifest OUTPUT.json"
