/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Historical analytic approach: Alex Kontorovich, Terry Tao, and
collaborators of the Prime Number Theorem + Project.
Mathlib and that project retain their original authorship/licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerSmoothIntervalBrackets
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.Asymptotics.AsymptoticEquivalent
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators ContDiff

/-!
# Relative interval limits from the genuine smooth Wiener test limit

The pinned parent branch constructs two true smooth Urysohn witnesses
bracketing the half-open interval indicator and with their integral
masses within the same positive error eta of the interval length.

This source now proves the ANALYTIC squeeze:
  full smooth-test convergence + nonnegative coefficients
    -> true half-open arithmetic interval limit
    -> the exact relative-window limit required by the previous
       pinned Wiener-Ikehara interval-to-full theorem.

This is not another free interval-limit wrapper.  The source proves:
 * literal membership equivalence at both ceiling endpoints;
 * tsum identity with the actual finite arithmetic interval;
 * summability of smooth weights from their compact support;
 * a true two-sided tsum inequality for all positive scales;
 * epsilon squeeze to interval length;
 * natural-scale specialization, then the actual pinned Lambda target.

The smooth-test Wiener-Ikehara convergence itself is a named,
explicitly unsupplied analytic premise; its historical proof uses
Schwartz/Fourier machinery and is NOT imported in this child.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SMOOTH_TO_INTERVAL_SQUEEZE_SOURCE_DEFINED /
TSUM_TO_ACTUAL_CEILING_WINDOW_SOURCE_DEFINED /
PINNED_LAMBDA_RELATIVE_WINDOW_CONSUMER_DEFINED /
SMOOTH_TEST_WIENER_IKEHARA_THEOREM_PROOF_OPEN /
NO_UNCONDITIONAL_PNT_OR_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Set Filter MeasureTheory Finset

/-- Exact f=Lambda, residue-one specialization of the historical
real-valued smooth Wiener-Ikehara summation conclusion, parameterized
by arbitrary real arithmetic coefficients.

This is a PROP only: the historical Fourier theorem's proof term has
not been imported into the pinned Mathlib revision. -/
def SmoothUnitResidueWienerTestLimit (f : ℕ → ℝ) : Prop :=
  ∀ (φ : ℝ → ℝ),
    ContDiff ℝ ∞ φ →
    HasCompactSupport φ →
    closure (Function.support φ) ⊆ Set.Ioi (0 : ℝ) →
    Tendsto
      (fun T : ℝ =>
        (∑' n : ℕ, f n * φ ((n : ℝ) / T)) / T)
      atTop
      (nhds (∫ t in Set.Ioi (0 : ℝ), φ t))

/-- Literal right-open finite interval is precisely membership of
n/T in the half-open real interval. Both bounds use CEIL, not floor. -/
theorem smoothWiener_mem_Ico_ceil_iff
    {a b T : ℝ} (hT : 0 < T) (n : ℕ) :
    n ∈ Finset.Ico ⌈a * T⌉₊ ⌈b * T⌉₊ ↔
      ((n : ℝ) / T) ∈ Set.Ico a b := by
  have hleft :
      ⌈a * T⌉₊ ≤ n ↔ a ≤ (n : ℝ) / T := by
    rw [le_div_iff₀ hT, Nat.ceil_le]
  have hright :
      n < ⌈b * T⌉₊ ↔ (n : ℝ) / T < b := by
    rw [div_lt_iff₀ hT, Nat.lt_ceil]
  simpa only [Finset.mem_Ico, Set.mem_Ico] using
    and_congr hleft hright

/-- The infinite sum of the arithmetic INDICATOR is in fact a finite
sum on the precise integer interval, for each positive real T. -/
theorem smoothWiener_tsum_indicator_eq_interval
    (f : ℕ → ℝ) {a b T : ℝ} (hT : 0 < T) :
    (∑' n : ℕ,
      f n * (Set.Ico a b).indicator
        (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) =
      ∑ n ∈ Finset.Ico ⌈a * T⌉₊ ⌈b * T⌉₊, f n := by
  classical
  have hzero (n : ℕ)
      (hn : n ∉ Finset.Ico ⌈a * T⌉₊ ⌈b * T⌉₊) :
      f n * (Set.Ico a b).indicator
        (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T) = 0 := by
    have hnot : ((n : ℝ) / T) ∉ Set.Ico a b := by
      intro hn'
      exact hn ((smoothWiener_mem_Ico_ceil_iff hT n).mpr hn')
    simp [Set.indicator_of_notMem hnot]
  rw [tsum_eq_sum hzero]
  apply Finset.sum_congr rfl
  intro n hn
  have hmem := (smoothWiener_mem_Ico_ceil_iff hT n).mp hn
  simp [Set.indicator_of_mem hmem]

/-- Real compact support makes the actual smooth arithmetic term
family finitely supported at EACH positive scale. There is no
unsupported infinite-sum interchange or arithmetic growth hypothesis. -/
theorem smoothWiener_weight_summable
    (f : ℕ → ℝ) {φ : ℝ → ℝ}
    (hφ : HasCompactSupport φ)
    {T : ℝ} (hT : 0 < T) :
    Summable (fun n : ℕ => f n * φ ((n : ℝ) / T)) := by
  obtain ⟨M, hM⟩ := hφ.bddAbove.mono subset_closure
  apply summable_of_finite_support
  simp only [Function.support_mul]
  apply Set.Finite.inter_of_right
  rw [Set.finite_iff_bddAbove]
  refine ⟨⌈M * T⌉₊, ?_⟩
  intro n hn
  simpa using Nat.ceil_mono
    ((div_le_iff₀ hT).mp (hM hn))

/-- The literal arithmetic half-open interval test is also finitely
supported. This supplies the second summability hypothesis needed
for termwise tsum monotonicity. -/
theorem smoothWiener_indicator_summable
    (f : ℕ → ℝ) {a b T : ℝ} (hT : 0 < T) :
    Summable
      (fun n : ℕ =>
        f n *
          (Set.Ico a b).indicator
            (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) := by
  classical
  apply summable_of_finite_support
  refine (Finset.finite_toSet
    (Finset.Ico ⌈a * T⌉₊ ⌈b * T⌉₊)).subset ?_
  intro n hn
  have hmem : ((n : ℝ) / T) ∈ Set.Ico a b := by
    by_contra hnot
    have hzero :
        f n *
          (Set.Ico a b).indicator
            (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T) = 0 := by
      simp [Set.indicator_of_notMem hnot]
    exact hn hzero
  exact (smoothWiener_mem_Ico_ceil_iff hT n).mpr hmem

/-- The actual two-sided infinite-sum sandwich holds for nonnegative
coefficients and genuine compactly supported smooth weights. -/
theorem smoothWiener_weightedTsum_sandwich
    (f : ℕ → ℝ) (hf : ∀ n, 0 ≤ f n)
    {a b T : ℝ} (hT : 0 < T)
    (lo hi : ℝ → ℝ)
    (hloCompact : HasCompactSupport lo)
    (hhiCompact : HasCompactSupport hi)
    (hlo : ∀ x : ℝ,
      lo x ≤ (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x)
    (hhi : ∀ x : ℝ,
      (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x ≤ hi x) :
    ((∑' n : ℕ, f n * lo ((n : ℝ) / T)) / T ≤
      (∑' n : ℕ,
        f n * (Set.Ico a b).indicator
          (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) / T) ∧
    ((∑' n : ℕ,
        f n * (Set.Ico a b).indicator
          (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) / T ≤
      (∑' n : ℕ, f n * hi ((n : ℝ) / T)) / T) := by
  have hsumLo := smoothWiener_weight_summable f hloCompact hT
  have hsumHi := smoothWiener_weight_summable f hhiCompact hT
  have hsumInd := smoothWiener_indicator_summable f hT
  constructor
  · apply div_le_div_of_nonneg_right _ hT.le
    exact Summable.tsum_le_tsum
      (fun n => mul_le_mul_of_nonneg_left
        (hlo ((n : ℝ) / T)) (hf n))
      hsumLo hsumInd
  · apply div_le_div_of_nonneg_right _ hT.le
    exact Summable.tsum_le_tsum
      (fun n => mul_le_mul_of_nonneg_left
        (hhi ((n : ℝ) / T)) (hf n))
      hsumInd hsumHi

/-- Genuine analytic squeeze: convergence against all smooth positive-
support test functions forces the half-open interval sum limit, using
actual pinned smooth Urysohn witness functions and their integrated
mass bounds. The premise is precisely the missing smoothed WI theorem. -/
theorem smoothWiener_testLimit_to_realInterval
    (f : ℕ → ℝ) (hf : ∀ n, 0 ≤ f n)
    (hsmooth : SmoothUnitResidueWienerTestLimit f)
    {a b : ℝ} (ha : 0 < a) (hab : a < b) :
    Tendsto
      (fun T : ℝ =>
        (∑' n : ℕ,
          f n * (Set.Ico a b).indicator
            (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) / T)
      atTop (nhds (b - a)) := by
  apply Metric.tendsto_atTop.mpr
  intro ε hε
  let η : ℝ := min (a / 2) (min ((b - a) / 2) (ε / 4))
  have hwidth : 0 < b - a := sub_pos.mpr hab
  have hη : 0 < η := by
    dsimp [η]
    positivity
  have hηleft : η < a := by
    have h := min_le_left (a / 2) (min ((b - a) / 2) (ε / 4))
    dsimp [η]
    linarith
  have hηwidth : η < b - a := by
    have h := (min_le_right (a / 2)
      (min ((b - a) / 2) (ε / 4))).trans
      (min_le_left ((b - a) / 2) (ε / 4))
    dsimp [η]
    linarith
  have hηε : η ≤ ε / 4 := by
    dsimp [η]
    exact (min_le_right _ _).trans (min_le_right _ _)
  obtain ⟨lo, hi, hlosmooth, hhismooth,
    hloCompact, hhiCompact, hloAway, hhiAway,
    hpoint, hloMass, hhiMass⟩ :=
    pinnedSmoothIntervalBrackets_exists
      ha hab hη hηleft hηwidth
  have hlowLimit := hsmooth lo hlosmooth hloCompact hloAway
  have hhiLimit := hsmooth hi hhismooth hhiCompact hhiAway
  obtain ⟨Blo, hBlo⟩ :=
    (Metric.tendsto_atTop.mp hlowLimit)
      (ε / 4) (by linarith)
  obtain ⟨Bhi, hBhi⟩ :=
    (Metric.tendsto_atTop.mp hhiLimit)
      (ε / 4) (by linarith)
  refine ⟨max (max Blo Bhi) 1, ?_⟩
  intro T hTlarge
  have hBloT : Blo ≤ T :=
    (le_max_left _ _).trans ((le_max_left _ _).trans hTlarge)
  have hBhiT : Bhi ≤ T :=
    (le_max_right _ _).trans ((le_max_left _ _).trans hTlarge)
  have hTone : (1 : ℝ) ≤ T :=
    (le_max_right _ _).trans hTlarge
  have hT : 0 < T := (by norm_num : (0 : ℝ) < 1).trans_le hTone
  let low : ℝ := (∑' n : ℕ, f n * lo ((n : ℝ) / T)) / T
  let high : ℝ := (∑' n : ℕ, f n * hi ((n : ℝ) / T)) / T
  let window : ℝ :=
    (∑' n : ℕ,
      f n * (Set.Ico a b).indicator
        (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) / T
  have hloClose :
      |low - (∫ t in Set.Ioi (0 : ℝ), lo t)| < ε / 4 := by
    simpa only [Real.dist_eq, low] using hBlo T hBloT
  have hhiClose :
      |high - (∫ t in Set.Ioi (0 : ℝ), hi t)| < ε / 4 := by
    simpa only [Real.dist_eq, high] using hBhi T hBhiT
  have hbracket :
      low ≤ window ∧ window ≤ high := by
    simpa [low, high, window] using
      smoothWiener_weightedTsum_sandwich f hf hT lo hi
        hloCompact hhiCompact
        (fun x => (hpoint x).2.1)
        (fun x => (hpoint x).2.2.1)
  have hwindowLower : b - a - η - ε / 4 < window := by
    have hleft := (abs_lt.mp hloClose).1
    linarith [hbracket.1, hloMass]
  have hwindowUpper : window < b - a + η + ε / 4 := by
    have hright := (abs_lt.mp hhiClose).2
    linarith [hbracket.2, hhiMass]
  have hfinal : |window - (b - a)| < ε := by
    apply abs_lt.mpr
    constructor <;> linarith
  simpa only [Real.dist_eq, window] using hfinal

/-- Move from the real-scale smooth theorem to the exact discrete
ceiling-window theorem with no endpoint error and no unproved density
argument. -/
theorem smoothWiener_testLimit_to_integerWindow
    (f : ℕ → ℝ) (hf : ∀ n, 0 ≤ f n)
    (hsmooth : SmoothUnitResidueWienerTestLimit f)
    {a b : ℝ} (ha : 0 < a) (hab : a < b) :
    Tendsto
      (fun N : ℕ =>
        (∑ n ∈ Finset.Ico ⌈a * (N : ℝ)⌉₊
            ⌈b * (N : ℝ)⌉₊, f n) / (N : ℝ))
      atTop (nhds (b - a)) := by
  have hreal :=
    smoothWiener_testLimit_to_realInterval f hf hsmooth ha hab
  refine (hreal.comp tendsto_natCast_atTop_atTop).congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℕ)] with N hN
  have hNr : (0 : ℝ) < (N : ℝ) := by
    exact_mod_cast hN
  simp only [Function.comp_def]
  rw [smoothWiener_tsum_indicator_eq_interval f hNr]

/-- Pin the actual historical residue-one smooth Wiener conclusion,
without inventing a proof term from prior analytic input records. -/
def PinnedVonMangoldtSmoothWienerLimit : Prop :=
  SmoothUnitResidueWienerTestLimit pinnedTauberianLambda

/-- The EXACT relative interval supplier required by the source-defined
de-windowing theorem is now a genuine consequence of the smooth-test
WI theorem, with the latter explicitly OPEN. -/
theorem pinnedVonMangoldt_relativeWindows_of_smoothWiener
    (hsmooth : PinnedVonMangoldtSmoothWienerLimit) :
    PinnedVonMangoldtRelativeIntervalLimits := by
  intro δ hδ hδone
  have h :=
    smoothWiener_testLimit_to_integerWindow
      pinnedTauberianLambda
      (fun n => ArithmeticFunction.vonMangoldt_nonneg (n := n))
      hsmooth hδ hδone
  simpa [PinnedVonMangoldtRelativeIntervalLimits,
    TauberianRelativeWindowLimits] using h

end GRWTSK.RiemannHypothesis
