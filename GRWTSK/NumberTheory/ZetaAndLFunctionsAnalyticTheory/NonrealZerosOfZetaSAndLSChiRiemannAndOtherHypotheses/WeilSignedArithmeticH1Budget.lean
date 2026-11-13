/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilH1ShiftFTC
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineForm
import Mathlib.Tactic

/-!
# Source-exact signed arithmetic Weil H1 diagonal budgets

The original parity-dependent real gamma energy is bounded on genuine C1
inputs by WeilH1ShiftFTC. This module keeps the original signed arithmetic
forms and proves a full PRIMITIVE paired-character DIAGONAL absolute H1
bound, including every active prime power and its actual real character
weight. The character weights are not assumed nonnegative.

For zeta, an analogous full diagonal bound retains the genuinely NEGATIVE
real odd pole -2*(∫ f sinh(t/2))². A separate, narrowly stated
supported-sinh moment inequality is retained as an explicit analytic
source premise in the Lean theorem, rather than deleting the pole.
Its classical compact-window L2 proof and exact optimal coefficient
sinh(T)-T are given in the mathematical companion.

This file does NOT assert a mixed bilinear H1 continuity theorem:
that additionally requires source polarization/mixed gamma integrability,
or an independently verified quadratic-form polarization bridge. An
absolute bound for diagonal values alone must not be silently treated as
a proved mixed bound without quadraticity and a scaling argument.

No RH, Dirichlet GRH, cofinal arithmetic lower bound or
off-critical-zero negative witness has been proved.
Manual Lean SOURCE_PROOF_CANDIDATE; compilation, full import build,
fresh kernel replay, transitive axiom audit and independent review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SignedArithmeticH1Budget

open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.OddHighComplement
open GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail
open GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSineNegativeReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.NativeGammaH1ShiftBudget
open GRWTSK.NumberTheory.WeilQuadraticForm.NativeH1ShiftFTC

/-- Actual real physical mass and derivative mass. Not a new
Hilbert-space topology or a replacement of the original Weil form. -/
def physicalMass (f : ℝ → ℝ) : ℝ :=
  ∫ t : ℝ, f t ^ 2

def physicalDerivativeMass (first : ℝ → ℝ) : ℝ :=
  ∫ t : ℝ, first t ^ 2

private theorem physicalMass_nonneg (f : ℝ → ℝ) :
    0 ≤ physicalMass f := by
  unfold physicalMass
  exact integral_nonneg fun t => sq_nonneg _

