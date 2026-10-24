# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SummabilityWeights.Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95acf1a9996ce9c2404a2828e2f04073ddbb2282` · SHA-256 `271872956b71e8aa7d6600b75668a7137985abbc57e37a2e24c60e9bdae593ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.PosWeightReal.Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.PosWeightReal.Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/SummabilityWeights.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Group.InfiniteSum
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Folder.Rebuild.AnalyticNumberTheory.SummabilityWeights

Positive-index real weights for the first checked half-plane layer.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.PosWeightReal.Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

noncomputable def posWeightReal
    (σ : Real)
    (n : Nat) : Real :=
  if n = 0 then 0 else (n : Real) ^ (-σ)

theorem posWeightReal_zero
    (σ : Real) :
    posWeightReal σ 0 = 0 := by
  simp [posWeightReal]

theorem posWeightReal_one
    (σ : Real) :
    posWeightReal σ 1 = 1 := by
  simp [posWeightReal]

theorem posWeightReal_nonneg
    (σ : Real)
    (n : Nat) :
    0 ≤ posWeightReal σ n := by
  by_cases hn : n = 0
  · simp [posWeightReal, hn]
  · simp [posWeightReal, hn, Real.rpow_nonneg]

theorem summable_posWeightReal_of_one_lt
    {σ : Real}
    (hσ : 1 < σ) :
    Summable fun n : Nat => posWeightReal σ n := by
  have hne : (-σ) ≠ 0 := by linarith
  have hfun :
      (fun n : Nat => posWeightReal σ n) =
        fun n : Nat => (n : Real) ^ (-σ) := by
    funext n
    by_cases hn : n = 0
    · subst n
      simp [posWeightReal, Real.zero_rpow hne]
    · simp [posWeightReal, hn]
  rw [hfun]
  exact Real.summable_nat_rpow.mpr (by linarith)

theorem summable_real_of_abs_bound_by_posWeight
    (a : Nat → Real)
    {σ C : Real}
    (hσ : 1 < σ)
    (_hC : 0 ≤ C)
    (hbound : ∀ n, |a n| ≤ C * posWeightReal σ n) :
    Summable a := by
  have hmajor :
      Summable fun n : Nat => C * posWeightReal σ n :=
    (summable_posWeightReal_of_one_lt hσ).mul_left C
  exact Summable.of_norm_bounded hmajor (by simpa [Real.norm_eq_abs] using hbound)

theorem summable_complex_of_norm_bound_by_posWeight
    (a : Nat → ℂ)
    {σ C : Real}
    (hσ : 1 < σ)
    (_hC : 0 ≤ C)
    (hbound : ∀ n, ‖a n‖ ≤ C * posWeightReal σ n) :
    Summable a := by
  have hmajor :
      Summable fun n : Nat => C * posWeightReal σ n :=
    (summable_posWeightReal_of_one_lt hσ).mul_left C
  exact Summable.of_norm_bounded hmajor hbound

end AnalyticNumberTheory
end Rebuild
end Folder
```
