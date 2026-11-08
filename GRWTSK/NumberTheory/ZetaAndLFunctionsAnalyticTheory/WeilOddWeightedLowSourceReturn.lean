/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddModeDependentTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPoleFourierFunctionalReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSchurAccounting
import Mathlib.Tactic

/-!
# A weighted, signed low-sine reference for the actual odd zeta Weil form

## Source consumer and exact types

The whole-window source consumer is
  OddLiteralWindow.shiftedOddWeilEnergy T beta (finiteSine T x),
not an arbitrarily chosen matrix form or a graph heat energy.
The existing OddModeDependentTail.shiftedOddCoreEnergy_ge_weightedTail
retains the complete actual periodic gamma multiplier for EVERY mode.
For the full original prime-mass bound and the original odd boundary
loss four, its mode weight is exactly
    w_n(T,beta) = gammaConstant(1,0) - beta - primeMass(T) - 4
                  + periodicMultiplier(0, pi*n/T), n>=1.

The source trial is the normalized zero-extended odd sine:
    f_x(t) = sum_(i=0)^(M-1) x_i zeroExtendedSine(T,i+1,t).
The source finite matrix is OddRootProjection.zetaSineMatrix.
The current theorem instead evaluates its ACTUAL literal integral
form on the identical source trial; connecting this to the matrix
by literal finite gamma/prime/pole form equality is a separate
consumer where not already available.

We prove the NEW quantitative signed comparison, with no free
positivity hypothesis:
  shiftedOddWeilEnergy(T,beta,f_x)
       >= sum_(i=0)^(M-1) w_(i+1)(T,beta)*x_i^2
          - 2*(OddSchurAccounting.poleFunctional(T,M,x))^2.

The coefficient sum is constructed first on the ORIGINAL
sineCoefficient coordinates and reduced to the literal finite head
using the source's exact sineCoefficient_finiteSine identity.
The pole returns through the true whole-line sinh moment and the
source's exact pole row: OddPoleMoment.sinhMomentRow_eq_sinePoleCoefficient.
The negative sign and factor TWO of the original pole are retained,
not absorbed into an arbitrary smoothing error.

## Mathematical proof and consuming use

The full weighted periodic-gamma theorem gives, for every finite
sine trial, the sum of the source mode weights times sine-coefficient
squares as a lower bound for the actual shifted core. Its assumptions
are supplied by OddGammaOutput's finite-sine Lipschitz and gamma
integrability theorems, the actual signed prime-energy bound, and
OddBoundaryNorm's full odd signed boundary lower estimate.

Orthogonality forces all source sine coefficients beyond mode M
to vanish, so the weighted series is exactly a finite sum. The
source pole integral is linear in the finite synthesis and agrees
with OddSchurAccounting.poleFunctional T M x. Subtracting its exact
negative rank-one square gives the displayed full Weil inequality.

One sufficient, checkable condition for this LOW reference to be
nonnegative is that all the actual finite weights w_i are positive
and 2*sum_i(s_i^2/w_i) <= 1, where
s_i=OddSchurAccounting.sinhMomentRow T M i. It follows by weighted
finite Cauchy--Schwarz:
    (sum_i s_i*x_i)^2
       <= (sum_i w_i*x_i^2)*(sum_i s_i^2/w_i).
The source below records the corresponding finite signed reference
criterion as an exact consumer; proving a UNIFORM passing numerical
or analytic instance requires additional arithmetic and gamma work.

## Hostile boundary and missing implications

The weights may be negative at low frequencies. Then the sufficient
diagonal-minus-rank-one test is unavailable, but that is not evidence
that the original zeta form has a negative eigenvalue: we have only
a lower comparison. Conversely positive finite low-reference
values do NOT pay the mixed low/high Schur residual, which remains
a separate source-defined nonnegative cost in OddLiteralWindow and
OddModeDependentTail. No all-stage cofinal sign, source-to-completed
zero theorem, RH, primitive nonprincipal Dirichlet branch, or
Dirichlet GRH is established.

Source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, equations (3.19)--(3.20); local exact
normalization and source identities: WeilOddModeDependentTail,
WeilOddSineHeadRemoval, WeilOddGammaOutput, WeilOddBoundaryNorm,
WeilOddSineForm, WeilOddSchurAccounting and WeilOddPoleMoment.
The arithmetic sign is not changed. Standard Hilbert/finite
rank-one comparison; novelty unassessed. AI-assisted manual source.
Independent mathematical review, Lean elaboration, kernel replay
and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddWeightedLowSourceReturn

open OddRootProjection OddSineForm OddSineParseval OddSineHeadRemoval
open OddGammaOutput OddWrapEnergy OddHighComplement OddModeDependentTail
open OddLiteralWindow OddPoleFourierFunctionalReturn
open OddLiteralCofinalMassFloor OddSchurAccounting LowSchur

/-- The actual full gamma-multiplier lower reference, on exactly the
first M original source sine coordinates. The sum is FINITE even
though its input is expressed in source-defined sine coefficients. -/
def finiteWeightedLowHead {M : ℕ} (T beta : ℝ) (x : Fin M → ℝ) : ℝ :=
  ∑ n ∈ Finset.range M,
    modeWeight T beta (primeMass T) 4 (1 + n) *
      (sineCoefficient T (finiteSine T x) (1 + n)) ^ 2

/-- True source sine-coefficient orthogonality beyond the finite head;
no convenient high coefficient is set to zero by definition. -/
theorem finiteSine_sineCoefficient_zero_of_ge {M : ℕ}
    (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) (n : ℕ)
    (hn : M ≤ n) :
    sineCoefficient T (finiteSine T x) (1 + n) = 0 := by
  have h := sineCoefficient_finiteSine T hT x (m := n + 1) (by omega)
  rw [show 1 + n = n + 1 by omega]
  rw [h]
  apply Finset.sum_eq_zero
  intro i _
  have hne : n + 1 ≠ i.val + 1 := by omega
  simp [hne]

/-- The retained literal coordinate is exactly the supplied real
coefficient: the source basis is orthonormal, not an arbitrary
noninjective observer. -/
theorem finiteSine_sineCoefficient_eq_coordinate {M : ℕ}
    (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) (i : Fin M) :
    sineCoefficient T (finiteSine T x) (1 + i.val) = x i := by
  rw [show 1 + i.val = i.val + 1 by omega,
    sineCoefficient_finiteSine T hT x (m := i.val + 1) (by omega)]
  have heq (j : Fin M) :
      (i.val + 1 = j.val + 1) ↔ j = i := by
    constructor
    · intro h
      exact Fin.ext (by omega)
    · rintro rfl
      rfl
  simp [heq]

/-- The previous whole-source weighted series on a literal finite
synthesis has no remote terms. Its conversion to the finite head is
a theorem, not a new choice of support. -/
theorem weightedFiniteSine_tsum_eq_head {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ) (x : Fin M → ℝ) :
    (∑' n : ℕ,
       modeWeight T beta (primeMass T) 4 (1 + n) *
         (sineCoefficient T (finiteSine T x) (1 + n)) ^ 2) =
      finiteWeightedLowHead T beta x := by
  unfold finiteWeightedLowHead
  apply tsum_eq_sum (s := Finset.range M)
  intro n hn
  have hge : M ≤ n := by
    simpa only [Finset.mem_range, not_lt] using hn
  rw [finiteSine_sineCoefficient_zero_of_ge T hT x n hge]
  ring

/-- The original real finite synthesis satisfies the entire
periodization and prime-mass lower estimate, with each mode retaining
its TRUE source multiplier and the boundary cost four. -/
theorem finiteSine_weightedCore_lower {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ) (x : Fin M → ℝ) :
    finiteWeightedLowHead T beta x ≤
      shiftedOddCoreEnergy T beta (finiteSine T x) := by
  let f : ℝ → ℝ := finiteSine T x
  have hf : MemLp f 2 volume := finiteSine_memLp T x
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT x
  have hmeas : Measurable f := hK.continuous.measurable
  have hodd : Function.Odd f := finiteSine_odd T x
  have hsupport :
      ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0 :=
    Eventually.of_forall (fun t ht => finiteSine_eq_zero_off_window T x ht)
  have hgamma :
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) := by
    simpa only [zeroShiftEnergy, zeroShiftSquare] using
      integrableOn_gammaEnergy_finiteSine T hT x
  have hprime :
      primeEnergy T f ≤ primeMass T * (∫ t : ℝ, ‖f t‖ ^ 2) := by
    have hp := (le_abs_self (primeEnergy T f)).trans
      (abs_primeEnergy_le T f hf.integrable_sq)
    simpa only [Real.norm_eq_abs, sq_abs] using hp
  have hboundary :
      -(4 * ∫ t in Ioo 0 T, f t ^ 2) ≤
        ∫ t in Ioo 0 T, ∫ s in Ioo 0 T,
          OddBoundaryNorm.oddKernel T t s * f t * f s :=
    OddBoundaryNorm.oddKernel_quadratic_ge T f hmeas hf.integrable_sq.integrableOn
  have hret :=
    shiftedOddCoreEnergy_ge_weightedTail T hT beta (primeMass T) 4
      (N := 0) (f := f) hmeas hf hodd hsupport
      (by intro n hn; omega) hgamma hprime hboundary
  have hwhole :
      (∑' n : ℕ,
        modeWeight T beta (primeMass T) 4 (1 + n) *
          (sineCoefficient T f (1 + n)) ^ 2) ≤
        shiftedOddCoreEnergy T beta f := by
    simpa only [zero_add] using hret.2
  rw [weightedFiniteSine_tsum_eq_head T hT beta x] at hwhole
  exact hwhole

