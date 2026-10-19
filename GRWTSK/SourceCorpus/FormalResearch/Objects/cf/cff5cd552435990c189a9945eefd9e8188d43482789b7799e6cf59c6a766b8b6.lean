import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

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
open PrimePowerDescent

noncomputable section

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
