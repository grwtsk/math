# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFromPrefix

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a07ba4dac6de74a96ee2f64ee3561122e7c41e1` · SHA-256 `5ff7c12a4a382a1e585cbe275d4fb84369b5000004f5eacdb36d86a630a8e4fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogCumulativeCutoff
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem abs_cumulative_le_of_prefix_bound
    {X : ℕ} (hX : 1 ≤ X)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1)
    {A : ℝ} (hA : DyadicPrefixMangoldtBoundAt X A) :
    |cumulative X t| ≤ (A + 2) / (X : ℝ) := by
  rw [cumulative_eq_atomic_sub_log]
  rw [thinHistoricalAtomicCumulative_eq_weightedPrefix hX ht0 ht1]
  have hm := centeredGreenCutoff_bounds hX ht0 ht1
  have hweighted := abs_centeredGreenWeightedPrefixError_le
    hX hm.1 hm.2 hA
  have hbase := abs_centeredGreenBaselinePrefixResidual_le hX ht0 ht1
  unfold centeredGreenWeightedPrefixError
    centeredGreenBaselinePrefixResidual at hweighted hbase
  exact (abs_sub_le _ _ _).trans (by linarith)

theorem abs_normalizedMangoldtDiscrepancy_le_of_prefix_bound
    {X : ℕ} (hX : 1 ≤ X)
    {A : ℝ} (hA : DyadicPrefixMangoldtBoundAt X A) :
    |centeredGreenDyadicMangoldtNormalizedDiscrepancy X| ≤
      A / (X : ℝ) := by
  rw [normalizedMangoldtDiscrepancy_eq_raw_div hX,
    ← prefixMangoldtError_two_mul_eq_raw hX]
  rw [abs_div, abs_of_nonneg (by positivity : 0 ≤ (X : ℝ))]
  exact div_le_div_of_nonneg_right
    (hA.2 (2 * X) (by simp; omega)) (by positivity)

theorem abs_mass1_le_of_prefix_bound
    {X : ℕ} (hX : 1 ≤ X)
    {A : ℝ} (hA : DyadicPrefixMangoldtBoundAt X A) :
    |mass1 X| ≤ (2 * A + 1) / (X : ℝ) := by
  rw [mass1_eq_normalized_mangoldt_sub_mass0 hX]
  have hψ := abs_normalizedMangoldtDiscrepancy_le_of_prefix_bound hX hA
  have h0 := abs_mass0_le_of_prefix_bound hX hA
  exact (abs_sub_le _ _ _).trans (by linarith)

theorem abs_center_le_of_prefix_bound
    {X : ℕ} (hX : 1 ≤ X)
    {A : ℝ} (hA : DyadicPrefixMangoldtBoundAt X A) :
    |center X| ≤ (3 * A + 2) / (X : ℝ) := by
  unfold center
  have h0 := abs_mass0_le_of_prefix_bound hX hA
  have h1 := abs_mass1_le_of_prefix_bound hX hA
  exact (abs_sub_le _ _ _).trans (by linarith)

/-- Uniform pointwise control of the full centered Green residual. -/
theorem abs_greenResidual_le_of_prefix_bound
    {X : ℕ} (hX : 1 ≤ X)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1)
    {A : ℝ} (hA : DyadicPrefixMangoldtBoundAt X A) :
    |cumulative X t - center X| ≤
      (4 * A + 4) / (X : ℝ) := by
  have hc := abs_cumulative_le_of_prefix_bound hX ht0 ht1 hA
  have hcenter := abs_center_le_of_prefix_bound hX hA
  exact (abs_sub_le _ _ _).trans (by linarith)

/-- Pointwise prefix control immediately gives a Green L2 energy bound. -/
theorem greenEnergy_le_of_prefix_bound
    {X : ℕ} (hX : 1 ≤ X)
    {A : ℝ} (hA : DyadicPrefixMangoldtBoundAt X A) :
    greenEnergy X ≤ ((4 * A + 4) / (X : ℝ))^2 := by
  unfold greenEnergy
  have hpoint : ∀ t ∈ Set.Icc (0 : ℝ) 1,
      (cumulative X t - center X)^2 ≤
        ((4 * A + 4) / (X : ℝ))^2 := by
    intro t ht
    have habs := abs_greenResidual_le_of_prefix_bound
      hX ht.1 ht.2 hA
    nlinarith [sq_abs (cumulative X t - center X)]
  calc
    _ ≤ ∫ _t in Set.Icc (0 : ℝ) 1,
        ((4 * A + 4) / (X : ℝ))^2 := by
      exact integral_mono_ae
        (by positivity)
        (Filter.Eventually.of_forall (fun t => by
          by_cases ht : t ∈ Set.Icc (0 : ℝ) 1
          · exact hpoint t ht
          · simp [ht]))
    _ = ((4 * A + 4) / (X : ℝ))^2 := by
      simp

end GRWTSK.RiemannHypothesis
```
