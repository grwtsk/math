/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Upstream Mathlib retains original authorship and license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightUnboundedPrimeJump
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightRatioSandwich
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Data.Finset.Lattice.Fold
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Canonical attained theta envelope and actual psi-capacity recurrence

The earlier no-go packet correctly kept the recurrence for an arbitrary
theta envelope open: a loose envelope need not obey any recurrence even
when every true theta value is controlled.

This packet replaces that invalid abstraction with the FINITE maximum
of the actual integer-grid theta-error amplitudes on the same literal
dyadic source octave.  The +2 absorbs the continuous unit-cell theta
sawtooth and the target's +1.

The existing pinned prime-weight ceiling bounds the actual quadratic
source.  The alleged uniform integer psi capacity then bounds every
integer on the next octave.  The canonical finite maximum lets the
pointwise estimates bound the NEXT envelope itself.

The theorem is explicitly conditional on the proposed capacity, which
is mathematically impossible by PNT and prime jumps.  The separate
PNT-to-sublinear-envelope constructor remains open.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ATTAINED_FINITE_THETA_GRID_ENVELOPE_DEFINED /
REAL_THETA_OCTAVE_CONTROL_DEFINED /
ACTUAL_INTEGER_PSI_CAPACITY_TO_RECURRENCE_DEFINED /
PNT_TO_CANONICAL_GRID_SUBLINEARITY_OPEN /
FIXED_INTEGER_PSI_CAPACITY_REJECTED_ROUTE /
NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- The literal integer source window used in the actual pinned feature. -/
def canonicalThetaGridWindow (j : ℕ) : Finset ℕ :=
  Finset.Icc (dyadicScale j) (2 * dyadicScale j)

theorem canonicalThetaGridWindow_nonempty (j : ℕ) :
    (canonicalThetaGridWindow j).Nonempty := by
  refine ⟨dyadicScale j, ?_⟩
  exact Finset.mem_Icc.mpr ⟨le_rfl, by omega⟩

/-- An ACTUAL attained finite maximum, not an arbitrary loose upper
envelope nor a potentially totalized empty-set supremum. -/
def canonicalThetaGridEnvelope (j : ℕ) : ℝ :=
  (canonicalThetaGridWindow j).sup'
    (canonicalThetaGridWindow_nonempty j)
    (fun m : ℕ => |thetaError (m : ℝ)| + 2)

/-- Pointwise grid values are bounded by the maximum. -/
theorem canonicalThetaGridEnvelope_grid_le
    (j : ℕ) {m : ℕ}
    (hm : m ∈ canonicalThetaGridWindow j) :
    |thetaError (m : ℝ)| + 2 ≤ canonicalThetaGridEnvelope j := by
  unfold canonicalThetaGridEnvelope
  exact Finset.le_sup' (fun n : ℕ => |thetaError (n : ℝ)| + 2) hm

theorem canonicalThetaGridEnvelope_ge_two (j : ℕ) :
    2 ≤ canonicalThetaGridEnvelope j := by
  have hm : dyadicScale j ∈ canonicalThetaGridWindow j := by
    exact Finset.mem_Icc.mpr ⟨le_rfl, by omega⟩
  have h :=
    canonicalThetaGridEnvelope_grid_le j hm
  linarith [abs_nonneg (thetaError (dyadicScale j : ℝ))]

theorem canonicalThetaGridEnvelope_nonnegative (j : ℕ) :
    0 ≤ canonicalThetaGridEnvelope j := by
  linarith [canonicalThetaGridEnvelope_ge_two j]

/-- A bound on every actual integer-grid source value controls the
canonical maximum. This is the missing soundness direction unavailable
for an arbitrarily inflated envelope. -/
theorem canonicalThetaGridEnvelope_le_of_grid_bound
    (j : ℕ) {B : ℝ}
    (h : ∀ m ∈ canonicalThetaGridWindow j,
      |thetaError (m : ℝ)| + 2 ≤ B) :
    canonicalThetaGridEnvelope j ≤ B := by
  unfold canonicalThetaGridEnvelope
  apply Finset.sup'_le
  intro m hm
  exact h m hm

/-- The real theta staircase differs from its integer-floor value
by less than one. The explicit +2 above covers both this error and
the target's additive +1. -/
theorem canonicalThetaGridEnvelope_controls_real_octave
    (j : ℕ) :
    ∀ u ∈ Set.Icc (dyadicScale j : ℝ)
        (((2 * dyadicScale j : ℕ) : ℝ)),
      |thetaError u| + 1 ≤ canonicalThetaGridEnvelope j := by
  intro u hu
  let m : ℕ := pinnedPrimeWeightPsiGridIndex u
  have hu0 : 0 ≤ u := by
    have hlower : (0 : ℝ) ≤ (dyadicScale j : ℝ) := by positivity
    exact hlower.trans hu.1
  have hfloor : (m : ℝ) ≤ u := by
    simpa [m] using pinnedPrimeWeightPsiGridIndex_cast_le hu0
  have hmlower : dyadicScale j ≤ m := by
    dsimp [m, pinnedPrimeWeightPsiGridIndex]
    exact (Nat.le_floor_iff hu0).2 hu.1
  have hmupper : m ≤ 2 * dyadicScale j := by
    exact_mod_cast hfloor.trans hu.2
  have hm : m ∈ canonicalThetaGridWindow j :=
    Finset.mem_Icc.mpr ⟨hmlower, hmupper⟩
  have htheta :
      Chebyshev.theta u = Chebyshev.theta (m : ℝ) := by
    simpa [m, pinnedPrimeWeightPsiGridIndex] using
      (Chebyshev.theta_eq_theta_coe_floor u)
  have htri :
      |thetaError u| ≤
        |thetaError (m : ℝ)| + |(m : ℝ) - u| := by
    calc
      |thetaError u| =
          |thetaError (m : ℝ) + ((m : ℝ) - u)| := by
            unfold thetaError
            rw [htheta]
            congr 1
            ring
      _ ≤ |thetaError (m : ℝ)| + |(m : ℝ) - u| :=
        abs_add _ _
  have hfloorAbs : |(m : ℝ) - u| ≤ 1 := by
    simpa [m] using
      pinnedPrimeWeightPsiFloorCorrection_abs_le_one hu0
  have hgrid := canonicalThetaGridEnvelope_grid_le j hm
  linarith

/-- The pinned Mathlib existential constant for the complete
Chebyshev higher-prime-power correction is fixed globally. -/
def canonicalThetaPsiRootConstant : ℝ :=
  |Classical.choose Chebyshev.psi_sub_theta_le_mul_sqrt|

theorem canonicalThetaPsiRootConstant_nonnegative :
    0 ≤ canonicalThetaPsiRootConstant :=
  abs_nonneg _

theorem psi_sub_theta_le_canonicalThetaPsiRootConstant
    (u : ℝ) :
    Chebyshev.psi u - Chebyshev.theta u ≤
      canonicalThetaPsiRootConstant * Real.sqrt u := by
  have hsource :=
    (Classical.choose_spec Chebyshev.psi_sub_theta_le_mul_sqrt) u
  have hupper :
      Classical.choose Chebyshev.psi_sub_theta_le_mul_sqrt ≤
        canonicalThetaPsiRootConstant := by
    unfold canonicalThetaPsiRootConstant
    exact le_abs_self _
  exact hsource.trans
    (mul_le_mul_of_nonneg_right hupper (Real.sqrt_nonneg u))

/-- One absolute residual multiplier independent of the hypothetical
coefficient budget C, including the +2 integer-grid allowance. -/
def canonicalThetaGridRootBudget : ℝ :=
  2 * canonicalThetaPsiRootConstant + 2

