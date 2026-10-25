-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt04SelectedWitnessSound.Variant156964d91933351b242856262aea0963e50a0d8070aaab179b22f6988b99e440","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"156964d91933351b242856262aea0963e50a0d8070aaab179b22f6988b99e440","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tt04SelectedWitnessSound.Variant156964d91933351b242856262aea0963e50a0d8070aaab179b22f6988b99e440","mathematical_subject":"Foundations.Unclassified","original_sha256":"156964d91933351b242856262aea0963e50a0d8070aaab179b22f6988b99e440","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT04_SelectedWitnessSoundness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Witness


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt04SelectedWitnessSound.Variant156964d91933351b242856262aea0963e50a0d8070aaab179b22f6988b99e440

universe uInput uWitness

namespace FCRS.Transport.Theorems

/-- Selection exposes only the admissibility already carried by its witness. -/
theorem tt04_selectedWitnessSound
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {kind : SelectionMethodKind}
    {method : SelectionMethod kind Input Witness}
    {selection : WitnessSelectionEvent existence method}
    (selected : SelectedWitness selection) :
    profile.admissible input selected.value :=
  selected.intervalWitness.evidence

end FCRS.Transport.Theorems
