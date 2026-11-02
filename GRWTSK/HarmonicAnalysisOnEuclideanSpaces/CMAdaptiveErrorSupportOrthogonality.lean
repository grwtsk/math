/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveBirthEnvelope
import Mathlib.Tactic

/-!
# Pairwise disjoint support of the actual signed adaptive birth defects

The original signed atom error belongs to a single positive logarithmic
birth window. Its product with any distinct atom error is literally zero
at every physical time. This is an exact pointwise statement about the
smoothing DEFECT, not about the original signed Mobius waveform.

The original waveform still contains all ordered off-diagonal products.
The source-to-cell INTEGRAL return and scalar cell-calculus bound are
separate remaining analytic obligations; no integration conclusion or
arithmetic supplier is inserted as an axiom.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveErrorSupportOrthogonality

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMWindowedBirthResidueRegularization
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveBirthEnvelope

/-- No original unsmoothed atom is active strictly before its own birth. -/
theorem sourceBirthDefect_zero_before (n : ℕ) (u : ℝ)
    (hu : u < sourceBirthTime n) :
    sourceBirthDefect n u = 0 := by
  have hnot : ¬ Real.log (n : ℝ) ≤ u := by
    exact not_le.mpr (by simpa only [sourceBirthTime] using hu)
  have hr : pickupResponse n u = 0 := by
    simp [pickupResponse, hnot]
  have hs : adaptiveResponse n u = 0 :=
    adaptiveResponse_zero_before n u hu.le
  simp [sourceBirthDefect, hr, hs]

/-- Once an adaptive window is completed, the full signed atom returns. -/
theorem sourceBirthDefect_zero_after (n : ℕ) (u : ℝ)
    (hu : sourceBirthTime n + adaptiveWidth n ≤ u) :
    sourceBirthDefect n u = 0 := by
  have hr := adaptiveResponse_eq_source_after n u hu
  simp [sourceBirthDefect, hr]

/-- All nonzero error lies in the source's actual, unmodified birth cell. -/
theorem sourceBirthDefect_nonzero_window (n : ℕ) (u : ℝ)
    (h : sourceBirthDefect n u ≠ 0) :
    sourceBirthTime n ≤ u ∧
      u < sourceBirthTime n + adaptiveWidth n := by
  constructor
  · by_contra hn
    have hu : u < sourceBirthTime n := lt_of_not_ge hn
    exact h (sourceBirthDefect_zero_before n u hu)
  · by_contra hn
    have hu : sourceBirthTime n + adaptiveWidth n ≤ u := le_of_not_gt hn
    exact h (sourceBirthDefect_zero_after n u hu)

/-- Different positive-index signed birth defects never overlap.
The original Mobius sign is retained even though its coefficient does
not enter the disjoint-support argument. -/
theorem distinct_sourceBirthDefect_mul_zero
    (n m : ℕ) (hn : 1 ≤ n) (hm : 1 ≤ m) (hne : n ≠ m)
    (u : ℝ) :
    sourceBirthDefect n u * sourceBirthDefect m u = 0 := by
  by_cases hzn : sourceBirthDefect n u = 0
  · simp [hzn]
  by_cases hzm : sourceBirthDefect m u = 0
  · simp [hzm]
  obtain ⟨hun, hun'⟩ := sourceBirthDefect_nonzero_window n u hzn
  obtain ⟨hum, hum'⟩ := sourceBirthDefect_nonzero_window m u hzm
  rcases lt_trichotomy n m with hlt | heq | hgt
  · have hlt' : u < sourceBirthTime m :=
      lt_of_lt_of_le hun' (adaptiveWindow_separated hn hlt)
    exact (not_lt_of_ge hum hlt').elim
  · exact (hne heq).elim
  · have hlt' : u < sourceBirthTime n :=
      lt_of_lt_of_le hum' (adaptiveWindow_separated hm hgt)
    exact (not_lt_of_ge hun hlt').elim

/-- Source-independent finite square lemma: no mixed products survive if
different real summands have disjoint supports at the chosen point. -/
private theorem square_finset_sum_of_pairwise_zero {α : Type*}
    [DecidableEq α] (f : α → ℝ) :
    ∀ s : Finset α,
      (∀ a ∈ s, ∀ b ∈ s, a ≠ b → f a * f b = 0) →
      (∑ a ∈ s, f a) ^ 2 = ∑ a ∈ s, (f a) ^ 2 := by
  classical
  intro s
  induction s using Finset.induction_on with
  | empty =>
      intro _
      simp
  | @insert a s ha ih =>
      intro hz
      have hrest : ∀ b ∈ s, ∀ c ∈ s, b ≠ c → f b * f c = 0 := by
        intro b hb c hc hbc
        exact hz b (Finset.mem_insert_of_mem hb)
          c (Finset.mem_insert_of_mem hc) hbc
      have hcross : f a * (∑ b ∈ s, f b) = 0 := by
        rw [Finset.mul_sum]
        apply Finset.sum_eq_zero
        intro b hb
        apply hz a (by simp) b (Finset.mem_insert_of_mem hb)
        intro hab
        apply ha
        simpa [hab] using hb
      have hrec := ih hrest
      rw [Finset.sum_insert ha, Finset.sum_insert ha]
      nlinarith [hcross, hrec]

private theorem positive_of_mem_indices {j n : ℕ} (h : n ∈ indices j) :
    1 ≤ n := by
  have hi : n ∈ Finset.Icc 1 (2 ^ j) := by
    simpa only [indices] using h
  exact (Finset.mem_Icc.mp hi).1

/-- Exact error Pythagoras at every time, with no time average or wave
dispersion. This DOES NOT imply a similar identity for the original
coherent Mobius waveform: its ordered cross interactions remain. -/
theorem adaptiveErrorWave_sq_eq_atomic_sum (j : ℕ) (u : ℝ) :
    (adaptiveErrorWave j u) ^ 2 =
      ∑ n ∈ indices j, (sourceBirthDefect n u) ^ 2 := by
  rw [adaptiveErrorWave_eq_signed_sum]
  change (∑ n ∈ indices j, sourceBirthDefect n u) ^ 2 =
    ∑ n ∈ indices j, (sourceBirthDefect n u) ^ 2
  apply square_finset_sum_of_pairwise_zero
  intro n hn m hm hne
  exact distinct_sourceBirthDefect_mul_zero n m
    (positive_of_mem_indices hn) (positive_of_mem_indices hm) hne u

/-- Universal pointwise energy comparisons. Every original mixed arithmetic
term remains in originalFixedWave, while the adaptive smoothing difference
is paid as a separately known square. -/
theorem original_adaptive_two_square_comparisons (j : ℕ) (u : ℝ) :
    ((originalFixedWave j u) ^ 2 ≤
      2 * (adaptiveSmoothWave j u) ^ 2 +
        2 * (adaptiveErrorWave j u) ^ 2) ∧
    ((adaptiveSmoothWave j u) ^ 2 ≤
      2 * (originalFixedWave j u) ^ 2 +
        2 * (adaptiveErrorWave j u) ^ 2) := by
  constructor
  · rw [originalFixedWave_eq_adaptive_add_error j u]
    nlinarith [sq_nonneg (adaptiveSmoothWave j u - adaptiveErrorWave j u)]
  · have h : adaptiveSmoothWave j u =
        originalFixedWave j u - adaptiveErrorWave j u := by
      rw [originalFixedWave_eq_adaptive_add_error]
      ring
    rw [h]
    nlinarith [sq_nonneg (originalFixedWave j u + adaptiveErrorWave j u)]

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveErrorSupportOrthogonality
