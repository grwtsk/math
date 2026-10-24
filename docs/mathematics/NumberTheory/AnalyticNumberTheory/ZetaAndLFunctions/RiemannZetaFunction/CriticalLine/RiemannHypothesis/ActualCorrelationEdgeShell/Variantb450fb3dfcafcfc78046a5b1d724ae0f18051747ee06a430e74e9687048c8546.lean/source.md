# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCorrelationEdgeShell.Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60e9fb419b1af20120c0d0b6a20723cd202fdb27` · SHA-256 `b450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualCorrelationEdgeProfile

/-!
# A complete positive overlap shell for the actual source correlation

The full source product is nonnegative on the window-edge overlap. A middle
subinterval supplies a quantitative lower bound, while every other source
point remains in the Lebesgue integral. No abstract substitute correlation is
introduced. Human actual-source and full-window direction: grwtsk contributors.
Local overlap, support, and integration consumer: OpenAI Codex. Source and
Mathlib identities retain their qualified upstream names.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationEdgeShell
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open CorrelationRegularity ActualCorrelationEdgeProfile MeasureTheory Set
noncomputable section
local notation "v" => normalizedTest Realization.explicitSecondDerivative
local notation "C" => sourceCorrelation Realization.explicitSecondDerivative

theorem actual_normalized_test_even {A : ℝ} (hA : 0 < A) (x : ℝ) :
    v A (-x) = v A x := by
  rw [normalizedTest_eq_indicator A hA]
  by_cases hx : x ∈ Icc (-A) A
  · have hn : -x ∈ Icc (-A) A := by constructor <;> linarith [hx.1, hx.2]
    rw [indicator_of_mem hn, indicator_of_mem hx]
    unfold normalizedInterior Realization.secondInterior Realization.bumpInterior
    ring
  · have hn : -x ∉ Icc (-A) A := by
      intro hn
      apply hx
      constructor <;> linarith [hn.1, hn.2]
    rw [indicator_of_notMem hn, indicator_of_notMem hx]

theorem complete_window_edge_product_nonnegative {A y : ℝ} (hA : 8 ≤ A)
    (hy2 : y ≤ 2) (x : ℝ) :
    0 ≤ v A x * v A (x - (2 * A - y)) := by
  have hpos : 0 < A := by linarith
  by_cases hx : x ∈ Icc (-A) A
  · by_cases ht : x - (2 * A - y) ∈ Icc (-A) A
    · have hs0 : 0 ≤ A - x := by linarith [hx.2]
      have hs2 : A - x ≤ 2 := by linarith [ht.1]
      have hr0 : 0 ≤ y - (A - x) := by linarith [ht.1]
      have hr2 : y - (A - x) ≤ 2 := by linarith
      have hl := actual_normalized_edge_lower hA hs0 hs2
      have hr := actual_normalized_edge_lower hA hr0 hr2
      have heq : x - (2 * A - y) = -(A - (y - (A - x))) := by ring
      rw [heq, actual_normalized_test_even hpos]
      have hl0 : 0 ≤ v A x := by
        have h : 0 ≤ (A - x) ^ 2 / (A ^ 4 * Real.sqrt A) := by positivity
        simpa using h.trans hl
      exact mul_nonneg hl0 ((by positivity :
        0 ≤ (y - (A - x)) ^ 2 / (A ^ 4 * Real.sqrt A)).trans hr)
    · have hz : v A (x - (2 * A - y)) = 0 := by
        rw [normalizedTest_eq_indicator A hpos]
        exact indicator_of_notMem ht _
      simp [hz]
  · have hz : v A x = 0 := by
      rw [normalizedTest_eq_indicator A hpos]
      exact indicator_of_notMem hx _
    simp [hz]

theorem interior_edge_point_lower {A s : ℝ} (hA : 8 ≤ A)
    (hs : 1 / 4 ≤ s) (hs2 : s ≤ 2) :
    1 / (16 * (A ^ 4 * Real.sqrt A)) ≤ v A (A - s) := by
  have hpos : 0 < A := by linarith
  have hsq : (1 / 16 : ℝ) ≤ s ^ 2 := by nlinarith
  have hd : 0 ≤ A ^ 4 * Real.sqrt A := by positivity
  have h := div_le_div_of_nonneg_right hsq hd
  have heq : 1 / (16 * (A ^ 4 * Real.sqrt A)) =
      (1 / 16 : ℝ) / (A ^ 4 * Real.sqrt A) := by ring
  rw [heq]
  exact h.trans (actual_normalized_edge_lower hA (by linarith) hs2)

theorem middle_overlap_product_lower {A y x : ℝ} (hA : 8 ≤ A)
    (hy1 : 1 ≤ y) (hy2 : y ≤ 2)
    (hx : x ∈ Icc (A - 3 * y / 4) (A - y / 4)) :
    1 / (256 * A ^ 9) ≤ v A x * v A (x - (2 * A - y)) := by
  have hpos : 0 < A := by linarith
  have hl := interior_edge_point_lower hA
    (by linarith [hx.2] : 1 / 4 ≤ A - x)
    (by linarith [hx.1] : A - x ≤ 2)
  have hr := interior_edge_point_lower hA
    (by linarith [hx.1] : 1 / 4 ≤ y - (A - x))
    (by linarith [hx.2] : y - (A - x) ≤ 2)
  have heq : x - (2 * A - y) = -(A - (y - (A - x))) := by ring
  rw [heq, actual_normalized_test_even hpos]
  have hl' : 1 / (16 * (A ^ 4 * Real.sqrt A)) ≤ v A x := by simpa using hl
  have hc : 0 ≤ 1 / (16 * (A ^ 4 * Real.sqrt A)) := by positivity
  have hmul := mul_le_mul hl' hr hc (hc.trans hl')
  have hprice : (1 / (16 * (A ^ 4 * Real.sqrt A))) *
      (1 / (16 * (A ^ 4 * Real.sqrt A))) = 1 / (256 * A ^ 9) := by
    calc
      _ = 1 / (256 * (A ^ 4) ^ 2 * (Real.sqrt A) ^ 2) := by ring
      _ = _ := by rw [Real.sq_sqrt hpos.le]; congr 1; ring
  rw [hprice] at hmul
  exact hmul

theorem actual_correlation_edge_shell_lower {A y : ℝ} (hA : 8 ≤ A)
    (hy1 : 1 ≤ y) (hy2 : y ≤ 2) :
    1 / (512 * A ^ 9) ≤ C A (2 * A - y) := by
  have hpos : 0 < A := by linarith
  let S := Icc (A - 3 * y / 4) (A - y / 4)
  let f := fun x ↦ v A x * v A (x - (2 * A - y))
  have hf : Integrable f volume := correlation_product_integrable A _ hpos
  have hc : IntegrableOn (fun _ : ℝ ↦ 1 / (256 * A ^ 9)) S volume := by
    exact (continuous_const : Continuous (fun _ : ℝ ↦ 1 / (256 * A ^ 9))).integrableOn_Icc
  have hs : (∫ _ in S, (1 / (256 * A ^ 9) : ℝ)) ≤ ∫ x in S, f x :=
    setIntegral_mono_on hc hf.integrableOn measurableSet_Icc
      (fun x hx ↦ middle_overlap_product_lower hA hy1 hy2 hx)
  have hfull : (∫ x in S, f x) ≤ C A (2 * A - y) :=
    setIntegral_le_integral hf (Filter.Eventually.of_forall
      (complete_window_edge_product_nonnegative hA hy2))
  have hvalue : (∫ _ in S, (1 / (256 * A ^ 9) : ℝ)) =
      (y / 2) * (1 / (256 * A ^ 9)) := by
    rw [setIntegral_const]
    dsimp only [S]
    rw [Real.volume_real_Icc_of_le (by linarith : A - 3 * y / 4 ≤ A - y / 4)]
    simp only [smul_eq_mul]
    ring
  have hsmall : 1 / (512 * A ^ 9) ≤ (y / 2) * (1 / (256 * A ^ 9)) := by
    have hnonneg : 0 ≤ 1 / (256 * A ^ 9) := by positivity
    have hm := mul_le_mul_of_nonneg_right (by linarith : (1 / 2 : ℝ) ≤ y / 2) hnonneg
    have heq : 1 / (512 * A ^ 9) = (1 / 2 : ℝ) * (1 / (256 * A ^ 9)) := by ring
    rw [heq]
    exact hm
  rw [hvalue] at hs
  exact hsmall.trans (hs.trans hfull)

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationEdgeShell
```
