/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.AnalyticResidualCover
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalZeroFree
import Mathlib.Tactic.Positivity

/-!
# Compact cores of the exact RH and Dirichlet-GRH domains

For RH it suffices to exclude zeros in 1/2 < Re(s) < 1: the existing zeta
reflection handles the left side, and Mathlib handles Re(s) >= 1. For a single
Dirichlet character we instead use BOTH sides of the open critical strip, with
the line Re(s)=1/2 removed. No unproved same-character reflection is inserted.
The existing DirichletGRH quantifies over every positive modulus and character.

The n-th core is the closed radius-n ball intersected with explicit closed
inequalities of gap 1/(n+1). Every allowed point lies in some core, proved by
an Archimedean estimate. Each core is compact, stays strictly inside the intended
domain, and omits the principal pole and possible critical-line zeros. Empty
small cores are harmless. One fixed core does not cover the unbounded domain.

These are exact domain reductions, not a zero-free estimate or a proof of RH.
They provide the missing all-window quantifiers for finite certificate covers.
Reuse: ConditionalZeroFree at 78d3de57395378dfc4164a75af7a844ea2806efc and its
original zeta/Dirichlet definitions and reflection proofs. Mathlib remains at
 d13f23b723b8a846827a245b89c10fc7d3f11612. No novelty is claimed.
AI-assisted formalization. Compilation, fresh kernel checking, transitive axiom
audit and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Metric

namespace GRWTSK.NumberTheory.Conditional

def rightCriticalStrip : Set ℂ := {s | (1 / 2 : ℝ) < s.re ∧ s.re < 1}

def offCriticalStrip : Set ℂ :=
  {s | 0 < s.re ∧ s.re < 1 ∧ s.re ≠ (1 / 2 : ℝ)}

def coreGap (n : ℕ) : ℝ := 1 / ((n : ℝ) + 1)

def rightCore (n : ℕ) : Set ℂ :=
  Metric.closedBall 0 (n : ℝ) ∩
    {s | (1 / 2 : ℝ) + coreGap n ≤ s.re ∧ s.re ≤ 1 - coreGap n}

def offCore (n : ℕ) : Set ℂ :=
  Metric.closedBall 0 (n : ℝ) ∩
    {s | coreGap n ≤ s.re ∧ s.re ≤ 1 - coreGap n ∧
      coreGap n ≤ |s.re - (1 / 2 : ℝ)|}

theorem coreGap_pos (n : ℕ) : 0 < coreGap n := by
  unfold coreGap
  positivity

/-- One index can simultaneously resolve a positive gap and a finite norm bound. -/
theorem exists_small_coreGap {ε : ℝ} (positive : 0 < ε) (R : ℝ) :
    ∃ n : ℕ, coreGap n < ε ∧ R ≤ (n : ℝ) := by
  obtain ⟨n, hn⟩ := exists_nat_gt (max (1 / ε) R)
  have hε : 1 / ε < (n : ℝ) := (le_max_left _ _).trans_lt hn
  have hR : R ≤ (n : ℝ) := ((le_max_right _ _).trans_lt hn).le
  have product : (1 : ℝ) < (n : ℝ) * ε := (div_lt_iff₀ positive).mp hε
  refine ⟨n, ?_, hR⟩
  unfold coreGap
  apply (div_lt_iff₀ (by positivity : (0 : ℝ) < (n : ℝ) + 1)).mpr
  nlinarith

theorem rightCriticalStrip_isOpen : IsOpen rightCriticalStrip :=
  (isOpen_lt continuous_const Complex.continuous_re).inter
    (isOpen_lt Complex.continuous_re continuous_const)

theorem offCriticalStrip_isOpen : IsOpen offCriticalStrip := by
  have hne : IsOpen {s : ℂ | s.re ≠ (1 / 2 : ℝ)} :=
    (isClosed_eq Complex.continuous_re continuous_const).isOpen_compl
  exact (isOpen_lt continuous_const Complex.continuous_re).inter
    ((isOpen_lt Complex.continuous_re continuous_const).inter hne)

theorem rightCore_isCompact (n : ℕ) : IsCompact (rightCore n) := by
  have closed : IsClosed {s : ℂ |
      (1 / 2 : ℝ) + coreGap n ≤ s.re ∧ s.re ≤ 1 - coreGap n} :=
    (isClosed_le continuous_const Complex.continuous_re).inter
      (isClosed_le Complex.continuous_re continuous_const)
  exact (isCompact_closedBall (0 : ℂ) (n : ℝ)).of_isClosed_subset
    (isClosed_closedBall.inter closed) (fun _ hz => hz.1)

theorem offCore_isCompact (n : ℕ) : IsCompact (offCore n) := by
  have closed : IsClosed {s : ℂ |
      coreGap n ≤ s.re ∧ s.re ≤ 1 - coreGap n ∧
        coreGap n ≤ |s.re - (1 / 2 : ℝ)|} :=
    (isClosed_le continuous_const Complex.continuous_re).inter
      ((isClosed_le Complex.continuous_re continuous_const).inter
        (isClosed_le continuous_const (Complex.continuous_re.sub continuous_const).abs))
  exact (isCompact_closedBall (0 : ℂ) (n : ℝ)).of_isClosed_subset
    (isClosed_closedBall.inter closed) (fun _ hz => hz.1)

theorem rightCore_subset (n : ℕ) : rightCore n ⊆ rightCriticalStrip := by
  intro s hs
  have positive := coreGap_pos n
  refine ⟨?_, ?_⟩
  · linarith [hs.2.1]
  · linarith [hs.2.2]

