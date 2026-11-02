/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.FiniteLabelledPickupCocycle
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Tactic

/-!
# Exact birth-time derivative of the original Möbius pickup response

DO NOT replace the existing `GRWTSK.RiemannHypothesis.CCC.pickupResponse`.
For every positive integer n, its activation is at log n, with zero value
at birth and a one-sided jump in the first derivative. Away from the birth,
its derivative is exactly 0 or exp(-t/2). There is no impulsive delta in the
FIRST distributional derivative: the source response itself is continuous.
This module gives the original scalar derivative and defines the finite
labelled derivative operator. The operator-valued differentiability bridge,
its one-sided values, and the global absolutely-continuous return remain
explicit verification gates, not concealed as axioms.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualPickupBirthDerivative

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupCocycle
open Filter Set

/-- Original physical-time logarithmic event location. -/
def sourceBirthTime (n : ℕ) : ℝ := Real.log (n : ℝ)

/-- Chosen away-from-birth derivative, with no fictitious impulse. The
value selected AT a birth is bookkeeping, not a two-sided derivative. -/
def sourceResponseSlope (n : ℕ) (t : ℝ) : ℝ :=
  if sourceBirthTime n < t then Real.exp (-t / 2) else 0

@[simp] theorem slope_at_birth (n : ℕ) :
    sourceResponseSlope n (sourceBirthTime n) = 0 := by
  simp [sourceResponseSlope]

/-- The original causal source is exactly zero prior to its own birth. -/
theorem pickupResponse_before_birth (n : ℕ) (t : ℝ)
    (h : t < sourceBirthTime n) : pickupResponse n t = 0 := by
  simp [pickupResponse, sourceBirthTime, not_le.mpr h]

/-- The original response has its ORIGINAL signed source formula after birth. -/
theorem pickupResponse_after_birth (n : ℕ) (t : ℝ)
    (h : sourceBirthTime n < t) :
    pickupResponse n t =
      2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-t / 2)) := by
  simp [pickupResponse, sourceBirthTime, h.le]

/-- Source-exact two-sided derivative on the strictly inactive cell. -/
theorem pickupResponse_hasDerivAt_before (n : ℕ) (t : ℝ)
    (h : t < sourceBirthTime n) :
    HasDerivAt (pickupResponse n) 0 t := by
  have heq : (pickupResponse n) =ᶠ[𝓝 t] (fun _ : ℝ => (0 : ℝ)) := by
    filter_upwards [Iio_mem_nhds h] with u hu
    exact pickupResponse_before_birth n u hu
  exact (hasDerivAt_const t (0 : ℝ)).congr_of_eventuallyEq heq

/-- Source-exact derivative on the strictly active cell. The factor 2 in
`pickupResponse` cancels the derivative factor 1/2 of exp(-t/2). -/
theorem pickupResponse_hasDerivAt_after (n : ℕ) (t : ℝ)
    (h : sourceBirthTime n < t) :
    HasDerivAt (pickupResponse n) (Real.exp (-t / 2)) t := by
  have hlinear : HasDerivAt (fun u : ℝ => -u / 2) (-(1 / 2 : ℝ)) t := by
    convert (hasDerivAt_id t).neg.div_const 2 using 1 <;> ring
  have hexp : HasDerivAt (fun u : ℝ => Real.exp (-u / 2))
      (Real.exp (-t / 2) * (-(1 / 2 : ℝ))) t :=
    (Real.hasDerivAt_exp (-t / 2)).comp t hlinear
  have hsmooth : HasDerivAt
      (fun u : ℝ => 2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2)))
      (Real.exp (-t / 2)) t := by
    convert ((hasDerivAt_const t ((Real.sqrt (n : ℝ))⁻¹)).sub hexp).const_mul 2
      using 1 <;> ring
  have heq : (pickupResponse n) =ᶠ[𝓝 t]
      (fun u : ℝ => 2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2))) := by
    filter_upwards [Ioi_mem_nhds h] with u hu
    exact pickupResponse_after_birth n u hu
  exact hsmooth.congr_of_eventuallyEq heq

/-- The precise scalar differentiability domain, with the birth excluded. -/
theorem pickupResponse_hasDerivAt_off_birth (n : ℕ) (t : ℝ)
    (h : t ≠ sourceBirthTime n) :
    HasDerivAt (pickupResponse n) (sourceResponseSlope n t) t := by
  rcases lt_or_gt_of_ne h with hb | ha
  · simpa [sourceResponseSlope, hb] using
      pickupResponse_hasDerivAt_before n t hb
  · simpa [sourceResponseSlope, ha] using
      pickupResponse_hasDerivAt_after n t ha

/-- The finite source retains exactly each original integer n=i+1.
No residue aggregation or absolute-value conversion enters this slope. -/
def sourceDiagonalDerivativeLM (j : ℕ) (t : ℝ) :
    SourceHilbert j →ₗ[ℂ] SourceHilbert j where
  toFun x := WithLp.toLp 2
    (fun i : SourceLabels j => (sourceResponseSlope (i.val + 1) t : ℂ) * x i)
  map_add' x y := by
    apply PiLp.ext
    intro i
    simp only [PiLp.toLp_apply, PiLp.add_apply, mul_add]
  map_smul' c x := by
    apply PiLp.ext
    intro i
    simp only [PiLp.toLp_apply, PiLp.smul_apply, smul_eq_mul]
    ring

/-- The finite diagonal derivative is a genuine bounded complex-linear map
at each specified time, without a claimed common derivative at births. -/
def sourceDiagonalDerivative (j : ℕ) (t : ℝ) :
    SourceHilbert j →L[ℂ] SourceHilbert j :=
  LinearMap.toContinuousLinearMap (sourceDiagonalDerivativeLM j t)

@[simp] theorem sourceDiagonalDerivative_apply (j : ℕ) (t : ℝ)
    (x : SourceHilbert j) (i : SourceLabels j) :
    sourceDiagonalDerivative j t x i =
      (sourceResponseSlope (i.val + 1) t : ℂ) * x i := rfl

/-- The exact active/inactive finite inventory is selected by logarithmic
birth times, not a guessed continuously varying finite inventory. -/
def sourceNonbirth (j : ℕ) (t : ℝ) : Prop :=
  ∀ i : SourceLabels j, t ≠ sourceBirthTime (i.val + 1)

/-- The SOURCE derivative is uniformly bounded, pointwise on the active
nonnegative clock, independently of j and of the Möbius signs. -/
theorem sourceResponseSlope_abs_le_one (n : ℕ) (t : ℝ) (ht : 0 ≤ t) :
    |sourceResponseSlope n t| ≤ 1 := by
  unfold sourceResponseSlope
  split_ifs with h
  · rw [abs_of_nonneg (Real.exp_pos _).le]
    exact Real.exp_le_one_iff.mpr (by linarith)
  · simp

/-- At t=log n there is no chosen two-sided derivative: the strict-branch
selector is zero at t=log n and positive immediately after. This is a
negative control against asserting a classical global C1 generator. -/
theorem sourceSlope_at_birth_zero (n : ℕ) :
    sourceResponseSlope n (Real.log (n : ℝ)) = 0 := by
  exact slope_at_birth n

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualPickupBirthDerivative
