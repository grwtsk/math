-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PosWeightRealOfPos.Variant71976e65726a0f8ba785bb1dae1a63949100309572b78cc2632538d9ad392f5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71976e65726a0f8ba785bb1dae1a63949100309572b78cc2632538d9ad392f5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PosWeightRealOfPos.Variant71976e65726a0f8ba785bb1dae1a63949100309572b78cc2632538d9ad392f5b","mathematical_subject":"Foundations.Unclassified","original_sha256":"71976e65726a0f8ba785bb1dae1a63949100309572b78cc2632538d9ad392f5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/WeightMultiplicativity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.SummabilityWeights

/-!
# Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity

Multiplicativity of the positive-index real half-plane weight.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PosWeightRealOfPos.Variant71976e65726a0f8ba785bb1dae1a63949100309572b78cc2632538d9ad392f5b

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

theorem posWeightReal_of_pos
    (σ : Real)
    {n : Nat}
    (hn : 0 < n) :
    posWeightReal σ n = (n : Real) ^ (-σ) := by
  simp [posWeightReal, Nat.ne_of_gt hn]

theorem posWeightComplex_of_pos
    (σ : Real)
    {n : Nat}
    (hn : 0 < n) :
    (((posWeightReal σ n : Real) : Complex)) =
      (((n : Real) ^ (-σ) : Real) : Complex) := by
  rw [posWeightReal_of_pos σ hn]

theorem posWeightReal_mul
    (σ : Real)
    {m n : Nat}
    (hm : 0 < m)
    (hn : 0 < n) :
    posWeightReal σ (m * n) =
      posWeightReal σ m * posWeightReal σ n := by
  have hmn : 0 < m * n := Nat.mul_pos hm hn
  simp [posWeightReal, Nat.ne_of_gt hm, Nat.ne_of_gt hn, Nat.ne_of_gt hmn,
    Nat.cast_mul, Real.mul_rpow]

theorem posWeightComplex_mul
    (σ : Real)
    {m n : Nat}
    (hm : 0 < m)
    (hn : 0 < n) :
    (((posWeightReal σ (m * n) : Real) : Complex)) =
      (((posWeightReal σ m : Real) : Complex)) *
      (((posWeightReal σ n : Real) : Complex)) := by
  rw [posWeightReal_mul σ hm hn]
  norm_num

end AnalyticNumberTheory
end Rebuild
end Folder
