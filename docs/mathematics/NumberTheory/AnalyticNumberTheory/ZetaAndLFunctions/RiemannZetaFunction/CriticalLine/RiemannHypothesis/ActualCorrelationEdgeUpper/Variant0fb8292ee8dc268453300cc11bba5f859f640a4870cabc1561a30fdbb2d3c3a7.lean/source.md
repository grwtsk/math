# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCorrelationEdgeUpper.Variant0fb8292ee8dc268453300cc11bba5f859f640a4870cabc1561a30fdbb2d3c3a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fef0a00c412ab3250024b93bfab80e8dc959c30c` · SHA-256 `0fb8292ee8dc268453300cc11bba5f859f640a4870cabc1561a30fdbb2d3c3a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualCorrelationEdgeShell

/-!
# Absolute edge profile for the unchanged normalized source

The exact fixed normalization has a positive lower bound, and the full source
polynomial has an explicit absolute upper profile at every edge distance from
zero through 2A. This is a source estimate, not yet the integrated weighted
upper asymptotic or sixth-power census. Human exact-source and full-window
direction: grwtsk contributors. Local absolute profile: OpenAI Codex. Existing
source and Mathlib definitions retain their qualified identities.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationEdgeUpper
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ActualCorrelationEdgeProfile CorrelationRegularity Realization Set
noncomputable section
local notation "v" => normalizedTest explicitSecondDerivative

theorem fixed_source_normalization_lower {A : ℝ} (hA : 1 ≤ A) :
    (1 / 36 : ℝ) ≤ sourceNormalization A := by
  have hpos : 0 < A := by linarith
  have h2 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
  have h4 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
  unfold sourceNormalization
  norm_num at h2 h4 ⊢
  linarith

theorem fixed_source_normalization_root_lower {A : ℝ} (hA : 1 ≤ A) :
    (1 / 6 : ℝ) ≤ Real.sqrt (sourceNormalization A) := by
  have hZ := fixed_source_normalization_lower hA
  have hs := Real.sq_sqrt (source_normalization_pos A hA).le
  have hn := Real.sqrt_nonneg (sourceNormalization A)
  nlinarith

theorem full_edge_factor_absolute_upper {A s : ℝ} (hA : 0 < A)
    (hs0 : 0 ≤ s) (hsA : s ≤ 2 * A) :
    |edgeFactor A s| ≤ 4 * (64 + s ^ 2) := by
  have hu0 : 0 ≤ s / A := div_nonneg hs0 hA.le
  have hu2 : s / A ≤ 2 := (div_le_iff₀ hA).mpr hsA
  have hz : (A - s) / A = 1 - s / A := by field_simp
  have hz0 : 0 ≤ ((A - s) / A) ^ 2 := sq_nonneg _
  have hz1 : ((A - s) / A) ^ 2 ≤ 1 := by rw [hz]; nlinarith
  have hq0 : 0 ≤ (2 - s / A) ^ 2 := sq_nonneg _
  have hq4 : (2 - s / A) ^ 2 ≤ 4 := by nlinarith
  have hb : |7 * ((A - s) / A) ^ 2 - 1| ≤ 8 := by
    apply abs_le.mpr
    constructor <;> nlinarith
  have he : |s ^ 2 * (2 - s / A) ^ 2 / 4| ≤ s ^ 2 := by
    rw [abs_of_nonneg (by positivity)]
    nlinarith [mul_nonneg (sq_nonneg s) (sub_nonneg.mpr hq4)]
  have hbr : |8 * (7 * ((A - s) / A) ^ 2 - 1) -
      s ^ 2 * (2 - s / A) ^ 2 / 4| ≤ 64 + s ^ 2 := by
    exact (abs_sub _ _).trans (by rw [abs_mul]; norm_num; linarith)
  unfold edgeFactor
  rw [abs_mul, abs_of_nonneg hq0]
  exact mul_le_mul hq4 hbr (abs_nonneg _) (by positivity)

theorem actual_full_normalized_edge_absolute_upper {A s : ℝ} (hA : 1 ≤ A)
    (hs0 : 0 ≤ s) (hsA : s ≤ 2 * A) :
    |v A (A - s)| ≤ 24 * s ^ 2 * (64 + s ^ 2) / (A ^ 4 * Real.sqrt A) := by
  have hpos : 0 < A := by linarith
  have hmem : A - s ∈ Icc (-A) A := by constructor <;> linarith
  have hroot := Real.sqrt_pos.mpr (source_normalization_pos A hA)
  have hb := full_edge_factor_absolute_upper hpos hs0 hsA
  have hD : |dilationTest explicitSecondDerivative A (A - s)| ≤
      (s ^ 2 / (A ^ 4 * Real.sqrt A)) * (4 * (64 + s ^ 2)) := by
    rw [explicit_dilationTest_eq_indicator A hpos, indicator_of_mem hmem,
      exact_source_edge_factorization hpos, abs_mul,
      abs_of_nonneg (by positivity : 0 ≤ s ^ 2 / (A ^ 4 * Real.sqrt A))]
    exact mul_le_mul_of_nonneg_left hb (by positivity)
  have hinv : 1 / Real.sqrt (sourceNormalization A) ≤ 6 :=
    (div_le_iff₀ hroot).mpr (by linarith [fixed_source_normalization_root_lower hA])
  unfold normalizedTest
  rw [abs_div, abs_of_pos hroot, div_eq_mul_inv]
  have hmul := mul_le_mul hD hinv (by positivity) (by positivity)
  calc
    _ ≤ ((s ^ 2 / (A ^ 4 * Real.sqrt A)) * (4 * (64 + s ^ 2))) * 6 := by
      simpa only [one_div] using hmul
    _ = _ := by ring

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationEdgeUpper
```
