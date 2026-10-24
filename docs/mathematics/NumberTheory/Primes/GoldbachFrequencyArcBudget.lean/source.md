# Complete source: GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3a58baf8a462dd2c4a6fd6be73a4868cb569788` · SHA-256 `22a600e72e65a30bbcf003121570f7b359665dddc967ed4bf5f8f59077f41445`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachPrefixFrequencyEnvelope
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Integrating the frequency envelope on the actual clipped arcs

The new budget is an integral of an explicit prefix-derived envelope, not of
the unknown residual norm. It is bounded above by the previous coarse budget.
Model-major and complete signed minor estimates remain independent premises.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget

open scoped BigOperators Real ENNReal
open Set MeasureTheory
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary
open GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy
open GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer
open GRWTSK.NumberTheory.Primes.GoldbachPrefixFrequencyEnvelope

noncomputable section

/-- Retain the earlier uniform envelope as an additional pointwise cap. -/
def goldbachClippedFrequencyEnvelope
    (Q N : ℕ) (B : ℕ → ℕ → ℝ) (aq : ℕ × ℕ) (x : ℝ) : ℝ :=
  min (goldbachProgressionPointwiseErrorBudget N aq
    (goldbachPrefixResidueBudget Q N B))
    (goldbachPrefixFrequencyEnvelope N aq.1 aq.2 B
      (goldbachRationalArcOffset aq.1 aq.2 x))

/-- Integrate the explicit envelope on the actual clipped set. The three
lifts are already in that set; no multiplicative six-radius loss is inserted. -/
def goldbachFrequencyArcErrorBudget
    (Q N : ℕ) (B : ℕ → ℕ → ℝ) (aq : ℕ × ℕ) : ℝ :=
  ∫ x in goldbachClippedRationalArc Q N aq,
    goldbachClippedFrequencyEnvelope Q N B aq x

/-- Complete major residual budget with every indexed arc charged once. -/
def goldbachFrequencyMajorErrorBudget
    (Q N : ℕ) (B : ℕ → ℕ → ℝ) : ℝ :=
  ∑ aq ∈ goldbachRationalArcIndices Q, goldbachFrequencyArcErrorBudget Q N B aq

@[continuity, fun_prop]
theorem continuous_goldbachClippedFrequencyEnvelope
    (Q N : ℕ) (B : ℕ → ℕ → ℝ) (aq : ℕ × ℕ) :
    Continuous (goldbachClippedFrequencyEnvelope Q N B aq) := by
  unfold goldbachClippedFrequencyEnvelope goldbachRationalArcOffset
  fun_prop

theorem integrableOn_goldbachClippedFrequencyEnvelope
    (Q N : ℕ) (B : ℕ → ℕ → ℝ) (aq : ℕ × ℕ) :
    IntegrableOn (goldbachClippedFrequencyEnvelope Q N B aq)
      (goldbachClippedRationalArc Q N aq) := by
  exact ((continuous_goldbachClippedFrequencyEnvelope Q N B aq).intervalIntegrable 0 1).1.mono_set
    Set.inter_subset_left

/-- The unchanged prefix supplier bounds the residual by the new envelope. -/
theorem norm_goldbachProgressionResidual_le_clipped_frequency_envelope
    {Q N : ℕ} (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    {aq : ℕ × ℕ} (haq : aq ∈ goldbachRationalArcIndices Q)
    {x : ℝ} (hx : x ∈ goldbachClippedRationalArc Q N aq) :
    ‖goldbachProgressionCircleResidual N aq.1 aq.2 x‖ ≤
      goldbachClippedFrequencyEnvelope Q N B aq x := by
  have hmem := mem_goldbachRationalArcIndices.mp haq
  unfold goldbachClippedFrequencyEnvelope
  apply le_min
  · apply norm_goldbachProgressionCircleResidual_le_on_arc haq ?_ x hx
    intro y hy r hr
    exact (goldbachPrefixResidueBudget_bounds B hp haq hr).2 y hy
  · rw [goldbachProgressionCircleResidual_eq_centered N aq.1 aq.2 hmem.2.2.1 x]
    apply norm_goldbachCenteredResidual_le_frequency_envelope hmem.2.2.1 B
    intro r hr hc
    exact hp aq.2 hmem.2.2.1 hmem.2.1 r (Finset.mem_range.mp hr) hc

/-- The signed per-arc residual is bounded by the integrated envelope. -/
theorem norm_goldbachProgressionArcResidual_le_frequency_budget
    {Q N : ℕ} (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    {aq : ℕ × ℕ} (haq : aq ∈ goldbachRationalArcIndices Q) :
    ‖goldbachProgressionArcResidual Q N aq‖ ≤
      goldbachFrequencyArcErrorBudget Q N B aq := by
  rw [goldbachProgressionArcResidual_eq_integral]
  unfold goldbachFrequencyArcErrorBudget
  apply norm_integral_le_of_norm_le (integrableOn_goldbachClippedFrequencyEnvelope Q N B aq)
  rw [ae_restrict_iff' (measurable_goldbachClippedRationalArc Q N aq)]
  exact Filter.Eventually.of_forall fun x hx =>
    norm_goldbachProgressionResidual_le_clipped_frequency_envelope B hp haq hx

/-- The new per-arc budget cannot exceed the previous prefix budget. -/
theorem goldbachFrequencyArcErrorBudget_le_coarse
    {Q N : ℕ} (B : ℕ → ℕ → ℝ)
    {aq : ℕ × ℕ}
    (hnonneg : ∀ r ∈ Finset.range aq.2,
      0 ≤ goldbachPrefixResidueBudget Q N B aq r) :
    goldbachFrequencyArcErrorBudget Q N B aq ≤
      goldbachProgressionArcErrorBudget Q N aq (goldbachPrefixResidueBudget Q N B) := by
  let C := goldbachProgressionPointwiseErrorBudget N aq (goldbachPrefixResidueBudget Q N B)
  have hC : 0 ≤ C := goldbachProgressionPointwiseErrorBudget_nonneg hnonneg
  have hmeasure : volume (goldbachClippedRationalArc Q N aq) < ∞ :=
    (measure_mono Set.inter_subset_left).trans_lt measure_Ioc_lt_top
  calc
    goldbachFrequencyArcErrorBudget Q N B aq ≤
        ∫ _x in goldbachClippedRationalArc Q N aq, C := by
      apply setIntegral_mono_on
        (integrableOn_goldbachClippedFrequencyEnvelope Q N B aq)
        (integrableOn_const (ne_of_lt hmeasure))
        (measurable_goldbachClippedRationalArc Q N aq)
      intro x hx
      exact min_le_left _ _
    _ = C * volume.real (goldbachClippedRationalArc Q N aq) := by
      rw [setIntegral_const]
      simp [smul_eq_mul, mul_comm]
    _ ≤ C * (6 * goldbachRationalArcRadius Q N aq.2) :=
      mul_le_mul_of_nonneg_left (measureReal_goldbachClippedRationalArc_le Q N aq) hC
    _ = goldbachProgressionArcErrorBudget Q N aq (goldbachPrefixResidueBudget Q N B) := rfl

/-- Domination holds after summing every arc, using the unchanged supplier. -/
theorem goldbachFrequencyMajorErrorBudget_le_prefix
    {Q N : ℕ} (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r) :
    goldbachFrequencyMajorErrorBudget Q N B ≤ goldbachPrefixMajorErrorBudget Q N B := by
  apply Finset.sum_le_sum
  intro aq haq
  exact goldbachFrequencyArcErrorBudget_le_coarse B
    (fun r hr => (goldbachPrefixResidueBudget_bounds B hp haq hr).1)

/-- A smaller major budget still requires the complete signed minor allowance
and one strict combined margin against an independently supplied model lower. -/
theorem goldbachCount_pos_of_frequency_prefix_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (modelLower minorError : ℝ)
    (hmodel : modelLower ≤ (goldbachProgressionArcModelMajorSum Q N).re)
    (hminor : ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin : goldbachFrequencyMajorErrorBudget Q N B + minorError < modelLower) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_arc_model_bounds hscale (goldbachProgressionArcModel N)
    (goldbachFrequencyArcErrorBudget Q N B) modelLower minorError
  · exact hmodel
  · intro aq haq
    exact norm_goldbachProgressionArcResidual_le_frequency_budget B hp haq
  · exact hminor
  · exact hmargin

/-- Universal tail consumer. It does not supply finite coverage below `N0`. -/
theorem goldbachCount_pos_above_of_frequency_prefix_supplier
    {N₀ : ℕ} (Q : ℕ → ℕ) (B : ℕ → ℕ → ℕ → ℝ)
    (hp : GoldbachReducedPrefixSupplier N₀ Q B) (L T : ℕ → ℝ)
    (hscale : ∀ N, N₀ ≤ N → 2 < N → Even N → 2 * (Q N) ^ 2 < N + 1)
    (hmodel : ∀ N, N₀ ≤ N → 2 < N → Even N →
      L N ≤ (goldbachProgressionArcModelMajorSum (Q N) N).re)
    (hminor : ∀ N, N₀ ≤ N → 2 < N → Even N →
      ‖goldbachRationalMinorContribution (Q N) N‖ ≤ T N)
    (hmargin : ∀ N, N₀ ≤ N → 2 < N → Even N →
      goldbachFrequencyMajorErrorBudget (Q N) N (B N) + T N < L N) :
    ∀ N, N₀ ≤ N → 2 < N → Even N → 0 < goldbachCount N := by
  intro N hN htwo heven
  exact goldbachCount_pos_of_frequency_prefix_bounds (hscale N hN htwo heven) (B N)
    (hp N hN htwo heven) (L N) (T N)
    (hmodel N hN htwo heven) (hminor N hN htwo heven) (hmargin N hN htwo heven)

end
end GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget
```