/-- Literal character weights: real part, INCLUDING sign and ramification. -/
theorem abs_pairedPrimeWeight_le {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (n : ℕ) :
    |pairedPrimeWeight chi n| ≤ primeWeight n := by
  have hchar :
      |(chi (n : ZMod q)).re| ≤ 1 :=
    (Complex.abs_re_le_norm _).trans (chi.norm_le_one (n : ZMod q))
  rw [pairedPrimeWeight, abs_mul, abs_of_nonneg (primeWeight_nonneg n)]
  simpa only [mul_one] using
    (mul_le_mul_of_nonneg_left hchar (primeWeight_nonneg n))

/-- The precise TWO-ORIENTATION prime-power sum in the original primitive
nonprincipal REAL conjugate-pair physical Weil form. -/
def pairedPrimeResponse {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (T : ℝ) (f : ℝ → ℝ) : ℝ :=
  ∑ n ∈ activePrimePowers T, pairedPrimeWeight chi n *
    ((∫ t : ℝ, f t * f (t + Real.log (n : ℝ))) +
     (∫ t : ℝ, f t * f (t - Real.log (n : ℝ))))

/-- Both literal translation directions are bounded independently.
No phase cancellation, norm-1 character assumption, or missing prime
power is concealed. The absolute prime mass is EXACTLY the original. -/
theorem abs_pairedPrimeResponse_le
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (T : ℝ) (f : ℝ → ℝ)
    (hf : MemLp f 2 volume) :
    |pairedPrimeResponse chi T f| ≤ primeMass T * physicalMass f := by
  let E := physicalMass f
  have hE : 0 ≤ E := physicalMass_nonneg f
  have hfSq : Integrable (fun t : ℝ => f t ^ 2) :=
    hf.integrable_sq
  have hterm (n : ℕ) :
      |(∫ t : ℝ, f t * f (t + Real.log (n : ℝ))) +
        (∫ t : ℝ, f t * f (t - Real.log (n : ℝ)))| ≤
        2 * E := by
    have hplus := abs_integral_mul_translate_le_sq f (Real.log (n : ℝ)) hfSq
    have hminus :
        |∫ t : ℝ, f t * f (t - Real.log (n : ℝ))| ≤ E := by
      simpa only [sub_eq_add_neg, E, physicalMass] using
        (abs_integral_mul_translate_le_sq f (-Real.log (n : ℝ)) hfSq)
    calc
      _ ≤ |∫ t : ℝ, f t * f (t + Real.log (n : ℝ))| +
          |∫ t : ℝ, f t * f (t - Real.log (n : ℝ))| :=
        abs_add_le _ _
      _ ≤ E + E := add_le_add hplus hminus
      _ = 2 * E := by ring
  calc
    |pairedPrimeResponse chi T f| ≤
        ∑ n ∈ activePrimePowers T,
          |pairedPrimeWeight chi n *
            ((∫ t : ℝ, f t * f (t + Real.log (n : ℝ))) +
             (∫ t : ℝ, f t * f (t - Real.log (n : ℝ))))| := by
      unfold pairedPrimeResponse
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ activePrimePowers T, 2 * primeWeight n * E := by
      apply Finset.sum_le_sum
      intro n _
      rw [abs_mul]
      calc
        _ ≤ |pairedPrimeWeight chi n| * (2 * E) :=
          mul_le_mul_of_nonneg_left (hterm n)
            (abs_nonneg (pairedPrimeWeight chi n))
        _ ≤ primeWeight n * (2 * E) :=
          mul_le_mul_of_nonneg_right
            (abs_pairedPrimeWeight_le chi n) (by positivity)
        _ = 2 * primeWeight n * E := by ring
    _ = primeMass T * physicalMass f := by
      unfold primeMass
      simp only [← Finset.sum_mul, ← Finset.mul_sum]
      ring

/-- Algebraic ABSOLUTE bound for a signed quadratic source.
The positive gamma and all other terms are charged separately;
there is no lower sign conclusion for their sum. -/
private theorem abs_signed_source_le
    (c E G P Z D A B W L : ℝ)
    (hE : 0 ≤ E) (hG : 0 ≤ G)
    (hGamma : G ≤ A * D + B * E)
    (hPrime : |P| ≤ W * E)
    (hPole : |Z| ≤ L * E) :
    |c * E + G - P - Z| ≤
      (|c| + B + W + L) * E + A * D := by
  calc
    |c * E + G - P - Z| ≤
        |c * E| + |G| + |P| + |Z| := by
      have h1 := abs_add_le (c * E) G
      have h2 := abs_sub_le (c * E + G) P
      have h3 := abs_sub_le (c * E + G - P) Z
      linarith
    _ = |c| * E + G + |P| + |Z| := by
      rw [abs_mul, abs_of_nonneg hE, abs_of_nonneg hG]
      ring
    _ ≤ (|c| + B + W + L) * E + A * D := by
      nlinarith [hGamma, hPrime, hPole]

/-- The ENTIRE signed primitive nonprincipal paired-character quadratic
form is now bounded in physical H1 on actual classical C1 inputs.
The original gamma parity, conductor constant and signed prime powers
are retained. This is a diagonal ABSOLUTE bound, not positivity. -/
theorem primitivePairedPhysical_abs_H1_le
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (f first : ℝ → ℝ)
    (hderiv : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirstCont : Continuous first)
    (hf : MemLp f 2 volume) (hfirst : MemLp first 2 volume) :
    |primitivePairedOddPhysicalValue chi hp hn T f| ≤
      (|gammaConstant q (gammaParity chi)| + primeMass T +
          2 * tailUpper (gammaParity chi) 1) * physicalMass f +
      (7 / 12 : ℝ) * physicalDerivativeMass first := by
  let a := gammaParity chi
  let E := physicalMass f
  let D := physicalDerivativeMass first
  let G := realGammaEnergy a f
  let P := pairedPrimeResponse chi T f
  have hNear := nearH1ShiftBound_of_classical_derivative
    f first hderiv hfirstCont hf hfirst
  have hCont : Continuous f := fun t => (hderiv t).continuousAt
  have hGsource := (realGammaEnergy_integrable_and_bound
    a f first hCont hf hfirst hNear)
  have hGammaNonneg : 0 ≤ G := hGsource.2.1
  have hGammaBound :
      G ≤ (7 / 12 : ℝ) * D + 2 * tailUpper a 1 * E := hGsource.2.2
  have hPrime : |P| ≤ primeMass T * E :=
    abs_pairedPrimeResponse_le chi T f hf
  have hsource :
      primitivePairedOddPhysicalValue chi hp hn T f =
      gammaConstant q a * E + G - P := rfl
  rw [hsource]
  have hBudget := abs_signed_source_le (gammaConstant q a) E G P 0 D
    (7 / 12 : ℝ) (2 * tailUpper a 1) (primeMass T) 0
    (physicalMass_nonneg f) hGammaNonneg hGammaBound hPrime
    (by simp : |(0 : ℝ)| ≤ 0 * E)
  calc
    _ ≤ (|gammaConstant q a| + 2 * tailUpper a 1 + primeMass T + 0) *
          E + (7 / 12 : ℝ) * D := by simpa using hBudget
    _ = _ := by dsimp [E, D, a]; ring

/-- The genuine odd zeta pole is NOT sign-definite in the full physical
Weil form. Its magnitude is charged as a separate source moment. -/
def oddZetaPoleMoment (f : ℝ → ℝ) : ℝ :=
  ∫ t : ℝ, f t * Real.sinh (t / 2)

/-- This explicit unproved Lean source supplier is the standard supported
Cauchy-Schwarz inequality. The SHARP real-odd sinh profile mass is
  ∫_{-T}^T sinh(t/2)^2 dt = sinh T - T.
No pole is discarded. See companion mathematical proof. -/
def SupportedOddPoleMomentBound (T : ℝ) (f : ℝ → ℝ) : Prop :=
  (oddZetaPoleMoment f) ^ 2 ≤
    (Real.sinh T - T) * physicalMass f

/-- Full original real-odd zeta diagonal absolute budget, INCLUDING its
negative pole and all native positive prime weights. Only the clearly
named compact-window sinh moment bound remains supplied in this theorem. -/
theorem zetaOddPhysical_abs_H1_le
    (T : ℝ) (hT : 0 < T) (f first : ℝ → ℝ)
    (hderiv : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirstCont : Continuous first)
    (hf : MemLp f 2 volume) (hfirst : MemLp first 2 volume)
    (hPole : SupportedOddPoleMomentBound T f) :
    |zetaOddPhysicalValue T f| ≤
      (|gammaConstant 1 0| + primeMass T +
        2 * tailUpper 0 1 + 2 * (Real.sinh T - T)) *
        physicalMass f +
      (7 / 12 : ℝ) * physicalDerivativeMass first := by
  let E := physicalMass f
  let D := physicalDerivativeMass first
  let G := realGammaEnergy 0 f
  let P := primeEnergy T f
  let Z := 2 * (oddZetaPoleMoment f) ^ 2
  have hNear := nearH1ShiftBound_of_classical_derivative
    f first hderiv hfirstCont hf hfirst
  have hCont : Continuous f := fun t => (hderiv t).continuousAt
  have hGsource := (realGammaEnergy_integrable_and_bound
    0 f first hCont hf hfirst hNear)
  have hGammaNonneg : 0 ≤ G := hGsource.2.1
  have hGammaBound :
      G ≤ (7 / 12 : ℝ) * D + 2 * tailUpper 0 1 * E := hGsource.2.2
  have hPrime : |P| ≤ primeMass T * E :=
    abs_primeEnergy_le T f hf.integrable_sq
  have hZnonneg : 0 ≤ Z := by
    dsimp [Z]
    positivity
  have hZbound : |Z| ≤ (2 * (Real.sinh T - T)) * E := by
    rw [abs_of_nonneg hZnonneg]
    dsimp [Z]
    exact mul_le_mul_of_nonneg_left hPole (by norm_num)
  have hnorm : (∫ t : ℝ, ‖f t‖ ^ 2) = E := by
    apply integral_congr_ae
    filter_upwards [] with t
    simp only [Real.norm_eq_abs, sq_abs]
  have hsource : zetaOddPhysicalValue T f =
      gammaConstant 1 0 * E + G - P - Z := by
    unfold zetaOddPhysicalValue OddHighComplement.shiftedOddCoreEnergy
    rw [← realGammaEnergy_eq_native_zeta f, hnorm]
    ring
  rw [hsource]
  have hBudget := abs_signed_source_le (gammaConstant 1 0) E G P Z D
    (7 / 12 : ℝ) (2 * tailUpper 0 1)
    (primeMass T) (2 * (Real.sinh T - T))
    (physicalMass_nonneg f) hGammaNonneg hGammaBound hPrime hZbound
  calc
    _ ≤ (|gammaConstant 1 0| + 2 * tailUpper 0 1 +
          primeMass T + 2 * (Real.sinh T - T)) * E +
          (7 / 12 : ℝ) * D := by simpa using hBudget
    _ = _ := by dsimp [E, D]; ring

end GRWTSK.NumberTheory.WeilQuadraticForm.SignedArithmeticH1Budget
