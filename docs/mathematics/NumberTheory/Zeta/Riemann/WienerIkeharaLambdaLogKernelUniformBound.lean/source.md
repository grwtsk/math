# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelUniformBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `331f976ea19dd494d8e7f7dda77b81a4e45f9c42` · SHA-256 `4ce5eed8b3dcd4ba11a4e7d0972fdd44923a44170cf10ba9bbe2b7f7bcfc54d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE).
Mathematical source: Abel's summation method (Niels Henrik Abel);
quantitative logarithmic kernel application from the maintained
PrimeNumberTheoremAnd/Wiener.lean by Alex Kontorovich, Terry Tao and
collaborators (upstream Apache-2.0).
Maintained source commit: 127b50e33f6033e2147921167a117af96d9ba4ea.
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelFiniteBridge
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOneFiniteSigmaFubini
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Uniform logarithmic Chebyshev kernel bound for the ACTUAL von Mangoldt source

This source continues the proved-in-source FINITE Abel majorization
and the actual Lambda/Chebyshev and monotonicity adapters:

  for every finite N and real T>0:
  sum_{k<N} Lambda(k+1)*W_T(k+1)
    <= (log 4+4)*sum_{k<N} W_T(k+1).

Here W_T(x)=1/[x*(1+(log(x/T)/(2*pi))^2)] for x>0.

The remaining mathematical step is analytic, and is carried by actual
pinned Mathlib theorems, not by an equivalent unproved premise:

* Logarithmic substitution x -> log x on x>1.
* Integrability and exact mass of the shifted/scaled Cauchy kernel.
* Positivity and monotonicity of W_T, already proved in the parent.
* The genuine AntitoneOn.tsum_comp_add_le_integral integral test.
* A nonnegative finite Abel bound promoted to a summable infinite
  von Mangoldt series with Real.tsum_le_of_sum_range_le.
* Equality with the EXACT earlier zero-safe wienerLambdaLogKernel
  from the first finite-sigma Fourier source.

The resulting quantitative statement for every T>=1 is:

  tsum_n wienerLambdaLogKernel T n
    <= (log 4+4)*(1+2*pi^2).

No free field asserts the bound, and no PNT premise is used.
The source remains SOURCE_DRAFT/NOT_RUN/NOT_KERNEL_AUDITED until
a pinned Lean 4.33 exact-head replay and transitive axiom audit.

The missing limiting_cor_schwartz still separately needs a
dominated sigma-downarrow-one arithmetic Fourier limit and genuine
compact-to-Schwartz approximation; this bound alone is not PNT or RH.
-/

namespace GRWTSK.RiemannHypothesis

open Real Set Filter MeasureTheory Finset
open scoped ArithmeticFunction BigOperators

/-- The nonnegative Cauchy kernel after the genuine logarithmic
coordinate substitution; the translation by log(T) matters. -/
def wienerShiftedCauchy (T y : ℝ) : ℝ :=
  (1 + ((y - Real.log T) / wienerLogKernelC) ^ 2)⁻¹

/-- This is an integrable function on the ENTIRE logarithmic line,
proved by pinned Cauchy integrability, nonzero linear scaling, and
translation. There is no assumed global integrability field. -/
theorem wienerShiftedCauchy_integrable (T : ℝ) :
    Integrable (wienerShiftedCauchy T) := by
  have hc : wienerLogKernelC ≠ 0 :=
    (zero_lt_one.trans wienerLogKernelC_gt_one).ne'
  have hBase :
      Integrable (fun y : ℝ => (1 + y ^ 2)⁻¹) :=
    integrable_inv_one_add_sq
  have hScale :
      Integrable
        (fun y : ℝ =>
          (1 + (y / wienerLogKernelC) ^ 2)⁻¹) :=
    hBase.comp_div hc
  simpa [wienerShiftedCauchy] using
    hScale.comp_sub_right (Real.log T)

/-- Exact Fourier-normalized total mass. Notice that shifting by
log(T) does not change the full-line integral; scaling by 2*pi
multiplies its mass by 2*pi. -/
theorem wienerShiftedCauchy_integral (T : ℝ) :
    (∫ y : ℝ, wienerShiftedCauchy T y) =
      2 * Real.pi ^ 2 := by
  have hc : 0 < wienerLogKernelC :=
    zero_lt_one.trans wienerLogKernelC_gt_one
  have hShift :
      (∫ y : ℝ, wienerShiftedCauchy T y) =
      ∫ y : ℝ, (1 + (y / wienerLogKernelC) ^ 2)⁻¹ := by
    simpa [wienerShiftedCauchy] using
      (integral_sub_right_eq_self
        (fun y : ℝ =>
          (1 + (y / wienerLogKernelC) ^ 2)⁻¹)
        (Real.log T))
  have hScale :
      (∫ y : ℝ, (1 + (y / wienerLogKernelC) ^ 2)⁻¹) =
      wienerLogKernelC * Real.pi := by
    simpa [smul_eq_mul, abs_of_pos hc,
      integral_univ_inv_one_add_sq] using
      (MeasureTheory.integral_comp_div
        (fun y : ℝ => (1 + y ^ 2)⁻¹)
        wienerLogKernelC)
  calc
    (∫ y : ℝ, wienerShiftedCauchy T y) =
        ∫ y : ℝ, (1 + (y / wienerLogKernelC) ^ 2)⁻¹ :=
      hShift
    _ = wienerLogKernelC * Real.pi := hScale
    _ = 2 * Real.pi ^ 2 := by
      simp only [wienerLogKernelC]
      ring

/-- True pointwise nonnegativity of the translated Cauchy function. -/
theorem wienerShiftedCauchy_nonnegative (T y : ℝ) :
    0 ≤ wienerShiftedCauchy T y := by
  unfold wienerShiftedCauchy
  positivity

/-- Genuine logarithmic substitution: on x>0 the real Fourier
kernel is x^(-1) times the shifted Cauchy weight at log(x).
The proof retains log(x/T)=log(x)-log(T), including T>0. -/
theorem wienerRealLogWeight_eq_shiftedCauchy
    {T x : ℝ} (hT : 0 < T) (hx : 0 < x) :
    wienerRealLogWeight T x =
      x⁻¹ * wienerShiftedCauchy T (Real.log x) := by
  unfold wienerRealLogWeight wienerShiftedCauchy
  rw [Real.log_div (ne_of_gt hx) (ne_of_gt hT)]
  rw [mul_inv_rev]
  ring

/-- Half-line integrability is obtained from the PINNED logarithmic
change-of-variables theorem, not from a guessed tail bound. -/
theorem wienerRealLogWeight_integrableOn_one
    {T : ℝ} (hT : 0 < T) :
    IntegrableOn (wienerRealLogWeight T)
      (Set.Ioi (1 : ℝ)) volume := by
  have hFromLog :
      IntegrableOn
        (fun x : ℝ =>
          x⁻¹ * wienerShiftedCauchy T (Real.log x))
        (Set.Ioi (1 : ℝ)) volume := by
    simpa [smul_eq_mul, Real.log_one] using
      (integrableOn_comp_log_Ioi
        (wienerShiftedCauchy T) (a := 1) one_pos).mpr
          (wienerShiftedCauchy_integrable T).integrableOn
  exact hFromLog.congr_fun
    (fun x hx =>
      (wienerRealLogWeight_eq_shiftedCauchy
        hT (by have hx' : (1 : ℝ) < x := hx; linarith)).symm)
    measurableSet_Ioi

/-- Full upper bound for the improper kernel tail x>1: the
logarithmic image is the upper logarithmic half-line y>0,
which is contained in the ENTIRE line of known Cauchy mass.
This argument works for every T>0, not just T>=1. -/
theorem wienerRealLogWeight_integral_le
    {T : ℝ} (hT : 0 < T) :
    (∫ x in Set.Ioi (1 : ℝ), wienerRealLogWeight T x) ≤
      2 * Real.pi ^ 2 := by
  have hChange :
      (∫ x in Set.Ioi (1 : ℝ), wienerRealLogWeight T x) =
      ∫ y in Set.Ioi (0 : ℝ), wienerShiftedCauchy T y := by
    calc
      (∫ x in Set.Ioi (1 : ℝ), wienerRealLogWeight T x) =
          ∫ x in Set.Ioi (1 : ℝ),
            x⁻¹ * wienerShiftedCauchy T (Real.log x) := by
        apply setIntegral_congr_fun measurableSet_Ioi
        intro x hx
        exact wienerRealLogWeight_eq_shiftedCauchy
          hT (by linarith [hx])
      _ = ∫ y in Set.Ioi (0 : ℝ), wienerShiftedCauchy T y := by
        simpa [smul_eq_mul, Real.log_one] using
          (integral_comp_log_Ioi
            (wienerShiftedCauchy T) (a := 1) one_pos)
  have hMono :
      (∫ y in Set.Ioi (0 : ℝ), wienerShiftedCauchy T y) ≤
        ∫ y : ℝ, wienerShiftedCauchy T y := by
    have hnonneg :
        0 ≤ᵐ[volume.restrict Set.univ] wienerShiftedCauchy T :=
      Filter.Eventually.of_forall
        (fun y => wienerShiftedCauchy_nonnegative T y)
    have hsub :
        Set.Ioi (0 : ℝ) ≤ᵐ[volume] Set.univ :=
      Filter.Eventually.of_forall (fun y => Set.mem_univ y)
    simpa only [Measure.restrict_univ, setIntegral_univ] using
      (setIntegral_mono_set
        (s := Set.Ioi (0 : ℝ)) (t := Set.univ)
        (wienerShiftedCauchy_integrable T).integrableOn
        hnonneg hsub)
  rw [hChange]
  exact hMono.trans_eq (wienerShiftedCauchy_integral T)

/-- The first true Fourier kernel sample contributes at most 1.
It is not harmless to drop this term: it is responsible for the
leading 1 in the sharp simple uniform constant 1+2*pi^2. -/
theorem wienerRealLogWeight_one_le
    {T : ℝ} (hT : 0 < T) :
    wienerRealLogWeight T 1 ≤ 1 := by
  have hden :
      (1 : ℝ) ≤
        1 + (Real.log (1 / T) / wienerLogKernelC) ^ 2 := by
    nlinarith [sq_nonneg
      (Real.log (1 / T) / wienerLogKernelC)]
  unfold wienerRealLogWeight
  simpa only [one_mul, inv_one, one_div] using
    one_div_le_one_div_of_le zero_lt_one hden

/-- The weight is antitone from x>=1 and satisfies exactly the
pinned integral-test hypotheses on (1,infinity). -/
theorem wienerRealLogWeight_antitoneOn_one
    {T : ℝ} (hT : 0 < T) :
    AntitoneOn (wienerRealLogWeight T)
      (Set.Ici (1 : ℝ)) := by
  exact (wienerRealLogWeight_antitoneOn hT).mono
    (by intro x hx
        exact zero_lt_one.trans_le hx)

/-- The ENTIRE nonnegative shifted Fourier-kernel sequence is
summable, and its sum is uniformly bounded in T by 1+2*pi^2.
This uses the genuine pinned AntitoneOn.tsum_comp_add_le_integral
for the n>=2 tail and separately keeps n=1. -/
theorem wienerShiftedLogWeight_tsum_le
    {T : ℝ} (hT : 0 < T) :
    Summable (wienerShiftedLogWeight T) ∧
      (∑' k : ℕ, wienerShiftedLogWeight T k) ≤
        1 + 2 * Real.pi ^ 2 := by
  let W : ℝ → ℝ := wienerRealLogWeight T
  have hAnti : AntitoneOn W (Set.Ici (1 : ℝ)) :=
    wienerRealLogWeight_antitoneOn_one hT
  have hInt : IntegrableOn W (Set.Ioi (1 : ℝ)) volume :=
    wienerRealLogWeight_integrableOn_one hT
  have hPos : ∀ x ∈ Set.Ioi (1 : ℝ), 0 ≤ W x := by
    intro x hx
    exact (wienerRealLogWeight_pos hT
      (zero_lt_one.trans hx)).le
  have hAll : Summable (fun k : ℕ => W (k : ℝ)) :=
    hAnti.summable_of_integrableOn_Ioi hInt hPos
  have hShift : Summable (wienerShiftedLogWeight T) := by
    simpa [wienerShiftedLogWeight, W] using
      hAll.comp_injective Nat.succ_injective
  have hTail :
      (∑' k : ℕ, W ((k + 2 : ℕ) : ℝ)) ≤
        ∫ x in Set.Ioi (1 : ℝ), W x := by
    simpa only [Nat.cast_add, Nat.cast_one,
      one_add_one_eq_two] using
      (hAnti.tsum_comp_add_le_integral
        1 hInt hPos)
  have hSplit :
      (∑' k : ℕ, wienerShiftedLogWeight T k) ≤
        W 1 + ∫ x in Set.Ioi (1 : ℝ), W x := by
    rw [hShift.tsum_eq_zero_add]
    simpa [wienerShiftedLogWeight, W, Nat.cast_add] using
      (add_le_add_left hTail (W 1))
  refine ⟨hShift, ?_⟩
  calc
    (∑' k : ℕ, wienerShiftedLogWeight T k) ≤
        W 1 + ∫ x in Set.Ioi (1 : ℝ), W x := hSplit
    _ ≤ (1 : ℝ) + 2 * Real.pi ^ 2 :=
      add_le_add (wienerRealLogWeight_one_le hT)
        (wienerRealLogWeight_integral_le hT)

/-- The finite Abel estimate now yields genuine summability and
the uniform INFINITE bound for the actual shifted von Mangoldt
series, without an unproved summability hypothesis. -/
theorem wienerShiftedLambda_logKernel_tsum_le
    {T : ℝ} (hT : 0 < T) :
    Summable
      (fun k : ℕ =>
        wienerShiftedLambda k * wienerShiftedLogWeight T k) ∧
      (∑' k : ℕ,
        wienerShiftedLambda k * wienerShiftedLogWeight T k) ≤
          (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) := by
  obtain ⟨hSumW, hBoundW⟩ :=
    wienerShiftedLogWeight_tsum_le hT
  have hNonneg (k : ℕ) :
      0 ≤ wienerShiftedLambda k *
        wienerShiftedLogWeight T k :=
    mul_nonneg (wienerShiftedLambda_nonnegative k)
      (wienerShiftedLogWeight_nonnegative hT k)
  have hFinite (N : ℕ) :
      (∑ k ∈ Finset.range N,
        wienerShiftedLambda k * wienerShiftedLogWeight T k) ≤
          (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) := by
    calc
      _ ≤ (Real.log 4 + 4) *
          (∑ k ∈ Finset.range N,
            wienerShiftedLogWeight T k) :=
        wienerLambdaLogKernel_finite_majorization hT N
      _ ≤ (Real.log 4 + 4) *
          (∑' k : ℕ, wienerShiftedLogWeight T k) := by
        apply mul_le_mul_of_nonneg_left _ wienerChebyConstant_nonnegative
        exact hSumW.sum_le_tsum (Finset.range N)
          (fun k _ => wienerShiftedLogWeight_nonnegative hT k)
      _ ≤ (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) :=
        mul_le_mul_of_nonneg_left hBoundW
          wienerChebyConstant_nonnegative
  exact ⟨Real.summable_of_sum_range_le hNonneg hFinite,
    Real.tsum_le_of_sum_range_le hNonneg hFinite⟩

/-- Exact index adapter: the original wienerLambdaLogKernel has
zero at n=0, and the shifted kernel has values at n=k+1.
No Fourier factor or natural-number endpoint changes. -/
theorem wienerLambdaLogKernel_shift_eq
    (T : ℝ) (k : ℕ) :
    wienerLambdaLogKernel T (k + 1) =
      wienerShiftedLambda k * wienerShiftedLogWeight T k := by
  simp [wienerLambdaLogKernel, wienerShiftedLambda,
    wienerShiftedLogWeight, wienerRealLogWeight,
    Nat.succ_ne_zero, div_eq_mul_inv,
    mul_inv_rev, mul_assoc, mul_comm, mul_left_comm,
    wienerLogKernelC]

/-- This is the actual quantitative bound_sum_log' for the
source-normalized q=1 von Mangoldt kernel, not a target-equivalent
assumption. Its source proof explicitly consumes the finite Abel
identity, the pinned Chebyshev bound, the logarithmic integral, and
the integral test. -/
theorem wienerLambdaLogKernel_uniform_bound
    {T : ℝ} (hT : 1 ≤ T) :
    Summable (wienerLambdaLogKernel T) ∧
      (∑' n : ℕ, wienerLambdaLogKernel T n) ≤
        (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) := by
  have hTpos : 0 < T := zero_lt_one.trans_le hT
  obtain ⟨hShiftSum, hShiftBound⟩ :=
    wienerShiftedLambda_logKernel_tsum_le hTpos
  have hOrigShift :
      Summable (fun k : ℕ => wienerLambdaLogKernel T (k + 1)) := by
    simpa only [wienerLambdaLogKernel_shift_eq] using hShiftSum
  have hOrig : Summable (wienerLambdaLogKernel T) :=
    (summable_nat_add_iff 1).mp hOrigShift
  have hEq :
      (∑' n : ℕ, wienerLambdaLogKernel T n) =
        ∑' k : ℕ,
          wienerShiftedLambda k * wienerShiftedLogWeight T k := by
    rw [hOrig.tsum_eq_zero_add]
    rw [wienerLambdaLogKernel_zero, zero_add]
    exact tsum_congr (fun k =>
      wienerLambdaLogKernel_shift_eq T k)
  exact ⟨hOrig, hEq.le.trans hShiftBound⟩

end GRWTSK.RiemannHypothesis
```
