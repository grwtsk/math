# Complete source: GRWTSK.Analysis.MeasureTheory.DivisorMainLiteralSnippet.Variant83972e0b09e2f0281b736aff23a6949ce3113d5b72b16f7cbf150cc1a3802831

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1cb5e2abced4dd6f18f73d7006a7870cb67ff2c` · SHA-256 `85f44b32325ccaba0764b46907106016019344dd56afa62626c1d8449fdaab14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.SourceUnit.Variantad0dec8c248280e4538b71f98d7da67b71f7192e1c386b1aab3bc559fbb2987f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad0dec8c248280e4538b71f98d7da67b71f7192e1c386b1aab3bc559fbb2987f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.SourceUnit.Variantad0dec8c248280e4538b71f98d7da67b71f7192e1c386b1aab3bc559fbb2987f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"ad0dec8c248280e4538b71f98d7da67b71f7192e1c386b1aab3bc559fbb2987f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/divisor-main-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.MeasureTheory.SourceUnit.Variantad0dec8c248280e4538b71f98d7da67b71f7192e1c386b1aab3bc559fbb2987f

noncomputable section
open MeasureTheory Set Finset Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open DivisorMainComparisonScratch DampedDivisorCoefficient TruncatedDivisorResidual
open MobiusPoleNumerator MobiusFractionalResidual FiniteMobiusController
open CoreTailSplit SourceWeightedMultiplier HalfLineExtension

example (X : ℕ) (ε x : ℝ) : divisorMainResidual X ε x =
    (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) +
      ((∑ n ∈ Icc 1 ⌊x⌋₊,
        (dampedDivisorCoefficient ε n - truncatedDivisorCoefficient X ε n) : ℝ) : ℂ) +
      (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) * mobiusReciprocalSum X *
        (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) := rfl

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) :
    arithmeticResidual X ε x = divisorMainResidual X ε x -
      (((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) :=
  arithmeticResidual_eq_main_sub_remainder X ε x hX hx

example (X : ℕ) (ε Y : ℝ) : divisorMainCore X ε Y =
    (Icc (0 : ℝ) (Real.log Y)).indicator
      (fun u : ℝ => (Real.exp (-u / 2) : ℂ) * divisorMainResidual X ε (Real.exp u)) := rfl

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    MemLp (divisorMainCore X ε Y) 2 volume := divisorMainCore_memLp X ε hX hε Y hY

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    divisorMainVector X ε hX hε Y hY =
      ((divisorMainCore_memLp X ε hX hε Y hY).toLp (divisorMainCore X ε Y) : FullH) := rfl

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (h : ℝ) (hε : 0 < ε)
    (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) (Y : ℝ) (hY : 1 ≤ Y) :
    |‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ -
      ‖sourceMultiplier ε h hε hsmall hh (divisorMainVector X ε hX hε.le Y hY)‖| ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) :=
  filtered_core_main_norm_difference_le X ε hX h hε hsmall hh Y hY
end
```
