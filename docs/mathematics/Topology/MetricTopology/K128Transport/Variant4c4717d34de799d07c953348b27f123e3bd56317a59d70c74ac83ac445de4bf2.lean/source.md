# Complete source: GRWTSK.Topology.MetricTopology.K128Transport.Variant4c4717d34de799d07c953348b27f123e3bd56317a59d70c74ac83ac445de4bf2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0f3a57b5497decd30c57ffba924ea1b6cecccdb` · SHA-256 `4cc1f69d403b6d0d4b1ae63fa1181a70636a84731afb3ed3510599e3575f8ae6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
