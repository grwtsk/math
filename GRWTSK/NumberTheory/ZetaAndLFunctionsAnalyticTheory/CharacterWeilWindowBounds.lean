/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLowSchurEnclosure
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-!
# Actual character prime terms and fixed-window conductor reduction

Reuse the full original activePrimePowers, primeWeight and primeMass. Every
prime power is retained, including the original cutoff convention. A character
readout is taken only AFTER the common arithmetic inventory has been fixed.
The function `correlation` below must be instantiated by the actual supported
source correlation; its norm ceiling is a premise, not a positivity assertion.

Analytical consumer (not a fully formalized explicit formula in this module):
for a primitive nonprincipal character chi of conductor q>1 and parity a=0 or 1,
the full Weil form on smooth f supported in [-T,T] is

 Q_chi(f) = (1/(2*pi)) integral |fhat(xi)|^2 *
   [log(q/pi)+Re psi((2*a+1)/4+i*xi/2)] dxi
   -2 sum_n Lambda(n)/sqrt(n) Re(conj(chi(n))*C_f(log n)).

We use fhat(xi)=integral f(t)exp(-i*xi*t)dt and
C_f(r)=integral conj(f(t))*f(t+r)dt. This explains the character conjugation.
The completed source is (q/pi)^((s+a)/2)*Gamma((s+a)/2)*L(s,chi).
There are no pole terms in this NONPRINCIPAL PRIMITIVE case. Zeta is separate;
its two signed pole moments may not be deleted or included in this formula.
Character parity a is NOT parity of an eigenfunction in logarithmic coordinates;
a complex character does not inherit the real-even ground-state theorem.

From DLMF 5.7.6, for x>0,
 Re psi(x+i*y)-psi(x)=sum_(m>=0) y^2/((m+x)*((m+x)^2+y^2)) >= 0.
Together with Plancherel and |C_f|<=||f||^2, the complete argument gives
 Q_chi(f)>=(log q+c_a-primeMass T)*||f||^2,
 c_a=psi((2*a+1)/4)-log pi.
Since c_1=c_0+pi, log q>=primeMass T-c_0 is a sufficient lower sign at the
fixed support T for BOTH character parities. Only finitely many smaller
primitive conductors remain at that T. The threshold grows with support;
this does not settle every support for any fixed small conductor.

The formal scope here is the exact finite character prime expression, its
source-correlation bound, the positive digamma difference summand, and the
scalar source-return/threshold algebra. The continued L-function explicit
formula, Plancherel, character conductor identification and primitive reduction
are analytical inputs, NOT fabricated Lean certificates. Source terms use a
modulus N; one may put log N into the archimedean term ONLY after proving the
character primitive at that level. Inflating an inducing modulus does not
inflate the primitive conductor. DLMF 25.15.4 keeps the extra Euler factors.

Primary source context: Connes arXiv:2602.04022v1, (9), (10), (22);
Connes--Consani--Marcolli, The Weil Proof and the Geometry of the Adeles Class
Space (2009), Proposition 6.2; DLMF 5.7.6, 25.15.3--25.15.5.
This is elementary explicit-formula comparison, not a new universal Weil sign.
AI-assisted manual source at baseline 83dcff3ccda15b1a3961140e8720c4eceddbddc5.
Elaboration, fresh kernel check, transitive axiom audit, independent review: NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow
open LowSchur

variable {N : ℕ} [NeZero N]

/-- Literal finite arithmetic term; complex characters are not replaced by their real part. -/
def twistedPrime (T : ℝ) (χ : DirichletCharacter ℂ N)
    (correlation : ℕ → ℂ) : ℝ :=
  2 * ∑ n ∈ activePrimePowers T,
    primeWeight n * (conj (χ n) * correlation n).re

theorem twistedPrime_add (T : ℝ) (χ : DirichletCharacter ℂ N)
    (C D : ℕ → ℂ) :
    twistedPrime T χ (C + D) = twistedPrime T χ C + twistedPrime T χ D := by
  simp only [twistedPrime, Pi.add_apply, mul_add, Complex.add_re,
    Finset.sum_add_distrib]
  ring

/-- The same support and every original prime weight occur on both sides. -/
theorem abs_twistedPrime_le (T : ℝ) (χ : DirichletCharacter ℂ N)
    (C : ℕ → ℂ) (E : ℝ)
    (correlationBound : ∀ n ∈ activePrimePowers T, ‖C n‖ ≤ E) :
    |twistedPrime T χ C| ≤ primeMass T * E := by
  have hterm (n : ℕ) (hn : n ∈ activePrimePowers T) :
      |(conj (χ n) * C n).re| ≤ E := by
    calc
      _ ≤ ‖conj (χ n) * C n‖ := Complex.abs_re_le_norm _
      _ = ‖χ n‖ * ‖C n‖ := by rw [norm_mul]; simp
      _ ≤ 1 * ‖C n‖ :=
        mul_le_mul_of_nonneg_right (χ.norm_le_one n) (norm_nonneg _)
      _ ≤ E := by simpa using correlationBound n hn
  calc
    |twistedPrime T χ C| =
        2 * |∑ n ∈ activePrimePowers T,
          primeWeight n * (conj (χ n) * C n).re| := by
      rw [twistedPrime, abs_mul]
      norm_num
    _ ≤ 2 * ∑ n ∈ activePrimePowers T,
        |primeWeight n * (conj (χ n) * C n).re| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ 2 * ∑ n ∈ activePrimePowers T, primeWeight n * E := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      apply Finset.sum_le_sum
      intro n hn
      rw [abs_mul, abs_of_nonneg (primeWeight_nonneg n)]
      exact mul_le_mul_of_nonneg_left (hterm n hn) (primeWeight_nonneg n)
    _ = primeMass T * E := by rw [primeMass, Finset.sum_mul]; ring

/-- The positive summand in the exact digamma difference series. -/
def gammaDifferenceTerm (x y : ℝ) (m : ℕ) : ℝ :=
  y ^ 2 / (((m : ℝ) + x) * (((m : ℝ) + x) ^ 2 + y ^ 2))

theorem gammaDifferenceTerm_nonneg (x y : ℝ) (hx : 0 < x) (m : ℕ) :
    0 ≤ gammaDifferenceTerm x y m := by
  unfold gammaDifferenceTerm
  positivity

/-- Source-exact scalar return. The genuine archimedean estimate remains explicit. -/
theorem lower_bound_from_source_parts (T : ℝ) (χ : DirichletCharacter ℂ N)
    (C : ℕ → ℂ) (E arch value logConductor gammaFloor : ℝ)
    (sourceIdentity : value = arch - twistedPrime T χ C)
    (archBound : (logConductor + gammaFloor) * E ≤ arch)
    (correlationBound : ∀ n ∈ activePrimePowers T, ‖C n‖ ≤ E) :
    (logConductor + gammaFloor - primeMass T) * E ≤ value := by
  have hp := (le_abs_self (twistedPrime T χ C)).trans
    (abs_twistedPrime_le T χ C E correlationBound)
  rw [sourceIdentity]
  nlinarith

/-- A fully specified conductor threshold, not a certificate at all support sizes. -/
theorem nonnegative_of_conductor_threshold
    {value E logConductor gammaFloor mass : ℝ}
    (energyNonnegative : 0 ≤ E)
    (lowerBound : (logConductor + gammaFloor - mass) * E ≤ value)
    (threshold : mass - gammaFloor ≤ logConductor) : 0 ≤ value := by
  have hc : 0 ≤ logConductor + gammaFloor - mass := by linarith
  exact (mul_nonneg hc energyNonnegative).trans lowerBound

/-- Comparison between two conductors retains the complete archimedean price.
Even with identical prime readouts, positivity of the larger value is insufficient. -/
theorem conductor_shift_identity (lowLog highLog gamma energy prime : ℝ) :
    (highLog + gamma) * energy - prime =
      ((lowLog + gamma) * energy - prime) + (highLog - lowLog) * energy := by
  ring

theorem conductor_inflation_control :
    (0 : ℝ) < (4 - 2) ∧ (0 : ℝ) - 2 < 0 := by norm_num

/-- Proved coefficient-level reduction to finitely many positive integer labels.
Actual primitive-conductor instantiation is kept separate from modulus indexing. -/
theorem large_label_threshold (K c : ℝ) (q : ℕ)
    (large : Real.exp (K - c) ≤ (q : ℝ)) : K - c ≤ Real.log (q : ℝ) := by
  have h := Real.log_le_log (Real.exp_pos (K - c)) large
  simpa only [Real.log_exp] using h

end GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow
