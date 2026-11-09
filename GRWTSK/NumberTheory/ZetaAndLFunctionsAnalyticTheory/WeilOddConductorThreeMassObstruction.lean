/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPhysicalHalfCorrelation
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Tactic

/-!
# A source-exact obstruction to the modulus-three scalar margin

Primary consumer (not a newly named GRH predicate):
  DirichletStageChain.SmallConductorStages chi hprimitive hnonprincipal
  and the original PrimitiveStageLower chi hprimitive hnonprincipal j.
Source inspected at grwtsk/math@006c1842b9015e0f76169f7b55356d5dc87bda9b.
Exact upstream objects:
  OddRootProjection.gammaConstant / gammaParity;
  CharacterSensitiveFrobeniusFloor.characterPrimeMass;
  WeilCompactSupportUpperBand.upperBandWeight;
  OddRootProjection.pairedPrimeMass/pairedPrimeResponse;
  FrobeniusPhaseSurplus.pairedPhaseSurplus;
  ConductorFrontier.primitiveArithmeticValue;
  SourcePrimeCorrelation.correlation/energy;
  DirichletStageChain.Admissible/PrimitiveStageLower.
Pinned Mathlib@d13f23b723b8a846827a245b89c10fc7d3f11612,
Lean 4.34.1.

## Exact mathematical obstruction, no RH assumption

The original odd-parity gamma constant at conductor 3 equals
  c_(3,1) = log 3 - log pi - EulerGamma + pi/2 - 3 log 2.
Using pi>3, pi<3.15, EulerGamma>1/2 and log 2>0.693
gives the rigorous coarse bound c_(3,1)<-1. This is stronger
than numerical c_(3,1)=-1.13197847696....

For ANY native DirichletCharacter chi modulo 3 with gammaParity chi=1,
and for EVERY j, the previous sufficient upper-band inequality
  characterPrimeMass chi (j+1) <=
    gammaConstant 3 1 + upperBandWeight chi (j+1) + (1/2)^j
is mathematically FALSE: M-H>=0 by the previously proved
2 H<=M and H>=0, whereas c_(3,1)+(1/2)^j<0.
Likewise the paired-only sufficient inequality
  pairedPrimeMass chi (j+1) <= c_(3,1)+(1/2)^j
is false because pairedPrimeMass>=0.
These are genuine obstructions of the SUFFICIENT ESTIMATE, not
negative tests for the original Weil source. The nonprincipal
primitive odd mod-3 Dirichlet character is a standard example,
but its explicit construction is NOT a new Lean declaration here.

The original conductorFrontier 1=3^22>3 makes the initial
small-conductor stage an actual required branch for primitive
modulus-3 characters, not an optional finite test.

## Required alternative: real-test gamma + positive paired surplus

On the original REAL source test f, the actual complex autocorrelation
C_f(log q) is real by the existing liftReal_correlation_im_zero.
Thus twistedPrime chi C_f = pairedPrimeResponse chi C_f.
The PREVIOUS exact source identity
  pairedPrimeResponse + pairedPhaseSurplus = pairedPrimeMass * E
therefore yields a new exact reassembly of the SAME unmodified
primitiveArithmeticValue:
  Q_chi,T(liftReal f) =
    (gammaConstant - pairedPrimeMass)*E
    + original gamma correction integral
    + pairedPhaseSurplus chi T C_f E.

If PrimitiveStageLower holds, the gamma integral PLUS this
nonnegative paired-phase surplus must satisfy the explicit
quantified compensation lower bound
  Gamma(f)+S_pair(f) >=
    (pairedPrimeMass - gammaConstant - 2^(-j))*E.
In the odd conductor-3 sector this coefficient is strictly positive
even if the prime mass vanishes. This identifies the real missing
analytic estimate: a lower bound on physical gamma/phase coupling
uniformly across the complete original admissible class. No such
universal bound is supplied here; the previous false scalar route is
NOT used to claim RH or Dirichlet GRH.

Source comparison is elementary Gamma special-value arithmetic and
finite nonnegative sum inequalities. Hostile check: gamma3_odd
≈-1.13197847697; at j=1 the scalar RHS is negative even with no
prime penalty. The implication "stage lower ⇒ required compensation"
is conditional on the ORIGINAL stage predicate and not a proof of
that predicate. No spectral transfer, pole deletion, zeta RH,
Dirichlet GRH or nonconstant null geodesic is asserted.

Analytical formula attribution: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1, (3.19)--(3.20);
individual and paired Dirichlet source as compared with
Fiorilli--Miller (2012), equation (2.2), in OddRootProjection.
No mathematical novelty is claimed for Gamma inequalities,
character pairing or finite-sum identities.

Lean source candidates only: elaboration, kernel replay, transitive
axiom audit and independent analytical review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddConductorThreeObstruction

open OddRootProjection SourcePrimeCorrelation LowSchur CharacterWindow
open CharacterSensitiveFrobeniusFloor WeilCompactSupportUpperBand
open FrobeniusPhaseSurplus DirichletStageChain

/-- At conductor 3 the REAL original odd gamma source constant
is strictly smaller than -1, using actual DLMF digamma constants
and coarse certified Mathlib bounds rather than floating point. -/
theorem gammaConstant_three_odd_lt_neg_one :
    gammaConstant 3 1 < -(1 : ℝ) := by
  have hlog : Real.log (3 : ℝ) ≤ Real.log Real.pi :=
    Real.log_le_log (by norm_num) Real.pi_gt_three.le
  have hpi : Real.pi < (63 / 20 : ℝ) := by
    linarith [Real.pi_lt_d2]
  have htwo : (693 / 1000 : ℝ) < Real.log 2 := by
    linarith [Real.log_two_gt_d9]
  have hEuler : (1 / 2 : ℝ) < Real.eulerMascheroniConstant :=
    Real.one_half_lt_eulerMascheroniConstant
  have hgamma :
      gammaConstant 3 1 =
        Real.log 3 - Real.log Real.pi -
          Real.eulerMascheroniConstant + Real.pi / 2 -
          3 * Real.log 2 := by
    rw [gammaConstant_odd_eq_even_add_pi,
      gammaConstant_even_eq_log_add 3 (by norm_num),
      gammaConstant_one_zero_eq]
    ring
  rw [hgamma]
  linarith

/-- The upper-band credit can never exceed the original total
character mass. This is a genuine nonnegative quantity on the
original strict finite-integer support. -/
theorem characterMass_minus_upperBand_nonneg
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N) (T : ℝ) :
    0 ≤ characterPrimeMass chi T - upperBandWeight chi T := by
  have hh := upperBandWeight_nonneg chi T
  have hbound := two_mul_upperBandWeight_le_characterPrimeMass chi T
  linarith

/-- The earlier character-mass upper-band SUFFICIENT margin is
IMPOSSIBLE at every stage in a native odd conductor-three sector.
This refutes the scalar condition, NOT PrimitiveStageLower itself. -/
theorem odd_three_upperBand_margin_impossible
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1) (j : ℕ) :
    ¬ (characterPrimeMass chi ((j : ℝ) + 1) ≤
      gammaConstant 3 (gammaParity chi) +
        upperBandWeight chi ((j : ℝ) + 1) + (1 / 2 : ℝ) ^ j) := by
  intro hmargin
  have hmass :=
    characterMass_minus_upperBand_nonneg chi ((j : ℝ) + 1)
  have hpow : (1 / 2 : ℝ) ^ j ≤ 1 :=
    pow_le_one₀ (by norm_num) (by norm_num)
  have hgamma := gammaConstant_three_odd_lt_neg_one
  rw [hodd] at hmargin
  linarith

/-- The conjugate-paired real-source absolute-mass route ALSO fails
in the same odd conductor-three sector, even if there are no primes. -/
theorem odd_three_paired_mass_margin_impossible
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1) (j : ℕ) :
    ¬ (pairedPrimeMass chi ((j : ℝ) + 1) ≤
      gammaConstant 3 (gammaParity chi) + (1 / 2 : ℝ) ^ j) := by
  intro hmargin
  have hmass : 0 ≤ pairedPrimeMass chi ((j : ℝ) + 1) := by
    unfold pairedPrimeMass
    exact mul_nonneg (by norm_num)
      (Finset.sum_nonneg (fun _ _ => abs_nonneg _))
  have hpow : (1 / 2 : ℝ) ^ j ≤ 1 :=
    pow_le_one₀ (by norm_num) (by norm_num)
  have hgamma := gammaConstant_three_odd_lt_neg_one
  rw [hodd] at hmargin
  linarith

/-- At j=0 the fixed original conductor frontier is 3^22,
so conductor 3 belongs to the REQUIRED small-conductor branch. -/
theorem conductor_three_initial_stage_is_small :
    3 < conductorFrontier 1 := by
  norm_num [conductorFrontier, conductorExponent]

/-- This is the ORIGINAL SmallConductorStages consumer, not a
replacement target: its initial stage must be included in any
proof of the all-stage primitive Dirichlet branch. -/
theorem original_small_conductor_chain_requires_stage_zero
    (chi : DirichletCharacter ℂ 3)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (hchain : SmallConductorStages chi hprimitive hnonprincipal) :
    PrimitiveStageLower chi hprimitive hnonprincipal 0 := by
  apply hchain 0
  have hc : chi.conductor = 3 := hprimitive
  simpa [hc] using conductor_three_initial_stage_is_small

/-- A SOURCE-EXACT identity for the existing primitive arithmetic
quadratic form on the genuine real-test class. No averaging of an
unpaired complex test takes place: reality of the physical correlation
is proved from the original L2 integral. -/
theorem primitive_real_paired_phaseSurplus_identity
    {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℝ)
    (hf : MemLp (liftReal f) 2 volume) :
    primitiveArithmeticValue chi hprimitive hnonprincipal T (liftReal f) =
      (gammaConstant N (gammaParity chi) -
        pairedPrimeMass chi T) * energy (liftReal f) +
      (∫ r in Set.Ioi (0 : ℝ),
        gammaCorrectionDensity (gammaParity chi) (liftReal f) r) +
      pairedPhaseSurplus chi T
        (fun q => correlation (liftReal f) (Real.log (q : ℝ)))
        (energy (liftReal f)) := by
  let C : ℕ → ℂ := fun q =>
    correlation (liftReal f) (Real.log (q : ℝ))
  have hreal : ∀ q ∈ activePrimePowers T, (C q).im = 0 := by
    intro q hq
    exact liftReal_correlation_im_zero f (Real.log (q : ℝ)) hf
  have hsource : twistedPrime T chi C =
      pairedPrimeResponse chi T C :=
    twistedPrime_eq_paired_of_realCorrelation chi T C hreal
  have hsurplus :
      pairedPrimeResponse chi T C +
        pairedPhaseSurplus chi T C (energy (liftReal f)) =
          pairedPrimeMass chi T * energy (liftReal f) :=
    pairedPrimeResponse_add_phaseSurplus chi T C (energy (liftReal f))
  have hreturn :
      pairedPrimeResponse chi T C =
        pairedPrimeMass chi T * energy (liftReal f) -
          pairedPhaseSurplus chi T C (energy (liftReal f)) := by
    linarith
  unfold primitiveArithmeticValue
  change gammaConstant N (gammaParity chi) * energy (liftReal f) +
    (∫ r in Set.Ioi (0 : ℝ),
      gammaCorrectionDensity (gammaParity chi) (liftReal f) r) -
    twistedPrime T chi C = _
  rw [hsource, hreturn]
  ring

/-- The EXACT required compensation for any ORIGINAL single-stage
PrimitiveStageLower. It is a NECESSARY consequence, not an assertion
that all stages or the spectral sign have been proved. -/
theorem paired_compensation_necessary_of_primitiveStage
    {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (j : ℕ)
    (hstage : PrimitiveStageLower chi hprimitive hnonprincipal j)
    (f : ℝ → ℝ) (hf : Admissible chi ((j : ℝ) + 1) f) :
    (pairedPrimeMass chi ((j : ℝ) + 1) -
      gammaConstant N (gammaParity chi) - (1 / 2 : ℝ) ^ j) *
        energy (liftReal f) ≤
      (∫ r in Set.Ioi (0 : ℝ),
        gammaCorrectionDensity (gammaParity chi) (liftReal f) r) +
      pairedPhaseSurplus chi ((j : ℝ) + 1)
        (fun q => correlation (liftReal f) (Real.log (q : ℝ)))
        (energy (liftReal f)) := by
  have hstagef := hstage f hf
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hsource :=
    primitive_real_paired_phaseSurplus_identity chi hprimitive
      hnonprincipal ((j : ℝ) + 1) f hLp
  rw [hsource] at hstagef
  nlinarith

/-- At the actual first required stage of an odd primitive modulus-three
sector, the gamma+phase surplus must be STRICTLY positive on each
nonzero-energy test. This is conditional on the ORIGINAL stage lower
and therefore does not prove it or GRH. -/
theorem odd_three_stage_zero_requires_positive_compensation
    (chi : DirichletCharacter ℂ 3)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (hodd : gammaParity chi = 1)
    (hstage : PrimitiveStageLower chi hprimitive hnonprincipal 0)
    (f : ℝ → ℝ) (hf : Admissible chi 1 f)
    (hE : 0 < energy (liftReal f)) :
    0 <
      (∫ r in Set.Ioi (0 : ℝ),
        gammaCorrectionDensity (gammaParity chi) (liftReal f) r) +
      pairedPhaseSurplus chi 1
        (fun q => correlation (liftReal f) (Real.log (q : ℝ)))
        (energy (liftReal f)) := by
  have hf' : Admissible chi ((0 : ℝ) + 1) f := by
    simpa only [zero_add] using hf
  have hcomp :=
    paired_compensation_necessary_of_primitiveStage chi
      hprimitive hnonprincipal 0 hstage f (by simpa using hf')
  have hmass : 0 ≤ pairedPrimeMass chi 1 := by
    unfold pairedPrimeMass
    exact mul_nonneg (by norm_num)
      (Finset.sum_nonneg (fun _ _ => abs_nonneg _))
  have hgamma := gammaConstant_three_odd_lt_neg_one
  have hcoeff : 0 < pairedPrimeMass chi 1 -
      gammaConstant 3 (gammaParity chi) - (1 / 2 : ℝ) ^ 0 := by
    rw [hodd]
    norm_num
    linarith
  have hpositive :
      0 < (pairedPrimeMass chi 1 -
        gammaConstant 3 (gammaParity chi) - (1 / 2 : ℝ) ^ 0) *
          energy (liftReal f) :=
    mul_pos hcoeff hE
  simpa only [Nat.cast_zero, zero_add, pow_zero] using
    lt_of_lt_of_le hpositive (by simpa using hcomp)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddConductorThreeObstruction
