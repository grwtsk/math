# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimateMobiusIntegerTransport.Variant00b7a4dfd49b626465a0f9dd7a085e8438d72ccd1c8452cefe1bbb34805eb9bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5ed377db577d72aa845988b0d09b37974651382` · SHA-256 `00680716ab8c6ee87351e7cac07d5b2c190dbcc98cc9e7263b719145853e19b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AdmissibleK.Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.AdmissibleK.Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateMobiusIntegerTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel

/-!
# RH estimate: finite Möbius integer transport

This module closes the finite arithmetic bookkeeping between the real source
kernel, the antidiagonal Möbius/log expansion, and the closed-right Abel sum.

No analytic estimate is introduced.  Everything here is a finite reindexing.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AdmissibleK.Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport

open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateMobiusSplit EstimateMertensAbel EstimateSourceMobiusKernel
open PrimePowerDescent
open scoped ArithmeticFunction.Moebius

noncomputable section

/-- Effective integer k-range for a fixed divisor d. -/
def admissibleK (A : ℝ) (d : ℕ) : Finset ℕ :=
  (Finset.Icc 1 (sourceKernelCutoff A)).filter
    (fun k => d * k ≤ sourceKernelCutoff A)

/-- If d*k lies beyond the closed source inventory, the actual correlation
factor vanishes. -/
theorem sourceKernelTerm_zero_of_cutoff_lt
    (A : ℝ) (hA : 1 ≤ A)
    (d k : ℕ) (hd : 1 ≤ d) (hk : 1 ≤ k)
    (hcut : sourceKernelCutoff A < d * k) :
    sourceKernelTerm A k d = 0 := by
  have hprodpos : 0 < d * k :=
    Nat.mul_pos (lt_of_lt_of_le Nat.zero_lt_one hd)
      (lt_of_lt_of_le Nat.zero_lt_one hk)
  have hupper :
      sourceUpper A < ((d * k : ℕ) : ℝ) := by
    have hnle :
        ¬ d * k ≤ ⌊sourceUpper A⌋₊ := by
      simpa [sourceKernelCutoff] using
        (Nat.not_le.mpr hcut)
    exact lt_of_not_ge (fun h =>
      hnle ((Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr h))
  have hlog :
      2 * A < Real.log ((d * k : ℕ) : ℝ) := by
    rw [Real.lt_log_iff_exp_lt (by exact_mod_cast hprodpos)]
    simpa [sourceUpper] using hupper
  have hcorr :
      sourceCorrelation Realization.explicitSecondDerivative A
          (Real.log ((d * k : ℕ) : ℝ)) = 0 := by
    apply
      CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs
        A _ (by linarith)
    exact hlog.le.trans (le_abs_self _)
  unfold sourceKernelTerm exponentialTest
  push_cast
  rw [show (d : ℝ) * (k : ℝ) = ((d * k : ℕ) : ℝ) by norm_cast,
    hcorr, mul_zero, mul_zero]

/-- The fixed real-kernel sum may be restricted to products still inside the
closed source inventory. -/
theorem sourceMobiusKernel_eq_admissible_sum
    (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    sourceMobiusKernel A d =
      ∑ k ∈ admissibleK A d,
        sourceKernelTerm A k d := by
  unfold sourceMobiusKernel admissibleK
  symm
  apply Finset.sum_subset (Finset.filter_subset _ _)
  intro k hk hnot
  have hkIcc := hk
  rw [Finset.mem_filter] at hnot
  have hkle :
      ¬ d * k ≤ sourceKernelCutoff A := by
    intro h
    exact hnot ⟨hkIcc, h⟩
  exact sourceKernelTerm_zero_of_cutoff_lt
    A hA d k hd (Finset.mem_Icc.mp hkIcc).1
      (Nat.lt_of_not_ge hkle)

/-- Collapse the antidiagonal sum to the unique term with first factor d. -/
theorem antidiagonal_first_factor
    (A : ℝ) (d n : ℕ)
    (hn : n ≠ 0) :
    (∑ dk ∈ n.divisorsAntidiagonal,
      if dk.1 = d
      then Real.log dk.2 * closedPrimeWeight A n
      else 0) =
      if d ∣ n ∧ d ≠ 0
      then Real.log (n / d : ℕ) * closedPrimeWeight A n
      else 0 := by
  rw [Nat.sum_divisorsAntidiagonal
    (fun i j =>
      if i = d
      then Real.log j * closedPrimeWeight A n
      else 0)]
  by_cases hmem : d ∈ n.divisors
  · have hdvd : d ∣ n := Nat.dvd_of_mem_divisors hmem
    have hd0 : d ≠ 0 :=
      Nat.ne_zero_of_dvd_ne_zero hn hdvd
    simp only [hdvd, hd0, and_self, if_true]
    rw [Finset.sum_eq_single d]
    · simp
    · intro b hb hbd
      simp [hbd]
    · simp [hmem]
  · have hnot : ¬ (d ∣ n ∧ d ≠ 0) := by
      intro h
      exact hmem ((Nat.mem_divisors).mpr ⟨h.1, hn⟩)
    simp only [hnot, if_false]
    apply Finset.sum_eq_zero
    intro b hb
    have hbd : b ≠ d := by
      intro h
      subst b
      exact hmem hb
    simp [hbd]

/-- For a divisor d in the source Abel window, the antidiagonal integer kernel
is exactly the restricted k-sum. -/
theorem integer_antidiagonal_eq_admissible
    (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ)
    (hdwin :
      d ∈ Finset.Ioc ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊) :
    (∑ n ∈ primePowerInventory (2 * A),
      ∑ dk ∈ n.divisorsAntidiagonal,
        if dk.1 = d
        then Real.log dk.2 * closedPrimeWeight A n
        else 0) =
      ∑ k ∈ admissibleK A d,
        sourceKernelTerm A k d := by
  have hdpos : 0 < d := by
    have hlower : 1 ≤ sourceLower A := by
      unfold sourceLower
      nlinarith
    have hfloor : 1 ≤ ⌊sourceLower A⌋₊ :=
      Nat.le_floor hlower
    have hdgt := (Finset.mem_Ioc.mp hdwin).1
    omega
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
            · simpa [hprod] using hninv.2
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
              have hd2 : 2 ≤ d := by
                have hlower : 1 ≤ sourceLower A := by
                  unfold sourceLower
                  nlinarith
                have hdgt : ⌊sourceLower A⌋₊ < d :=
                  (Finset.mem_Ioc.mp hdwin).1
                have hfloor1 : 1 ≤ ⌊sourceLower A⌋₊ :=
                  Nat.le_floor hlower
                omega
              have hmul := Nat.mul_le_mul_left d hkIcc.1
              simpa using (hd2.trans hmul)
            · simp [hdpos.ne']
          · intro n hn
            have hdvd := (Finset.mem_filter.mp hn).2
            have hprod := Nat.mul_div_cancel' hdvd
            simp [sourceKernelTerm, closedPrimeWeight, hprod, Nat.cast_mul]

/-- Full finite integer agreement for the actual real source kernel. -/
theorem sourceMobiusKernel_integerAgreement
    (A : ℝ) (hA : 1 ≤ A) :
    SourceMobiusKernelIntegerAgreement A := by
  intro d hdwin
  have hd : 1 ≤ d := by
    have hlower : 1 ≤ sourceLower A := by
      unfold sourceLower
      nlinarith
    have hfloor : 1 ≤ ⌊sourceLower A⌋₊ :=
      Nat.le_floor hlower
    omega
  rw [sourceMobiusKernel_eq_admissible_sum A hA d hd]
  exact (integer_antidiagonal_eq_admissible A hA d hdwin).symm

/-- The complete source-kernel contract is now unconditional. -/
theorem sourceMobiusKernel_contract
    (A : ℝ) (hA : 1 ≤ A) :
    SourceMobiusKernelContract A (sourceMobiusKernel A) :=
  (sourceMobiusKernel_contract_iff_integerAgreement A hA).mpr
    (sourceMobiusKernel_integerAgreement A hA)

/-- Abel identity for the actual source kernel. -/
theorem sourceMobiusKernel_abel
    (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊,
      realMoebius d * sourceMobiusKernel A d) =
      mertensKernelIntegral A (sourceMobiusKernel A) -
        mertens (sourceLower A) *
          sourceMobiusKernel A (sourceLower A) :=
  abel_identity_of_source_kernel_contract
    A hA (sourceMobiusKernel A)
      (sourceMobiusKernel_contract A hA)

/-- On an antidiagonal inside the closed prime inventory, first-factor
membership in the Abel divisor window is equivalent to the strict source
condition A^2 < d. -/
theorem first_factor_mem_abel_window_iff
    (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ)
    (hn : n ∈ primePowerInventory (2 * A))
    (dk : ℕ × ℕ)
    (hdk : dk ∈ n.divisorsAntidiagonal) :
    dk.1 ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊ ↔
      A ^ 2 < (dk.1 : ℝ) := by
  have hnIcc := Finset.mem_Icc.mp hn
  have hdiv := Nat.fst_mem_divisors_of_mem_antidiagonal hdk
  have hupper : dk.1 ≤ ⌊sourceUpper A⌋₊ := by
    exact (Nat.divisor_le hdiv).trans hnIcc.2
  have hlower0 : 0 ≤ sourceLower A := by
    unfold sourceLower
    positivity
  rw [Finset.mem_Ioc]
  constructor
  · intro h
    exact (Nat.floor_lt hlower0).mp h.1
  · intro h
    exact ⟨(Nat.floor_lt hlower0).mpr h, hupper⟩

/-- The strict large-divisor Möbius sector is exactly the finite Abel sum of
the actual source kernel. -/
theorem largeDivisorMobiusMoment_eq_abel_sum
    (A : ℝ) (hA : 1 ≤ A) :
    largeDivisorMobiusMoment A =
      ∑ d ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊,
        realMoebius d * sourceMobiusKernel A d := by
  symm
  let D : Finset ℕ :=
    Finset.Ioc ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊
  have hagree := sourceMobiusKernel_integerAgreement A hA
  calc
    (∑ d ∈ D, realMoebius d * sourceMobiusKernel A d) =
        ∑ d ∈ D, realMoebius d *
          (∑ n ∈ primePowerInventory (2 * A),
            ∑ dk ∈ n.divisorsAntidiagonal,
              if dk.1 = d
              then Real.log dk.2 * closedPrimeWeight A n
              else 0) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [hagree d hd]
    _ =
        ∑ n ∈ primePowerInventory (2 * A),
          ∑ dk ∈ n.divisorsAntidiagonal,
            ∑ d ∈ D,
              realMoebius d *
                (if dk.1 = d
                then Real.log dk.2 * closedPrimeWeight A n
                else 0) := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n hn
      rw [Finset.sum_comm]
    _ = largeDivisorMobiusMoment A := by
      unfold largeDivisorMobiusMoment mobiusLogTerm realMoebius
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro dk hdk
      by_cases hlarge : A ^ 2 < (dk.1 : ℝ)
      · have hmem :
            dk.1 ∈ D := by
          unfold D
          exact
            (first_factor_mem_abel_window_iff
              A hA n hn dk hdk).2 hlarge
        rw [Finset.sum_eq_single dk.1]
        · simp [hlarge]
        · intro d hd hne
          simp [hne]
        · simp [hmem]
      · have hnot : dk.1 ∉ D := by
          unfold D
          intro hm
          exact hlarge
            ((first_factor_mem_abel_window_iff
              A hA n hn dk hdk).1 hm)
        have hz :
            (∑ d ∈ D,
              (((ArithmeticFunction.moebius d : ℤ) : ℝ) *
                (if dk.1 = d
                  then Real.log dk.2 * closedPrimeWeight A n
                  else 0))) = 0 := by
          apply Finset.sum_eq_zero
          intro d hd
          have hne : dk.1 ≠ d := by
            intro h
            apply hnot
            simpa [h] using hd
          simp [hne]
        rw [hz]
        simp [hlarge]

/-- Exact complete large-divisor Mertens identity. -/
theorem largeDivisorMobiusMoment_eq_mertens
    (A : ℝ) (hA : 1 ≤ A) :
    largeDivisorMobiusMoment A =
      mertensKernelIntegral A (sourceMobiusKernel A) -
        mertens (sourceLower A) *
          sourceMobiusKernel A (sourceLower A) := by
  rw [largeDivisorMobiusMoment_eq_abel_sum A hA,
    sourceMobiusKernel_abel A hA]

/-- Current exact arithmetic checkpoint: all finite transports are closed.
Only an estimate for the signed Mertens integral remains. -/
def MobiusIntegerTransportCheckpoint : Prop :=
  ∀ A : ℝ, 1 ≤ A →
    SourceMobiusKernelContract A (sourceMobiusKernel A) ∧
    largeDivisorMobiusMoment A =
      mertensKernelIntegral A (sourceMobiusKernel A) -
        mertens (sourceLower A) *
          sourceMobiusKernel A (sourceLower A)

theorem mobius_integer_transport_checkpoint :
    MobiusIntegerTransportCheckpoint := by
  intro A hA
  exact ⟨sourceMobiusKernel_contract A hA,
    largeDivisorMobiusMoment_eq_mertens A hA⟩

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport
```
