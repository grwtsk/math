/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Imported Mathlib and GRWTSK declarations retain their own provenance.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Do not import into the public GRWTSK root before exact-commit
Lean elaboration, fresh kernel checking and transitive axiom auditing.
-/
import GRWTSK.NumberTheory.Farey.ReturnAngularChannel
import Mathlib

/-!
# Farey return: signed phase cancellation versus expanding radial weights

The authentic selected Farey return LR has an expanding real channel
lambda=(3+sqrt(5))/2>1 and a mod-three four-cycle with complex phase
1,i,-1,-i. The four phases sum to zero, but their EXPANDINGLY WEIGHTED
sum need not: 1+lambda*i-lambda^2-lambda^3*i is nonzero.

This source explicitly accounts for four real weights by their two
opposite-phase defects, proves the radial hostile control, and proves
exact cancellation after the justified inverse-eigenvalue normalization
of the actual ReturnAngularChannel.discreteSpiral. No cancellation is
deduced from phase alternation alone.

A separate general conditional closure lemma says that an exact
paired signed part plus a vanishing residual preserves a uniform
nonnegative lower margin under an ASSUMED real limit. The lemma does
not construct an arithmetic Weil-form, a uniform analytic estimate, a
limit from finite Farey cells, or a Navier-Stokes/Hodge/RH bridge.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open Filter

namespace GRWTSK.NumberTheory.Farey.WeightedReturnBalance

open GRWTSK.NumberTheory.Farey.ReturnAngularChannel
open GRWTSK.NumberTheory.Farey.ReturnSpectralChannel

/-- Signed sum of the four source phases with independent REAL weights.
The phase order is fixed: 1, i, -1, -i. -/
def weightedFourPhase (w0 w1 w2 w3 : ℝ) : ℂ :=
  (w0 : ℂ) + (w1 : ℂ) * Complex.I -
    (w2 : ℂ) - (w3 : ℂ) * Complex.I

/-- The exact signed error ledger: two paired weight mismatches and no
unrecorded imaginary correction. -/
theorem weightedFourPhase_eq_pair_defects (w0 w1 w2 w3 : ℝ) :
    weightedFourPhase w0 w1 w2 w3 =
      ((w0 - w2 : ℝ) : ℂ) +
        ((w1 - w3 : ℝ) : ℂ) * Complex.I := by
  simp only [weightedFourPhase]
  push_cast
  ring

/-- Opposite states cancel if the two weights in each antipodal pair
agree; this requires an actual weight identity, not just a sign flip. -/
theorem weightedFourPhase_zero_of_pair_balance (a b : ℝ) :
    weightedFourPhase a b a b = 0 := by
  simp [weightedFourPhase]

/-- A quantitative accounting bound for approximate pair balance.
It uses the source's two real weight defects, not an analytic estimate
obtained for free from the cyclic phase. -/
theorem weightedFourPhase_norm_le (w0 w1 w2 w3 : ℝ) :
    ‖weightedFourPhase w0 w1 w2 w3‖ ≤
      |w0 - w2| + |w1 - w3| := by
  rw [weightedFourPhase_eq_pair_defects]
  calc
    ‖((w0 - w2 : ℝ) : ℂ) +
        ((w1 - w3 : ℝ) : ℂ) * Complex.I‖ ≤
        ‖((w0 - w2 : ℝ) : ℂ)‖ +
          ‖((w1 - w3 : ℝ) : ℂ) * Complex.I‖ :=
      norm_add_le _ _
    _ = |w0 - w2| + |w1 - w3| := by
      simp [norm_mul, Real.norm_eq_abs]

/-- A raw radial block at eigenvalue r. The uniform clock phases are
not themselves equally weighted when r is expanding. -/
def radialFourBlock (r : ℝ) : ℂ :=
  weightedFourPhase 1 r (r ^ 2) (r ^ 3)

/-- The real defect alone detects failure of raw cancellation.
There is no dependence on numerical approximation to sqrt(5). -/
theorem radialFourBlock_re (r : ℝ) :
    (radialFourBlock r).re = 1 - r ^ 2 := by
  simp [radialFourBlock, weightedFourPhase, Complex.mul_re]

/-- Any strictly expanding real eigenvalue leaves a NONZERO raw
four-phase block, even though the four unweighted phases cancel. -/
theorem radialFourBlock_ne_zero_of_one_lt (r : ℝ) (hr : 1 < r) :
    radialFourBlock r ≠ 0 := by
  intro hzero
  have hreal := congrArg Complex.re hzero
  rw [radialFourBlock_re] at hreal
  have hsquared : 1 < r ^ 2 := by
    have hminus : 0 < r - 1 := by linarith
    have hplus : 0 < r + 1 := by linarith
    nlinarith [mul_pos hminus hplus]
  simp at hreal
  linarith

/-- The raw block is the first four actual sampled Farey spiral values;
this removes the otherwise missing source-to-observation identification. -/
theorem discreteSpiral_first_four_eq_radialBlock :
    discreteSpiral 0 + discreteSpiral 1 +
        discreteSpiral 2 + discreteSpiral 3 =
      radialFourBlock expandingEigenvalue := by
  simp only [discreteSpiral_formula]
  have hI2 : (Complex.I : ℂ) ^ 2 = -1 := by
    norm_num [Complex.I_mul_I]
  have hI3 : (Complex.I : ℂ) ^ 3 = -Complex.I := by
    rw [pow_succ, hI2]
    ring
  simp only [pow_zero, pow_one, mul_pow]
  rw [hI2, hI3]
  simp only [radialFourBlock, weightedFourPhase]
  push_cast
  ring

/-- Hostile control: a genuine expanding return does NOT cancel before
radial compensation, even at the first complete four-state phase cycle. -/
theorem discreteSpiral_first_four_ne_zero :
    discreteSpiral 0 + discreteSpiral 1 +
      discreteSpiral 2 + discreteSpiral 3 ≠ 0 := by
  rw [discreteSpiral_first_four_eq_radialBlock]
  exact radialFourBlock_ne_zero_of_one_lt
    expandingEigenvalue expandingEigenvalue_gt_one

/-- The exact inverse expanding return weight is part of the
DECLARED observation. This normalization is not gauge invariant under
arbitrary orbit-dependent frame changes. -/
def compensatedSample (n : ℕ) : ℂ :=
  ((expandingEigenvalue : ℂ)⁻¹) ^ n * discreteSpiral n

/-- Inverse expansion removes the radial weight from the actual
discreteSpiral source and retains exactly its selected orbital phase. -/
theorem compensatedSample_eq_phase (n : ℕ) :
    compensatedSample n = Complex.I ^ n := by
  have hr : (expandingEigenvalue : ℂ) ≠ 0 := by
    exact_mod_cast
      (ne_of_gt (lt_trans zero_lt_one expandingEigenvalue_gt_one))
  calc
    compensatedSample n =
        ((expandingEigenvalue : ℂ)⁻¹) ^ n *
          (((expandingEigenvalue : ℂ) * Complex.I) ^ n) := by
            rw [compensatedSample, discreteSpiral_formula]
    _ = (((expandingEigenvalue : ℂ)⁻¹) *
          ((expandingEigenvalue : ℂ) * Complex.I)) ^ n := by
            rw [mul_pow]
    _ = Complex.I ^ n := by
      simp [hr, mul_assoc]

/-- The selected angular fourth-root-of-unity phase sums to zero over
an unweighted four-cycle. -/
theorem four_unit_phases_cancel :
    (1 : ℂ) + Complex.I + Complex.I ^ 2 + Complex.I ^ 3 = 0 := by
  have hI2 : (Complex.I : ℂ) ^ 2 = -1 := by
    norm_num [Complex.I_mul_I]
  have hI3 : (Complex.I : ℂ) ^ 3 = -Complex.I := by
    rw [pow_succ, hI2]
    ring
  rw [hI2, hI3]
  ring

/-- Every source-aligned four-return block cancels EXACTLY after
compensating by the previously proved real expanding eigenvalue. -/
theorem compensated_four_consecutive_zero (n : ℕ) :
    compensatedSample n + compensatedSample (n + 1) +
      compensatedSample (n + 2) + compensatedSample (n + 3) = 0 := by
  simp only [compensatedSample_eq_phase, pow_add]
  calc
    Complex.I ^ n + Complex.I ^ n * Complex.I ^ 1 +
        Complex.I ^ n * Complex.I ^ 2 +
          Complex.I ^ n * Complex.I ^ 3 =
        Complex.I ^ n *
          (1 + Complex.I + Complex.I ^ 2 + Complex.I ^ 3) := by ring
    _ = 0 := by rw [four_unit_phases_cancel]; ring

/-- At a finite partition level, explicitly paired signed contributions
cancel term by term. Neither equal weights nor paired signs follow from
an arbitrary partition: they are built into this exact pairing. -/
theorem finite_paired_signed_sum_zero {α : Type*}
    (cells : Finset α) (weight error : α → ℝ) :
    (∑ x ∈ cells,
      (weight x * error x + weight x * (-error x))) = 0 := by
  simp [mul_neg]

/-- A standard finite nonnegative square-energy source. This does not
identify the energy with a Weil form or Navier-Stokes/Hodge functional. -/
def finiteSquareEnergy {α : Type*}
    (cells : Finset α) (signal : α → ℝ) : ℝ :=
  ∑ x ∈ cells, signal x ^ 2

theorem finiteSquareEnergy_nonneg {α : Type*}
    (cells : Finset α) (signal : α → ℝ) :
    0 ≤ finiteSquareEnergy cells signal := by
  unfold finiteSquareEnergy
  exact Finset.sum_nonneg (by
    intro x _
    exact sq_nonneg (signal x))

/-- The pair cancellation gives nonnegative finite energy at a declared
stage; no all-scale spectral gap is inferred from this fact. -/
theorem finite_balanced_energy_nonneg {α : Type*}
    (cells : Finset α) (signal weight error : α → ℝ) :
    0 ≤ finiteSquareEnergy cells signal +
      (∑ x ∈ cells,
        (weight x * error x + weight x * (-error x))) := by
  rw [finite_paired_signed_sum_zero]
  simpa using finiteSquareEnergy_nonneg cells signal

/-- Uniform margin + exact cancellation + vanishing residual + actual
convergence implies a lower bound at the limit. These are FOUR distinct
supplied premises; this theorem does not manufacture any of them. -/
theorem limit_lower_bound_of_balanced_partitions
    (energy cancel residual : ℕ → ℝ)
    (margin limit : ℝ)
    (hMargin : ∀ n, margin ≤ energy n)
    (hCancel : ∀ n, cancel n = 0)
    (hResidual : Tendsto residual atTop (nhds 0))
    (hLimit : Tendsto
      (fun n => energy n + cancel n + residual n)
      atTop (nhds limit)) :
    margin ≤ limit := by
  have hReduced :
      Tendsto (fun n => energy n + residual n)
        atTop (nhds limit) := by
    simpa [hCancel] using hLimit
  have hEnergy : Tendsto energy atTop (nhds limit) := by
    have hSubtract := hReduced.sub hResidual
    simpa only [sub_zero, add_sub_cancel_right] using hSubtract
  exact isClosed_Ici.mem_of_tendsto hEnergy
    (Filter.Eventually.of_forall hMargin)

/-- A nonnegative limit is conditional on an actual net limit and
vanishing complete residual, not on irrationality of zeros or a
finite phase clock alone. -/
theorem limit_nonneg_of_balanced_partitions
    (energy cancel residual : ℕ → ℝ) (limit : ℝ)
    (hEnergy : ∀ n, 0 ≤ energy n)
    (hCancel : ∀ n, cancel n = 0)
    (hResidual : Tendsto residual atTop (nhds 0))
    (hLimit : Tendsto
      (fun n => energy n + cancel n + residual n)
      atTop (nhds limit)) :
    0 ≤ limit :=
  limit_lower_bound_of_balanced_partitions
    energy cancel residual 0 limit hEnergy hCancel hResidual hLimit

end GRWTSK.NumberTheory.Farey.WeightedReturnBalance
