# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.DirichletSeries.Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f9f526e6c68edfc3f997ce40594b36f583ab46e` · SHA-256 `218992553318f6493fad04d4f8932d12bee45c876c10cc7171d55cb6b8ead90a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.DirichletTermRealCoeff.Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.DirichletTermRealCoeff.Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"ea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/DirichletSeries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.SummabilityWeights
import Mathlib.Topology.Algebra.InfiniteSum.Ring

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletSeries

Dirichlet-series terms with real half-plane exponent.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.DirichletTermRealCoeff.Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open scoped BigOperators

noncomputable def dirichletTermRealCoeff
    (a : ArithFn Real)
    (σ : Real)
    (n : Nat) : Real :=
  if n = 0 then 0 else a n * posWeightReal σ n

noncomputable def dirichletTermComplexCoeff
    (a : ArithFn ℂ)
    (σ : Real)
    (n : Nat) : ℂ :=
  if n = 0 then 0 else a n * ((posWeightReal σ n : Real) : ℂ)

def DirichletAbsSummableReal
    (a : ArithFn Real)
    (σ : Real) : Prop :=
  Summable fun n : Nat => |dirichletTermRealCoeff a σ n|

def DirichletAbsSummableComplex
    (a : ArithFn ℂ)
    (σ : Real) : Prop :=
  Summable fun n : Nat => ‖dirichletTermComplexCoeff a σ n‖

noncomputable def dirichletSeriesReal
    (a : ArithFn Real)
    (σ : Real) : Real :=
  ∑' n : Nat, dirichletTermRealCoeff a σ n

noncomputable def dirichletSeriesComplex
    (a : ArithFn ℂ)
    (σ : Real) : ℂ :=
  ∑' n : Nat, dirichletTermComplexCoeff a σ n

theorem dirichletTermRealCoeff_zero
    (a : ArithFn Real)
    (σ : Real) :
    dirichletTermRealCoeff a σ 0 = 0 := by
  simp [dirichletTermRealCoeff]

theorem dirichletTermComplexCoeff_zero
    (a : ArithFn ℂ)
    (σ : Real) :
    dirichletTermComplexCoeff a σ 0 = 0 := by
  simp [dirichletTermComplexCoeff]

theorem dirichletSeriesComplex_absSummable_of_bounded_coeff
    (a : ArithFn ℂ)
    {σ C : Real}
    (hσ : 1 < σ)
    (_hC : 0 ≤ C)
    (hbound : ∀ n : Nat, ‖a n‖ ≤ C) :
    DirichletAbsSummableComplex a σ := by
  have hmajor :
      Summable fun n : Nat => C * posWeightReal σ n :=
    (summable_posWeightReal_of_one_lt hσ).mul_left C
  refine Summable.of_nonneg_of_le (fun n => norm_nonneg _) ?_ hmajor
  intro n
  by_cases hn : n = 0
  · simp [dirichletTermComplexCoeff, posWeightReal, hn]
  · have hw_nonneg : 0 ≤ posWeightReal σ n :=
      posWeightReal_nonneg σ n
    have hnormw :
        ‖((posWeightReal σ n : Real) : ℂ)‖ = posWeightReal σ n := by
      exact Complex.norm_of_nonneg hw_nonneg
    calc
      ‖dirichletTermComplexCoeff a σ n‖
          = ‖a n‖ * posWeightReal σ n := by
              rw [dirichletTermComplexCoeff, if_neg hn, Complex.norm_mul, hnormw]
      _ ≤ C * posWeightReal σ n :=
              mul_le_mul_of_nonneg_right (hbound n) hw_nonneg

theorem dirichletSeriesComplex_add
    (a b : ArithFn ℂ)
    (σ : Real)
    (ha : DirichletAbsSummableComplex a σ)
    (hb : DirichletAbsSummableComplex b σ) :
    dirichletSeriesComplex (fun n => a n + b n) σ =
      dirichletSeriesComplex a σ + dirichletSeriesComplex b σ := by
  have ha' : Summable fun n => dirichletTermComplexCoeff a σ n :=
    Summable.of_norm ha
  have hb' : Summable fun n => dirichletTermComplexCoeff b σ n :=
    Summable.of_norm hb
  have hterm :
      (fun n => dirichletTermComplexCoeff (fun n => a n + b n) σ n) =
        fun n =>
          dirichletTermComplexCoeff a σ n +
            dirichletTermComplexCoeff b σ n := by
    funext n
    by_cases hn : n = 0
    · simp [dirichletTermComplexCoeff, hn]
    · simp [dirichletTermComplexCoeff, hn, add_mul]
  calc
    dirichletSeriesComplex (fun n => a n + b n) σ
        = ∑' n : Nat,
            (dirichletTermComplexCoeff a σ n +
              dirichletTermComplexCoeff b σ n) := by
            simp [dirichletSeriesComplex, hterm]
    _ = dirichletSeriesComplex a σ + dirichletSeriesComplex b σ := by
            simpa [dirichletSeriesComplex] using ha'.tsum_add hb'

theorem dirichletSeriesComplex_smul
    (c : ℂ)
    (a : ArithFn ℂ)
    (σ : Real)
    (ha : DirichletAbsSummableComplex a σ) :
    dirichletSeriesComplex (fun n => c * a n) σ =
      c * dirichletSeriesComplex a σ := by
  have ha' : Summable fun n => dirichletTermComplexCoeff a σ n :=
    Summable.of_norm ha
  have hterm :
      (fun n => dirichletTermComplexCoeff (fun n => c * a n) σ n) =
        fun n => c * dirichletTermComplexCoeff a σ n := by
    funext n
    by_cases hn : n = 0
    · simp [dirichletTermComplexCoeff, hn]
    · simp [dirichletTermComplexCoeff, hn, mul_assoc]
  calc
    dirichletSeriesComplex (fun n => c * a n) σ
        = ∑' n : Nat, c * dirichletTermComplexCoeff a σ n := by
            simp [dirichletSeriesComplex, hterm]
    _ = c * dirichletSeriesComplex a σ := by
            simpa [dirichletSeriesComplex] using ha'.tsum_mul_left c

end AnalyticNumberTheory
end Rebuild
end Folder
```
