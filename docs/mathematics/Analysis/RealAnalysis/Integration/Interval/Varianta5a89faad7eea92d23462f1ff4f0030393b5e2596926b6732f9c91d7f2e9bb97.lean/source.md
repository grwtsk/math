# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Interval.Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98b3800b7f14b0e280e156cdbb829c2a2de2d755` · SHA-256 `4de49cc605ca387b08f9d61448a7207237a95a1460bbf090861f123f919a9c9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CubicPotentialDifference.Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CubicPotentialDifference.Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea","mathematical_subject":"Analysis.Integration","original_sha256":"961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Polynomial/Interval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Polynomial.Potential
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Topology.Algebra.Polynomial

/-!
# Cubic interval integration

The endpoint difference and the measure-theoretic interval integral are
distinct definitions connected by the fundamental theorem of calculus.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.CubicPotentialDifference.Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea

namespace Mathematics.Polynomial

open scoped Interval

/-- Exact endpoint difference of the canonical cubic potential. -/
noncomputable def cubicPotentialDifference
    (a b c d lo hi : ℝ) : ℝ :=
  (cubicPotential a b c d).eval hi -
    (cubicPotential a b c d).eval lo

@[simp] theorem cubicPotentialDifference_self
    (a b c d x : ℝ) :
    cubicPotentialDifference a b c d x x = 0 := by
  simp [cubicPotentialDifference]

/-- Endpoint differences compose over adjacent intervals. -/
theorem cubicPotentialDifference_trans
    (a b c d first middle last : ℝ) :
    cubicPotentialDifference a b c d first middle +
        cubicPotentialDifference a b c d middle last =
      cubicPotentialDifference a b c d first last := by
  simp only [cubicPotentialDifference]
  ring

/-- The genuine interval integral equals the endpoint difference. -/
theorem intervalIntegral_cubic
    (a b c d lo hi : ℝ) :
    (∫ x in lo..hi, (cubic a b c d).eval x) =
      cubicPotentialDifference a b c d lo hi := by
  rw [cubicPotentialDifference]
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro x _
    exact hasDerivAt_cubicPotential a b c d x
  · exact (cubic a b c d).continuous.intervalIntegrable lo hi

end Mathematics.Polynomial
```
