# Complete source: GRWTSK.Analysis.MeasureTheory.CoreTailLiteralSnippet.Variant3e62678aac2d3e483464d804bbb56f96ab19103ece161ac876f875418e3030c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38472ec1ecb7741506cd6889f155295fcce20d88` · SHA-256 `8650beb8d5dc79135e60c236c777fa45cba857b4851da66238167a69c364320b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.SourceUnit.Variant1c04ff700c1ce61c7c15e088ebeb27e286a04d66ad93335db812df5173629a02","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c04ff700c1ce61c7c15e088ebeb27e286a04d66ad93335db812df5173629a02","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.SourceUnit.Variant1c04ff700c1ce61c7c15e088ebeb27e286a04d66ad93335db812df5173629a02","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"1c04ff700c1ce61c7c15e088ebeb27e286a04d66ad93335db812df5173629a02","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/signed-covariance-core/core-tail-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.MeasureTheory.SourceUnit.Variant1c04ff700c1ce61c7c15e088ebeb27e286a04d66ad93335db812df5173629a02

noncomputable section
open MeasureTheory Set Complex
open CoreTailSplitScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open LogarithmicResidual LogarithmicResidualTail SourceWeightedMultiplier
open HalfLineExtension MobiusEndpointBudget MobiusPoleNumerator

variable (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)

example : fullResidualVector X ε hX =
    ((logResidual_memLp X ε hX).toLp (logResidual X ε) : FullH) := rfl

example (Y : ℝ) : coreResidualVector X ε hX Y =
    (((logResidual_memLp X ε hX).indicator measurableSet_Icc).toLp
      ((Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε)) : FullH) := rfl

example : fullResidualVector X ε hX =ᵐ[volume] logResidual X ε :=
  fullResidualVector_ae X ε hX

example (Y : ℝ) : coreResidualVector X ε hX Y =ᵐ[volume]
    (Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε) :=
  coreResidualVector_ae X ε hX Y

example (Y : ℝ) (hY : 1 ≤ Y) : fullResidualVector X ε hX =
    ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
      ((Iio (0 : ℝ)).indicator (logResidual X ε)) + coreResidualVector X ε hX Y +
    ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
      ((Ioi (Real.log Y)).indicator (logResidual X ε)) :=
  fullResidualVector_decomposition X ε hX Y hY

example (h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (fullResidualVector X ε hX)‖ ≤
      ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y :=
  filtered_full_norm_le_core_tails X ε hX h hε hsmall hh Y hY
end
```
