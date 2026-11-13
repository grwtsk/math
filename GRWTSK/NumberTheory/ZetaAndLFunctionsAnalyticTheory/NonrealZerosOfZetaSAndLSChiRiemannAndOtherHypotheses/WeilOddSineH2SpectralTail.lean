/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilOddSineL2Projection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilPhysicalSineNegativeReturn
import Mathlib.Tactic

/-!
# Native second-derivative sine coefficients and finite weighted tails

This is the genuine normalized zero-extended sine basis of
WeilOddSineProjection and the actual source sineCoordinates.
No new Fourier transform, graph, quadratic matrix or RH predicate is made.

For a real compactly supported odd H2 test, integration by parts twice
on (-T,T), with f and f' vanishing at both endpoints, gives
  c_n(f'') = -(pi*n/T)^2 * c_n(f).
The exact integration-by-parts result is retained here as the
EXPLICIT source-specific SourceSecondSineGreen premise. It has NOT
been kernel-proved in this module.

The imported, genuine Bessel inequality for the original sine basis,
applied to f'', then proves a fourth-moment finite bound.
From this, for every finite head length M and finite total cutoff N,
we prove BOTH the L2 and derivative-weighted spectral-tail bounds.
These are finite inequalities: neither infinite weighted Parseval nor
physical H1 convergence has been assumed or declared as proved.

Physical H1 convergence additionally requires the Dirichlet derivative
Green identity / cosine-Parseval comparison on the original interval,
with the actual endpoint trace. The existing WeilH1SineProjectionReturn
retains the appropriate unproved physical Sobolev continuity supplier.

Mathematical consumer: the mode-frequency error bound needed by
WeilH1SineProjectionReturn.NativeH1ProjectionData.
Source: WeilOddSineParseval, WeilPhysicalSineNegativeReturn.source_sine_bessel,
WeilOddOutputTrace.frequency, classical Dirichlet sine Sturm-Liouville
integration by parts.

MANUAL_LEAN_SOURCE_CANDIDATE. Lean compilation, fresh kernel replay,
transitive axiom auditing and independent mathematical review: NOT_RUN.
No RH, Dirichlet GRH, or cofinal arithmetic Weil lower sign is proved.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSineH2SpectralTail

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineParseval
open GRWTSK.NumberTheory.WeilQuadraticForm.OddOutputTrace
open GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSineNegativeReturn
open MeasureTheory

/-- Exactly the existing source frequency at positive mode n+1.
The Nat parameter n is zero-based so a head of length M starts at n=M. -/
def sourceModeFrequency (T : ℝ) (n : ℕ) : ℝ :=
  frequency T (n + 1)

theorem sourceModeFrequency_pos (T : ℝ) (hT : 0 < T) (n : ℕ) :
    0 < sourceModeFrequency T n := by
  unfold sourceModeFrequency frequency
  positivity

theorem sourceModeFrequency_mono (T : ℝ) (hT : 0 < T)
    {m n : ℕ} (hmn : m ≤ n) :
    sourceModeFrequency T m ≤ sourceModeFrequency T n := by
  have hcast : (((m + 1 : ℕ) : ℝ) ≤ ((n + 1 : ℕ) : ℝ)) := by
    exact_mod_cast Nat.add_le_add_right hmn 1
  unfold sourceModeFrequency frequency
  exact div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_left hcast Real.pi_pos.le) hT.le

/-- The exact twice-integrated Dirichlet Green eigen-coefficient identity.
This proposition is a named, UNPROVED analytic input in this file:
no boundary or derivative assertion is inferred from L2 membership. -/
def SourceSecondSineGreen (T : ℝ) (f second : ℝ → ℝ) : Prop :=
  ∀ n : ℕ,
    sineCoefficient T second (n + 1) =
      -(sourceModeFrequency T n) ^ 2 * sineCoefficient T f (n + 1)

/-- The source-indexed FOURTH spectral moment is controlled by the
whole-line L2 mass of the actual second derivative, at EVERY finite N.
Only the original sine Bessel bound and the explicit Green identity are used. -/
theorem finite_fourth_sine_bessel
    (T : ℝ) (hT : 0 < T) (f second : ℝ → ℝ)
    (hsecond : MemLp second 2 volume)
    (hoddSecond : Function.Odd second)
    (hsupportSecond : ∀ t, t ∉ Set.Icc (-T) T → second t = 0)
    (hgreen : SourceSecondSineGreen T f second) (N : ℕ) :
    (∑ i : Fin N, (sourceModeFrequency T i.val) ^ 4 *
        (sineCoordinates T N f i) ^ 2) ≤
      ∫ t : ℝ, ‖second t‖ ^ 2 := by
  have hcoord (i : Fin N) :
      (sineCoordinates T N second i) ^ 2 =
        (sourceModeFrequency T i.val) ^ 4 *
          (sineCoordinates T N f i) ^ 2 := by
    have hs : sineCoordinates T N second i =
        -(sourceModeFrequency T i.val) ^ 2 *
          sineCoordinates T N f i := by
      simpa only [sineCoordinates_eq_sineCoefficient] using hgreen i.val
    rw [hs]
    ring
  calc
    _ = ∑ i : Fin N, (sineCoordinates T N second i) ^ 2 := by
      apply Finset.sum_congr rfl
      intro i _
      exact (hcoord i).symm
    _ ≤ ∫ t : ℝ, ‖second t‖ ^ 2 :=
      source_sine_bessel T hT second hsecond hoddSecond hsupportSecond N

/-- The actual source coefficients in the finite HIGH range n >= M,
written as a Fin N sum (zero when M >= N). -/
def finiteHighL2Tail (T : ℝ) (f : ℝ → ℝ) (M N : ℕ) : ℝ :=
  ∑ i : Fin N,
    if M ≤ i.val then (sineCoordinates T N f i) ^ 2 else 0

/-- The actual derivative-weighted high modes, NOT an unproved physical
derivative integral. The bridge to that physical norm remains separate. -/
def finiteHighDerivativeSpectralTail (T : ℝ) (f : ℝ → ℝ)
    (M N : ℕ) : ℝ :=
  ∑ i : Fin N,
    if M ≤ i.val then
      (sourceModeFrequency T i.val) ^ 2 *
        (sineCoordinates T N f i) ^ 2
    else 0

/-- Genuine high-mode fourth-power Bessel domination:
both estimates hold for ALL finite N, even when M >= N.
No infinite weighted Parseval identity is used. -/
theorem finite_high_mode_spectral_bounds
    (T : ℝ) (hT : 0 < T) (f second : ℝ → ℝ)
    (hsecond : MemLp second 2 volume)
    (hoddSecond : Function.Odd second)
    (hsupportSecond : ∀ t, t ∉ Set.Icc (-T) T → second t = 0)
    (hgreen : SourceSecondSineGreen T f second) (M N : ℕ) :
    (sourceModeFrequency T M) ^ 4 * finiteHighL2Tail T f M N ≤
      ∫ t : ℝ, ‖second t‖ ^ 2 ∧
    (sourceModeFrequency T M) ^ 2 *
      finiteHighDerivativeSpectralTail T f M N ≤
      ∫ t : ℝ, ‖second t‖ ^ 2 := by
  let w : ℕ → ℝ := sourceModeFrequency T
  let x : Fin N → ℝ := sineCoordinates T N f
  have hw0 (n : ℕ) : 0 ≤ w n := (sourceModeFrequency_pos T hT n).le
  have hpt (i : Fin N) (hi : M ≤ i.val) :
      w M ^ 4 * x i ^ 2 ≤ w i.val ^ 4 * x i ^ 2 ∧
        w M ^ 2 * (w i.val ^ 2 * x i ^ 2) ≤
          w i.val ^ 4 * x i ^ 2 := by
    have hmono : w M ≤ w i.val :=
      sourceModeFrequency_mono T hT hi
    have hsquare : w M ^ 2 ≤ w i.val ^ 2 := by
      nlinarith [mul_nonneg (sub_nonneg.mpr hmono)
        (add_nonneg (hw0 M) (hw0 i.val))]
    have hfourth : w M ^ 4 ≤ w i.val ^ 4 := by
      nlinarith [mul_nonneg (sub_nonneg.mpr hsquare)
        (add_nonneg (sq_nonneg (w M)) (sq_nonneg (w i.val)))]
    have hproduct : w M ^ 2 * w i.val ^ 2 ≤ w i.val ^ 4 := by
      nlinarith [mul_nonneg (sub_nonneg.mpr hsquare) (sq_nonneg (w i.val))]
    constructor
    · exact mul_le_mul_of_nonneg_right hfourth (sq_nonneg (x i))
    · calc
        w M ^ 2 * (w i.val ^ 2 * x i ^ 2) =
            (w M ^ 2 * w i.val ^ 2) * x i ^ 2 := by ring
        _ ≤ (w i.val ^ 4) * x i ^ 2 :=
          mul_le_mul_of_nonneg_right hproduct (sq_nonneg (x i))
  have hfourth := finite_fourth_sine_bessel T hT f second
    hsecond hoddSecond hsupportSecond hgreen N
  have hL2 :
      w M ^ 4 * finiteHighL2Tail T f M N ≤
        ∑ i : Fin N, w i.val ^ 4 * x i ^ 2 := by
    unfold finiteHighL2Tail
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro i _
    by_cases hi : M ≤ i.val
    · simpa only [if_pos hi] using (hpt i hi).1
    · simp only [if_neg hi, mul_zero]
      positivity
  have hD :
      w M ^ 2 * finiteHighDerivativeSpectralTail T f M N ≤
        ∑ i : Fin N, w i.val ^ 4 * x i ^ 2 := by
    unfold finiteHighDerivativeSpectralTail
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro i _
    by_cases hi : M ≤ i.val
    · simpa only [if_pos hi] using (hpt i hi).2
    · simp only [if_neg hi, mul_zero]
      positivity
  change w M ^ 4 * finiteHighL2Tail T f M N ≤
    ∫ t : ℝ, ‖second t‖ ^ 2 ∧
    w M ^ 2 * finiteHighDerivativeSpectralTail T f M N ≤
      ∫ t : ℝ, ‖second t‖ ^ 2
  exact ⟨hL2.trans hfourth, hD.trans hfourth⟩

/-- The explicit high-derivative spectral tail bound with its correct
frequency denominator. This does NOT identify the sum with the physical
H1 derivative error without the separate derivative Green comparison. -/
theorem finite_high_derivative_tail_le
    (T : ℝ) (hT : 0 < T) (f second : ℝ → ℝ)
    (hsecond : MemLp second 2 volume)
    (hoddSecond : Function.Odd second)
    (hsupportSecond : ∀ t, t ∉ Set.Icc (-T) T → second t = 0)
    (hgreen : SourceSecondSineGreen T f second) (M N : ℕ) :
    finiteHighDerivativeSpectralTail T f M N ≤
      (∫ t : ℝ, ‖second t‖ ^ 2) /
        (sourceModeFrequency T M) ^ 2 := by
  have h := (finite_high_mode_spectral_bounds T hT f second
    hsecond hoddSecond hsupportSecond hgreen M N).2
  have hw : 0 < (sourceModeFrequency T M) ^ 2 :=
    pow_pos (sourceModeFrequency_pos T hT M) 2
  apply (le_div_iff₀ hw).2
  simpa only [mul_comm] using h

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSineH2SpectralTail
