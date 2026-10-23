/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.

External comparison: Larry Guth and James Maynard, "New large value
estimates for Dirichlet polynomials", Annals of Mathematics 203 (2026),
623-675, DOI 10.4007/annals.2026.203.2.6, Theorem 1.2.
The paper's analytic large-value proof is NOT imported here.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCountDeficit
import GRWTSK.NumberTheory.Zeta.Riemann.ExternalSevenEighthsBand
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThreeQuarterSeed
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaGradedFourierNoDescent
import Mathlib.Tactic

/-!
# Three inequivalent 3/4 thresholds and a source-faithful density count

1. Real part >=3/4: zero-density threshold in Guth--Maynard.
2. Imaginary height <=3/4: the existing GRWTSK bounded-height seed.
3. The quadratic arithmetic threshold map Q(7/8)=3/4, Q(3/4)=1/2.

The first counts ACTUAL zeta zeros and their analytic multiplicities through
CanonicalZeroDivisor.heightHead, on BOTH signs of imaginary height, as in
the source paper's |Im rho| <= T convention. The second uses the existing
source-only nonvanishing theorem. The third is an exponent identity, NOT
a new source estimate. These objects are never conflated.

The Guth--Maynard estimate and the OpenAI 7/8 theorem are explicit separate
premises. No zero-density proof or new zeta zero-free region is asserted.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.ThreeQuarterDensityHodgeComparison

open scoped BigOperators
open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open GRWTSK.RiemannHypothesis

/-- Guth--Maynard's pointwise exponent, before specialization to real part 3/4. -/
def guthMaynardPointwiseExponent (σ : ℝ) : ℝ :=
  15 * (1 - σ) / (3 + 5 * σ)

/-- Uniform density exponent also recorded in Theorem 1.2. -/
def guthMaynardUniformExponent (σ : ℝ) : ℝ :=
  30 * (1 - σ) / 13

/-- Exact arithmetic: the pointwise 3/4 exponent is 5/9. -/
theorem pointwiseExponent_threeQuarters :
    guthMaynardPointwiseExponent ((3 : ℝ) / 4) = (5 : ℝ) / 9 := by
  norm_num [guthMaynardPointwiseExponent]

theorem uniformExponent_threeQuarters :
    guthMaynardUniformExponent ((3 : ℝ) / 4) = (15 : ℝ) / 26 := by
  norm_num [guthMaynardUniformExponent]

theorem pointwise_improves_uniform_at_threeQuarters :
    guthMaynardPointwiseExponent ((3 : ℝ) / 4) <
      guthMaynardUniformExponent ((3 : ℝ) / 4) := by
  norm_num [guthMaynardPointwiseExponent, guthMaynardUniformExponent]

/-- Actual BOTH-height-sign canonical zero count, including analytic orders. -/
def bothSignZeroCount (σ T : ℝ) : ℕ := by
  classical
  exact ∑ z ∈ (heightHead T).filter (fun z : ZeroPoint => σ ≤ z.1.re),
    multiplicity z

/-- Its positive-height subcount uses the same canonical divisor and weights. -/
def positiveHeightZeroCount (σ T : ℝ) : ℕ := by
  classical
  exact ∑ z ∈ (positiveHeightHead T).filter
    (fun z : ZeroPoint => σ ≤ z.1.re), multiplicity z

/-- No factor-of-two convention change is hidden in the one-way restriction. -/
theorem positiveHeightZeroCount_le_bothSignZeroCount (σ T : ℝ) :
    positiveHeightZeroCount σ T ≤ bothSignZeroCount σ T := by
  classical
  unfold positiveHeightZeroCount bothSignZeroCount
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro z hz
    rcases Finset.mem_filter.mp hz with ⟨hpos, hre⟩
    exact Finset.mem_filter.mpr
      ⟨positiveHeightHead_subset_heightHead T hpos, hre⟩
  · intro z _ _
    exact Nat.zero_le (multiplicity z)

/-- Exact conclusion at 3/4 supplied by Guth--Maynard Theorem 1.2.
No constructor is supplied here: source-matching and external analytic proof
are required before this proposition can be used unconditionally. -/
def GuthMaynardBothSignThreeQuarter : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ T₀ : ℝ, 2 ≤ T₀ ∧
        ∀ T : ℝ, T₀ ≤ T →
          (bothSignZeroCount ((3 : ℝ) / 4) T : ℝ) ≤
            C * Real.rpow T ((5 : ℝ) / 9 + ε)

/-- Positive-height variant; still a genuine infinite-height estimate. -/
def PositiveThreeQuarterDensity : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ T₀ : ℝ, 2 ≤ T₀ ∧
        ∀ T : ℝ, T₀ ≤ T →
          (positiveHeightZeroCount ((3 : ℝ) / 4) T : ℝ) ≤
            C * Real.rpow T ((5 : ℝ) / 9 + ε)

/-- Transport a supplied BOTH-sign zero-density bound to positive height. -/
theorem positiveDensity_of_guthMaynard
    (hGM : GuthMaynardBothSignThreeQuarter) :
    PositiveThreeQuarterDensity := by
  intro ε hε
  obtain ⟨C, hC, T₀, hT₀, hbound⟩ := hGM ε hε
  refine ⟨C, hC, T₀, hT₀, ?_⟩
  intro T hT
  calc
    (positiveHeightZeroCount ((3 : ℝ) / 4) T : ℝ) ≤
        (bothSignZeroCount ((3 : ℝ) / 4) T : ℝ) := by
      exact_mod_cast positiveHeightZeroCount_le_bothSignZeroCount ((3 : ℝ) / 4) T
    _ ≤ C * Real.rpow T ((5 : ℝ) / 9 + ε) := hbound T hT

/-- Assuming the separate OpenAI-style 7/8 theorem, no actual counted zero
lies in any STRICTLY farther-right real-part band. -/
theorem bothSignZeroCount_zero_right_of_sevenEighths
    (hseven : SevenEighthsZeroFree)
    (σ T : ℝ) (hσ : (7 : ℝ) / 8 < σ) :
    bothSignZeroCount σ T = 0 := by
  classical
  unfold bothSignZeroCount
  apply Finset.sum_eq_zero
  intro z hz
  have hre : σ ≤ z.1.re := (Finset.mem_filter.mp hz).2
  have hbound : z.1.re ≤ (7 : ℝ) / 8 :=
    z.2.re_le_seven_eighths hseven
  exact False.elim (by linarith)

/-- The GRWTSK low-height 3/4 seed is an IMAGINARY-height statement.
The height count is zero at this finite cutoff for EVERY real-part threshold. -/
theorem positiveHeightZeroCount_zero_at_low_seed (σ : ℝ) :
    positiveHeightZeroCount σ ((3 : ℝ) / 4) = 0 := by
  classical
  unfold positiveHeightZeroCount
  apply Finset.sum_eq_zero
  intro z hz
  have hpos := (mem_positiveHeightHead ((3 : ℝ) / 4) z).mp
    (Finset.mem_filter.mp hz).1
  have hgt : (3 : ℝ) / 4 < |z.1.im| := by
    simpa only [ZetaCommutatorRoot.root.heightAt_eq_im] using
      (CriticalStripHeightDescent.CenteredMellin.nontrivialZetaZero_height_gt_three_quarters
        z.2)
  have hgt' : (3 : ℝ) / 4 < z.1.im := by
    simpa only [abs_of_pos hpos.1] using hgt
  exact False.elim (by linarith [hpos.2])

/-- The two premises combine without claiming RH or an improved density
exponent. The symmetric real-part band concerns EACH nontrivial zeta zero. -/
theorem density_and_sevenEighths_band
    (hGM : GuthMaynardBothSignThreeQuarter)
    (hseven : SevenEighthsZeroFree) :
    PositiveThreeQuarterDensity ∧
      (∀ z : ℂ, NontrivialZetaZero z →
        ((1 : ℝ) / 8 ≤ z.re ∧ z.re ≤ (7 : ℝ) / 8)) := by
  refine ⟨positiveDensity_of_guthMaynard hGM, ?_⟩
  intro z hz
  exact hz.mem_closed_seven_eighths_band hseven

/-- Arithmetic threshold descent requires a missing nonlinear source theorem.
The existing graded L2-to-Linfinity reconstruction does not meet it. -/
theorem naive_gradedFourier_strictly_misses_threeQuarters
    {β : ℝ} (hβ : 0 ≤ β) :
    quadraticThreshold ((7 : ℝ) / 8) <
      gradedFourierMaximalExponent ((7 : ℝ) / 8) β :=
  sevenEighths_gradedFourier_no_threeQuarter_descent hβ

/-- Three visually similar numbers encode different source meanings. -/
theorem distinct_threeQuarter_exponents :
    guthMaynardPointwiseExponent ((3 : ℝ) / 4) = (5 : ℝ) / 9 ∧
      quadraticThreshold ((7 : ℝ) / 8) = (3 : ℝ) / 4 ∧
      quadraticThreshold ((3 : ℝ) / 4) = (1 : ℝ) / 2 := by
  exact ⟨pointwiseExponent_threeQuarters,
    quadraticThreshold_sevenEighths, quadraticThreshold_threeQuarters⟩

end GRWTSK.RiemannHypothesis.ThreeQuarterDensityHodgeComparison
