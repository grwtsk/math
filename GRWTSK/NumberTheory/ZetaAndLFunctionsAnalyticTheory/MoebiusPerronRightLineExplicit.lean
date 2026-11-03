/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusReciprocalZetaPerronBridge
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

/-!
# Completely unconditional right-line half-integer Perron truncation

The current mathematical input HalfIntegerMertensTruncatedPerron does
NOT need any zero-free strip, RH, quantitative Mertens hypothesis or
source-specific cancellation. It is true on Re s=2 for the ORIGINAL
real Mobius coefficients. This file exposes two strictly elementary
unported Lean analytic facts and supplies an explicit Lean-source
consumer with the uniform K=40.

Put x=N+1/2 and H=x^2 for N>=1. The classical Perron indicator
  I_H(y)=1/(2*pi)*int_{-H}^H y^(2+it)/(2+it) dt
satisfies for y>0,y!=1:
  |1_(y>1)-I_H(y)| <= (2/pi)*y^2/(H*|log y|).
This follows from infinite Perron contour inversion and integrating
each oscillatory tail by parts. Its constant uses NO zeta zero info.

On Re s=2, the actual Mobius Dirichlet series equals 1/zeta(s):
the pinned Mathlib source LSeries_zeta_mul_Lseries_moebius and
LSeries_zeta_eq_riemannZeta supply the exact algebra. Absolute
convergence permits exchanging the sum with the FINITE t-integral.
Therefore the original Mertens finite prefix error is at most
  (2/pi) * sum_(n>=1) 1/(n^2*|log(x/n)|).
The half-integer distance |x-n|>=1/2 makes this finite.

Split n<=x/2, x/2<n<2x, n>=2x. Both exterior terms cost <4
each, using sum 1/n^2<2 and log2>1/2. The middle contains at
most 2x positive integers, each term <=16/x:
  |log(x/n)|>=|x-n|/max(x,n)>=1/(4x),
  1/n^2<=4/x^2.
Hence the whole positive sum is <40. Since 2/pi<1,
  |M(N)-perronVertical(x,2,x^2)|<40 for EVERY N>=1.

These are complete ORDINARY elementary proofs, but the scalar
inversion/interchange and real-logarithmic infinite-sum comparison
remain distinct UNPROVED PINNED LEAN PROP targets. No theorem body
below invokes a hidden analytic research axiom. The established
Perron input follows from those explicit, RH-INDEPENDENT targets;
Lean compilation is user-DEFERRED.
-/

namespace GRWTSK.NumberTheory.Moebius.PerronRightLineExplicit

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.ReciprocalZetaPerronBridge
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103

/-- The sum whose denominator is never zero because x=N+1/2.
All positive n are included; zero is excluded by the actual
ArithmeticFunction/Mobius zero support, NOT by truncating the sum. -/
def halfIntegerLogarithmicBudget (N : ℕ) : ℝ :=
  ∑' n : ℕ,
    if 1 ≤ n then
      ((n : ℝ)^2 * |Real.log (halfIntegerCutoff N / (n : ℝ))|)⁻¹
    else 0

/-- Half-integer x cannot equal any original integer n; this
is the exact minimum distance in all source truncation sums. -/
theorem halfIntegerCutoff_distance_ge_half (N n : ℕ) :
    (1 / 2 : ℝ) ≤ |halfIntegerCutoff N - (n : ℝ)| := by
  unfold halfIntegerCutoff
  rcases le_total n N with h | h
  · have hc : (n : ℝ) ≤ (N : ℝ) := by exact_mod_cast h
    have hs : 0 ≤ (N : ℝ) + 1 / 2 - n := by linarith
    rw [abs_of_nonneg hs]
    linarith
  · by_cases hn : n = N
    · subst n
      norm_num
    · have hn' : N + 1 ≤ n := by omega
      have hc : (N : ℝ) + 1 ≤ (n : ℝ) := by exact_mod_cast hn'
      have hs : (N : ℝ) + 1 / 2 - n ≤ 0 := by linarith
      rw [abs_of_nonpos hs]
      linarith

theorem halfIntegerCutoff_ne_nat (N n : ℕ) :
    halfIntegerCutoff N ≠ (n : ℝ) := by
  intro he
  have hdist := halfIntegerCutoff_distance_ge_half N n
  rw [he, sub_self, abs_zero] at hdist
  norm_num at hdist

/-- RH-INDEPENDENT finite-contour and original Mobius Dirichlet
series interchange, with the EXACT original normed prefix and
perronVertical (x,2,x^2). The ordinary mathematical proof
uses the pinned Mathlib zeta*Mobius LSeries identity and the
per-single-term oscillatory 1/|log(x/n)| bound above.
This is an explicit UNPORTED LEAN proposition, NOT an axiom. -/
def OriginalRightLineTermwisePerronBoundTarget : Prop :=
  ∀ N : ℕ, 1 ≤ N →
    ‖(finiteMertensPrefix N : ℂ) -
        perronVertical (halfIntegerCutoff N) 2 (perronHeight N)‖ ≤
      (2 / Real.pi) * halfIntegerLogarithmicBudget N

/-- An arithmetic-free REAL reciprocal-log budget:
  sum_n 1/(n^2*|log((N+1/2)/n)|) <=40.
The review gives a complete uniform three-region proof,
including all N>=1 and infinitely many n; this Lean series
comparison is still UNPORTED and NEVER asserts FAR cancellation. -/
def HalfIntegerReciprocalLogBudgetTarget : Prop :=
  ∀ N : ℕ, 1 ≤ N →
    halfIntegerLogarithmicBudget N ≤ 40

/-- The two fully independent elementary Perron inputs discharge
the OLD complete HalfIntegerMertensTruncatedPerron with K=40.
The entire ORIGINAL Mobius signed prefix is used, not a
new coefficient alphabet or shifted/cropped arithmetic sum. -/
theorem halfIntegerMertensTruncatedPerron_of_explicit_facts
    (hterm : OriginalRightLineTermwisePerronBoundTarget)
    (hbudget : HalfIntegerReciprocalLogBudgetTarget) :
    HalfIntegerMertensTruncatedPerron := by
  refine ⟨40, by norm_num, ?_⟩
  intro N hN
  have hx : (1 : ℝ) ≤ halfIntegerCutoff N := by
    have hcast : (1 : ℝ) ≤ N := by exact_mod_cast hN
    unfold halfIntegerCutoff
    linarith
  have hlog : 0 ≤ Real.log (halfIntegerCutoff N) :=
    Real.log_nonneg hx
  have hpi : (2 : ℝ) ≤ Real.pi := by
    have hp := Real.pi_gt_three
    linarith
  have hratio : (2 / Real.pi : ℝ) ≤ 1 := by
    apply (div_le_iff₀ Real.pi_pos).mpr
    simpa using hpi
  have hratio_nonneg : (0 : ℝ) ≤ 2 / Real.pi := by positivity
  calc
    ‖(finiteMertensPrefix N : ℂ) -
      perronVertical (halfIntegerCutoff N) 2 (perronHeight N)‖ ≤
        (2 / Real.pi) * halfIntegerLogarithmicBudget N :=
      hterm N hN
    _ ≤ (2 / Real.pi) * 40 :=
      mul_le_mul_of_nonneg_left (hbudget N hN) hratio_nonneg
    _ ≤ 40 := by nlinarith
    _ ≤ 40 * (1 + Real.log (halfIntegerCutoff N)) := by
      nlinarith

/-- The exact holomorphy obstruction: being zero-free RIGHT of
theta is equivalent to nonvanishing of the actual pole-removed
zeta denominator on that WHOLE open half-plane. One cannot
silently extend a fixed strip past zeros of zeta. -/
theorem zeroFreeRightOf_iff_regularizedDenominator
    (theta : ℝ) :
    ZetaZeroFreeRightOf theta ↔
      ∀ s : ℂ, theta < s.re →
        ZetaAsymptotics.riemannZeta₁ s ≠ 0 := by
  constructor
  · intro hz s hs
    exact riemannZeta₁_ne_zero_of_zeroFree hz hs
  · intro hden s hs hsone
    have hsden : ZetaAsymptotics.riemannZeta₁ s ≠ 0 :=
      hden s hs
    have hnum : s - 1 ≠ 0 := sub_ne_zero.mpr hsone
    rw [ZetaAsymptotics.riemannZeta_eq_inv_sub_mul hsone]
    exact mul_ne_zero (inv_ne_zero hnum) hsden

end GRWTSK.NumberTheory.Moebius.PerronRightLineExplicit
