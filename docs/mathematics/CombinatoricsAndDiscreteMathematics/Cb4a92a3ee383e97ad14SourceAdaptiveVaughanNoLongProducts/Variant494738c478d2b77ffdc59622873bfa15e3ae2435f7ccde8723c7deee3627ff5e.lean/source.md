# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts.Variant494738c478d2b77ffdc59622873bfa15e3ae2435f7ccde8723c7deee3627ff5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fa96975d60e119f20da22cfbc69735901a8ef7f` · SHA-256 `75bc092a0f8934193478bbe8bdbfca36927a7d8ae6ff49be84530494477be1c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CompleteLongLongVanishes.Variantcb4a92a3ee383e97ad14f64028bfe2d8ee6bf26cf5dc685735b62b732b065bcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb4a92a3ee383e97ad14f64028bfe2d8ee6bf26cf5dc685735b62b732b065bcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CompleteLongLongVanishes.Variantcb4a92a3ee383e97ad14f64028bfe2d8ee6bf26cf5dc685735b62b732b065bcc","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"cb4a92a3ee383e97ad14f64028bfe2d8ee6bf26cf5dc685735b62b732b065bcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/cb4a92a3ee383e97ad14-SourceAdaptiveVaughanNoLongProducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCompleteDivisorCancellation

/-!
Exact asymmetric adaptive Vaughan refinement of the SAME full closed Mangoldt
row. The long-long sector disappears by its literal product support, including
floor equality cases. This supplies no uniform bound on the retained signed
independent main or signed sampling error.
Direction, selection, corrections and evaluation: grwtsk contributors.
Finite proof construction and focused scratch verification: Codex assistance.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CompleteLongLongVanishes.Variantcb4a92a3ee383e97ad14f64028bfe2d8ee6bf26cf5dc685735b62b732b065bcc

set_option autoImplicit false
noncomputable section
namespace RH16AdaptiveVaughan
open ArithmeticFunction
open scoped BigOperators
open RH16CompleteDivisorCancellation
open FormalResearch.RiemannHypothesis
open SourceSamplingPointwise SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateVaughanSource EstimatePlainKernel
open EstimateSourceMobiusKernel EstimateVaughanTranslationGate

/-- All equality-inclusive long products exceed N under the stated exact threshold. -/
theorem complete_long_long_vanishes (N U V : ℕ) (w : ℕ → ℝ)
    (hw : ∀ n, N < n → w n = 0) (hN : N < (U + 1) * (V + 1)) :
    (∑ m ∈ Finset.Ioc V N, vonMangoldt m *
      (∑ n ∈ Finset.Ioc U N, beta U n * w (m * n))) = 0 := by
  apply Finset.sum_eq_zero
  intro m hm
  have hmV : V + 1 ≤ m := by have := (Finset.mem_Ioc.mp hm).1; omega
  have hs : (∑ n ∈ Finset.Ioc U N, beta U n * w (m * n)) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    have hnU : U + 1 ≤ n := by have := (Finset.mem_Ioc.mp hn).1; omega
    have hp : (U + 1) * (V + 1) ≤ m * n := by
      simpa only [Nat.mul_comm] using Nat.mul_le_mul hnU hmV
    rw [hw (m * n) (hN.trans_le hp), mul_zero]
  rw [hs, mul_zero]

/-- Natural quotient floors enforce the threshold without a dropped seam atom. -/
theorem quotient_no_long_products (N U : ℕ) (hU : 1 ≤ U) :
    N < (U + 1) * (N / U + 1) := by
  have hm := Nat.mod_lt N (show 0 < U by omega)
  have he := Nat.div_add_mod N U
  nlinarith [Nat.zero_le (N / U)]

/-- Exact adaptive identity; all original prime powers survive on the left. -/
theorem finite_vaughan_no_long_products (N U V : ℕ) (hU : U ≤ N) (hV : V ≤ N)
    (w : ℕ → ℝ) (hw : ∀ n, N < n → w n = 0)
    (hN : N < (U + 1) * (V + 1)) :
    (∑ n ∈ Finset.Icc 1 N, vonMangoldt n * w n) =
      (∑ m ∈ Finset.Icc 1 V, vonMangoldt m * w m) +
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ k ∈ Finset.Icc 1 N, Real.log k * w (d * k)) -
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 V, vonMangoldt m *
          ∑ k ∈ Finset.Icc 1 N, w (d * m * k)) := by
  rw [finite_vaughan_sum N U V hU hV w hw,
    complete_long_long_vanishes N U V w hw hN, add_zero]

/-- The source's Möbius cutoff stays fixed; only the auxiliary Mangoldt depth grows. -/
def adaptiveMangoldtDepth (A : ℝ) : ℕ := sourceKernelCutoff A / vaughanCutoff A

/-- Literal sampled head; no asymptotic main replacement has happened. -/
def adaptiveSampledHead (A : ℝ) : ℝ :=
  (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A),
    vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
      Real.log k * sourcePlainWeight A ((d * k : ℕ) : ℝ))) -
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
      (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        sourcePlainWeight A ((d * m * k : ℕ) : ℝ))))

/-- A genuine source identity, including natural floors, endpoints and every prime power. -/
theorem fullMangoldtRow_eq_adaptiveSampledHead (A : ℝ) (hA : 1 ≤ A) :
    fullMangoldtRow A = adaptiveSampledHead A := by
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hVN : adaptiveMangoldtDepth A ≤ sourceKernelCutoff A := Nat.div_le_self _ _
  have he := finite_vaughan_no_long_products (sourceKernelCutoff A) (vaughanCutoff A)
    (adaptiveMangoldtDepth A) hUN hVN (fun n => sourcePlainWeight A (n : ℝ))
    (fun n hn => sourcePlainWeight_zero_of_cutoff_lt A hA n hn)
    (quotient_no_long_products _ _ hU)
  exact he

end RH16AdaptiveVaughan
```