/-- The ORIGINAL whole-line negative pole moment of a finite sine
trial is precisely the existing finite Schur source poleFunctional.
This is an exact two-carrier observation comparison, not an analogy. -/
theorem finiteSine_poleMoment_eq_poleFunctional {M : ℕ}
    (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) :
    oddPoleMoment (finiteSine T x) = poleFunctional T M x := by
  have hsupport :
      ∀ᵐ t : ℝ, t ∉ Icc (-T) T → finiteSine T x t = 0 :=
    Eventually.of_forall (fun t ht => finiteSine_eq_zero_off_window T x ht)
  have hint (i : Fin M) :
      Integrable (fun t : ℝ => x i *
        (poleWindow T t * zeroExtendedSine T (i.val + 1) t)) :=
    ((poleWindow_memLp T).integrable_mul
      (memLp_zeroExtendedSine T (i.val + 1))).const_mul (x i)
  calc
    oddPoleMoment (finiteSine T x) =
        ∫ t : ℝ, poleWindow T t * finiteSine T x t :=
      (poleWindow_pair_eq_moment T hsupport).symm
    _ = ∫ t : ℝ, ∑ i : Fin M, x i *
          (poleWindow T t * zeroExtendedSine T (i.val + 1) t) := by
      apply integral_congr_ae
      filter_upwards [] with t
      unfold finiteSine
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ = ∑ i : Fin M, x i *
          (∫ t : ℝ, poleWindow T t *
            zeroExtendedSine T (i.val + 1) t) := by
      rw [integral_finsetSum _ (fun i _ => hint i)]
      simp only [integral_const_mul]
    _ = ∑ i : Fin M, x i * sinePoleCoefficient T (i.val + 1) := by
      apply Finset.sum_congr rfl
      intro i _
      have hm :
          (∫ t : ℝ, poleWindow T t *
            zeroExtendedSine T (i.val + 1) t) =
            sinePoleCoefficient T (i.val + 1) := by
        calc
          _ = sineCoefficient T (poleWindow T) (i.val + 1) := by
            unfold sineCoefficient
            apply integral_congr_ae
            filter_upwards [] with t
            ring
          _ = _ :=
            poleWindow_sineCoefficient T hT (i.val + 1) (by omega)
      rw [hm]
    _ = poleFunctional T M x := by
      rw [poleFunctional_apply]
      unfold Matrix.dotProduct
      apply Finset.sum_congr rfl
      intro i _
      rw [← OddPoleMoment.sinhMomentRow_eq_sinePoleCoefficient
        T hT (i := i)]
      ring

/-- Actual finite-sine low-source inequality: original archimedean,
original full prime-power inventory and the NEGATIVE rank-one pole.
It provides a frequency-dependent diagonal-minus-rank-one lower
reference, not a replacement of the Weil form by a positive model. -/
theorem finiteSine_signed_weightedLow_reference {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ) (x : Fin M → ℝ) :
    finiteWeightedLowHead T beta x -
        2 * (poleFunctional T M x) ^ 2 ≤
      shiftedOddWeilEnergy T beta (finiteSine T x) := by
  have hcore := finiteSine_weightedCore_lower T hT beta x
  have hpole := finiteSine_poleMoment_eq_poleFunctional T hT x
  rw [← hpole]
  change finiteWeightedLowHead T beta x -
      2 * (oddPoleMoment (finiteSine T x)) ^ 2 ≤
    shiftedOddCoreEnergy T beta (finiteSine T x) -
      2 * (oddPoleMoment (finiteSine T x)) ^ 2
  exact sub_le_sub_right hcore _

/-- A passing finite weighted reference is a SUFFICIENT sign check
only on the finite source sine trial class. This does not imply
positivity of arbitrary supported tests or the mixed Schur remainder. -/
theorem finiteSine_nonneg_of_weightedLow_reference {M : ℕ}
    (T : ℝ) (hT : 0 < T) (beta : ℝ)
    (hreference : ∀ x : Fin M → ℝ,
      0 ≤ finiteWeightedLowHead T beta x -
        2 * (poleFunctional T M x) ^ 2)
    (x : Fin M → ℝ) :
    0 ≤ shiftedOddWeilEnergy T beta (finiteSine T x) :=
  (hreference x).trans
    (finiteSine_signed_weightedLow_reference T hT beta x)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddWeightedLowSourceReturn
