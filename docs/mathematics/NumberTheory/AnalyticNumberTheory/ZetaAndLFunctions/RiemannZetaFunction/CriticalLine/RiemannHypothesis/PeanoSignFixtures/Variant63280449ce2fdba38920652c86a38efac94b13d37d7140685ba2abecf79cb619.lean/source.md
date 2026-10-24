# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PeanoSignFixtures.Variant63280449ce2fdba38920652c86a38efac94b13d37d7140685ba2abecf79cb619

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2718607a525909c025c4962f621a35f2071b454` · SHA-256 `27131d6043d2954b122f26f3eff4df80bc985bf7aad0a7968ab93916dca4d947`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PeanoFiveNonnegativeWithNegativeCurvature.Variantef4d5ab93e9eefce521d0d8d07e65e23b1353e96349dbe8171d29a4f2ea95651","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef4d5ab93e9eefce521d0d8d07e65e23b1353e96349dbe8171d29a4f2ea95651","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PeanoFiveNonnegativeWithNegativeCurvature.Variantef4d5ab93e9eefce521d0d8d07e65e23b1353e96349dbe8171d29a4f2ea95651","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ef4d5ab93e9eefce521d0d8d07e65e23b1353e96349dbe8171d29a4f2ea95651","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/root/sign-peano-native-v3/PeanoSignFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCorrelationSignChange
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PeanoFiveNonnegativeWithNegativeCurvature.Variantef4d5ab93e9eefce521d0d8d07e65e23b1353e96349dbe8171d29a4f2ea95651

set_option autoImplicit false
noncomputable section
open Set
open FormalResearch.RiemannHypothesis.SourceCorrelationSignChange
open FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive
open FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

/-- At one exact certified scale, positivity of the primitive coexists with negative curvature. -/
theorem peano_five_nonnegative_with_negative_curvature :
    (∀ t : ℝ, t ∈ Icc 0 10 → 0 ≤ sourcePeanoPrimitive 5 t) ∧
    ∃ t : ℝ, 0 < t ∧ t < 10 ∧
      deriv (deriv (sourcePeanoPrimitive 5)) t < 0 := by
  constructor
  · intro t ht
    exact sourcePeanoPrimitive_nonneg (by norm_num) (by norm_num) ht.1
      (by simpa only [show (2 : ℝ) * 5 = 10 by norm_num] using ht.2)
  · obtain ⟨t, ht0, ht10, htneg⟩ :=
      sourceCorrelation_exists_neg_in_half_support (A := 5) (by norm_num)
    refine ⟨t, ht0, by linarith, ?_⟩
    rw [sourcePeanoPrimitive_second_deriv (by norm_num)]
    exact mul_neg_of_pos_of_neg (Real.exp_pos _) htneg

/-- The same actual primitive has positive center curvature, so neither curvature sign is global. -/
theorem peano_five_curvature_at_zero :
    deriv (deriv (sourcePeanoPrimitive 5)) 0 = 1 := by
  rw [sourcePeanoPrimitive_second_deriv (by norm_num)]
  simp [sourceCorrelation_zero (by norm_num : (0 : ℝ) < 5)]

#print axioms peano_five_nonnegative_with_negative_curvature
#print axioms peano_five_curvature_at_zero
```
