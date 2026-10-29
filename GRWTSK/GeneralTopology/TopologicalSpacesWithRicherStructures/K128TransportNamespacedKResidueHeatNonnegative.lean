-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.KResidueHeat128.Variantf9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.KResidueHeat128.Variantf9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733","mathematical_subject":"Topology.MetricSpaces","original_sha256":"f9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.think/Think/Kakeya/Crystalline/K128Transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kakeya.Crystalline.BoundaryMeshComparison


namespace GRWTSK.Topology.MetricTopology.KResidueHeat128.Variantf9b19543bd6586c1a40f2897900bec79a0eba61bb0f27c5c2bf9010ecc774733

namespace Think.Kakeya.Crystalline

def KResidueHeat128 (eps dist : ℝ) : ℝ :=
  if dist - eps < 0 then 0 else dist - eps

theorem k_residue_heat_nonnegative
  (eps dist : ℝ) :
  0 ≤ KResidueHeat128 eps dist := by
  unfold KResidueHeat128
  split
  · decide
  · exact Rat.not_lt.mp ‹¬dist - eps < 0›

end Think.Kakeya.Crystalline
