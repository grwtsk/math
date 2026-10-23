/-
Copyright (c) 2026 R. A. Jacob Martone. All rights reserved.
Original contributions: MIT (repository LICENSE).
Abel summation attributed to Niels Henrik Abel.
Fourier-logarithmic application credited to Alex Kontorovich,
Terry Tao, and contributors of PrimeNumberTheoremAnd/Wiener.lean,
maintained at commit 127b50e33f6033e2147921167a117af96d9ba4ea
(upstream Apache-2.0).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaFiniteAbelMajorization
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open Real Filter Finset
open scoped BigOperators ArithmeticFunction

/-!
# Arithmetic and monotonicity inputs for the true Wiener logarithmic kernel

The maintained Wiener source has a scale-uniform inequality
  sum_n Lambda(n)/n / (1+(log(n/T)/(2*pi))^2)
     <= (log 4+4)*(1+2*pi^2)     for T>=1.
The earlier local finite Abel lemma is an actual summation-by-parts
identity for arbitrary coefficients and decreasing weights.

This source does not introduce a conditional target-equivalent premise.
It supplies the MISSING SPECIFIC CONSUMERS of finite Abel majorization:

  (1) exact shifted von Mangoldt prefix = Chebyshev.psi(n), all n;
  (2) the TRUE pinned Chebyshev prefix growth with C=log 4+4;
  (3) positivity and decreasingness of the *exact* Fourier kernel
      W_T(x)=1/(x*(1+(log(x/T)/(2*pi))^2));
  (4) the finite Chebyshev Fourier-kernel bound uniformly in T.

The monotonicity proof retains the full 2*pi Fourier convention:
write v=log(x/T), c=2*pi, and D(v)=exp(v)*(1+(v/c)^2).
Its derivative is
  D'(v)=exp(v)*(c^2+v^2+2*v)/c^2 > 0
because c>1 and
  c^2+v^2+2*v=(v+1)^2+(c^2-1)>0.
For T>0, W_T(x)=T^-1 * D(log(x/T))^-1, so W_T is
decreasing on (0,infinity).

The only remaining estimate for the WHOLE infinite kernel is
the explicit integral test and half-line Cauchy integral
  sum_{n>=1} W_T(n) <= W_T(1)+integral_{1}^{infty} W_T
                   <= 1+2*pi^2.
This is not declared as a new hypothesis or accepted theorem here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NO_PNT_OR_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

/-- Literal shifted pinned von Mangoldt arithmetic coefficients. -/
def wienerShiftedLambda (k : ℕ) : ℝ :=
  (ArithmeticFunction.vonMangoldt (k + 1) : ℝ)

/-- Genuine equality of the shifted natural prefix and pinned
Chebyshev.psi at every NATURAL endpoint, including n=0. There is
no guessed approximation or asymptotic premise. -/
theorem wienerShiftedLambda_prefix_eq_psi
    (n : ℕ) :
    wienerAbelPrefix wienerShiftedLambda n =
      Chebyshev.psi (n : ℝ) := by
  have hIoc :
      Finset.Ioc 0 n = Finset.Ico 1 (n + 1) := by
    ext k
    simp only [Finset.mem_Ioc, Finset.mem_Ico]
    omega
  have hzero :
      (ArithmeticFunction.vonMangoldt 0 : ℝ) = 0 := by
    simp [ArithmeticFunction.vonMangoldt_apply]
  have hpsi :
      Chebyshev.psi (n : ℝ) =
        ∑ k ∈ Finset.Ico 1 (n + 1),
          (ArithmeticFunction.vonMangoldt k : ℝ) := by
    rw [Chebyshev.psi_eq_sum_Icc]
    simp only [Nat.floor_natCast]
    rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le n), Finset.sum_cons]
    rw [hzero, zero_add, hIoc]
  rw [hpsi]
  unfold wienerAbelPrefix wienerShiftedLambda
  rw [Finset.sum_Ico_eq_sum_range]
  simp only [Nat.add_sub_cancel_left]
  apply Finset.sum_congr rfl
  intro k _hk
  congr 1
  omega

/-- Actual coefficient nonnegativity inherited from pinned Λ. -/
theorem wienerShiftedLambda_nonnegative (k : ℕ) :
    0 ≤ wienerShiftedLambda k := by
  exact ArithmeticFunction.vonMangoldt_nonneg

/-- The exact all-N Chebyshev growth input, with ONE fixed
coefficient C=log(4)+4, not a pointwise bound on Λ(k). -/
theorem wienerShiftedLambda_prefix_le
    (n : ℕ) :
    wienerAbelPrefix wienerShiftedLambda n ≤
      (Real.log 4 + 4) * (n : ℝ) := by
  rw [wienerShiftedLambda_prefix_eq_psi]
  exact Chebyshev.psi_le_const_mul_self (by positivity)

/-- Normalized Fourier scale. We do NOT suppress the factor 2*pi. -/
def wienerLogKernelC : ℝ := 2 * Real.pi

theorem wienerLogKernelC_gt_one :
    1 < wienerLogKernelC := by
  dsimp [wienerLogKernelC]
  nlinarith [Real.pi_gt_three]

/-- The exponential denominator on the logarithmic coordinate. -/
def wienerLogKernelDen (v : ℝ) : ℝ :=
  Real.exp v * (1 + (v / wienerLogKernelC) ^ 2)

/-- An actual symbolic derivative from HasDerivAt.real-exp and
polynomial product rules. -/
theorem wienerLogKernelDen_hasDerivAt (v : ℝ) :
    HasDerivAt wienerLogKernelDen
      (Real.exp v *
        (1 + (v / wienerLogKernelC) ^ 2 +
          2 * v / wienerLogKernelC ^ 2)) v := by
  have hd :
      HasDerivAt
        (fun x : ℝ => x / wienerLogKernelC)
        (1 / wienerLogKernelC) v := by
    convert (hasDerivAt_id v).div_const wienerLogKernelC using 1 <;> ring
  have hpoly :
      HasDerivAt
        (fun x : ℝ => 1 + (x / wienerLogKernelC) ^ 2)
        (2 * (v / wienerLogKernelC) *
          (1 / wienerLogKernelC)) v := by
    convert (hasDerivAt_const v (1 : ℝ)).add (hd.pow 2) using 1 <;> ring
  have hprod := (Real.hasDerivAt_exp v).mul hpoly
  convert hprod using 1 <;> ring

/-- The crucial discriminant estimate: the denominator derivative
has strictly positive sign for EVERY real v, including v<0. -/
theorem wienerLogKernelDen_derivative_factor_pos
    (v : ℝ) :
    0 < 1 + (v / wienerLogKernelC) ^ 2 +
      2 * v / wienerLogKernelC ^ 2 := by
  have hc : 0 < wienerLogKernelC :=
    zero_lt_one.trans wienerLogKernelC_gt_one
  have hcsq : 1 < wienerLogKernelC ^ 2 := by
    nlinarith [wienerLogKernelC_gt_one]
  have hn :
      0 < wienerLogKernelC ^ 2 + v ^ 2 + 2 * v := by
    nlinarith [sq_nonneg (v + 1)]
  have hid :
      1 + (v / wienerLogKernelC) ^ 2 +
          2 * v / wienerLogKernelC ^ 2 =
        (wienerLogKernelC ^ 2 + v ^ 2 + 2 * v) /
          wienerLogKernelC ^ 2 := by
    field_simp [ne_of_gt hc]
    ring
  rw [hid]
  exact div_pos hn (pow_pos hc _)

/-- This is a proof of genuine global monotonicity, not an assumed
monotonicity field for a target-fitted kernel. -/
theorem wienerLogKernelDen_strictMono :
    StrictMono wienerLogKernelDen := by
  apply strictMono_of_hasDerivAt_pos
  · intro v
    exact wienerLogKernelDen_hasDerivAt v
  · intro v
    exact mul_pos (Real.exp_pos _)
      (wienerLogKernelDen_derivative_factor_pos v)

/-- The denominator is everywhere positive, so reciprocal order
reversal is legitimate. -/
theorem wienerLogKernelDen_pos (v : ℝ) :
    0 < wienerLogKernelDen v := by
  unfold wienerLogKernelDen
  positivity

/-- The ACTUAL real-scale weight in the maintained first Fourier
logarithmic Chebyshev sum, with no coefficient or cutoff built in. -/
def wienerRealLogWeight (T x : ℝ) : ℝ :=
  (x * (1 + (Real.log (x / T) / wienerLogKernelC) ^ 2))⁻¹

/-- Weight at a strictly positive x is the scaled reciprocal of the
increasing logarithmic denominator. This is the key comparison used
to prove the weight is decreasing without a dubious sign claim about
the log alone. -/
theorem wienerRealLogWeight_eq_den_inv
    {T x : ℝ} (hT : 0 < T) (hx : 0 < x) :
    wienerRealLogWeight T x =
      T⁻¹ * (wienerLogKernelDen (Real.log (x / T)))⁻¹ := by
  have hratio : 0 < x / T := div_pos hx hT
  have hquad :
      0 < 1 + (Real.log (x / T) / wienerLogKernelC) ^ 2 := by
    positivity
  unfold wienerRealLogWeight wienerLogKernelDen
  rw [Real.exp_log hratio]
  field_simp [ne_of_gt hx, ne_of_gt hT, ne_of_gt hquad]
  ring

/-- Positive denominator and positive real x give positive weight. -/
theorem wienerRealLogWeight_pos
    {T x : ℝ} (_hT : 0 < T) (hx : 0 < x) :
    0 < wienerRealLogWeight T x := by
  unfold wienerRealLogWeight
  positivity

/-- ACTUAL decreasingness of the Fourier/logarithmic kernel on
positive reals, valid for EVERY positive scale T. -/
theorem wienerRealLogWeight_antitoneOn
    {T : ℝ} (hT : 0 < T) :
    AntitoneOn (wienerRealLogWeight T) (Set.Ioi 0) := by
  intro x hx y hy hxy
  have hxpos : 0 < x := hx
  have hypos : 0 < y := hy
  have hlog :
      Real.log (x / T) ≤ Real.log (y / T) := by
    apply Real.log_le_log (div_pos hxpos hT)
    exact div_le_div_of_nonneg_right hxy hT.le
  have hden :
      wienerLogKernelDen (Real.log (x / T)) ≤
        wienerLogKernelDen (Real.log (y / T)) :=
    wienerLogKernelDen_strictMono.monotone hlog
  have hinv :
      (wienerLogKernelDen (Real.log (y / T)))⁻¹ ≤
        (wienerLogKernelDen (Real.log (x / T)))⁻¹ := by
    simpa only [one_div] using
      one_div_le_one_div_of_le
        (wienerLogKernelDen_pos _) hden
  rw [wienerRealLogWeight_eq_den_inv hT hxpos,
    wienerRealLogWeight_eq_den_inv hT hypos]
  exact mul_le_mul_of_nonneg_left hinv
    (inv_nonneg.mpr hT.le)

/-- The exact NATURAL weight at all positive indices; the shift k+1
guarantees we never insert x=0 into a logarithmic integral. -/
def wienerShiftedLogWeight (T : ℝ) (k : ℕ) : ℝ :=
  wienerRealLogWeight T ((k + 1 : ℕ) : ℝ)

theorem wienerShiftedLogWeight_nonnegative
    {T : ℝ} (hT : 0 < T) (k : ℕ) :
    0 ≤ wienerShiftedLogWeight T k :=
  (wienerRealLogWeight_pos hT
    (by exact_mod_cast Nat.succ_pos k)).le

theorem wienerShiftedLogWeight_antitone
    {T : ℝ} (hT : 0 < T) (k : ℕ) :
    wienerShiftedLogWeight T (k + 1) ≤
      wienerShiftedLogWeight T k := by
  apply wienerRealLogWeight_antitoneOn hT
    (by exact_mod_cast Nat.succ_pos k)
    (by exact_mod_cast Nat.succ_pos (k + 1))
  exact_mod_cast Nat.le_succ (k + 1)

/-- The fixed Chebyshev constant used in the maintained Wiener proof
is nonnegative; there is no scale-dependent hidden budget. -/
theorem wienerChebyConstant_nonnegative :
    0 ≤ Real.log 4 + 4 := by
  have hlog : 0 ≤ Real.log (4 : ℝ) :=
    Real.log_nonneg (by norm_num)
  linarith

/-- A FULLY ARITHMETIC finite Abel consequence for the actual
von Mangoldt coefficients and the actual 2*pi Fourier kernel.
There is no free monotonicity or cumulative-growth hypothesis.
Every endpoint and parameter is explicit. -/
theorem wienerLambdaLogKernel_finite_majorization
    {T : ℝ} (hT : 0 < T) (N : ℕ) :
    (∑ k ∈ Finset.range N,
      wienerShiftedLambda k * wienerShiftedLogWeight T k)
    ≤ (Real.log 4 + 4) *
      (∑ k ∈ Finset.range N, wienerShiftedLogWeight T k) := by
  exact wienerAbel_weighted_le_linear_envelope
    wienerShiftedLambda (wienerShiftedLogWeight T)
    (Real.log 4 + 4)
    wienerChebyConstant_nonnegative
    wienerShiftedLambda_prefix_le
    (wienerShiftedLogWeight_nonnegative hT)
    (wienerShiftedLogWeight_antitone hT)
    N

end GRWTSK.RiemannHypothesis
