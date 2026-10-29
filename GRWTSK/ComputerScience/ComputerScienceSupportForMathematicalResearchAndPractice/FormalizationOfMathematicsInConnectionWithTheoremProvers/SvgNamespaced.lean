-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frame.Variantf84f1603792737ba17b9f8f0736fc077466cff779fff638c27de33a57286c4f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f84f1603792737ba17b9f8f0736fc077466cff779fff638c27de33a57286c4f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Frame.Variantf84f1603792737ba17b9f8f0736fc077466cff779fff638c27de33a57286c4f9","mathematical_subject":"Foundations.Unclassified","original_sha256":"f84f1603792737ba17b9f8f0736fc077466cff779fff638c27de33a57286c4f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Demos/Svg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Data.Svg
import ProofWidgets.Component.HtmlDisplay


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frame.Variantf84f1603792737ba17b9f8f0736fc077466cff779fff638c27de33a57286c4f9

open ProofWidgets Svg

private def frame : Frame where
  xmin   := -2
  ymin   := -2
  xSize  := 4
  width  := 400
  height := 400

private def svg : Svg frame :=
  { elements :=
      #[line (0.,0.) (1.,0.) |>.setStroke (1.,0.,0.) (.px 2),
        line (1.,0.) (0.,1.) |>.setStroke (0.,1.,0.) (.px 2),
        line (0.,1.) (0.,0.) |>.setStroke (0.,0.,1.) (.px 2),
        circle (0.,0.) (.abs 0.1) |>.setStroke (0.,0.,0.) (.px 2) |>.setFill (0.,1.,1.) |>.setId "point1",
        circle (1.,0.) (.abs 0.1) |>.setStroke (0.,0.,0.) (.px 2) |>.setFill (1.,0.,1.) |>.setId "point2",
        circle (0.,1.) (.abs 0.1) |>.setStroke (0.,0.,0.) (.px 2) |>.setFill (1.,1.,0.) |>.setId "point3"] }

-- #eval toJson svg.toHtml

#html svg.toTHtml