theorem offCore_subset (n : ℕ) : offCore n ⊆ offCriticalStrip := by
  intro s hs
  have positive := coreGap_pos n
  refine ⟨lt_of_lt_of_le positive hs.2.1, ?_, ?_⟩
  · linarith [hs.2.2.1]
  · intro same
    have away := hs.2.2.2
    rw [same, sub_self, abs_zero] at away
    exact (not_le_of_gt positive) away

/-- Every point strictly to the right of the line and left of the boundary is covered. -/
theorem exists_rightCore {s : ℂ} (hs : s ∈ rightCriticalStrip) :
    ∃ n : ℕ, s ∈ rightCore n := by
  have positive : 0 < min (s.re - (1 / 2 : ℝ)) (1 - s.re) :=
    lt_min (sub_pos.mpr hs.1) (sub_pos.mpr hs.2)
  obtain ⟨n, small, size⟩ := exists_small_coreGap positive ‖s‖
  have first := small.trans_le (min_le_left _ _)
  have second := small.trans_le (min_le_right _ _)
  refine ⟨n, ?_, ?_, ?_⟩
  · simpa only [Metric.mem_closedBall, dist_zero_right] using size
  · linarith
  · linarith

/-- Both components of the punctured strip are exhausted; no reflection is assumed. -/
theorem exists_offCore {s : ℂ} (hs : s ∈ offCriticalStrip) :
    ∃ n : ℕ, s ∈ offCore n := by
  have positive : 0 < min s.re (min (1 - s.re) |s.re - (1 / 2 : ℝ)|) :=
    lt_min hs.1 (lt_min (sub_pos.mpr hs.2.1)
      (abs_pos.mpr (sub_ne_zero.mpr hs.2.2)))
  obtain ⟨n, small, size⟩ := exists_small_coreGap positive ‖s‖
  have first := small.trans_le (min_le_left _ _)
  have rest := small.trans_le (min_le_right _ _)
  have second := rest.trans_le (min_le_left _ _)
  have third := rest.trans_le (min_le_right _ _)
  refine ⟨n, ?_, first.le, ?_, third.le⟩
  · simpa only [Metric.mem_closedBall, dist_zero_right] using size
  · linarith

theorem rightCriticalStrip_eq_union : rightCriticalStrip = ⋃ n : ℕ, rightCore n := by
  ext s
  constructor
  · intro hs
    obtain ⟨n, hn⟩ := exists_rightCore hs
    exact mem_iUnion.mpr ⟨n, hn⟩
  · intro hs
    obtain ⟨n, hn⟩ := mem_iUnion.mp hs
    exact rightCore_subset n hn

theorem offCriticalStrip_eq_union : offCriticalStrip = ⋃ n : ℕ, offCore n := by
  ext s
  constructor
  · intro hs
    obtain ⟨n, hn⟩ := exists_offCore hs
    exact mem_iUnion.mpr ⟨n, hn⟩
  · intro hs
    obtain ⟨n, hn⟩ := mem_iUnion.mp hs
    exact offCore_subset n hn

theorem strip_ne_one {s : ℂ} (hs : s.re < 1) : s ≠ 1 := by
  intro same
  subst s
  norm_num at hs

theorem differentiableOn_zeta_rightStrip : DifferentiableOn ℂ riemannZeta rightCriticalStrip :=
  fun _ hs => (differentiableAt_riemannZeta (strip_ne_one hs.2)).differentiableWithinAt

theorem differentiableOn_dirichlet_offStrip {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) : DifferentiableOn ℂ χ.LFunction offCriticalStrip :=
  fun s hs => (DirichletCharacter.differentiableAt_LFunction χ s
    (Or.inl (strip_ne_one hs.2.1))).differentiableWithinAt

/-- The boundary Re(s)>=1 and left-side zeta reflection are reused exactly. -/
theorem rh_iff_nonzero_rightStrip :
    _root_.RiemannHypothesis ↔ ∀ s ∈ rightCriticalStrip, riemannZeta s ≠ 0 := by
  constructor
  · intro h s hs
    exact zeta_zero_free_of_rh h s hs.1 (strip_ne_one hs.2)
  · intro h
    apply rh_of_zeta_zero_free
    intro s hs hp
    by_cases leftOfBoundary : s.re < 1
    · exact h s ⟨hs, leftOfBoundary⟩
    · exact riemannZeta_ne_zero_of_one_le_re (le_of_not_gt leftOfBoundary)

/-- This exact one-character equivalence requires both off-line strip components. -/
theorem critical_line_iff_nonzero_offStrip {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) :
    DirichletCriticalLine χ ↔ ∀ s ∈ offCriticalStrip, χ.LFunction s ≠ 0 := by
  constructor
  · intro h s hs zero
    exact hs.2.2 (h s hs.1 hs.2.1 zero)
  · intro h s positive belowOne zero
    by_contra offLine
    exact h s ⟨positive, belowOne, offLine⟩ zero

/-- A fixed compact core never covers all heights, even in the right strip. -/
theorem fixed_core_misses_points (n : ℕ) :
    ∃ s ∈ rightCriticalStrip, s ∉ rightCore n := by
  let s : ℂ := ⟨(3 / 4 : ℝ), (n : ℝ) + 1⟩
  refine ⟨s, ?_, ?_⟩
  · constructor <;> norm_num [s]
  · intro inside
    have size : ‖s‖ ≤ (n : ℝ) := by
      simpa only [Metric.mem_closedBall, dist_zero_right] using inside.1
    have imag : s.im ≤ ‖s‖ := (le_abs_self s.im).trans (Complex.abs_im_le_norm s)
    have value : s.im = (n : ℝ) + 1 := rfl
    linarith

end GRWTSK.NumberTheory.Conditional
