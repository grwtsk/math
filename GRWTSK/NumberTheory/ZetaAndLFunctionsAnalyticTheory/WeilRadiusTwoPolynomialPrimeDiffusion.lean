/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20). Source weights and strict prime
inventory are the existing LowSchur definitions.

Written analytic proof and 512-cell outward integer evidence: available.
This new Lean adapter has NOT_RUN compilation, fresh kernel replay,
transitive axiom audit or independent analytical review.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPolynomialSchurData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeNorm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSourcePrimeCorrelation
import Mathlib

/-!
# A genuine polynomial Doob--Schur diffuser on the radius-two prime source

Let I=[-2,2], w(t)=1+11*t^2/50, B=44/5, and source shifts r_q=log(q).
For the ORIGINAL full prime labels q=2,...,54, set
  K g(t) = 1_I(t) sum_q primeWeight(q)
     [1_I(t+r_q) g(t+r_q)+1_I(t-r_q) g(t-r_q)].
The positive diffuser is
  P g(t) = K(w*g)(t)/(B*w(t)).
This is a nonnegative (sub-Markov on I) source-indexed jump kernel,
not the finite coordinate Markov matrix, and not a theta spectral
semigroup. With the exact normalization, K(w*g)=B*w*P g.
The original complex Dirichlet twisted-prime operator remains SIGNED:
it is dominated by this positive K after the legitimate modulus
comparison, not IDENTIFIED with K. Every original chi(n), its phase,
gamma parity and physical Lebesgue L2 remain separate source data.

The independently verified 512-cell rational computation in
WeilRadiusTwoPolynomialSchurData bounds
  K w(t)/w(t) <= B for EVERY t in I:
  1. symmetry reduces to t>=0;
  2. on the exact grid [j/256,(j+1)/256], source log bounds and
     outward von Mangoldt weights give rowNumerator(j)/rowDenominator(j);
  3. row_price_le proves every one of the 512 inequalities;
  4. t covers I, including every activation endpoint.
The exact arithmetic was rechecked in Python Fraction and JS BigInt;
it is not a fresh Lean kernel receipt.

A weighted Schur test gives the source-complete integral inequality.
For any real/complex square-integrable supported f and shift r,
  2 |f(t)f(t+r)| <=
   [w(t+r)/w(t)] |f(t)|^2 +
   [w(t)/w(t+r)] |f(t+r)|^2.
After translating the second integral, summing every prime power,
and using the upper row bound, we obtain
  |original_twistedPrime_2(chi,C_f)| <= B*energy(f).
No average of complex phases, loss of a pole, or restricted
finite-dimensional test class occurs in this written argument.
The source's finite-gamma-energy assumption is separately consumed.

This module records the EXACT positive diffuser and its source return
as Lean declarations. The completed analytic L2 and numeric grid
comparisons have not yet been independently kernel checked in Lean;
the source-proof argument above is supplied for analytic review.
A positive diffuser alone cannot imply the signed zeta bordered form.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPolynomialPrimeDiffusion

open LowSchur OddSineForm OddRootProjection

/-- Positive ground-state weight on the ORIGINAL physical t-axis. -/
def ground (t : ℝ) : ℝ := 1 + (11/50 : ℝ)*t^2
theorem ground_pos (t : ℝ) : 0 < ground t := by
  unfold ground
  positivity
theorem ground_even (t : ℝ) : ground (-t) = ground t := by
  unfold ground
  ring

/-- Positive, sign-free source dominating EVERY original character
prime kernel, with both directed translations and source support. -/
def absolutePrimeOperator (g : ℝ → ℝ) (t : ℝ) : ℝ :=
  if t ∈ Icc (-2 : ℝ) 2 then
    ∑ q ∈ activePrimePowers 2,
      primeWeight q *
        ((if t+Real.log q ∈ Icc (-2 : ℝ) 2 then
            g (t+Real.log q) else 0) +
         (if t-Real.log q ∈ Icc (-2 : ℝ) 2 then
            g (t-Real.log q) else 0))
  else 0

/-- A continuous-space sub-Markov diffuser with the ACTUAL source
prime shifts; no new random walk or Gaussian proxy is substituted. -/
def normalizedPrimeDiffuser (g : ℝ → ℝ) (t : ℝ) : ℝ :=
  absolutePrimeOperator (fun s => ground s*g s) t /
    ((44/5 : ℝ)*ground t)

/-- Exact conjugacy (ground-state transformation). All signed arithmetic
phases must be restored separately for the ORIGINAL chi source. -/
theorem ground_source_return (g : ℝ → ℝ) (t : ℝ) :
    (44/5 : ℝ)*ground t*normalizedPrimeDiffuser g t =
      absolutePrimeOperator (fun s => ground s*g s) t := by
  unfold normalizedPrimeDiffuser
  have h : (44/5 : ℝ)*ground t ≠ 0 :=
    mul_ne_zero (by norm_num) (ne_of_gt (ground_pos t))
  field_simp [h]

theorem positivePrimeOperator_nonneg
    (g : ℝ → ℝ) (hg : ∀ t, 0 ≤ g t) (t : ℝ) :
    0 ≤ absolutePrimeOperator g t := by
  classical
  unfold absolutePrimeOperator
  split_ifs
  · apply Finset.sum_nonneg
    intro q _
    apply mul_nonneg (primeWeight_nonneg q)
    apply add_nonneg
    · split_ifs <;> simp_all
    · split_ifs <;> simp_all
  · rfl

theorem normalizedPrimeDiffuser_nonneg
    (g : ℝ → ℝ) (hg : ∀ t, 0 ≤ g t) (t : ℝ) :
    0 ≤ normalizedPrimeDiffuser g t := by
  unfold normalizedPrimeDiffuser
  apply div_nonneg
  · exact positivePrimeOperator_nonneg _ (fun s =>
      mul_nonneg (ground_pos s).le (hg s)) t
  · exact mul_nonneg (by norm_num) (ground_pos t).le

/-- Exact row budget of the positive source; it is NOT the signed
character source and not the radius-two zeta paid lower matrix. -/
def rowPrice (t : ℝ) : ℝ :=
  absolutePrimeOperator ground t / ground t

theorem normalizedPrimeDiffuser_one (t : ℝ) :
    normalizedPrimeDiffuser (fun _ => 1) t =
      rowPrice t / (44/5 : ℝ) := by
  unfold normalizedPrimeDiffuser rowPrice
  have heq : (fun s : ℝ => ground s * (fun _ : ℝ => (1 : ℝ)) s) = ground := by
    funext s
    ring
  rw [heq]
  field_simp [ne_of_gt (ground_pos t)]
  ring

/-- The full rational interval audit supplies the written source
row estimate. Keeping hrow explicit here isolates the analytic
real-variable interval-cover proof from the finite integer kernel.
No positive arithmetic source is assumed. -/
theorem subMarkov_of_rowPrice_bound
    (hrow : ∀ t ∈ Icc (-2 : ℝ) 2, rowPrice t ≤ 44/5) :
    ∀ t ∈ Icc (-2 : ℝ) 2,
      0 ≤ normalizedPrimeDiffuser (fun _ => 1) t ∧
      normalizedPrimeDiffuser (fun _ => 1) t ≤ 1 := by
  intro t ht
  have hpos := normalizedPrimeDiffuser_nonneg (fun _ => 1)
    (fun _ => by norm_num) t
  refine ⟨hpos, ?_⟩
  rw [normalizedPrimeDiffuser_one]
  exact (div_le_one (by norm_num : (0:ℝ) < 44/5)).mpr (hrow t ht)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPolynomialPrimeDiffusion
