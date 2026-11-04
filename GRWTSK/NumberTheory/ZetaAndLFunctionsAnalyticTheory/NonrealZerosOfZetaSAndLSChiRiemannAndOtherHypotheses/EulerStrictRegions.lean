/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.EulerCoreApproximation
import GRWTSK.FunctionsOfAComplexVariable.RationalResidualCell

/-!
# Successful low-height residual regions and the unsupplied full-core tests

The FIRST Euler approximant u(s)=(s-1)/s gives |zeta(s)*u(s)-1|<=|s-1|/sigma.
For sigma>0, |s-1|<sigma is exactly t^2<2*sigma-1. On the part of rightCore n
where t^2<=g_n=1/(n+1), the explicit uniform budget is 1-g_n/2<1.
This supplies a mathematically nonvacuous family of strict low-height regions;
it does NOT cover the full right-strip cores. A concrete point of rightCore 10
outside the certified parabola is retained as a coverage counterexample.

Source-specific conclusions expose EulerApproximation.SourceComparison, whose
classical Euler integral identity is cited but whose Mathlib bridge is NOT
constructed in this increment. The norm geometry and integral-model certificates
are independent of that bridge and of RH.

The finite-cell consumer uses the explicit Euler cutoff, a finite center value,
and a whole-cell enclosure of the finite approximant. The actual test is
D + 2^(-k) < |c|. Small truncation error alone does not establish this test.
The all-core Dirichlet consumer quantifies over every N>0 and every character,
including principal and imprimitive characters, with both off-line components.
It is an implication with UNSUPPLIED cell data, not a proof of GRH.

Primary argument: exact norm-square identity, quadratic inequalities and the
complete constant-cell residual. No numerical sample is substituted for a
whole-cell bound. No novelty claim. AI-assisted formalization. Compilation,
fresh kernel checking, transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Metric

namespace GRWTSK.NumberTheory.Conditional.EulerApproximation

open GRWTSK.Analysis.MellinRemainder
open GRWTSK.Analysis.Division.FiniteInverse

lemma norm_sub_one_sq (s : ℂ) :
    ‖s - 1‖ ^ 2 = (s.re - 1) ^ 2 + s.im ^ 2 := by
  rw [pow_two, Complex.norm_mul_self_eq_normSq]
  simp only [Complex.normSq_apply, Complex.sub_re, Complex.one_re,
    Complex.sub_im, Complex.one_im, sub_zero, pow_two]

/-- The exact successful region of the first absolute-tail estimate. -/
def parabolicStrip : Set ℂ :=
  {s | s ∈ rightCriticalStrip ∧ s.im ^ 2 < 2 * s.re - 1}

theorem norm_gap_iff_parabola {s : ℂ} (hs : 0 < s.re) :
    ‖s - 1‖ < s.re ↔ s.im ^ 2 < 2 * s.re - 1 := by
  have hnorm := norm_nonneg (s - 1)
  have hsquare := norm_sub_one_sq s
  constructor
  · intro h
    have hsq : ‖s - 1‖ ^ 2 < s.re ^ 2 := by nlinarith
    nlinarith
  · intro h
    have hsq : ‖s - 1‖ ^ 2 < s.re ^ 2 := by nlinarith
    nlinarith

/-- A strict residual on an actual region, with an explicit rational approximation. -/
theorem zeta_parabolic_residual (comparison : SourceComparison)
    {s : ℂ} (hs : s ∈ parabolicStrip) :
    ‖riemannZeta s * firstReciprocal s - 1‖ < 1 := by
  have hpos : 0 < s.re := by linarith [hs.1.1]
  rw [comparison.zeta_first s hpos (strip_ne_one hs.1.2)]
  apply (first_residual_bound hpos (strip_ne_one hs.1.2)
    (fun x _ => fractionalKernel_norm_le 1 x)).trans_lt
  exact (div_lt_one hpos).mpr ((norm_gap_iff_parabola hpos).mpr hs.2)

/-- Geometry alone supplies a uniform strict budget on this slice of EACH core. -/
theorem core_slice_ratio {n : ℕ} {s : ℂ} (hs : s ∈ rightCore n)
    (height : s.im ^ 2 ≤ coreGap n) :
    ‖s - 1‖ / s.re ≤ 1 - coreGap n / 2 := by
  have hg : 0 < coreGap n := coreGap_pos n
  have hpos : 0 < s.re := by linarith [hs.2.1]
  have hσone : s.re ≤ 1 := by linarith [hs.2.2]
  have hnorm := norm_nonneg (s - 1)
  have hsquare := norm_sub_one_sq s
  have gapSq : ‖s - 1‖ ^ 2 ≤ s.re ^ 2 - coreGap n := by
    nlinarith [hs.2.1]
  have hsmall : ‖s - 1‖ < s.re := by nlinarith
  have hsum : ‖s - 1‖ + s.re ≤ 2 := by linarith
  have hproduct := mul_le_mul_of_nonneg_left hsum
    (sub_nonneg.mpr hsmall.le)
  have hlinear : coreGap n / 2 ≤ s.re - ‖s - 1‖ := by nlinarith
  have hσg : s.re * coreGap n ≤ coreGap n := by
    simpa only [one_mul] using mul_le_mul_of_nonneg_right hσone hg.le
  apply (div_le_iff₀ hpos).mpr
  nlinarith

/-- This is a LOW-HEIGHT slice theorem, not a full-core certificate. -/
theorem zeta_core_slice_residual (comparison : SourceComparison)
    (n : ℕ) {s : ℂ} (hs : s ∈ rightCore n)
    (height : s.im ^ 2 ≤ coreGap n) :
    ‖riemannZeta s * firstReciprocal s - 1‖ ≤ 1 - coreGap n / 2 ∧
      1 - coreGap n / 2 < 1 := by
  have hdomain := rightCore_subset n hs
  have hpos : 0 < s.re := by linarith [hdomain.1]
  constructor
  · rw [comparison.zeta_first s hpos (strip_ne_one hdomain.2)]
    exact (first_residual_bound hpos (strip_ne_one hdomain.2)
      (fun x _ => fractionalKernel_norm_le 1 x)).trans (core_slice_ratio hs height)
  · have hg := coreGap_pos n
    linarith

/-- A completely specified disk and rational budget; no sampled zeta values are used. -/
theorem zeta_disk_residual (comparison : SourceComparison) {s : ℂ}
    (inside : dist s (3 / 4 : ℂ) ≤ (1 / 16 : ℝ)) :
    ‖riemannZeta s * firstReciprocal s - 1‖ ≤ (5 / 11 : ℝ) := by
  have nearby : ‖s - (3 / 4 : ℂ)‖ ≤ (1 / 16 : ℝ) := by
    simpa only [dist_eq_norm] using inside
  have hre : |s.re - (3 / 4 : ℝ)| ≤ (1 / 16 : ℝ) := by
    have h := (Complex.abs_re_le_norm (s - (3 / 4 : ℂ))).trans nearby
    simpa using h
  have hlow := (abs_le.mp hre).1
  have hhigh := (abs_le.mp hre).2
  have hpos : 0 < s.re := by linarith
  have hp : s ≠ 1 := strip_ne_one (by linarith)
  have distance : ‖s - 1‖ ≤ (5 / 16 : ℝ) := by
    calc
      ‖s - 1‖ = ‖(s - (3 / 4 : ℂ)) + ((3 / 4 : ℂ) - 1)‖ := by
        congr 1
        ring
      _ ≤ ‖s - (3 / 4 : ℂ)‖ + ‖(3 / 4 : ℂ) - 1‖ := norm_add_le _ _
      _ ≤ (5 / 16 : ℝ) := by
        have hc : ‖(3 / 4 : ℂ) - 1‖ = (1 / 4 : ℝ) := by norm_num
        rw [hc]
        linarith
  rw [comparison.zeta_first s hpos hp]
  apply (first_residual_bound hpos hp (fun x _ => fractionalKernel_norm_le 1 x)).trans
  apply (div_le_iff₀ hpos).mpr
  nlinarith

/-- The independent inverse approximation at the disk center is the rational -1/3. -/
theorem firstReciprocal_at_center : firstReciprocal (3 / 4 : ℂ) = -(1 / 3 : ℂ) := by
  norm_num [firstReciprocal]

/-- The attained region must not be advertised as full-core coverage. -/
theorem parabolic_region_misses_core :
    ∃ s : ℂ, s ∈ rightCore 10 ∧ s ∉ parabolicStrip := by
  let s : ℂ := ⟨(3 / 4 : ℝ), 1⟩
  have hnorm : ‖s‖ ≤ (10 : ℝ) := by
    have hsq : ‖s‖ * ‖s‖ = (25 / 16 : ℝ) := by
      rw [Complex.norm_mul_self_eq_normSq]
      norm_num [s, Complex.normSq_apply]
    nlinarith [norm_nonneg s]
  refine ⟨s, ?_, ?_⟩
  · refine ⟨?_, ?_, ?_⟩
    · simpa only [Metric.mem_closedBall, dist_zero_right] using hnorm
    · norm_num [s, coreGap]
    · norm_num [s, coreGap]
  · intro h
    norm_num [parabolicStrip, s] at h

/-- A whole-cell estimate on the finite approximant can now be evaluated independently. -/
theorem dirichlet_cell_nonzero (comparison : SourceComparison)
    {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N) (n k : ℕ)
    {s c : ℂ} {D : ℝ} (hs : s ∈ offCore n)
    (cell : ‖dirichletApprox χ (cutoff N n k) s - c‖ ≤ D)
    (strict : 1 / (2 : ℝ) ^ k + D < ‖c‖) : χ.LFunction s ≠ 0 :=
  constant_cell_nonzero (all_characters_dyadic_error comparison N χ n k hs).le cell strict

/-- Finite rational cells must cover the WHOLE core, not just evaluation nodes. -/
def CoreCellWitness {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N) (n : ℕ) : Prop :=
  ∃ m : ℕ, ∃ k : Fin m → ℕ, ∃ center : Fin m → ℚ × ℚ, ∃ radius : Fin m → ℚ,
    (∀ i, GRWTSK.Analysis.Division.RationalCell.passes (k i) (center i) (radius i) = true) ∧
    ∀ s ∈ offCore n, ∃ i,
      ‖dirichletApprox χ (cutoff N n (k i)) s -
        GRWTSK.Analysis.Division.RationalCell.center (center i)‖ ≤ (radius i : ℝ)

/-- Only the finite-data implication is proved; a universal witness is NOT supplied. -/
theorem critical_line_of_euler_cells (comparison : SourceComparison)
    {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N)
    (cells : ∀ n : ℕ, CoreCellWitness χ n) : DirichletCriticalLine χ := by
  apply (critical_line_iff_nonzero_offStrip χ).mpr
  intro s hs
  obtain ⟨n, hn⟩ := exists_offCore hs
  obtain ⟨m, k, center, radius, gap, coverage⟩ := cells n
  obtain ⟨i, enclosure⟩ := coverage s hn
  exact GRWTSK.Analysis.Division.RationalCell.source_nonzero
    (all_characters_dyadic_error comparison N χ n (k i) hn).le enclosure (gap i)

/-- No finite modulus cutoff, chosen character, or one-sided reflection replaces these binders. -/
theorem grh_of_all_euler_cells (comparison : SourceComparison)
    (cells : ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (n : ℕ),
      CoreCellWitness χ n) : DirichletGRH := by
  intro N hN χ
  exact critical_line_of_euler_cells comparison χ (cells N χ)

/-- For zeta the existing exact reflection means right-strip cores suffice. -/
def ZetaCoreCellWitness (n : ℕ) : Prop :=
  ∃ m : ℕ, ∃ k : Fin m → ℕ, ∃ center : Fin m → ℚ × ℚ, ∃ radius : Fin m → ℚ,
    (∀ i, GRWTSK.Analysis.Division.RationalCell.passes (k i) (center i) (radius i) = true) ∧
    ∀ s ∈ rightCore n, ∃ i,
      ‖dirichletApprox (1 : DirichletCharacter ℂ 1) (cutoff 1 n (k i)) s -
        GRWTSK.Analysis.Division.RationalCell.center (center i)‖ ≤ (radius i : ℝ)

/-- The entire right-core coverage is an explicit, still-unsupplied input. -/
theorem rh_of_right_euler_cells (comparison : SourceComparison)
    (cells : ∀ n : ℕ, ZetaCoreCellWitness n) : _root_.RiemannHypothesis := by
  apply rh_iff_nonzero_rightStrip.mpr
  intro s hs
  obtain ⟨n, hn⟩ := exists_rightCore hs
  obtain ⟨m, k, center, radius, gap, coverage⟩ := cells n
  obtain ⟨i, enclosure⟩ := coverage s hn
  exact GRWTSK.Analysis.Division.RationalCell.source_nonzero
    (zeta_core_dyadic_error comparison n (k i) hn).le enclosure (gap i)

end GRWTSK.NumberTheory.Conditional.EulerApproximation
