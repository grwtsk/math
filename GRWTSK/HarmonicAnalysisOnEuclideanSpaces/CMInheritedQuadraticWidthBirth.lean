/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveErrorSupportOrthogonality
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSmoothBirthGramRegularization
import Mathlib.Tactic

/-!
# Reuse the preexisting kappa / n^2 signed Möbius birth smoother

This is the ALREADY PUBLISHED smoothBirthResponse, specialized only to
Real.smoothTransition. The original arithmetic weights, closed inventory
and causal pickupResponse are not replaced. For 0<kappa<=1/2 the old width
kappa/n^2 fits in the current adaptive 1/(n+1) birth cell. Hence signed
errors of distinct original positive integers have exactly disjoint
physical-time support, and only their error squares orthogonalize.

The companion review proves on paper the sharper global error budget
(7/18)*kappa^3 and the exact recovery of the original entire signed
energy via the usual mixed term. The integral bound is NOT inserted here
as a theorem/axiom; native elaboration and audit are NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMInheritedQuadraticWidthBirth

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth
open GRWTSK.NumberTheory.Moebius.SmoothBirthGramRegularization

/-- The preexisting quadratic-width transition; this is NOT a new kernel. -/
def quadraticWidth (κ : ℝ) (n : ℕ) : ℝ := κ / (n : ℝ) ^ 2

theorem quadraticWidth_pos (κ : ℝ) {n : ℕ}
    (hκ : 0 < κ) (hn : 1 ≤ n) : 0 < quadraticWidth κ n := by
  unfold quadraticWidth
  have h : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  positivity

/-- For 0<kappa<=1/2 the OLD window nests inside the adaptive one. -/
theorem quadraticWidth_le_adaptiveWidth
    (κ : ℝ) {n : ℕ} (hκ : 0 < κ) (hκhalf : κ ≤ 1 / 2)
    (hn : 1 ≤ n) :
    quadraticWidth κ n ≤ adaptiveWidth n := by
  have hnreal : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hnn : (0 : ℝ) < n := by linarith
  have hsquared : (n : ℝ) ≤ (n : ℝ) ^ 2 := by
    nlinarith [mul_nonneg (le_of_lt hnn) (sub_nonneg.mpr hnreal)]
  have htwosq : (n : ℝ) + 1 ≤ 2 * (n : ℝ) ^ 2 := by
    nlinarith [hsquared]
  have hcost : κ * ((n : ℝ) + 1) ≤ (n : ℝ) ^ 2 := by
    calc
      κ * ((n : ℝ) + 1) ≤ (1 / 2 : ℝ) * ((n : ℝ) + 1) :=
        mul_le_mul_of_nonneg_right hκhalf (by linarith)
      _ ≤ (n : ℝ) ^ 2 := by linarith
  unfold quadraticWidth adaptiveWidth
  apply (div_le_div_iff₀ (by positivity : (0 : ℝ) < (n : ℝ) ^ 2)
    (by positivity : (0 : ℝ) < (n : ℝ) + 1)).mpr
  simpa using hcost

theorem quadraticWidth_ends_before_next
    (κ : ℝ) {n : ℕ} (hκ : 0 < κ) (hκhalf : κ ≤ 1 / 2)
    (hn : 1 ≤ n) :
    Real.log (n : ℝ) + quadraticWidth κ n ≤
      Real.log ((n + 1 : ℕ) : ℝ) := by
  have h := quadraticWidth_le_adaptiveWidth κ hκ hκhalf hn
  have hadapt := adaptiveWindow_ends_before_next hn
  dsimp [sourceBirthTime] at hadapt
  linarith

theorem quadraticWidth_separated
    (κ : ℝ) {n m : ℕ} (hκ : 0 < κ) (hκhalf : κ ≤ 1 / 2)
    (hn : 1 ≤ n) (hnm : n < m) :
    Real.log (n : ℝ) + quadraticWidth κ n ≤ Real.log (m : ℝ) := by
  have hwidth := quadraticWidth_le_adaptiveWidth κ hκ hκhalf hn
  have hsep := adaptiveWindow_separated hn hnm
  dsimp [sourceBirthTime] at hsep
  linarith

/-- Exactly the older published response, not an alternative approximation. -/
def inheritedResponse (κ : ℝ) (n : ℕ) (u : ℝ) : ℝ :=
  smoothBirthResponse Real.smoothTransition κ n u

theorem inheritedResponse_zero_before (κ : ℝ) (n : ℕ)
    (u : ℝ) (hκ : 0 < κ) (hu : u ≤ Real.log (n : ℝ)) :
    inheritedResponse κ n u = 0 := by
  exact smoothBirthResponse_before Real.smoothTransition κ n u hκ
    (fun x hx => Real.smoothTransition.zero_of_nonpos hx) hu

/-- Once the old narrower window ends, the ORIGINAL response returns. -/
theorem inheritedResponse_eq_source_after (κ : ℝ) {n : ℕ}
    (hn : 1 ≤ n) (hκ : 0 < κ) (u : ℝ)
    (hu : Real.log (n : ℝ) + quadraticWidth κ n ≤ u) :
    inheritedResponse κ n u = pickupResponse n u := by
  have hsq : (0 : ℝ) < (n : ℝ) ^ 2 := by
    have hnpos : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
    positivity
  have hku : quadraticWidth κ n ≤ u - Real.log (n : ℝ) := by
    linarith
  have hmult : ((n : ℝ) ^ 2 / κ) * quadraticWidth κ n = 1 := by
    unfold quadraticWidth
    field_simp [ne_of_gt hκ, ne_of_gt hsq]
  have harg : 1 ≤ ((n : ℝ) ^ 2 / κ) * (u - Real.log (n : ℝ)) := by
    calc
      (1 : ℝ) = ((n : ℝ) ^ 2 / κ) * quadraticWidth κ n := hmult.symm
      _ ≤ ((n : ℝ) ^ 2 / κ) * (u - Real.log (n : ℝ)) :=
        mul_le_mul_of_nonneg_left hku (by positivity)
  exact smoothBirthResponse_after Real.smoothTransition κ n u
    (fun x hx => Real.smoothTransition.one_of_one_le hx)
    (by linarith [quadraticWidth_pos κ hκ hn]) harg

/-- The exact original coefficient, including zero values for squareful n. -/
def inheritedSignedDefect (κ : ℝ) (n : ℕ) (u : ℝ) : ℝ :=
  moebiusReal n * (pickupResponse n u - inheritedResponse κ n u)

theorem inheritedSignedDefect_zero_before (κ : ℝ) {n : ℕ}
    (hn : 1 ≤ n) (hκ : 0 < κ) (u : ℝ)
    (hu : u < Real.log (n : ℝ)) :
    inheritedSignedDefect κ n u = 0 := by
  have hresponse : pickupResponse n u = 0 := by
    simp [pickupResponse, not_le.mpr hu]
  have hsm : inheritedResponse κ n u = 0 :=
    inheritedResponse_zero_before κ n u hκ hu.le
  simp [inheritedSignedDefect, hresponse, hsm]

theorem inheritedSignedDefect_zero_after (κ : ℝ) {n : ℕ}
    (hn : 1 ≤ n) (hκ : 0 < κ) (u : ℝ)
    (hu : Real.log (n : ℝ) + quadraticWidth κ n ≤ u) :
    inheritedSignedDefect κ n u = 0 := by
  rw [inheritedSignedDefect, inheritedResponse_eq_source_after κ hn hκ u hu]
  ring

