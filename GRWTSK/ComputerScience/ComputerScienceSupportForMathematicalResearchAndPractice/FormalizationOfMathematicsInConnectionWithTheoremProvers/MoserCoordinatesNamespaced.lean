-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SqrtThreeMulSqrtEleven.Variantce8ee09cb44255422957bb4a9cfb2dba2ff6d29efb6eb74e68ce7491c182a556","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce8ee09cb44255422957bb4a9cfb2dba2ff6d29efb6eb74e68ce7491c182a556","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SqrtThreeMulSqrtEleven.Variantce8ee09cb44255422957bb4a9cfb2dba2ff6d29efb6eb74e68ce7491c182a556","mathematical_subject":"Foundations.Unclassified","original_sha256":"ce8ee09cb44255422957bb4a9cfb2dba2ff6d29efb6eb74e68ce7491c182a556","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/history-independent-reconstructed-db2fda05/FormalResearch/HadwigerNelson/MoserCoordinates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/- Exact reader coordinates generated from source-packet.json. -/
import FormalResearch.HadwigerNelson.MoserSource


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SqrtThreeMulSqrtEleven.Variantce8ee09cb44255422957bb4a9cfb2dba2ff6d29efb6eb74e68ce7491c182a556

namespace FormalResearch.HadwigerNelson

noncomputable section

/-- The product radical used by the exact coordinate table equals `√33`. -/
theorem sqrt_three_mul_sqrt_eleven : Real.sqrt 3 * Real.sqrt 11 = Real.sqrt 33 := by
  rw [← Real.sqrt_mul (show (0 : ℝ) ≤ 3 by norm_num)]
  norm_num

/-- Exact reader coordinates in the basis `1, √3, √11, √3√11 = √33`. -/
def packetCoordinates : Fin 7 → ℝ × ℝ := ![
  (0, 0),
  ((1 / 2 : ℝ) * (Real.sqrt 3), (1 / 2 : ℝ)),
  ((1 / 2 : ℝ) * (Real.sqrt 3), (-1 / 2 : ℝ)),
  ((1 : ℝ) * (Real.sqrt 3), 0),
  ((5 / 12 : ℝ) * (Real.sqrt 3) + (-1 / 12 : ℝ) * (Real.sqrt 11),
    (5 / 12 : ℝ) + (1 / 12 : ℝ) * (Real.sqrt 3 * Real.sqrt 11)),
  ((5 / 12 : ℝ) * (Real.sqrt 3) + (1 / 12 : ℝ) * (Real.sqrt 11),
    (-5 / 12 : ℝ) + (1 / 12 : ℝ) * (Real.sqrt 3 * Real.sqrt 11)),
  ((5 / 6 : ℝ) * (Real.sqrt 3), (1 / 6 : ℝ) * (Real.sqrt 3 * Real.sqrt 11))]

/-- The reader's exact coordinate table is the source-pinned complex point map. -/
theorem moserPoint_coordinates (i : Fin 7) :
    ((moserPoint i).re, (moserPoint i).im) = packetCoordinates i := by
  fin_cases i <;> apply Prod.ext <;>
    norm_num [packetCoordinates, moserPoint, moserA, moserB, moserT, moserU,
      Complex.mul_re, Complex.mul_im, Complex.div_ofReal_re, Complex.div_ofReal_im,
      Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im] <;> ring

end

end FormalResearch.HadwigerNelson
