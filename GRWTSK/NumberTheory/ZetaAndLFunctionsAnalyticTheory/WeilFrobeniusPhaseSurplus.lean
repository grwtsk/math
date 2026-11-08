/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCharacterSensitivePrimeFloor
import Mathlib.Tactic

/-!
# Exact Weil prime-phase surplus and sharper conjugate-pair cancellation

Current source inspected at grwtsk/math@fe3fd586707c81fdd693a076c4971bea6fbe51e8.
Use the actual FullFrobeniusWindowReturn, CharacterSensitiveFrobeniusFloor,
OddRootProjection.pairedPrimeResponse/pairedPrimeMass and the original
ConductorFrontier.primitiveArithmeticValue / DirichletStageChain.PrimitiveStageLower.
Pinned mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

For E=SourcePrimeCorrelation.energy f and the ORIGINAL whole-line complex
C_f(r)=integral conj(f(t))*f(t+r), define for every original q
  d_chi(q,f)=2*(norm(chi q)*E-Re(conj(chi q)*C_f(log q))).
Cauchy-Schwarz proves d_chi(q,f)>=0 whenever f is L2. The whole original
strict-cutoff integer inventory is retained. The source-exact identity is
  primitiveArithmeticValue =
    (gammaConstant - characterPrimeMass)*E
    + original nonnegative gamma jump integral
    + sum_{q in activePrimePowers T} primeWeight(q)*d_chi(q,f).
There is NO a-priori positive lower bound on the last two components
uniformly in the window T. At unramified q, d_chi is analytically the
norm-square of the phase-magnetic translated difference; at ramified q
the native Dirichlet symbol is zero and d_chi vanishes. No such
integral-square identification is made a new Lean theorem in this file.

Independently, the ACTUAL conjugate-paired source has the smaller
OddRootProjection.pairedPrimeMass =
  2*sum_{q in activePrimePowers T} |pairedPrimeWeight chi q|
  = 2*sum primeWeight(q)*abs(Re(chi q)).
It is bounded above by the full characterPrimeMass. The exact paired
surplus d_pair(q)=2*(abs(pairedPrimeWeight q)*E -
                      pairedPrimeWeight q*Re(C_f(log q))) is nonnegative
and reconstructs the original pairedPrimeResponse exactly.

For a REAL original test f, the native whole-line autocorrelation has
zero imaginary part, so the original SINGLE-character twistedPrime
equals its conjugate-paired readout on that test. This gives a genuinely
STRONGER bound on the ORIGINAL primitive arithmetic value for the
real odd admissible sector, and the sufficient individual
DirichletStageChain.PrimitiveStageLower condition
  pairedPrimeMass chi (j+1)
    <= gammaConstant N (gammaParity chi) + (1/2)^j.
This is still only a sufficient single-stage hypothesis. The finite
character-sensitive mass grows with window T; no all-stage supplier or
global Dirichlet GRH proof follows.

CRUCIAL NONCOERCIBILITY: paired phase cancellation cannot be transferred
to a generic complex test. For chi(q)=i and C(q)=i*E, the UNPAIRED
Re(conj(chi(q))*C(q)) equals E whereas the paired real-part response
is zero. The proof records this scalar hostile example.

Mathematical sources are classical finite group Fourier/projector
identities and L2 Cauchy-Schwarz. Arithmetic explicit-formula
normalization: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20); primitive conjugate-pair source:
Fiorilli--Miller (2012), equation (2.2) as recorded in OddRootProjection.
Source comparison: the prior absolute character-mass bound DROPPED the
nonnegative surplus; the new identity retains it without replacing
the gamma factor, conductor, signed source, zeta pole or test domain.
The complex versus real/paired boundary has an explicit counterexample.
An exact finite witness for strict sharpening is the quartic character
modulo 5, with chi(2)=i and chi(4)=-1. At T=1, the paired
prime mass is log 2 = 0.693147..., whereas the individual mass
is approximately 4.412943; this is a symbolic finite-character
illustration, NOT a passing GRH certificate or a source bound.
Mathematics is conventional, not a novelty claim.

Lean, fresh kernel, axiom audit, independent analytic review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FrobeniusPhaseSurplus

open LowSchur CharacterWindow SourcePrimeCorrelation OddRootProjection
open FullFrobeniusWindowReturn CharacterSensitiveFrobeniusFloor
open DirichletStageChain

variable {N : ℕ} [NeZero N]

/-- The precise nonnegative excess between maximal character correlation
and the actual signed source at one original integer q. -/
def individualPhaseDefect
    (chi : DirichletCharacter ℂ N) (q : ℕ)
    (E : ℝ) (C : ℂ) : ℝ :=
  2 * (‖chi q‖ * E - (conj (chi q) * C).re)

theorem individualPhaseDefect_nonneg
    (chi : DirichletCharacter ℂ N) (q : ℕ)
    (E : ℝ) (C : ℂ) (hC : ‖C‖ ≤ E) :
    0 ≤ individualPhaseDefect chi q E C := by
  have hreal :
      (conj (chi q) * C).re ≤ ‖chi q‖ * E := by
    calc
      (conj (chi q) * C).re ≤ |(conj (chi q) * C).re| :=
        le_abs_self _
      _ ≤ ‖conj (chi q) * C‖ := Complex.abs_re_le_norm _
      _ = ‖chi q‖ * ‖C‖ := by rw [norm_mul]; simp
      _ ≤ ‖chi q‖ * E :=
        mul_le_mul_of_nonneg_left hC (norm_nonneg _)
  unfold individualPhaseDefect
  linarith

/-- A finite nonnegative surplus on the exact native integer inventory:
no selected prime/exponent list or independent new weights. -/
def individualPhaseSurplus
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (C : ℕ → ℂ) (E : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T,
    primeWeight q * individualPhaseDefect chi q E (C q)

theorem individualPhaseSurplus_nonneg
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (C : ℕ → ℂ) (E : ℝ)
    (hC : ∀ q ∈ activePrimePowers T, ‖C q‖ ≤ E) :
    0 ≤ individualPhaseSurplus chi T C E := by
  unfold individualPhaseSurplus
  apply Finset.sum_nonneg
  intro q hq
  exact mul_nonneg (primeWeight_nonneg q)
    (individualPhaseDefect_nonneg chi q E (C q) (hC q hq))

/-- The precise full signed prime source equals absolute character mass
minus the POSITIVE phase surplus. This is an identity, not a bound. -/
theorem twistedPrime_add_individualPhaseSurplus
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (C : ℕ → ℂ) (E : ℝ) :
    twistedPrime T chi C + individualPhaseSurplus chi T C E =
      characterPrimeMass chi T * E := by
  unfold twistedPrime individualPhaseSurplus
    individualPhaseDefect characterPrimeMass
  calc
    2 * (∑ q ∈ activePrimePowers T,
      primeWeight q * (conj (chi q) * C q).re) +
      (∑ q ∈ activePrimePowers T,
        primeWeight q *
          (2 * (‖chi q‖ * E - (conj (chi q) * C q).re))) =
        2 * (∑ q ∈ activePrimePowers T,
          primeWeight q * (‖chi q‖ * E)) := by
          have hterm (q : ℕ) :
              primeWeight q *
                (2 * (‖chi q‖ * E - (conj (chi q) * C q).re)) =
                2 * (primeWeight q *
                  (‖chi q‖ * E - (conj (chi q) * C q).re)) := by ring
          simp_rw [hterm]
          rw [← Finset.mul_sum, ← mul_add]
          congr 1
          rw [← Finset.sum_add_distrib]
          apply Finset.sum_congr rfl
          intro q hq
          ring
    _ = (2 * ∑ q ∈ activePrimePowers T,
        primeWeight q * ‖chi q‖) * E := by
          simp_rw [← mul_assoc]
          rw [← Finset.sum_mul]
          ring

/-- The full projector exactly returns the SAME native prime response,
so the positive surplus is retained without inventing a heat sign. -/
theorem fullProjectedWindow_add_individualPhaseSurplus
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (C : ℕ → ℂ) (E : ℝ) :
    fullProjectedWindow N chi T C + individualPhaseSurplus chi T C E =
      characterPrimeMass chi T * E := by
  rw [fullProjectedWindow_eq_twistedPrime]
  exact twistedPrime_add_individualPhaseSurplus chi T C E

/-- The source-exact signed primitive arithmetic Weil form, with its
FULL gamma/conductor/parity input and retained nonnegative surplus. -/
theorem primitiveArithmeticValue_exact_phaseSurplus
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) :
    primitiveArithmeticValue chi hprimitive hnonprincipal T f =
      (gammaConstant N (gammaParity chi) - characterPrimeMass chi T) *
        energy f +
      (∫ r in Set.Ioi (0 : ℝ),
        gammaCorrectionDensity (gammaParity chi) f r) +
      individualPhaseSurplus chi T
        (fun q => correlation f (Real.log (q : ℝ))) (energy f) := by
  have h := twistedPrime_add_individualPhaseSurplus chi T
    (fun q => correlation f (Real.log (q : ℝ))) (energy f)
  unfold primitiveArithmeticValue
  nlinarith

theorem projectedPrimitiveArithmeticValue_exact_phaseSurplus
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) :
    projectedPrimitiveArithmeticValue N chi hprimitive hnonprincipal T f =
      (gammaConstant N (gammaParity chi) - characterPrimeMass chi T) *
        energy f +
      (∫ r in Set.Ioi (0 : ℝ),
        gammaCorrectionDensity (gammaParity chi) f r) +
      individualPhaseSurplus chi T
        (fun q => correlation f (Real.log (q : ℝ))) (energy f) := by
  rw [projectedPrimitiveArithmeticValue_eq_source]
  exact primitiveArithmeticValue_exact_phaseSurplus chi
    hprimitive hnonprincipal T f

theorem individualPhaseSurplus_source_nonneg
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    0 ≤ individualPhaseSurplus chi T
      (fun q => correlation f (Real.log (q : ℝ))) (energy f) := by
  apply individualPhaseSurplus_nonneg
  intro q hq
  exact norm_correlation_le_energy hf (Real.log (q : ℝ))

/-- The ORIGINAL paired source already defines its own smaller
signed real-part mass; do not replace it by a new target. -/
theorem pairedPrimeMass_le_characterPrimeMass
    (chi : DirichletCharacter ℂ N) (T : ℝ) :
    pairedPrimeMass chi T ≤ characterPrimeMass chi T := by
  unfold pairedPrimeMass characterPrimeMass
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  apply Finset.sum_le_sum
  intro q hq
  unfold pairedPrimeWeight
  rw [abs_mul, abs_of_nonneg (primeWeight_nonneg q)]
  exact mul_le_mul_of_nonneg_left
    (Complex.abs_re_le_norm (chi q)) (primeWeight_nonneg q)

/-- The exact paired response only involves Re(chi)*Re(C), so its
absolute price is the original pairedPrimeMass, not the larger
individual complex-character mass. -/
theorem abs_pairedPrimeResponse_le_pairedPrimeMass
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (C : ℕ → ℂ) (E : ℝ)
    (hC : ∀ q ∈ activePrimePowers T, ‖C q‖ ≤ E) :
    |pairedPrimeResponse chi T C| ≤ pairedPrimeMass chi T * E := by
  have hterm (q : ℕ) (hq : q ∈ activePrimePowers T) :
      |pairedPrimeWeight chi q * (C q).re| ≤
        |pairedPrimeWeight chi q| * E := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left
      ((Complex.abs_re_le_norm (C q)).trans (hC q hq))
      (abs_nonneg _)
  rw [pairedPrimeResponse_native]
  calc
    |2 * ∑ q ∈ activePrimePowers T,
      pairedPrimeWeight chi q * (C q).re| =
        2 * |∑ q ∈ activePrimePowers T,
          pairedPrimeWeight chi q * (C q).re| := by
            rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
    _ ≤ 2 * ∑ q ∈ activePrimePowers T,
        |pairedPrimeWeight chi q * (C q).re| :=
          mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ 2 * ∑ q ∈ activePrimePowers T,
        |pairedPrimeWeight chi q| * E := by
          apply mul_le_mul_of_nonneg_left _ (by norm_num)
          exact Finset.sum_le_sum (fun q hq => hterm q hq)
    _ = pairedPrimeMass chi T * E := by
          unfold pairedPrimeMass
          rw [← Finset.sum_mul]
          ring

def pairedPhaseDefect
    (chi : DirichletCharacter ℂ N) (q : ℕ)
    (E : ℝ) (C : ℂ) : ℝ :=
  2 * (|pairedPrimeWeight chi q| * E -
    pairedPrimeWeight chi q * C.re)

theorem pairedPhaseDefect_nonneg
    (chi : DirichletCharacter ℂ N) (q : ℕ)
    (E : ℝ) (C : ℂ) (hC : ‖C‖ ≤ E) :
    0 ≤ pairedPhaseDefect chi q E C := by
  have hh :
      pairedPrimeWeight chi q * C.re ≤
        |pairedPrimeWeight chi q| * E := by
    calc
      _ ≤ |pairedPrimeWeight chi q * C.re| := le_abs_self _
      _ = |pairedPrimeWeight chi q| * |C.re| := by rw [abs_mul]
      _ ≤ |pairedPrimeWeight chi q| * E :=
        mul_le_mul_of_nonneg_left
          ((Complex.abs_re_le_norm C).trans hC) (abs_nonneg _)
  unfold pairedPhaseDefect
  linarith

def pairedPhaseSurplus
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (C : ℕ → ℂ) (E : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T, pairedPhaseDefect chi q E (C q)

theorem pairedPhaseSurplus_nonneg
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (C : ℕ → ℂ) (E : ℝ)
    (hC : ∀ q ∈ activePrimePowers T, ‖C q‖ ≤ E) :
    0 ≤ pairedPhaseSurplus chi T C E := by
  unfold pairedPhaseSurplus
  exact Finset.sum_nonneg
    (fun q hq => pairedPhaseDefect_nonneg chi q E (C q) (hC q hq))

theorem pairedPrimeResponse_add_phaseSurplus
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (C : ℕ → ℂ) (E : ℝ) :
    pairedPrimeResponse chi T C +
      pairedPhaseSurplus chi T C E = pairedPrimeMass chi T * E := by
  rw [pairedPrimeResponse_native]
  unfold pairedPhaseSurplus pairedPhaseDefect pairedPrimeMass
  calc
    2 * (∑ q ∈ activePrimePowers T,
        pairedPrimeWeight chi q * (C q).re) +
      (∑ q ∈ activePrimePowers T,
        2 * (|pairedPrimeWeight chi q| * E -
          pairedPrimeWeight chi q * (C q).re)) =
      2 * ∑ q ∈ activePrimePowers T,
        |pairedPrimeWeight chi q| * E := by
          rw [← Finset.mul_sum, ← mul_add]
          congr 1
          rw [← Finset.sum_add_distrib]
          apply Finset.sum_congr rfl
          intro q hq
          ring
    _ = (2 * ∑ q ∈ activePrimePowers T,
        |pairedPrimeWeight chi q|) * E := by
          rw [← Finset.sum_mul]
          ring

theorem pairedProjectedWindow_add_phaseSurplus
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (C : ℕ → ℂ) (E : ℝ) :
    pairedProjectedWindow N chi T C +
      pairedPhaseSurplus chi T C E = pairedPrimeMass chi T * E := by
  rw [pairedProjectedWindow_eq_source]
  exact pairedPrimeResponse_add_phaseSurplus chi T C E

/-- A literal complex and original real correlation cannot be
interchanged silently. This bridge requires reality of each C q. -/
theorem twistedPrime_eq_paired_of_realCorrelation
    (chi : DirichletCharacter ℂ N) (T : ℝ) (C : ℕ → ℂ)
    (hreal : ∀ q ∈ activePrimePowers T, (C q).im = 0) :
    twistedPrime T chi C = pairedPrimeResponse chi T C := by
  rw [pairedPrimeResponse_native]
  unfold twistedPrime
  congr 1
  apply Finset.sum_congr rfl
  intro q hq
  have hpart :
      (conj (chi q) * C q).re =
        (chi q).re * (C q).re := by
    simp [Complex.mul_re, hreal q hq]
  rw [hpart]
  unfold pairedPrimeWeight
  ring

/-- The ORIGINAL whole-line autocorrelation of a REAL test (included
complex-linearly) is real, for all shifts, with its original measure. -/
theorem liftReal_correlation_im_zero
    (f : ℝ → ℝ) (r : ℝ)
    (hf : MemLp (liftReal f) 2 volume) :
    (correlation (liftReal f) r).im = 0 := by
  have hi := integrable_correlation_integrand hf r
  unfold correlation
  rw [← integral_im hi]
  simp [liftReal, Complex.mul_im]

/-- Improved bound on the ORIGINAL individual chi source, but only
for source correlations with zero imaginary part. -/
theorem abs_twistedPrime_le_pairedMass_of_realCorrelation
    (chi : DirichletCharacter ℂ N) (T : ℝ) (C : ℕ → ℂ)
    (E : ℝ)
    (hC : ∀ q ∈ activePrimePowers T, ‖C q‖ ≤ E)
    (hreal : ∀ q ∈ activePrimePowers T, (C q).im = 0) :
    |twistedPrime T chi C| ≤ pairedPrimeMass chi T * E := by
  rw [twistedPrime_eq_paired_of_realCorrelation chi T C hreal]
  exact abs_pairedPrimeResponse_le_pairedPrimeMass chi T C E hC

/-- The stronger paired mass controls a native SINGLE-character
prime response for each REAL original test, not for arbitrary C-valued
test functions. -/
theorem abs_twistedPrime_liftReal_le_pairedMass
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (f : ℝ → ℝ) (hf : MemLp (liftReal f) 2 volume) :
    |twistedPrime T chi
      (fun q => correlation (liftReal f) (Real.log (q : ℝ)))| ≤
        pairedPrimeMass chi T * energy (liftReal f) := by
  apply abs_twistedPrime_le_pairedMass_of_realCorrelation
  · intro q hq
    exact norm_correlation_le_energy hf (Real.log (q : ℝ))
  · intro q hq
    exact liftReal_correlation_im_zero f (Real.log (q : ℝ)) hf

/-- Stronger ACTUAL primitive Dirichlet arithmetic lower bound on
the REAL test class. No new Weil form and no replacement of the
original conductor, gamma, oddness or support hypotheses. -/
theorem primitiveArithmeticValue_ge_pairedMass_on_real
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℝ)
    (hf : MemLp (liftReal f) 2 volume)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) (liftReal f)) (Set.Ioi 0)) :
    (gammaConstant N (gammaParity chi) - pairedPrimeMass chi T) *
      energy (liftReal f) ≤
      primitiveArithmeticValue chi hprimitive hnonprincipal T (liftReal f) := by
  have hprime := (le_abs_self _).trans
    (abs_twistedPrime_liftReal_le_pairedMass chi T f hf)
  have hgamma := gammaShiftIntegral_nonneg
    (gammaParity chi) (liftReal f) harch
  unfold primitiveArithmeticValue
  nlinarith

/-- A strictly stronger SUFFICIENT condition for one original
primitive stage, when the character has non-real phases. It remains
a separately required inequality, not a theorem about all j. -/
theorem primitiveStageLower_of_pairedMass
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (j : ℕ)
    (hmargin : pairedPrimeMass chi ((j : ℝ) + 1) ≤
      gammaConstant N (gammaParity chi) + (1 / 2 : ℝ) ^ j) :
    PrimitiveStageLower chi hprimitive hnonprincipal j := by
  intro f hf
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hE : 0 ≤ energy (liftReal f) :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hcoeff :
      -((1 / 2 : ℝ) ^ j) ≤
        gammaConstant N (gammaParity chi) -
          pairedPrimeMass chi ((j : ℝ) + 1) := by linarith
  exact (mul_le_mul_of_nonneg_right hcoeff hE).trans
    (primitiveArithmeticValue_ge_pairedMass_on_real chi
      hprimitive hnonprincipal ((j : ℝ) + 1) f hLp harch)

/-- Hostile complex observation: pairing loses the imaginary
character readout that an individual complex source can detect. -/
theorem imaginary_character_unpaired_obstruction :
    (conj (Complex.I) * Complex.I).re = 1 ∧
      Complex.I.re = 0 := by
  norm_num [Complex.mul_re]

end GRWTSK.NumberTheory.WeilQuadraticForm.FrobeniusPhaseSurplus
