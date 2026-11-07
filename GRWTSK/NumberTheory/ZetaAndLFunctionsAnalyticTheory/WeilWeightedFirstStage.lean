/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedStageCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedStagePrimes
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWindowLowerAssembly
import GRWTSK.Combinatorics.Lossless
import Mathlib.Logic.Encodable.Basic
import Mathlib.Data.Rat.Encodable

/-!
# Conditional first weighted stage, returned to the original source

The actual source expressions are retained. The zeta theorem concludes a
bound for `OddLiteralWindow.shiftedOddWeilEnergy T 0`, with its negative
rank-one pole. The nonprincipal theorem uses the actual conductor/parity
kernel and the average of both native character prime responses; it has no
zeta pole. Primitive and nonprincipal hypotheses are retained in its type.
The mass is integral u^2 with f=sigma*u, NOT integral f^2.

This module assembles the integral lemmas and exact rational prices from
the supplied all-support weighted first-stage proof. The six actual moment
enclosures, whole prime envelope, whole pole bound, and original-source
Fourier comparison remain EXPLICIT INPUTS. No instance proves those inputs
by decoding the recorded Python output. The formalization therefore does
not yet establish the unconditional 239/1000 or 233/1000 source theorem.

The returned literal-window expressions agree with the intended source
only on the retained physical support domain. Extension to the full closed
weighted form, the actual G,V,C construction and its domain congruence,
reference spectral semigroups, and all-accuracy closure remain separate.
The quantitative comparison theorem below is only the scalar part of that
congruence. A positive trace-class remainder alone cannot supply its floor.

Branch contracts remain `obligation.weighted-half-gap`,
`obligation.remaining-finite-grams`, `obligation.all-character-sectors`,
and `obligation.formal-analytic-bridge`. No physical `StageLower` instance,
new root predicate, cofinal sign, RH, or Dirichlet GRH is introduced.

Proof mechanism: the signed sixth-moment price bounds the odd negative-band
readout; weighted Young bounds the whole prime allowance; integral
Cauchy--Schwarz pays the actual odd pole. Exact addition gives 239/1000
and 233/1000. The complete Delta_8 is subtracted before the 1/100 margin.
These are standard estimates specialized to the recorded source, without
a claim of worldwide novelty or independent review.

Elaboration, compilation, fresh kernel checking, transitive axiom auditing,
and independent analytical review: NOT_RUN. Source publication does not
upgrade any of these statuses or establish the missing analytic inputs.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage

open LowSchur OddRootProjection OddSineForm OddHighComplement OddLiteralWindow

/-- Actual moment statements. Construction is an analytic proof obligation,
not a Boolean decision on a JSON record. -/
structure MomentEnclosures (sigma : ℝ → ℝ) : Prop where
  m2 : spatialMoment sigma 2 ≤ (Observation.m2Upper : ℝ)
  m4 : (Observation.m4Lower : ℝ) ≤ spatialMoment sigma 4
  m6 : spatialMoment sigma 6 ≤ (Observation.m6Upper : ℝ)
  j2 : frequencyMoment 2 ≤ (Observation.j2Upper : ℝ)
  j4 : (Observation.j4Lower : ℝ) ≤ frequencyMoment 4
  j6 : frequencyMoment 6 ≤ (Observation.j6Upper : ℝ)

/-- The exact integral domain consumed by the moment argument. Its return
from the maximal weighted form domain is not asserted by this structure. -/
structure ReadoutDomain (sigma u : ℝ → ℝ) : Prop where
  input : MemLp u 2 volume
  kernels : ∀ xi : ℝ, MemLp (fun t => sigma t * Real.sin (xi * t)) 2 volume
  moment2 : Integrable (fun t : ℝ => t ^ 2 * sigma t ^ 2)
  moment4 : Integrable (fun t : ℝ => t ^ 4 * sigma t ^ 2)
  moment6 : Integrable (fun t : ℝ => t ^ 6 * sigma t ^ 2)
  observation : Integrable (fun xi : ℝ => baseNegativeBand xi * sineReadout sigma u xi ^ 2)

theorem oddBandObservation_le_price {sigma u : ℝ → ℝ}
    (hd : ReadoutDomain sigma u) (hm : MomentEnclosures sigma) :
    oddBandObservation sigma u ≤ (41 / 500) * coordinateMass u := by
  have hp := Observation.signedMomentPrice_lt sigma hm.m2 hm.m4 hm.m6 hm.j2 hm.j4 hm.j6
  have h := (oddBandObservation_le_signedMomentPrice hd.input hd.kernels
    hd.moment2 hd.moment4 hd.moment6 hd.observation).trans
      (mul_le_mul_of_nonneg_left hp.le (coordinateMass_nonneg u))
  simpa only [mul_comm] using h

/-- A summable entire majorant, not just the five retained prime powers. -/
structure PrimeEnvelope (sigma : ℝ → ℝ) (e : ℕ → ℝ) : Prop where
  nonneg : ∀ n, 0 ≤ e n
  summable : Summable (fun n => primeWeight n * e n)
  pointwise : ∀ n t, |sigma t * sigma (t + Real.log (n : ℝ))| ≤ e n
  total : completePrimeAllowance e ≤ (Observation.primeUpper : ℝ)

theorem primeEnergy_le_price {sigma u : ℝ → ℝ} (T : ℝ) (e : ℕ → ℝ)
    (hu : MemLp u 2 volume) (he : PrimeEnvelope sigma e) :
    primeEnergy T (physicalTest sigma u) ≤ (151 / 1000) * coordinateMass u := by
  have h := abs_primeEnergy_physicalTest_le T e hu
    (fun n _ => he.nonneg n) (fun n _ => he.pointwise n)
  have hc := (finitePrimeAllowance_le_complete (activePrimePowers T) e
    he.nonneg he.summable).trans he.total
  rcases Observation.recorded_bounds with ⟨_, _, _, hp, _, _⟩
  have hpR : (Observation.primeUpper : ℝ) ≤ 151 / 1000 := by exact_mod_cast hp.le
  exact (le_abs_self _).trans (h.trans
    (mul_le_mul_of_nonneg_right (hc.trans hpR) (coordinateMass_nonneg u)))

theorem pairedPrimeResponse_le_price {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) {sigma u : ℝ → ℝ} (T : ℝ) (e : ℕ → ℝ)
    (hu : MemLp u 2 volume) (he : PrimeEnvelope sigma e) :
    pairedPrimeResponse chi T
      (fun n => (weightedCorrelation sigma u (Real.log (n : ℝ)) : ℂ)) ≤
        (151 / 1000) * coordinateMass u := by
  have h := abs_pairedPrimeResponse_physicalTest_le chi T e hu
    (fun n _ => he.nonneg n) (fun n _ => he.pointwise n)
  have hc := (finitePrimeAllowance_le_complete (activePrimePowers T) e
    he.nonneg he.summable).trans he.total
  rcases Observation.recorded_bounds with ⟨_, _, _, hp, _, _⟩
  have hpR : (Observation.primeUpper : ℝ) ≤ 151 / 1000 := by exact_mod_cast hp.le
  exact (le_abs_self _).trans (h.trans
    (mul_le_mul_of_nonneg_right (hc.trans hpR) (coordinateMass_nonneg u)))

/-- The actual negative odd pole, with its coefficient two. -/
theorem odd_pole_le_price {sigma u : ℝ → ℝ} (hu : MemLp u 2 volume)
    (hp : MemLp (fun t => sigma t * Real.sinh (t / 2)) 2 volume)
    (hpobs : 2 * coordinateMass (fun t => sigma t * Real.sinh (t / 2)) ≤
      (Observation.poleUpper : ℝ)) :
    2 * (∫ t : ℝ, physicalTest sigma u t * Real.sinh (t / 2)) ^ 2 ≤
      (3 / 500) * coordinateMass u := by
  have heq : (∫ t : ℝ, physicalTest sigma u t * Real.sinh (t / 2)) =
      ∫ t : ℝ, u t * (sigma t * Real.sinh (t / 2)) := by
    apply integral_congr_ae
    filter_upwards [] with t
    unfold physicalTest
    ring
  rw [heq]
  have hpair := integral_pair_sq_le hu hp
  rcases Observation.recorded_bounds with ⟨_, _, _, _, _, hpU⟩
  have hpR : (Observation.poleUpper : ℝ) ≤ 3 / 500 := by exact_mod_cast hpU.le
  have hscale := mul_le_mul_of_nonneg_left (hpobs.trans hpR) (coordinateMass_nonneg u)
  nlinarith

/-- Conditional return to the existing FULL literal zeta form. Source
identification of the odd band, not a full Q lower bound, is the remaining
Fourier premise. Physical support and finite gamma energy stay in the type. -/
theorem zeta_firstStage_of_observations (T : ℝ) (sigma u : ℝ → ℝ)
    (hd : ReadoutDomain sigma u) (hm : MomentEnclosures sigma)
    (e : ℕ → ℝ) (he : PrimeEnvelope sigma e)
    (_hphysical : MemLp (physicalTest sigma u) 2 volume)
    (_hodd : Function.Odd (physicalTest sigma u))
    (_hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → physicalTest sigma u t = 0)
    (_henergy : IntegrableOn (fun r => parityKernel 0 r *
      (∫ t : ℝ, (physicalTest sigma u (t + r) - physicalTest sigma u t) ^ 2)) (Ioi 0))
    (hp : MemLp (fun t => sigma t * Real.sinh (t / 2)) 2 volume)
    (hpobs : 2 * coordinateMass (fun t => sigma t * Real.sinh (t / 2)) ≤
      (Observation.poleUpper : ℝ))
    (harch : -oddBandObservation sigma u ≤
      gammaConstant 1 0 * coordinateMass (physicalTest sigma u) +
        oddArchimedeanEnergy (physicalTest sigma u)) :
    -(239 / 1000) * coordinateMass u ≤ shiftedOddWeilEnergy T 0 (physicalTest sigma u) := by
  have hband := oddBandObservation_le_price hd hm
  have hprime := primeEnergy_le_price T e hd.input he
  have hpole := odd_pole_le_price hd.input hp hpobs
  simp only [shiftedOddWeilEnergy, shiftedOddCoreEnergy, sub_zero,
    Real.norm_eq_abs, sq_abs]
  change -(239 / 1000) * coordinateMass u ≤
    gammaConstant 1 0 * coordinateMass (physicalTest sigma u) +
      oddArchimedeanEnergy (physicalTest sigma u) - primeEnergy T (physicalTest sigma u) -
      2 * (∫ t : ℝ, physicalTest sigma u t * Real.sinh (t / 2)) ^ 2
  linarith

/-- Nonprincipal paired source: the actual gamma parity and native averaged
prime expression, with no inserted zeta pole. The Fourier comparison must
be proved for this sector, not transferred from zeta by its name. -/
theorem primitive_pair_firstStage_of_observations {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (_hprimitive : chi.IsPrimitive) (_hnonprincipal : chi ≠ 1)
    (T : ℝ) (sigma u : ℝ → ℝ) (hd : ReadoutDomain sigma u) (hm : MomentEnclosures sigma)
    (e : ℕ → ℝ) (he : PrimeEnvelope sigma e)
    (_hphysical : MemLp (physicalTest sigma u) 2 volume)
    (_hodd : Function.Odd (physicalTest sigma u))
    (_hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → physicalTest sigma u t = 0)
    (_henergy : IntegrableOn (fun r => parityKernel (gammaParity chi) r *
      (∫ t : ℝ, (physicalTest sigma u (t + r) - physicalTest sigma u t) ^ 2)) (Ioi 0))
    (harch : -oddBandObservation sigma u ≤
      gammaConstant q (gammaParity chi) * coordinateMass (physicalTest sigma u) +
        ∫ r in Ioi (0 : ℝ), parityKernel (gammaParity chi) r *
          (∫ t : ℝ, (physicalTest sigma u (t + r) - physicalTest sigma u t) ^ 2)) :
    -(233 / 1000) * coordinateMass u ≤
      gammaConstant q (gammaParity chi) * coordinateMass (physicalTest sigma u) +
        (∫ r in Ioi (0 : ℝ), parityKernel (gammaParity chi) r *
          (∫ t : ℝ, (physicalTest sigma u (t + r) - physicalTest sigma u t) ^ 2)) -
        pairedPrimeResponse chi T
          (fun n => (weightedCorrelation sigma u (Real.log (n : ℝ)) : ℂ)) := by
  have hband := oddBandObservation_le_price hd hm
  have hprime := pairedPrimeResponse_le_price chi T e hd.input he
  linarith

/-- Pay the ENTIRE Delta_8 before the positive shifted source margin. -/
theorem truncated_stage_margin {actual truncated mass : ℝ} (hmass : 0 ≤ mass)
    (hactual : -(239 / 1000) * mass ≤ actual)
    (htail : |truncated - actual| ≤ (Observation.deltaEight : ℝ) * mass) :
    (1 / 100) * mass ≤ truncated + (1 / 4) * mass := by
  have hlo := (abs_le.mp htail).1
  have hmargin := mul_le_mul_of_nonneg_right Observation.first_stage_margin.le hmass
  linarith

/-- Scalar quadratic comparison. Its application to C requires the ACTUAL
inverse-square-root/domain return, which is not constructed in this file. -/
theorem comparison_of_source_margin {g v mass : ℝ}
    (hsource : (1 / 100) * mass ≤ g - v)
    (hremainder : v ≤ 70000 * mass) : v ≤ (7000000 / 7000001) * g :=
  Observation.comparison_ratio_of_margin hsource hremainder

/-! Representable evidence transport. These interfaces apply to finite
source/sector/domain/parameter/certificate/error descriptions, not all real
vectors or operators. A dependent descriptor and its payload are encoded
TOGETHER. Unchecked data can be encoded; encoding does not check it. -/

open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

/-- Reuse the repository's partial-decoder law on the dependent total type. -/
def dependentProofCodec {Branch : Type*} (Payload : Branch → Type*)
    [Encodable (Sigma Payload)] : Lossless (Sigma Payload) ℕ where
  encode := Encodable.encode
  decode := Encodable.decode
  roundtrip := Encodable.encodek

/-- A concrete finite carrier: source/role/sector/parameter tokens and exact
rational observations. Token meanings are retained in the descriptor; no
assertion of analytic acceptance is made by this instance. -/
def rationalStageRecordCodec : Lossless
    (Sigma (fun _ : List ℕ => List ℚ)) ℕ :=
  dependentProofCodec (fun _ : List ℕ => List ℚ)

/-- Countable branch-coverage weights, not arithmetic spectral weights. -/
def stageCoverageWeight (n : ℕ) : ℝ := (1 / 2 : ℝ) ^ (n + 1)

theorem stageCoverageWeight_pos (n : ℕ) : 0 < stageCoverageWeight n := by
  unfold stageCoverageWeight
  positivity

theorem stageCoverageWeight_summable : Summable stageCoverageWeight := by
  have hs : Summable (fun n : ℕ => (1 / 2 : ℝ) ^ n) :=
    summable_geometric_of_abs_lt_one (by norm_num)
  simpa only [stageCoverageWeight, pow_succ] using hs.mul_right (1 / 2 : ℝ)

theorem tsum_stageCoverageWeight : (∑' n : ℕ, stageCoverageWeight n) = 1 := by
  simp only [stageCoverageWeight, pow_succ]
  rw [tsum_mul_right, tsum_geometric_of_lt_one (by norm_num) (by norm_num)]
  norm_num

/-- Entire unobserved dyadic tail, at every index. -/
theorem stageCoverageWeight_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J := by
  have heq (k : ℕ) : stageCoverageWeight (J + k) =
      (1 / 2 : ℝ) ^ J * stageCoverageWeight k := by
    simp only [stageCoverageWeight, Nat.add_assoc, pow_add]
  simp_rw [heq]
  rw [tsum_mul_left, tsum_stageCoverageWeight, mul_one]

/-- One rational coverage step (I+Pi)/2 on summable states. This is not
finite Euler sign heat or the reference source's spectral semigroup. -/
def stageCoverageStep (x : ℕ → ℝ) (n : ℕ) : ℝ :=
  (x n + (∑' i : ℕ, x i) * stageCoverageWeight n) / 2

theorem stageCoverageStep_mass {x : ℕ → ℝ} (hx : Summable x) :
    (∑' n : ℕ, stageCoverageStep x n) = ∑' n : ℕ, x n := by
  simp only [stageCoverageStep, div_eq_mul_inv]
  rw [tsum_mul_right, hx.tsum_add (stageCoverageWeight_summable.mul_left _),
    tsum_mul_left, tsum_stageCoverageWeight, mul_one]
  ring

theorem stageCoverageStep_positive {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n)
    (hm : 0 < ∑' n : ℕ, x n) (n : ℕ) : 0 < stageCoverageStep x n := by
  unfold stageCoverageStep
  have h := mul_pos hm (stageCoverageWeight_pos n)
  linarith [hx n]

/-- Every represented branch has a source-recovering index of positive
coverage. This is exhaustive coverage, not a proof-search termination law. -/
theorem every_representable_branch_covered {Branch : Type*} [Encodable Branch]
    {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n) (hm : 0 < ∑' n : ℕ, x n) (b : Branch) :
    ∃ n : ℕ, Encodable.decode n = some b ∧ 0 < stageCoverageStep x n := by
  exact ⟨Encodable.encode b, Encodable.encodek b,
    stageCoverageStep_positive hx hm (Encodable.encode b)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