theorem canonicalThetaGridRootBudget_nonnegative :
    0 ≤ canonicalThetaGridRootBudget := by
  unfold canonicalThetaGridRootBudget
  have h := canonicalThetaPsiRootConstant_nonnegative
  linarith

/-- A next-octave integer at most 4X has square root at most 2 sqrt X. -/
theorem canonicalThetaGrid_sqrt_next_le
    {X m : ℕ} (hX : 0 < X)
    (hm : m ≤ 4 * X) :
    Real.sqrt (m : ℝ) ≤ 2 * Real.sqrt (X : ℝ) := by
  have hm0 : (0 : ℝ) ≤ (m : ℝ) := by positivity
  have hX0 : (0 : ℝ) ≤ (X : ℝ) := by positivity
  have hmr : (m : ℝ) ≤ 4 * (X : ℝ) := by
    exact_mod_cast hm
  apply (sq_le_sq₀ (Real.sqrt_nonneg _) (by positivity)).1
  rw [Real.sq_sqrt hm0, mul_pow,
    Real.sq_sqrt hX0]
  nlinarith

/-- The ACTUAL fixed integerized psi response-capacity proposition,
together with the pinned coefficient-mass ceiling, yields a quadratic
recurrence for the canonical FINITE theta envelope. No extra
capacity-to-envelope oracle is passed as a hypothesis. -/
theorem integerPsiCapacity_to_canonicalThetaGridRecurrence
    {C : ℝ}
    (hcapacity :
      PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C) :
    SquareRootForcedQuadraticRecurrence
      canonicalThetaGridEnvelope
      (C * primeCoefficientL1Budget^2)
      canonicalThetaGridRootBudget := by
  obtain ⟨hC, j₀, hstage⟩ := hcapacity
  refine ⟨j₀, ?_⟩
  intro j hj
  let X : ℕ := dyadicScale j
  have hX : 0 < X := dyadicScale_pos j
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  have hE0 : 0 ≤ canonicalThetaGridEnvelope j :=
    canonicalThetaGridEnvelope_nonnegative j
  have hamplitude :
      (pinnedPrimeWeightedAmplitude X)^2 ≤
        (primeCoefficientL1Budget *
          canonicalThetaGridEnvelope j)^2 :=
    pinnedPrimeWeightedAmplitude_sq_le_of_octaveEnvelope
      hX hE0 (by
        simpa [X] using
          canonicalThetaGridEnvelope_controls_real_octave j)
  have hrootOne : 1 ≤ Real.sqrt (X : ℝ) := by
    have hXone : (1 : ℝ) ≤ (X : ℝ) := by
      exact_mod_cast
        (Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hX))
    simpa using Real.sqrt_le_sqrt hXone
  apply canonicalThetaGridEnvelope_le_of_grid_bound
  intro m hm
  have hmbounds :
      dyadicScale (j + 1) ≤ m ∧
        m ≤ 2 * dyadicScale (j + 1) := by
    simpa [canonicalThetaGridWindow] using
      (Finset.mem_Icc.mp hm)
  have hm4 : m ≤ 4 * X := by
    have hu := hmbounds.2
    rw [dyadicScale_succ_eq_two_mul] at hu
    dsimp [X]
    omega
  have hresponse :
      (X : ℝ) * |psiError (m : ℝ)| ≤
        C * (pinnedPrimeWeightedAmplitude X)^2 := by
    simpa [X] using
      hstage j hj m hmbounds.1 hmbounds.2
  have hscaled :
      (X : ℝ) * |psiError (m : ℝ)| ≤
        (C * primeCoefficientL1Budget^2) *
          (canonicalThetaGridEnvelope j)^2 := by
    calc
      (X : ℝ) * |psiError (m : ℝ)|
          ≤ C * (pinnedPrimeWeightedAmplitude X)^2 := hresponse
      _ ≤ C *
          (primeCoefficientL1Budget *
            canonicalThetaGridEnvelope j)^2 :=
        mul_le_mul_of_nonneg_left hamplitude hC
      _ = (C * primeCoefficientL1Budget^2) *
            (canonicalThetaGridEnvelope j)^2 := by ring
  have hpsi :
      |psiError (m : ℝ)| ≤
        (C * primeCoefficientL1Budget^2) *
          (canonicalThetaGridEnvelope j)^2 / (X : ℝ) := by
    apply (le_div_iff₀ hXr).2
    calc
      |psiError (m : ℝ)| * (X : ℝ) =
          (X : ℝ) * |psiError (m : ℝ)| := by ring
      _ ≤ (C * primeCoefficientL1Budget^2) *
          (canonicalThetaGridEnvelope j)^2 := hscaled
  have hmono : 0 ≤ Chebyshev.psi (m : ℝ) -
      Chebyshev.theta (m : ℝ) := by
    exact sub_nonneg.mpr (Chebyshev.theta_le_psi (m : ℝ))
  have htheta :
      |thetaError (m : ℝ)| ≤
        |psiError (m : ℝ)| +
          (Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ)) := by
    have heq :
        thetaError (m : ℝ) =
          psiError (m : ℝ) -
            (Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ)) := by
      unfold thetaError psiError
      ring
    rw [heq]
    simpa [abs_of_nonneg hmono] using
      (abs_sub (psiError (m : ℝ))
        (Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ)))
  have hsqrt :
      Real.sqrt (m : ℝ) ≤ 2 * Real.sqrt (X : ℝ) :=
    canonicalThetaGrid_sqrt_next_le hX hm4
  have hhp :
      Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ) ≤
        2 * canonicalThetaPsiRootConstant *
          Real.sqrt (X : ℝ) := by
    calc
      Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ)
          ≤ canonicalThetaPsiRootConstant * Real.sqrt (m : ℝ) :=
        psi_sub_theta_le_canonicalThetaPsiRootConstant (m : ℝ)
      _ ≤ canonicalThetaPsiRootConstant *
            (2 * Real.sqrt (X : ℝ)) :=
        mul_le_mul_of_nonneg_left hsqrt
          canonicalThetaPsiRootConstant_nonnegative
      _ = 2 * canonicalThetaPsiRootConstant *
            Real.sqrt (X : ℝ) := by ring
  have htwo : (2 : ℝ) ≤ 2 * Real.sqrt (X : ℝ) := by
    linarith
  have htarget :
      |thetaError (m : ℝ)| + 2 ≤
        (C * primeCoefficientL1Budget^2) *
          (canonicalThetaGridEnvelope j)^2 / (X : ℝ) +
        canonicalThetaGridRootBudget * Real.sqrt (X : ℝ) := by
    calc
      |thetaError (m : ℝ)| + 2
          ≤ |psiError (m : ℝ)| +
              (Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ)) + 2 := by
            linarith [htheta]
      _ ≤ (C * primeCoefficientL1Budget^2) *
            (canonicalThetaGridEnvelope j)^2 / (X : ℝ) +
          (2 * canonicalThetaPsiRootConstant *
            Real.sqrt (X : ℝ)) + 2 := by
            linarith [hpsi, hhp]
      _ ≤ (C * primeCoefficientL1Budget^2) *
            (canonicalThetaGridEnvelope j)^2 / (X : ℝ) +
          (2 * canonicalThetaPsiRootConstant *
            Real.sqrt (X : ℝ)) +
            2 * Real.sqrt (X : ℝ) := by
            linarith [htwo]
      _ = (C * primeCoefficientL1Budget^2) *
            (canonicalThetaGridEnvelope j)^2 / (X : ℝ) +
          canonicalThetaGridRootBudget * Real.sqrt (X : ℝ) := by
            unfold canonicalThetaGridRootBudget
            ring
  simpa [X] using htarget

end GRWTSK.RiemannHypothesis
