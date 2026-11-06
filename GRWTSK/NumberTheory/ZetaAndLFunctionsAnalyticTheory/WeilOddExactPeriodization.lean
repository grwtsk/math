/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundaryDifference
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddHighFloor

/-!
# Exact odd gamma periodization and the resulting high floor

Sections 2 and 5 of weil-periodic-boundary.md (2026-11-04). The known
wrap inequality supplies integrability of the periodic gamma energy
from the literal whole-line gamma domain. On that domain the positive
exponential expansion can be integrated separately for both energies.
Their difference series has already been computed by the exterior
correlation identity. Uniqueness of its sum gives the exact signed
boundary form. The checked odd kernel loss is four times the mass,
so the high complement retains the full periodic multiplier.

The statements use measurable real representatives and their literal
zero and circle translations. The reverse-domain implication and the
operator-domain identification are separate. Independent mathematical
review is pending.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddExactPeriodization

open OddRootProjection OddKernelSineTransform OddWrapEnergy OddWrapPeriodLift
open OddBoundaryDifference OddHighComplement OddHighFloor OddPeriodicDiagonal
open OddSineParseval OddMultiplierBounds OddOutputTrace OddSineForm LowSchur

private theorem measurable_zeroShiftEnergy {f : ℝ → ℝ} (hf : Measurable f) :
    Measurable (fun r => zeroShiftEnergy r f) := by
  let G : ℝ × ℝ → ℝ := fun z => (f (z.2 + z.1) - f z.2) ^ 2
  have hG : Measurable G := by dsimp [G]; fun_prop
  exact hG.stronglyMeasurable.integral_prod_right'.measurable

private def expComponent (g : ℝ → ℝ) (j : ℕ) (r : ℝ) : ℝ :=
  Real.exp (-(2 * (j : ℝ) + 1 / 2) * r) * g r

private theorem exponential_energy_sum {g : ℝ → ℝ} (hg : Measurable g)
    (hn : ∀ r ∈ Ioi (0 : ℝ), 0 ≤ g r)
    (hI : IntegrableOn (fun r => parityKernel 0 r * g r) (Ioi 0)) :
    (∀ j, IntegrableOn (expComponent g j) (Ioi 0)) ∧
      HasSum (fun j : ℕ => ∫ r in Ioi (0 : ℝ), expComponent g j r)
        (∫ r in Ioi (0 : ℝ), parityKernel 0 r * g r) := by
  let μ := volume.restrict (Ioi (0 : ℝ))
  have hpoint (r : ℝ) (hr : r ∈ Ioi (0 : ℝ)) :
      HasSum (fun j => expComponent g j r) (parityKernel 0 r * g r) := by
    have h := (parityKernel_zero_exp_summable hr).hasSum.mul_right (g r)
    rw [← parityKernel_zero_eq_tsum hr] at h
    simpa only [expComponent, neg_mul] using h
  have hMeas (j : ℕ) : AEStronglyMeasurable (expComponent g j) μ := by
    apply Measurable.aestronglyMeasurable
    unfold expComponent
    fun_prop
  have hnn (j : ℕ) (r : ℝ) (hr : r ∈ Ioi (0 : ℝ)) : 0 ≤ expComponent g j r :=
    mul_nonneg (Real.exp_nonneg _) (hn r hr)
  have hInterior : ∀ᵐ r ∂μ, r ∈ Ioi (0 : ℝ) := ae_restrict_mem measurableSet_Ioi
  have hterm (j : ℕ) : IntegrableOn (expComponent g j) (Ioi 0) := by
    refine hI.mono' (hMeas j) ?_
    filter_upwards [hInterior] with r hr
    rw [Real.norm_of_nonneg (hnn j r hr), ← (hpoint r hr).tsum_eq]
    exact (hpoint r hr).summable.le_tsum j (fun k _ => hnn k r hr)
  have hDom : Integrable (fun r => ∑' j, expComponent g j r) μ := by
    refine hI.congr ?_
    exact hInterior.mono (fun r hr => (hpoint r hr).tsum_eq.symm)
  refine ⟨hterm, ?_⟩
  exact hasSum_integral_of_dominated_convergence (expComponent g) hMeas
    (fun j => hInterior.mono (fun r hr => (Real.norm_of_nonneg (hnn j r hr)).le))
    (hInterior.mono (fun r hr => (hpoint r hr).summable)) hDom
    (hInterior.mono hpoint)

/-- The literal odd gamma energy equals the actual circle energy plus the
complete signed positive-half boundary form. -/
theorem oddArchimedeanEnergy_eq_periodic_add_boundary (T : ℝ) (hT : 0 < T)
    {f : ℝ → ℝ} (hf : Measurable f) (hf2 : MemLp f 2 volume)
    (hodd : ∀ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hzero : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    oddArchimedeanEnergy f =
      (∫ r in Ioi (0 : ℝ), parityKernel 0 r * periodicJumpEnergy T hT r f) +
        2 * ∫ t in Ioo 0 T, ∫ s in Ioo 0 T, OddBoundaryNorm.oddKernel T t s * f t * f s := by
  let z := fun r => zeroShiftEnergy r f
  let p := fun r => periodicJumpEnergy T hT r f
  have hpI := (periodicWeightedEnergy_integrable_le T hT hf2 hsupport hzero).1
  obtain ⟨hzInt, hzSum⟩ := exponential_energy_sum (measurable_zeroShiftEnergy hf)
    (fun r _ => integral_nonneg (fun _ => sq_nonneg _)) hzero
  obtain ⟨hpInt, hpSum⟩ := exponential_energy_sum (measurable_periodicJumpEnergy T hT hf2)
    (fun r _ => periodicJumpEnergy_nonneg T hT r f) hpI
  have hDiff : HasSum (fun j : ℕ => ∫ r in Ioi (0 : ℝ),
      Real.exp (-(2 * (j : ℝ) + 1 / 2) * r) * (z r - p r))
      (oddArchimedeanEnergy f - ∫ r in Ioi (0 : ℝ), parityKernel 0 r * p r) := by
    apply (hzSum.sub hpSum).congr_fun
    intro j
    change (∫ r in Ioi (0 : ℝ),
      Real.exp (-(2 * (j : ℝ) + 1 / 2) * r) * (z r - p r)) =
      (∫ r in Ioi (0 : ℝ), expComponent z j r) - ∫ r in Ioi (0 : ℝ), expComponent p j r
    rw [← integral_sub (hzInt j) (hpInt j)]
    apply integral_congr_ae (Eventually.of_forall (fun r => ?_))
    simp only [expComponent, mul_sub, z, p]
  have hB := hasSum_actual_exponential_jump_differences hT hf hf2 hsupport (fun t _ => hodd t)
  have hEq := hDiff.unique hB
  have hBInt := (OddBoundaryNorm.oddKernel_quadratic_bound T f hf hf2.integrable_sq.integrableOn).1
  rw [← Measure.prod_restrict, integral_prod _ hBInt] at hEq
  linarith

/-- The full multiplier and separate losses give a floor on the complete
supported real odd complement in the literal gamma domain. -/
theorem shiftedOddCoreEnergy_ge_of_exactBudget (T : ℝ) (hT : 0 < T)
    (β primeLoss boundaryLoss requested : ℝ) {N : ℕ}
    (hbudget : requested ≤ gammaConstant 1 0 - β + periodicMultiplier 0 (frequency T (N + 1)) -
      primeLoss - boundaryLoss) {f : ℝ → ℝ}
    (hf : Measurable f) (hf2 : MemLp f 2 volume) (hodd : ∀ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0)
    (hzero : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0))
    (hprime : primeEnergy T f ≤ primeLoss * (∫ t : ℝ, ‖f t‖ ^ 2))
    (hboundary : -(boundaryLoss * ∫ t in Ioo 0 T, f t ^ 2) ≤
      ∫ t in Ioo 0 T, ∫ s in Ioo 0 T, OddBoundaryNorm.oddKernel T t s * f t * f s) :
    requested * (∫ t : ℝ, ‖f t‖ ^ 2) ≤ shiftedOddCoreEnergy T β f := by
  have hOddAE : ∀ᵐ t : ℝ, f (-t) = -f t := Eventually.of_forall hodd
  let D (n : ℕ) := periodicMultiplier 0 (frequency T (n + 1)) * sineCoefficient T f (n + 1) ^ 2
  have hpI := (periodicWeightedEnergy_integrable_le T hT hf2 hsupport hzero).1
  have hDiag : HasSum D (∫ r in Ioi (0 : ℝ), parityKernel 0 r * periodicJumpEnergy T hT r f) :=
    hasSum_periodicDiagonal_of_integrable T hT 0 hf2 hOddAE hpI
  have hTail : (fun j => D (j + N)) = highDiagonalTerm T N f := by
    funext j
    unfold D highDiagonalTerm
    rw [show j + N + 1 = N + 1 + j by omega]
  have hHeadZero : (∑ n ∈ Finset.range N, D n) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    simp [D, hhead n (Finset.mem_range.mp hn)]
  have hSummable : Summable (highDiagonalTerm T N f) := by
    rw [← hTail]
    exact (summable_nat_add_iff N).2 hDiag.summable
  have hDiagonalEq : (∫ r in Ioi (0 : ℝ), parityKernel 0 r * periodicJumpEnergy T hT r f) =
      ∑' j, highDiagonalTerm T N f j := by
    rw [← hDiag.tsum_eq, ← hDiag.summable.sum_add_tsum_nat_add N, hHeadZero, zero_add, hTail]
  have hExact := oddArchimedeanEnergy_eq_periodic_add_boundary T hT hf hf2 hodd hsupport hzero
  have hmass := oddMass_eq_twice_positive T hf2.integrable_sq hOddAE hsupport
  apply shiftedOddCoreEnergy_ge_of_budget T hT β primeLoss boundaryLoss requested hbudget
    hf2 hOddAE hsupport hhead hSummable hprime
  rw [hExact, hDiagonalEq, hmass]
  linarith

/-- The explicit sufficient cutoff using the full prime mass and uniform
boundary loss. -/
theorem shiftedOddCoreEnergy_ge_of_exactHighCutoff (T : ℝ) (hT : 0 < T)
    (β requested : ℝ) {N : ℕ} (hN : highCutoff T β 4 requested ≤ N) {f : ℝ → ℝ}
    (hf : Measurable f) (hf2 : MemLp f 2 volume) (hodd : ∀ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0)
    (hzero : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    requested * (∫ t : ℝ, ‖f t‖ ^ 2) ≤ shiftedOddCoreEnergy T β f := by
  have hprime := (le_abs_self (primeEnergy T f)).trans (abs_primeEnergy_le T f hf2.integrable_sq)
  have hprime' : primeEnergy T f ≤ primeMass T * (∫ t : ℝ, ‖f t‖ ^ 2) := by
    simpa only [Real.norm_eq_abs, sq_abs] using hprime
  exact shiftedOddCoreEnergy_ge_of_exactBudget T hT β (primeMass T) 4 requested
    (floor_le_of_highCutoff T hT β 4 requested hN) hf hf2 hodd hsupport hhead hzero
    hprime' (OddBoundaryNorm.oddKernel_quadratic_ge T f hf hf2.integrable_sq.integrableOn)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddExactPeriodization
