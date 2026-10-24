# Complete source: GRWTSK.NumberTheory.Farey.HeatCompensatedReturn

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0e0329b9f0877b5fbdd08105279b873ada242c2` · SHA-256 `7c6a806cc4e210f065ff6222ed3964f4d65e323a7485958bb49578da1f2414fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Repository and Mathlib imports retain their authorship and licenses.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This is a SELECTED return-observation identity, not an RH or heat-flow
identification of zeta zeros.
-/
import GRWTSK.Geometry.Hodge.FiniteHeatRecovery
import GRWTSK.NumberTheory.Farey.WeightedReturnBalance
import Mathlib

/-!
# Exact finite heat rescaling of the sourced Farey return clock

For the already SOURCE-IDENTIFIED Farey return LR, the real expanding
eigenvalue is lambda=(3+sqrt 5)/2>1. The chosen observable is the actual
discreteSpiral(n)=(lambda*i)^n from the mod-three quotient angular clock.

Set a scalar heat eigenvalue ONE and choose return-dependent time
s_n=n*log(lambda). The exact forward heat multiplier exp(-s_n)
equals lambda^(-n), removing the expanding radial weight of this selected
observable. As a result the compensated observable is exactly i^n and
four consecutive phases cancel. The uncompensated four-sample sum
does not vanish.

This is an exact source-bound comparison of the ONE chosen real spectral
scale and the ONE selected Farey spiral. It does NOT construct an
isometric intertwiner between the Farey return and a graph Hodge
Laplacian, does not bound arbitrary orbit observations or any actual
zeta source, and does not provide a uniform numerical recovery bound.
A change of time schedule or source observable changes the claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.HeatCompensatedReturn

open GRWTSK.Geometry.Hodge.FiniteHeatRecovery
open GRWTSK.NumberTheory.Farey.ReturnSpectralChannel
open GRWTSK.NumberTheory.Farey.ReturnAngularChannel
open GRWTSK.NumberTheory.Farey.WeightedReturnBalance

/-- Heat time for n consecutive actual Farey returns, at scalar heat
eigenvalue one. The time is NOT the original dynamical return time. -/
def returnHeatTime (n : ℕ) : ℝ :=
  (n : ℝ) * Real.log expandingEigenvalue

theorem returnHeatTime_nonneg (n : ℕ) :
    0 ≤ returnHeatTime n := by
  unfold returnHeatTime
  exact mul_nonneg (Nat.cast_nonneg _) (Real.log_nonneg expandingEigenvalue_gt_one.le)

/-- The explicit scalar forward-heat attenuation. -/
def heatReturnCompensator (n : ℕ) : ℝ :=
  Real.exp (-returnHeatTime n)

/-- The scalar is literally the diagonal heat of the unit eigenmode. -/
theorem heatReturnCompensator_is_unit_heat (n : ℕ) :
    heatReturnCompensator n =
      diagonalHeat (fun _ : Unit => (1 : ℝ)) (returnHeatTime n)
        (fun _ : Unit => (1 : ℝ)) () := by
  simp [heatReturnCompensator, diagonalHeat]

/-- Source-linked exact exponential identity, no floating approximation:
exp(-n log lambda) = (lambda^-1)^n, with lambda>1. -/
theorem heatReturnCompensator_eq_inv_pow (n : ℕ) :
    heatReturnCompensator n = (expandingEigenvalue⁻¹)^n := by
  have hpos : 0 < expandingEigenvalue :=
    lt_trans zero_lt_one expandingEigenvalue_gt_one
  unfold heatReturnCompensator returnHeatTime
  have hrewrite :
      -((n : ℝ) * Real.log expandingEigenvalue) =
        (n : ℝ) * (-Real.log expandingEigenvalue) := by ring
  rw [hrewrite, Real.exp_nat_mul, Real.exp_neg, Real.exp_log hpos]

/-- Compensate the ACTUAL selected expanding Farey/quotient observation
rather than an arbitrary invented four-phase signal. -/
def heatNormalizedSpiral (n : ℕ) : ℂ :=
  (heatReturnCompensator n : ℂ) * discreteSpiral n

/-- Exponential heat compensation is the previously source-bound inverse
eigenvalue normalization on exactly the same Farey return. -/
theorem heatNormalizedSpiral_eq_compensatedSample (n : ℕ) :
    heatNormalizedSpiral n = compensatedSample n := by
  simp [heatNormalizedSpiral, compensatedSample,
    heatReturnCompensator_eq_inv_pow]

/-- Only after exact radial compensation does the selected phase become
the unit mod-three quotient angular character. -/
theorem heatNormalizedSpiral_eq_phase (n : ℕ) :
    heatNormalizedSpiral n = Complex.I ^ n := by
  rw [heatNormalizedSpiral_eq_compensatedSample]
  exact compensatedSample_eq_phase n

/-- An exact four-phase cancellation for the compensated selected return. -/
theorem heatNormalized_four_consecutive_zero (n : ℕ) :
    heatNormalizedSpiral n +
      heatNormalizedSpiral (n + 1) +
      heatNormalizedSpiral (n + 2) +
      heatNormalizedSpiral (n + 3) = 0 := by
  simpa only [heatNormalizedSpiral_eq_compensatedSample] using
    compensated_four_consecutive_zero n

/-- Hostile control: the unweighted raw first four selected returns are
NOT zero. Heat compensation is doing mathematically real work. -/
theorem raw_return_four_not_zero :
    discreteSpiral 0 + discreteSpiral 1 +
      discreteSpiral 2 + discreteSpiral 3 ≠ 0 :=
  discreteSpiral_first_four_ne_zero

end GRWTSK.NumberTheory.Farey.HeatCompensatedReturn
```
