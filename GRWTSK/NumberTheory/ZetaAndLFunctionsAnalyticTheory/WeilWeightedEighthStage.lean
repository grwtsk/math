/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedFirstStage

/-!
# Source-bound eighth weighted stage

This module formalizes the scalar/source assembly of the next theta-weighted
stage.  The actual n=2 prime term is retained exactly and only the residual
prime response is bounded separately.  The zeta pole remains negative; the
primitive nonprincipal paired source has no zeta pole.

The rational endpoints below are copied from the supplied directed-integer
certificate for the 1/8 round.  They are finite arithmetic data only.  The
continuum statements connecting those endpoints to the actual theta band and
translation suprema remain EXPLICIT hypotheses in 'ZetaEighthInputs' and
'PairSixteenthInputs'.  No decoder, branch coverage weight, or finite Boolean
is used as an analytic source premise.

The zeta consumer proves a conditional defect 1/8.  The primitive pair
consumer proves a conditional defect 1/16 uniformly in its explicit source
sector.  These statements do not prove the sharp 1/2 reference gap, RH, or
Dirichlet GRH, and they do not exchange the weighted coordinate norm with the
physical L2 norm.

Branch contracts retained: 'obligation.weighted-half-gap',
'obligation.remaining-finite-grams', 'obligation.all-character-sectors', and
'obligation.formal-analytic-bridge'.

The representable finite record interface reuses the repository 'Lossless'
codec from 'WeilWeightedFirstStage'; its decoder is partial off the encoder
image and satisfies 'decode (encode x) = some x'.  The countable coverage
interface also reuses the dyadic branch heat there, including its entire tail.
Neither interface supplies an arithmetic sign.

Analytical review, Lean elaboration/compilation, fresh kernel replay and
transitive axiom auditing: NOT_RUN at publication.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage

open LowSchur OddRootProjection OddSineForm OddHighComplement OddLiteralWindow
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

namespace EighthObservation

/-- Directed upper enclosure for the zeta archimedean-plus-n=2 negative band. -/
def zetaBandUpper : ℚ :=
  7820316864654546595825937213 / 79228162514264337593543950336

/-- Directed upper enclosure for the all-character archimedean-plus-n=2 band. -/
def pairBandUpper : ℚ :=
  3225764602744040198191991151 / 79228162514264337593543950336

/-- Directed upper enclosure for the retained n=3,4,5,7 translations. -/
def residualPrimeUpper : ℚ :=
  1625550264544087720417367381 / 79228162514264337593543950336

/-- The complete n>=8 allowance is retained separately and added here. -/
def residualWithTail : ℚ := residualPrimeUpper + Observation.deltaEight

/-- The certificate's outward-rounded total zeta price. -/
def zetaTotalUpper : ℚ :=
  9901803133083357317595709730 / 79228162514264337593543950336

/-- The certificate's outward-rounded total primitive-pair price. -/
def pairTotalUpper : ℚ :=
  4851751515802140991346808629 / 79228162514264337593543950336

/-- Every source component, including the full Delta_8 tail, fits under the
recorded outward zeta total. -/
theorem zeta_components_le_total :
    zetaBandUpper + residualWithTail + Observation.poleUpper ≤ zetaTotalUpper := by
  norm_num [zetaBandUpper, residualWithTail, residualPrimeUpper,
    Observation.deltaEight, Observation.poleUpper, zetaTotalUpper]

/-- The zeta total has a strict 1/8 margin. -/
theorem zeta_total_lt_eighth : zetaTotalUpper < 1 / 8 := by
  norm_num [zetaTotalUpper]

/-- Every primitive-pair component, including the full Delta_8 tail, fits under
its recorded outward total. -/
theorem pair_components_le_total :
    pairBandUpper + residualWithTail ≤ pairTotalUpper := by
  norm_num [pairBandUpper, residualWithTail, residualPrimeUpper,
    Observation.deltaEight, pairTotalUpper]

/-- The primitive-pair total has a strict 1/16 margin. -/
theorem pair_total_lt_sixteenth : pairTotalUpper < 1 / 16 := by
  norm_num [pairTotalUpper]

end EighthObservation

/-- The literal zeta n=2 contribution before any absolute-value estimate. -/
def zetaTwoPrimeTerm (sigma u : ℝ → ℝ) : ℝ :=
  2 * primeWeight 2 * weightedCorrelation sigma u (Real.log (2 : ℝ))

/-- Everything in the supported zeta prime response except the displayed n=2
term.  This is an exact difference, not a truncated declaration of exhaustivity. -/
def zetaResidualPrime (T : ℝ) (sigma u : ℝ → ℝ) : ℝ :=
  primeEnergy T (physicalTest sigma u) - zetaTwoPrimeTerm sigma u

theorem zeta_prime_reassembly (T : ℝ) (sigma u : ℝ → ℝ) :
    zetaTwoPrimeTerm sigma u + zetaResidualPrime T sigma u =
      primeEnergy T (physicalTest sigma u) := by
  unfold zetaResidualPrime
  ring

/-- The actual paired-character n=2 coefficient.  It retains
'Re (chi 2)' through 'pairedPrimeWeight'. -/
def pairedTwoPrimeTerm {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (sigma u : ℝ → ℝ) : ℝ :=
  2 * pairedPrimeWeight chi 2 * weightedCorrelation sigma u (Real.log (2 : ℝ))

/-- Everything in the native averaged paired response except its exact n=2 term. -/
def pairedResidualPrime {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (T : ℝ) (sigma u : ℝ → ℝ) : ℝ :=
  pairedPrimeResponse chi T
      (fun n => (weightedCorrelation sigma u (Real.log (n : ℝ)) : ℂ)) -
    pairedTwoPrimeTerm chi sigma u

theorem paired_prime_reassembly {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (T : ℝ) (sigma u : ℝ → ℝ) :
    pairedTwoPrimeTerm chi sigma u + pairedResidualPrime chi T sigma u =
      pairedPrimeResponse chi T
        (fun n => (weightedCorrelation sigma u (Real.log (n : ℝ)) : ℂ)) := by
  unfold pairedResidualPrime
  ring

/-- Exact analytic inputs still required for the zeta 1/8 return.  The first
field is the source-preserving archimedean-plus-n=2 comparison; the second
retains every other prime through the finite residual price plus Delta_8; the
third is the actual negative odd pole. -/
structure ZetaEighthInputs (T : ℝ) (sigma u : ℝ → ℝ) : Prop where
  archTwo :
    -(EighthObservation.zetaBandUpper : ℝ) * coordinateMass u ≤
      gammaConstant 1 0 * coordinateMass (physicalTest sigma u) +
        oddArchimedeanEnergy (physicalTest sigma u) - zetaTwoPrimeTerm sigma u
  residualPrime :
    zetaResidualPrime T sigma u ≤
      (EighthObservation.residualWithTail : ℝ) * coordinateMass u
  pole :
    2 * (∫ t : ℝ, physicalTest sigma u t * Real.sinh (t / 2)) ^ 2 ≤
      (Observation.poleUpper : ℝ) * coordinateMass u

/-- Source-bound zeta eighth stage.  Domain/support hypotheses remain visible
even though the final scalar assembly is algebraic. -/
theorem zeta_eighthStage_of_source_inputs (T : ℝ) (sigma u : ℝ → ℝ)
    (_hu : MemLp u 2 volume)
    (_hphysical : MemLp (physicalTest sigma u) 2 volume)
    (_hodd : Function.Odd (physicalTest sigma u))
    (_hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → physicalTest sigma u t = 0)
    (_henergy : IntegrableOn (fun r => parityKernel 0 r *
      (∫ t : ℝ, (physicalTest sigma u (t + r) - physicalTest sigma u t) ^ 2)) (Ioi 0))
    (h : ZetaEighthInputs T sigma u) :
    -(1 / 8) * coordinateMass u ≤
      shiftedOddWeilEnergy T 0 (physicalTest sigma u) := by
  have hmass : 0 ≤ coordinateMass u := coordinateMass_nonneg u
  have hcomp :
      (EighthObservation.zetaBandUpper : ℝ) +
          (EighthObservation.residualWithTail : ℝ) +
          (Observation.poleUpper : ℝ) ≤
        (EighthObservation.zetaTotalUpper : ℝ) := by
    exact_mod_cast EighthObservation.zeta_components_le_total
  have htarget : (EighthObservation.zetaTotalUpper : ℝ) < 1 / 8 := by
    exact_mod_cast EighthObservation.zeta_total_lt_eighth
  have hbudget := mul_le_mul_of_nonneg_right hcomp hmass
  have htargetMass := mul_le_mul_of_nonneg_right htarget.le hmass
  have harch := h.archTwo
  have hprime := h.residualPrime
  have hpole := h.pole
  simp only [shiftedOddWeilEnergy, shiftedOddCoreEnergy, sub_zero,
    Real.norm_eq_abs, sq_abs]
  change -(1 / 8) * coordinateMass u ≤
    gammaConstant 1 0 * coordinateMass (physicalTest sigma u) +
      oddArchimedeanEnergy (physicalTest sigma u) -
      primeEnergy T (physicalTest sigma u) -
      2 * (∫ t : ℝ, physicalTest sigma u t * Real.sinh (t / 2)) ^ 2
  unfold zetaResidualPrime at hprime
  linarith

/-- Exact analytic inputs still required for the primitive nonprincipal 1/16
return.  No zeta pole is inserted. -/
structure PairSixteenthInputs {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (T : ℝ) (sigma u : ℝ → ℝ) : Prop where
  archTwo :
    -(EighthObservation.pairBandUpper : ℝ) * coordinateMass u ≤
      gammaConstant q (gammaParity chi) * coordinateMass (physicalTest sigma u) +
        (∫ r in Ioi (0 : ℝ), parityKernel (gammaParity chi) r *
          (∫ t : ℝ, (physicalTest sigma u (t + r) - physicalTest sigma u t) ^ 2)) -
        pairedTwoPrimeTerm chi sigma u
  residualPrime :
    pairedResidualPrime chi T sigma u ≤
      (EighthObservation.residualWithTail : ℝ) * coordinateMass u

/-- Primitive nonprincipal paired 1/16 stage.  Primitivity and nonprincipality
are retained in the theorem type and are not inferred from the numerical bound. -/
theorem primitive_pair_sixteenthStage_of_source_inputs {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (_hprimitive : chi.IsPrimitive)
    (_hnonprincipal : chi ≠ 1) (T : ℝ) (sigma u : ℝ → ℝ)
    (_hu : MemLp u 2 volume)
    (_hphysical : MemLp (physicalTest sigma u) 2 volume)
    (_hodd : Function.Odd (physicalTest sigma u))
    (_hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → physicalTest sigma u t = 0)
    (_henergy : IntegrableOn (fun r => parityKernel (gammaParity chi) r *
      (∫ t : ℝ, (physicalTest sigma u (t + r) - physicalTest sigma u t) ^ 2)) (Ioi 0))
    (h : PairSixteenthInputs chi T sigma u) :
    -(1 / 16) * coordinateMass u ≤
      gammaConstant q (gammaParity chi) * coordinateMass (physicalTest sigma u) +
        (∫ r in Ioi (0 : ℝ), parityKernel (gammaParity chi) r *
          (∫ t : ℝ, (physicalTest sigma u (t + r) - physicalTest sigma u t) ^ 2)) -
        pairedPrimeResponse chi T
          (fun n => (weightedCorrelation sigma u (Real.log (n : ℝ)) : ℂ)) := by
  have hmass : 0 ≤ coordinateMass u := coordinateMass_nonneg u
  have hcomp :
      (EighthObservation.pairBandUpper : ℝ) +
          (EighthObservation.residualWithTail : ℝ) ≤
        (EighthObservation.pairTotalUpper : ℝ) := by
    exact_mod_cast EighthObservation.pair_components_le_total
  have htarget : (EighthObservation.pairTotalUpper : ℝ) < 1 / 16 := by
    exact_mod_cast EighthObservation.pair_total_lt_sixteenth
  have hbudget := mul_le_mul_of_nonneg_right hcomp hmass
  have htargetMass := mul_le_mul_of_nonneg_right htarget.le hmass
  have harch := h.archTwo
  have hprime := h.residualPrime
  unfold pairedResidualPrime at hprime
  linarith

/-! The finite representable evidence path is inherited losslessly.  It is
separate from the continuum propositions above. -/

abbrev EighthStageRecord := Sigma (fun _ : List ℕ => List ℚ)

def eighthStageRecordCodec : Lossless EighthStageRecord ℕ := rationalStageRecordCodec

theorem eighthStageRecord_roundtrip (x : EighthStageRecord) :
    eighthStageRecordCodec.decode (eighthStageRecordCodec.encode x) = some x :=
  eighthStageRecordCodec.roundtrip x

/-- Coverage heat for representable stage records.  The full dyadic tail is
retained by 'stageCoverageWeight_tail'; this theorem asserts coverage only. -/
theorem every_eighthStage_record_covered
    {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n) (hm : 0 < ∑' n : ℕ, x n)
    (b : EighthStageRecord) :
    ∃ n : ℕ, Encodable.decode n = some b ∧ 0 < stageCoverageStep x n :=
  every_representable_branch_covered hx hm b

/-- Explicit reuse of the entire unobserved coverage tail. -/
theorem eighthStage_coverage_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
