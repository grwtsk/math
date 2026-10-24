# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01.Variant0dacd0500f191d27f17442d38a056fd50fc6bd507347186d4dd06eef3495279a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a67abef480bb544754be6f176ef59e9b386c496` · SHA-256 `597d1bb41ea74adca471e8db68309a03b67a1a28d3dd646fea08c4d0b958f59b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualDampedXiCompactSevenCorrection.Variant84abbe60f05a73e11d3679d16e67cd2d2df99b7ad29231a4525e6d637ff941b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84abbe60f05a73e11d3679d16e67cd2d2df99b7ad29231a4525e6d637ff941b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualDampedXiCompactSevenCorrection.Variant84abbe60f05a73e11d3679d16e67cd2d2df99b7ad29231a4525e6d637ff941b3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"84abbe60f05a73e11d3679d16e67cd2d2df99b7ad29231a4525e6d637ff941b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-compact-square-budget/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualXiDampedSquareReadout

/-!
The full actual closed-seven return combines into a compact square head. The
actual signed damped primitive supplies an unconditional uniform logarithmic
deficiency bound for the positive Mangoldt square inventory. The lower head
is kept signed; this does not give a critical tail or absolute-average witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualDampedXiCompactSevenCorrection.Variant84abbe60f05a73e11d3679d16e67cd2d2df99b7ad29231a4525e6d637ff941b3

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualXiCompactSquareBudget

open SourceActualXiDampedFiniteBound RootActualXiDampedSquareReadout
open RH16ActualPsiNegativeBlock

noncomputable section

/-- All original seven and gamma heads are retained in this real square expression. -/
def actualDampedXiCompactSevenCorrection (Y : ℝ) : ℝ :=
  (Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
    (1 / Real.sqrt 7 - 1 / Real.sqrt Y) ^ 2 + 2 * (1 - Real.sqrt 7 / Real.sqrt Y)

/-- The actual signed primitive has the compact closed square readout at every real cutoff. -/
theorem actualDampedXiFinitePrimitive_eq_compact_square {Y : ℝ} (hY : 7 ≤ Y) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive (Real.log Y) =
      actualDampedXiSquareWindowSeven Y - Real.log (Y / 7) +
        actualDampedXiCompactSevenCorrection Y := by
  rw [actualDampedXiFinitePrimitive_eq_square_readout hY]
  unfold actualDampedXiCompactSevenCorrection shiftedActualChebyshev
  have hp : 0 < Y := by linarith
  have hy := Real.sq_sqrt hp.le
  have h7 := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)
  have hsy : Real.sqrt Y ≠ 0 := (Real.sqrt_pos.mpr hp).ne'
  have hs7 : Real.sqrt (7 : ℝ) ≠ 0 := (Real.sqrt_pos.mpr (by norm_num)).ne'
  field_simp
  ring_nf
  simp only [hy, h7]
  ring

/-- A genuine uniform arithmetic bound keeps the logarithmic main and all signed heads together. -/
theorem actualDampedXiSquare_logarithmic_deficiency_abs_le {Y : ℝ} (hY : 7 ≤ Y) :
    |actualDampedXiSquareWindowSeven Y - Real.log (Y / 7) +
      actualDampedXiCompactSevenCorrection Y| ≤
        2 * (Real.log 4 + 4 + Real.log 2) +
          4 * RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant := by
  have ht : Real.log 7 ≤ Real.log Y := Real.log_le_log (by norm_num) hY
  have hJ := actualDampedXiFinitePrimitive_abs_le_budget ht
  rw [← actualDampedXiFinitePrimitive_eq_compact_square hY,
    abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
  calc
    _ ≤ (1 / 2 : ℝ) * actualDampedXiFiniteBudget :=
      mul_le_mul_of_nonneg_left hJ (by norm_num)
    _ = _ := by unfold actualDampedXiFiniteBudget; ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiCompactSquareBudget
```
