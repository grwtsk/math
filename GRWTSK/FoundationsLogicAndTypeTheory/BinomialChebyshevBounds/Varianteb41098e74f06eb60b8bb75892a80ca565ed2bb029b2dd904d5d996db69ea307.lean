-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.CentralBinomial.Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CentralBinomial.Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/BinomialChebyshevBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.LcmChebyshev
import Mathlib.Data.Nat.Choose.Central
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Folder.Rebuild.AnalyticNumberTheory.BinomialChebyshevBounds

Central-binomial elementary bounds used by the pre-PNT Chebyshev scaffold.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.CentralBinomial.Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

def centralBinomial
    (n : Nat) : Nat :=
  Nat.centralBinom n

theorem centralBinomial_pos
    (n : Nat) :
    0 < centralBinomial n := by
  exact Nat.centralBinom_pos n

theorem centralBinomial_le_four_pow
    (n : Nat) :
    centralBinomial n ≤ 4 ^ n := by
  exact Nat.centralBinom_le_four_pow n

theorem log_centralBinomial_le_n_log_four
    (n : Nat) :
    Real.log (centralBinomial n) ≤ (n : Real) * Real.log 4 := by
  have hpos : 0 < (centralBinomial n : Real) := by
    exact_mod_cast centralBinomial_pos n
  have hle : (centralBinomial n : Real) ≤ ((4 ^ n : Nat) : Real) := by
    exact_mod_cast centralBinomial_le_four_pow n
  calc
    Real.log (centralBinomial n)
        ≤ Real.log ((4 ^ n : Nat) : Real) :=
          Real.log_le_log hpos hle
    _ = (n : Real) * Real.log 4 := by
          rw [show ((4 ^ n : Nat) : Real) = (4 : Real) ^ n by norm_num]
          rw [Real.log_pow]

/-- Theorem target: the classical central-binomial Chebyshev theta step. -/
def CentralBinomialThetaDifferenceTarget : Prop :=
  ∀ n : Nat,
    chebyshevTheta (2 * n) - chebyshevTheta n ≤
      (n : Real) * Real.log 4

end AnalyticNumberTheory
end Rebuild
end Folder