theorem inheritedSignedDefect_nonzero_window (κ : ℝ) {n : ℕ}
    (hn : 1 ≤ n) (hκ : 0 < κ) (u : ℝ)
    (hz : inheritedSignedDefect κ n u ≠ 0) :
    Real.log (n : ℝ) ≤ u ∧
      u < Real.log (n : ℝ) + quadraticWidth κ n := by
  constructor
  · by_contra hbad
    exact hz (inheritedSignedDefect_zero_before κ hn hκ u
      (lt_of_not_ge hbad))
  · by_contra hbad
    exact hz (inheritedSignedDefect_zero_after κ hn hκ u
      (le_of_not_gt hbad))

/-- Different original signed birth defects are pointwise orthogonal. -/
theorem inheritedSignedDefect_pairwise_zero
    (κ : ℝ) (hκ : 0 < κ) (hκhalf : κ ≤ 1 / 2)
    {n m : ℕ} (hn : 1 ≤ n) (hm : 1 ≤ m) (hnm : n ≠ m)
    (u : ℝ) :
    inheritedSignedDefect κ n u * inheritedSignedDefect κ m u = 0 := by
  by_cases hnzero : inheritedSignedDefect κ n u = 0
  · simp [hnzero]
  by_cases hmzero : inheritedSignedDefect κ m u = 0
  · simp [hmzero]
  obtain ⟨hnu, hnend⟩ :=
    inheritedSignedDefect_nonzero_window κ hn hκ u hnzero
  obtain ⟨hmu, hmend⟩ :=
    inheritedSignedDefect_nonzero_window κ hm hκ u hmzero
  rcases lt_trichotomy n m with hlt | heq | hgt
  · have hsep := quadraticWidth_separated κ hκ hκhalf hn hlt
    exact (not_lt_of_ge hmu (lt_of_lt_of_le hnend hsep)).elim
  · exact (hnm heq).elim
  · have hsep := quadraticWidth_separated κ hκ hκhalf hm hgt
    exact (not_lt_of_ge hnu (lt_of_lt_of_le hmend hsep)).elim

/-- The older smooth response across the SAME original closed inventory. -/
def inheritedSmoothWave (κ : ℝ) (j : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ indices j, moebiusReal n * inheritedResponse κ n u

def inheritedErrorWave (κ : ℝ) (j : ℕ) (u : ℝ) : ℝ :=
  originalFixedWave j u - inheritedSmoothWave κ j u

theorem inheritedErrorWave_eq_signed_sum (κ : ℝ) (j : ℕ) (u : ℝ) :
    inheritedErrorWave κ j u =
      ∑ n ∈ indices j, inheritedSignedDefect κ n u := by
  unfold inheritedErrorWave originalFixedWave inheritedSmoothWave
    inheritedSignedDefect
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  ring

/-- Keep the original off-diagonal terms and the full mixed cross term. -/
theorem original_eq_inherited_plus_error (κ : ℝ) (j : ℕ) (u : ℝ) :
    originalFixedWave j u =
      inheritedSmoothWave κ j u + inheritedErrorWave κ j u := by
  unfold inheritedErrorWave
  ring

theorem original_inherited_signed_square (κ : ℝ) (j : ℕ) (u : ℝ) :
    (originalFixedWave j u) ^ 2 =
      (inheritedSmoothWave κ j u) ^ 2 +
        2 * inheritedSmoothWave κ j u * inheritedErrorWave κ j u +
          (inheritedErrorWave κ j u) ^ 2 := by
  rw [original_eq_inherited_plus_error]
  ring

/-- Named analytic target, NOT a theorem: the paper calculation gives
global L2 signed defect <= (7/18) * kappa^3 for kappa in (0,1/2].
Existing original source energy and arithmetic growth remain unchanged. -/
def InheritedCubicErrorEnergyBudget : Prop :=
  ∀ κ : ℝ, 0 < κ → κ ≤ 1 / 2 →
    ∀ j : ℕ,
      (∫ u in (0 : ℝ)..dyadicTime j,
        (inheritedErrorWave κ j u) ^ 2) ≤
          (7 / 18 : ℝ) * κ ^ 3

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMInheritedQuadraticWidthBirth
