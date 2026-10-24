# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbfdd388e1fc43c50b4d1978dd9e40e7db4dc790` · SHA-256 `5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceKernelLogProfile

/-!
# Exact weighted Möbius transport for the unchanged source residual

The full divisor inventory recombines the small and large sectors, including
unit divisors and the equality case at the moving lower boundary. Centering
Abel's formula absorbs its lower endpoint without discarding it.
-/

/-!
# Full finite Möbius recombination and unweighted Abel transport

The finite reindexing lemmas are reused from the checked candidate at
3c08cd93f284601d36c6f4569ea93fe5d7d9b4b8, in this same module and namespace.
Only their accepted-source imports are needed here. The full unweighted Abel
identity then recombines the actual small and large divisor sectors, including
the unit atom and the equality case at the moving split. No cancellation
estimate is assumed, and no unbounded interchange is performed.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateWeightedMobiusPairing

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateMobiusSplit EstimateMertensAbel EstimateSourceMobiusKernel
open EstimateMobiusIntegerTransport EstimateMertensResidual EstimatePrimeSmoothDefect
open PrimePowerDescent EstimateSourceKernelLogProfile

noncomputable section

/-- The actual weighted Möbius coefficient; total division makes its zeroth value zero. -/
def weightedMoebius (d : ℕ) : ℝ := realMoebius d / Real.sqrt d

/-- Closed-right real weighted Mertens sum, with its harmless zeroth coefficient included. -/
def weightedMertens (x : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 0 ⌊x⌋₊, weightedMoebius d

/-- The actual weighted Möbius primitive on the logarithmic scale. -/
def weightedMobiusPrimitive (s : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 ⌊Real.exp s⌋₊, weightedMoebius d

@[simp] theorem weightedMoebius_zero : weightedMoebius 0 = 0 := by
  simp [weightedMoebius]

/-- Integer-kernel agreement above the unit divisor does not require the large-sector cutoff. -/
theorem integer_antidiagonal_eq_admissible_of_two_le
    (A : ℝ) (_hA : 1 ≤ A)
    (d : ℕ)
    (hd2 : 2 ≤ d) :
    (∑ n ∈ primePowerInventory (2 * A),
      ∑ dk ∈ n.divisorsAntidiagonal,
        if dk.1 = d
        then Real.log dk.2 * closedPrimeWeight A n
        else 0) =
      ∑ k ∈ admissibleK A d,
        sourceKernelTerm A k d := by
  have hdpos : 0 < d := by omega
  calc
    (∑ n ∈ primePowerInventory (2 * A),
      ∑ dk ∈ n.divisorsAntidiagonal,
        if dk.1 = d
        then Real.log dk.2 * closedPrimeWeight A n
        else 0) =
        ∑ n ∈ primePowerInventory (2 * A),
          if d ∣ n ∧ d ≠ 0
          then Real.log (n / d : ℕ) * closedPrimeWeight A n
          else 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn0 : n ≠ 0 := by
        have hn2 := (Finset.mem_Icc.mp hn).1
        omega
      exact antidiagonal_first_factor A d n hn0
    _ = _ := by
      let S : Finset ℕ :=
        (primePowerInventory (2 * A)).filter (fun n => d ∣ n)
      calc
        (∑ n ∈ primePowerInventory (2 * A),
          if d ∣ n ∧ d ≠ 0
          then Real.log (n / d : ℕ) * closedPrimeWeight A n
          else 0) =
            ∑ n ∈ S,
              Real.log (n / d : ℕ) * closedPrimeWeight A n := by
          symm
          unfold S
          rw [Finset.sum_filter]
          apply Finset.sum_congr rfl
          intro n hn
          by_cases hdvd : d ∣ n
          · simp [hdvd, hdpos.ne']
          · simp [hdvd]
        _ =
            ∑ k ∈ admissibleK A d,
              sourceKernelTerm A k d := by
          apply Finset.sum_bij (fun n hn => n / d)
          · intro n hn
            have hnS := (Finset.mem_filter.mp hn)
            have hninv := Finset.mem_Icc.mp hnS.1
            have hdvd := hnS.2
            have hkpos0 : 0 < n / d :=
              Nat.div_pos (Nat.le_of_dvd (by omega) hdvd) hdpos
            have hkpos : 1 ≤ n / d := hkpos0
            have hprod : d * (n / d) = n :=
              Nat.mul_div_cancel' hdvd
            apply Finset.mem_filter.mpr
            refine ⟨Finset.mem_Icc.mpr ⟨hkpos, ?_⟩, ?_⟩
            · exact le_trans (Nat.div_le_self n d) hninv.2
            · simpa only [hprod, sourceKernelCutoff, sourceUpper] using hninv.2
          · intro n₁ hn₁ n₂ hn₂ heq
            have h₁ := (Finset.mem_filter.mp hn₁).2
            have h₂ := (Finset.mem_filter.mp hn₂).2
            calc
              n₁ = d * (n₁ / d) := (Nat.mul_div_cancel' h₁).symm
              _ = d * (n₂ / d) := by rw [heq]
              _ = n₂ := Nat.mul_div_cancel' h₂
          · intro k hk
            have hk' := Finset.mem_filter.mp hk
            have hkIcc := Finset.mem_Icc.mp hk'.1
            refine ⟨d * k, ?_, ?_⟩
            · apply Finset.mem_filter.mpr
              refine ⟨Finset.mem_Icc.mpr ⟨?_, hk'.2⟩, dvd_mul_right d k⟩
              have hmul : d ≤ d * k := by
                simpa only [mul_one] using Nat.mul_le_mul_left d hkIcc.1
              simpa using (hd2.trans hmul)
            · simp [hdpos.ne']
          · intro n hn
            have hdvd := (Finset.mem_filter.mp hn).2
            have hprod := Nat.mul_div_cancel' hdvd
            unfold sourceKernelTerm closedPrimeWeight
            rw [← Nat.cast_mul, hprod]


/-- The unit-divisor term has exactly the missing zero summand `log 1 = 0`. -/
theorem sourceMobiusKernel_integerAgreement_one (A : ℝ) (_hA : 1 ≤ A) :
    sourceMobiusKernel A 1 =
      ∑ n ∈ primePowerInventory (2 * A),
        ∑ dk ∈ n.divisorsAntidiagonal,
          if dk.1 = 1 then Real.log dk.2 * closedPrimeWeight A n else 0 := by
  have hrhs : (∑ n ∈ primePowerInventory (2 * A),
      ∑ dk ∈ n.divisorsAntidiagonal,
        if dk.1 = 1 then Real.log dk.2 * closedPrimeWeight A n else 0) =
      ∑ n ∈ Finset.Icc 2 (sourceKernelCutoff A),
        sourceKernelTerm A n 1 := by
    apply Finset.sum_congr rfl
    intro n hn
    rw [antidiagonal_first_factor A 1 n (by
      have := (Finset.mem_Icc.mp hn).1
      omega)]
    simp [sourceKernelTerm, closedPrimeWeight]
  rw [hrhs]
  unfold sourceMobiusKernel
  symm
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hn).1; omega,
      (Finset.mem_Icc.mp hn).2⟩
  · intro n hn hnnot
    have hn1 : n = 1 := by
      simp only [Finset.mem_Icc] at hn hnnot
      omega
    subst n
    simp [sourceKernelTerm]

/-- Agreement with the unchanged source kernel at every positive integer divisor. -/
theorem sourceMobiusKernel_integerAgreement_pos (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    sourceMobiusKernel A d =
      ∑ n ∈ primePowerInventory (2 * A),
        ∑ dk ∈ n.divisorsAntidiagonal,
          if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0 := by
  by_cases hd1 : d = 1
  · subst d
    simpa only [Nat.cast_one] using sourceMobiusKernel_integerAgreement_one A hA
  · rw [sourceMobiusKernel_eq_admissible_sum A hA d hd]
    exact (integer_antidiagonal_eq_admissible_of_two_le A hA d (by omega)).symm

/-- Every first factor in the actual prime inventory belongs to the full positive
divisor inventory. -/
theorem first_factor_mem_full_inventory (A : ℝ) (n : ℕ)
    (hn : n ∈ primePowerInventory (2 * A)) (dk : ℕ × ℕ)
    (hdk : dk ∈ n.divisorsAntidiagonal) :
    dk.1 ∈ Finset.Icc 1 (sourceKernelCutoff A) := by
  have hn0 : n ≠ 0 := by have := (Finset.mem_Icc.mp hn).1; omega
  have hdvd := Nat.fst_mem_divisors_of_mem_antidiagonal hdk
  have hd0 := ne_zero_of_dvd_ne_zero hn0 (Nat.dvd_of_mem_divisors hdvd)
  exact Finset.mem_Icc.mpr ⟨by omega, (Nat.divisor_le hdvd).trans (Finset.mem_Icc.mp hn).2⟩

/-- Exact recombination of all divisor sectors, with unit divisor and moving
equality boundary retained. -/
theorem mertensResidual_eq_full_mobius_sum (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d * sourceMobiusKernel A d := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_mobius]
  symm
  calc
    _ = ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
        (∑ n ∈ primePowerInventory (2 * A), ∑ dk ∈ n.divisorsAntidiagonal,
          if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [sourceMobiusKernel_integerAgreement_pos A hA d (Finset.mem_Icc.mp hd).1]
    _ = ∑ n ∈ primePowerInventory (2 * A), ∑ dk ∈ n.divisorsAntidiagonal,
        ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
          (if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n hn
      rw [Finset.sum_comm]
    _ = mobiusClosedPrimeMoment A := by
      unfold mobiusClosedPrimeMoment
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro dk hdk
      have hmem := first_factor_mem_full_inventory A n hn dk hdk
      rw [Finset.sum_eq_single dk.1]
      · simp [realMoebius, mobiusLogTerm, mul_assoc]
      · intro d hd hne
        simp [Ne.symm hne]
      · simp [hmem]

/-- The small sector is the closed divisor sum through `floor(A²)`, so equality
at the moving cutoff belongs here and is never removed from the residual. -/
theorem smallDivisorMobiusMoment_eq_mobius_sum (A : ℝ) (hA : 1 ≤ A) :
    smallDivisorMobiusMoment A =
      ∑ d ∈ Finset.Icc 1 ⌊sourceLower A⌋₊, realMoebius d * sourceMobiusKernel A d := by
  symm
  calc
    _ = ∑ d ∈ Finset.Icc 1 ⌊sourceLower A⌋₊, realMoebius d *
        (∑ n ∈ primePowerInventory (2 * A), ∑ dk ∈ n.divisorsAntidiagonal,
          if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [sourceMobiusKernel_integerAgreement_pos A hA d (Finset.mem_Icc.mp hd).1]
    _ = ∑ n ∈ primePowerInventory (2 * A), ∑ dk ∈ n.divisorsAntidiagonal,
        ∑ d ∈ Finset.Icc 1 ⌊sourceLower A⌋₊, realMoebius d *
          (if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n hn
      rw [Finset.sum_comm]
    _ = smallDivisorMobiusMoment A := by
      unfold smallDivisorMobiusMoment
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro dk hdk
      have hdpos := (Finset.mem_Icc.mp (first_factor_mem_full_inventory A n hn dk hdk)).1
      have hmem : dk.1 ∈ Finset.Icc 1 ⌊sourceLower A⌋₊ ↔ (dk.1 : ℝ) ≤ A^2 := by
        simp only [Finset.mem_Icc, hdpos, true_and, sourceLower,
          Nat.le_floor_iff (sq_nonneg A)]
      by_cases hsmall : (dk.1 : ℝ) ≤ A^2
      · rw [if_pos hsmall, Finset.sum_eq_single dk.1]
        · simp [realMoebius, mobiusLogTerm, mul_assoc]
        · intro d hd hne
          simp [Ne.symm hne]
        · simp [hmem.mpr hsmall]
      · rw [if_neg hsmall]
        apply Finset.sum_eq_zero
        intro d hd
        have hne : dk.1 ≠ d := by
          intro heq
          exact hsmall (hmem.mp (heq.symm ▸ hd))
        simp [hne]

/-- The real lower cutoff lies inside the original positive source window. -/
theorem sourceLower_le_sourceUpper (A : ℝ) (hA : 1 ≤ A) :
    sourceLower A ≤ sourceUpper A := by
  have hA0 : 0 < A := by linarith
  have hlog := Real.log_le_sub_one_of_pos hA0
  unfold sourceLower sourceUpper
  calc
    A^2 = Real.exp (Real.log A + Real.log A) := by
      rw [Real.exp_add, Real.exp_log hA0, pow_two]
    _ ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr (by linarith)

/-- The derivative integral keeps the actual lower endpoint and uses the proved upper zero. -/
theorem sourceMobiusKernel_deriv_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in Ioc (sourceLower A) (sourceUpper A), deriv (sourceMobiusKernel A) x) =
      -sourceMobiusKernel A (sourceLower A) := by
  have hab := sourceLower_le_sourceUpper A hA
  have hi := (intervalIntegrable_iff_integrableOn_Icc_of_le hab).mpr
    (sourceMobiusKernel_deriv_integrable A hA)
  rw [← intervalIntegral.integral_of_le hab,
    intervalIntegral.integral_deriv_eq_sub]
  · rw [sourceMobiusKernel_upper_zero A hA, zero_sub]
  · intro x hx
    rw [uIcc_of_le hab] at hx
    exact sourceMobiusKernel_differentiableAt A hA x hx
  · exact hi

/-- Exact centering of the large-divisor signed integral; the lower Abel endpoint
is absorbed by the fundamental theorem, not omitted or independently bounded. -/
theorem largeDivisorMobiusMoment_eq_centered_mertens_integral (A : ℝ) (hA : 1 ≤ A) :
    largeDivisorMobiusMoment A =
      -(∫ x in Ioc (sourceLower A) (sourceUpper A),
        (mertens x - mertens (sourceLower A)) * deriv (sourceMobiusKernel A) x) := by
  have hderiv := sourceMobiusKernel_deriv_integrable A hA
  have hprod : IntegrableOn (fun x ↦ mertens x * deriv (sourceMobiusKernel A) x)
      (Ioc (sourceLower A) (sourceUpper A)) := by
    have h := integrableOn_mul_sum_Icc realMoebius (m := 0)
      (show 0 ≤ sourceLower A by unfold sourceLower; positivity) hderiv
    simpa only [mertens, mul_comm] using h.mono_set Ioc_subset_Icc_self
  have hconst : IntegrableOn (fun x ↦ mertens (sourceLower A) *
      deriv (sourceMobiusKernel A) x) (Ioc (sourceLower A) (sourceUpper A)) :=
    (hderiv.mono_set Ioc_subset_Icc_self).const_mul _
  have heq : (fun x ↦ (mertens x - mertens (sourceLower A)) *
        deriv (sourceMobiusKernel A) x) =
      fun x ↦ mertens x * deriv (sourceMobiusKernel A) x -
        mertens (sourceLower A) * deriv (sourceMobiusKernel A) x := by
    funext x
    ring
  rw [largeDivisorMobiusMoment_eq_mertens A hA, heq,
    integral_sub hprod hconst, integral_const_mul, sourceMobiusKernel_deriv_integral A hA]
  unfold mertensKernelIntegral
  ring


/-- Removing the zeroth coefficient changes no weighted partial sum. -/
theorem weightedMertens_eq_sum_pos (x : ℝ) :
    weightedMertens x = ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, weightedMoebius d := by
  unfold weightedMertens
  symm
  apply Finset.sum_subset
  · intro d hd
    exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hd).2⟩
  · intro d hd hdnot
    have hd0 : d = 0 := by
      simp only [Finset.mem_Icc] at hd hdnot
      omega
    subst d
    exact weightedMoebius_zero

/-- Identification of the logarithmic primitive with the actual closed-right sum. -/
theorem weightedMobiusPrimitive_eq (s : ℝ) :
    weightedMobiusPrimitive s = weightedMertens (Real.exp s) := by
  rw [weightedMertens_eq_sum_pos]
  rfl

/-- The square-root weight retains the half-weight cancellation in Abel summation. -/
def weightedSourceKernel (A x : ℝ) : ℝ := Real.sqrt x * sourceMobiusKernel A x

theorem weightedSourceKernel_contDiffOn (A : ℝ) (hA : 0 < A) :
    ContDiffOn ℝ 1 (weightedSourceKernel A) (Ioi 0) := by
  have hs : ContDiffOn ℝ 1 (fun x : ℝ ↦ Real.sqrt x) (Ioi 0) :=
    contDiffOn_id.sqrt (fun x hx ↦ ne_of_gt hx)
  exact hs.mul (sourceMobiusKernel_contDiffOn_pos A hA)

theorem weightedSourceKernel_differentiableAt (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    DifferentiableAt ℝ (weightedSourceKernel A) x :=
  ((weightedSourceKernel_contDiffOn A (by linarith)).contDiffAt
    (Ioi_mem_nhds hx)).differentiableAt (by norm_num)

theorem weightedSourceKernel_deriv_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (deriv (weightedSourceKernel A)) (Icc 1 (sourceUpper A)) := by
  have hc := (weightedSourceKernel_contDiffOn A (by linarith)).continuousOn_deriv_of_isOpen
    isOpen_Ioi (by norm_num)
  exact (hc.mono (fun x hx ↦ zero_lt_one.trans_le hx.1)).integrableOn_Icc

/-- A genuine integrability statement for the weighted arithmetic integrand. -/
theorem weightedMertens_mul_deriv_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun x ↦ weightedMertens x * deriv (weightedSourceKernel A) x)
      (Icc 1 (sourceUpper A)) := by
  have h := integrableOn_mul_sum_Icc weightedMoebius (m := 0) zero_le_one
    (weightedSourceKernel_deriv_integrable A hA)
  simpa only [weightedMertens, mul_comm] using h

/-- Exact weighted Abel transport on the real axis. The coefficient-zero formula
includes the unit atom and therefore introduces no extra lower-boundary term. -/
theorem mertensResidual_eq_weighted_abel (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      -(∫ x in Ioc 1 (sourceUpper A),
        weightedMertens x * deriv (weightedSourceKernel A) x) := by
  have habel := sum_mul_eq_sub_integral_mul₀ weightedMoebius weightedMoebius_zero
    (sourceUpper A)
    (fun x hx ↦ weightedSourceKernel_differentiableAt A x hA (zero_lt_one.trans_le hx.1))
    (weightedSourceKernel_deriv_integrable A hA)
  have hzero : weightedSourceKernel A (sourceUpper A) = 0 := by
    simp only [weightedSourceKernel, sourceMobiusKernel_upper_zero A hA, mul_zero]
  rw [hzero, zero_mul, zero_sub] at habel
  have hsum : (∑ d ∈ Finset.Icc 0 ⌊sourceUpper A⌋₊,
      weightedSourceKernel A d * weightedMoebius d) =
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A),
        realMoebius d * sourceMobiusKernel A d := by
    have heq : (∑ d ∈ Finset.Icc 0 ⌊sourceUpper A⌋₊,
        weightedSourceKernel A d * weightedMoebius d) =
        ∑ d ∈ Finset.Icc 1 ⌊sourceUpper A⌋₊,
          weightedSourceKernel A d * weightedMoebius d := by
      symm
      apply Finset.sum_subset
      · intro d hd
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hd).2⟩
      · intro d hd hdnot
        have hd0 : d = 0 := by
          simp only [Finset.mem_Icc] at hd hdnot
          omega
        subst d
        simp only [weightedMoebius_zero, mul_zero]
    rw [heq]
    apply Finset.sum_congr rfl
    intro d hd
    have hd0 : (0 : ℝ) < d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    have hs : Real.sqrt (d : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hd0).ne'
    unfold weightedSourceKernel weightedMoebius
    field_simp
  rw [← mertensResidual_eq_full_mobius_sum A hA] at hsum
  rw [hsum] at habel
  convert habel using 1
  congr 1
  apply integral_congr_ae
  filter_upwards with x
  simp only [weightedMertens, mul_comm]


/-- The weighted real kernel is the unchanged logarithmic profile after `x = exp s`. -/
theorem weightedSourceKernel_exp (A s : ℝ) :
    weightedSourceKernel A (Real.exp s) = sourceLogKernel A s := by
  simp only [weightedSourceKernel, sourceLogKernel, Real.exp_half]

/-- The Jacobian is paired with the derivative before any estimate. -/
theorem weightedSourceKernel_deriv_exp (A s : ℝ) (hA : 1 ≤ A) :
    Real.exp s * deriv (weightedSourceKernel A) (Real.exp s) =
      deriv (sourceLogKernel A) s := by
  have h := (weightedSourceKernel_differentiableAt A (Real.exp s) hA
    (Real.exp_pos s)).hasDerivAt.comp s (Real.hasDerivAt_exp s)
  have heq : (fun t ↦ weightedSourceKernel A (Real.exp t)) = sourceLogKernel A :=
    funext (weightedSourceKernel_exp A)
  simp only [Function.comp_def] at h
  rw [heq] at h
  simpa only [mul_comm] using h.deriv.symm

/-- Integrability of the actual logarithmic arithmetic pairing is proved by
change of variables from its finite weighted-Mertens integrand. -/
theorem weightedMobiusPrimitive_mul_deriv_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
      (Icc 0 (2*A)) := by
  have hi := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (measurableSet_Icc (a := (0 : ℝ)) (b := 2*A))
    (fun s _ ↦ (Real.hasDerivAt_exp s).hasDerivWithinAt)
    (fun x _ y _ hxy ↦ Real.exp_injective hxy)
    (fun x ↦ weightedMertens x * deriv (weightedSourceKernel A) x)
  rw [Real.image_exp_Icc, Real.exp_zero] at hi
  have h := hi.mp (weightedMertens_mul_deriv_integrable A hA)
  apply h.congr_fun
  · intro s hs
    dsimp only
    rw [abs_of_pos (Real.exp_pos s), smul_eq_mul, weightedMobiusPrimitive_eq,
      ← weightedSourceKernel_deriv_exp A s hA]
    ring
  · exact measurableSet_Icc

/-- Exact logarithmic weighted Möbius pairing for the unchanged full residual.
The unit atom, original split endpoint, and all real scales are retained. -/
theorem mertensResidual_eq_weighted_log_pairing (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      -(∫ s in (0 : ℝ)..(2*A),
        weightedMobiusPrimitive s * deriv (sourceLogKernel A) s) := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (measurableSet_Ioc (a := (0 : ℝ)) (b := 2*A))
    (fun s _ ↦ (Real.hasDerivAt_exp s).hasDerivWithinAt)
    (fun x _ y _ hxy ↦ Real.exp_injective hxy)
    (fun x ↦ weightedMertens x * deriv (weightedSourceKernel A) x)
  rw [Real.image_exp_Ioc, Real.exp_zero] at h
  rw [mertensResidual_eq_weighted_abel A hA, sourceUpper, h,
    intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ 2*A)]
  congr 1
  apply setIntegral_congr_fun measurableSet_Ioc
  intro s hs
  dsimp only
  rw [abs_of_pos (Real.exp_pos s), smul_eq_mul, weightedMobiusPrimitive_eq,
    ← weightedSourceKernel_deriv_exp A s hA]
  ring



/-- The full unweighted real kernel is differentiable throughout the finite Abel interval. -/
theorem sourceMobiusKernel_differentiableAt_full
    (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    DifferentiableAt ℝ (sourceMobiusKernel A) x := by
  exact ((sourceMobiusKernel_contDiffOn_pos A (by linarith)).contDiffAt
    (Ioi_mem_nhds (zero_lt_one.trans_le hx))).differentiableAt (by norm_num)

/-- The actual derivative, rather than a formal iterated expression, is integrable
on the full finite positive source interval. -/
theorem sourceMobiusKernel_deriv_integrable_full
    (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (deriv (sourceMobiusKernel A)) (Icc 1 (sourceUpper A)) := by
  have hc := (sourceMobiusKernel_contDiffOn_pos A (by linarith)).continuousOn_deriv_of_isOpen
    isOpen_Ioi (by norm_num)
  exact (hc.mono (fun x hx ↦ zero_lt_one.trans_le hx.1)).integrableOn_Icc

/-- Integrability of the exact full finite Mertens pairing is checked separately. -/
theorem mertens_mul_deriv_integrable_full
    (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun x ↦ mertens x * deriv (sourceMobiusKernel A) x)
      (Icc 1 (sourceUpper A)) := by
  have h := integrableOn_mul_sum_Icc realMoebius (m := 0) zero_le_one
    (sourceMobiusKernel_deriv_integrable_full A hA)
  simpa only [mertens, mul_comm] using h

/-- Exact full unweighted Abel identity. The coefficient-zero formula includes
the unit atom. The proved strict upper-boundary zero removes only its own atom;
the original moving lower boundary is recombined, not discarded. -/
theorem mertensResidual_eq_abel (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      -(∫ x in Ioc 1 (sourceUpper A),
        mertens x * deriv (sourceMobiusKernel A) x) := by
  have habel := sum_mul_eq_sub_integral_mul₀ realMoebius realMoebius_zero
    (sourceUpper A)
    (fun x hx ↦ sourceMobiusKernel_differentiableAt_full A x hA hx.1)
    (sourceMobiusKernel_deriv_integrable_full A hA)
  rw [sourceMobiusKernel_upper_zero A hA, zero_mul, zero_sub] at habel
  have hsum : (∑ d ∈ Finset.Icc 0 ⌊sourceUpper A⌋₊,
      sourceMobiusKernel A d * realMoebius d) =
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A),
        realMoebius d * sourceMobiusKernel A d := by
    have heq : (∑ d ∈ Finset.Icc 0 ⌊sourceUpper A⌋₊,
        sourceMobiusKernel A d * realMoebius d) =
        ∑ d ∈ Finset.Icc 1 ⌊sourceUpper A⌋₊,
          sourceMobiusKernel A d * realMoebius d := by
      symm
      apply Finset.sum_subset
      · intro d hd
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hd).2⟩
      · intro d hd hdnot
        have hd0 : d = 0 := by
          simp only [Finset.mem_Icc] at hd hdnot
          omega
        subst d
        simp only [realMoebius_zero, mul_zero]
    rw [heq]
    apply Finset.sum_congr rfl
    intro d hd
    ring
  rw [← mertensResidual_eq_full_mobius_sum A hA] at hsum
  rw [hsum] at habel
  convert habel using 1
  congr 1
  apply integral_congr_ae
  filter_upwards with x
  simp only [mertens, mul_comm]

/-- The exact finite signed bilinear expression, before taking any absolute
values or exchanging unbounded integrals. Terms outside the source support are
zero by the existing actual-kernel definition. -/
theorem mertensResidual_eq_signed_bilinear (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A),
        ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
          realMoebius d *
            (Real.log (k : ℝ) / Real.sqrt ((d : ℝ) * (k : ℝ)) *
              sourceCorrelation Realization.explicitSecondDerivative A
                (Real.log (d : ℝ) + Real.log (k : ℝ))) := by
  rw [mertensResidual_eq_full_mobius_sum A hA]
  apply Finset.sum_congr rfl
  intro d hd
  unfold sourceMobiusKernel
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  rw [sourceKernelTerm_eq_archive A (d : ℝ) k
    (by exact_mod_cast (Finset.mem_Icc.mp hd).1) (Finset.mem_Icc.mp hk).1]

/-- A signed tail estimate for the literal full Abel integral discharges the
existing residual proposition. This theorem supplies no analytic premise. -/
theorem mertens_residual_tail_of_abel_integral_tail
    (h : ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        -(∫ x in Ioc 1 (sourceUpper A),
          mertens x * deriv (sourceMobiusKernel A) x) ≤ D) :
    MertensResidualTailUpperBound := by
  obtain ⟨D, hD, R, hR, htail⟩ := h
  refine ⟨D, hD, R, hR, ?_⟩
  intro A hRA
  rw [mertensResidual_eq_abel A (hR.trans hRA)]
  exact htail A hRA

end
end EstimateWeightedMobiusPairing
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
