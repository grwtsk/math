/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaTailCompensation
import Mathlib.Tactic

/-!
# Paired upper-band phase defect and explicit gamma-tail source return

Consumer: the ORIGINAL DirichletStageChain.PrimitiveStageLower, not an
invented target. Source grwtsk/math@5f7100dc0d1e47a9a393b010affd139c1dc2e87c,
Mathlib@d13f23b723b8a846827a245b89c10fc7d3f11612.
Reuse OddConductorThreeObstruction.primitive_real_paired_phaseSurplus_identity,
the native OddRootProjection.pairedPrimeWeight/pairedPrimeMass, and the
GammaTailCompensation gamma-tail result on the exact physical L2 source.

For native real f and q with T<=log q, the previously proved physical
half-correlation lemma yields norm(C_f(log q))<=energy(f)/2.
The exact pairedPhaseDefect is therefore at least
abs(pairedPrimeWeight chi q)*energy(f). The new finite scalar
H_pair(T)=sum_{q in activePrimePowers T, log q>=T}
                        abs(pairedPrimeWeight chi q)
preserves the ORIGINAL strict all-integer support and complex character
data via the original REAL paired weight. It is at most
pairedPrimeMass(T)/2.

Together with the ACTUAL source reassembly of the primitive REAL form
and the positive gamma tail, this proves the source-bound lower estimate
  Q_chi,T(liftReal f) >=
  (gammaConstant - pairedPrimeMass + H_pair(T) + GammaTailFloor)*energy.
All conductor/parity, source phases, gamma terms and zero-extension
are retained. The sufficient one-stage arithmetic margin is exposed
as a premise; it remains unproved in the odd conductor-three sector.
This is not RH, Dirichlet GRH, a zero-divisor theorem, or an
identification with a finite graph Markov generator.

Standard Cauchy/Young and exponential integrals; no novelty asserted.
Historical source: Connes, Consani, Moscovici, Zeta Spectral Triples
arXiv:2511.22755v1, equations (3.19)-(3.20); Fiorilli and Miller
(2012), equation (2.2), per existing OddRootProjection.
Lean, kernel, transitive axiom and independent reviews: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PairedGammaTailCompensation

open OddRootProjection SourcePrimeCorrelation LowSchur CharacterWindow
open FrobeniusPhaseSurplus CharacterSensitiveFrobeniusFloor
open WeilCompactSupportUpperBand WeilPhysicalHalfCorrelation
open OddConductorThreeObstruction GammaTailCompensation
open DirichletStageChain

variable {N : ℕ} [NeZero N]

/-- Upper-band portion of the original paired prime mass. -/
noncomputable def pairedUpperBandWeight
    (chi : DirichletCharacter ℂ N) (T : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T,
    if T ≤ Real.log (q : ℝ) then
      |pairedPrimeWeight chi q| else 0

theorem pairedUpperBandWeight_nonneg
    (chi : DirichletCharacter ℂ N) (T : ℝ) :
    0 ≤ pairedUpperBandWeight chi T := by
  classical
  unfold pairedUpperBandWeight
  apply Finset.sum_nonneg
  intro q hq
  split_ifs
  · exact abs_nonneg _
  · exact le_rfl

theorem two_mul_pairedUpperBandWeight_le_mass
    (chi : DirichletCharacter ℂ N) (T : ℝ) :
    2 * pairedUpperBandWeight chi T ≤ pairedPrimeMass chi T := by
  classical
  have hsum :
      (∑ q ∈ activePrimePowers T,
         if T ≤ Real.log (q : ℝ) then
           |pairedPrimeWeight chi q| else 0) ≤
      (∑ q ∈ activePrimePowers T,
         |pairedPrimeWeight chi q|) := by
    apply Finset.sum_le_sum
    intro q hq
    split_ifs
    · exact le_rfl
    · exact abs_nonneg _
  unfold pairedUpperBandWeight pairedPrimeMass
  linarith

/-- Physical upper-band support yields an actual positive paired
phase surplus, not an assumed positive signed prime response. -/
theorem pairedUpperBand_energy_le_pairedSurplus
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    {f : ℝ → ℝ}
    (hf : MemLp (liftReal f) 2 volume)
    (hsupport : ∀ t : ℝ, t ∉ Icc (-T) T → liftReal f t = 0) :
    pairedUpperBandWeight chi T * energy (liftReal f) ≤
      pairedPhaseSurplus chi T
        (fun q => correlation (liftReal f) (Real.log (q : ℝ)))
        (energy (liftReal f)) := by
  classical
  let E : ℝ := energy (liftReal f)
  let C : ℕ → ℂ := fun q =>
    correlation (liftReal f) (Real.log (q : ℝ))
  have hpoint (q : ℕ) (hq : q ∈ activePrimePowers T) :
      (if T ≤ Real.log (q : ℝ) then
        |pairedPrimeWeight chi q| else 0) * E ≤
          pairedPhaseDefect chi q E (C q) := by
    by_cases hb : T ≤ Real.log (q : ℝ)
    · simp only [if_pos hb]
      have hcorr : ‖C q‖ ≤ E / 2 :=
        norm_correlation_le_half_energy_of_support hf T
          (Real.log (q : ℝ)) hb hsupport
      have hreal :
          pairedPrimeWeight chi q * (C q).re ≤
            |pairedPrimeWeight chi q| * (E / 2) := by
        calc
          _ ≤ |pairedPrimeWeight chi q * (C q).re| :=
            le_abs_self _
          _ = |pairedPrimeWeight chi q| * |(C q).re| := by
            rw [abs_mul]
          _ ≤ |pairedPrimeWeight chi q| * (E / 2) :=
            mul_le_mul_of_nonneg_left
              ((Complex.abs_re_le_norm (C q)).trans hcorr)
              (abs_nonneg _)
      unfold pairedPhaseDefect
      linarith
    · simp only [if_neg hb, zero_mul]
      have hcorr : ‖C q‖ ≤ E :=
        norm_correlation_le_energy hf (Real.log (q : ℝ))
      exact pairedPhaseDefect_nonneg chi q E (C q) hcorr
  calc
    pairedUpperBandWeight chi T * energy (liftReal f) =
      ∑ q ∈ activePrimePowers T,
        (if T ≤ Real.log (q : ℝ) then
          |pairedPrimeWeight chi q| else 0) * E := by
          unfold pairedUpperBandWeight E
          rw [Finset.sum_mul]
    _ ≤ ∑ q ∈ activePrimePowers T,
          pairedPhaseDefect chi q E (C q) := by
            apply Finset.sum_le_sum
            intro q hq
            exact hpoint q hq
    _ = pairedPhaseSurplus chi T
          (fun q => correlation (liftReal f) (Real.log (q : ℝ)))
          (energy (liftReal f)) := rfl

/-- Combined source-bound inequality for the full primitive REAL
test: positive gamma tail PLUS paired upper-band phase alignment. -/
theorem primitiveArithmeticValue_ge_pairedBand_gammaTail
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    {T : ℝ} (hT : 0 < T) (f : ℝ → ℝ)
    (hf : MemLp (liftReal f) 2 volume)
    (hsupport : ∀ t, t ∉ Icc (-T) T → liftReal f t = 0)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) (liftReal f)) (Ioi 0)) :
    (gammaConstant N (gammaParity chi) -
      pairedPrimeMass chi T +
      pairedUpperBandWeight chi T +
      gammaTailFloor (gammaParity chi) T) * energy (liftReal f) ≤
      primitiveArithmeticValue chi hprimitive hnonprincipal T (liftReal f) := by
  have hGamma := gammaCorrectionIntegral_ge_tailFloor
    (gammaParity chi) hf hT hsupport harch
  have hPair := pairedUpperBand_energy_le_pairedSurplus
    chi T hf hsupport
  have hSource := primitive_real_paired_phaseSurplus_identity
    chi hprimitive hnonprincipal T f hf
  rw [hSource]
  nlinarith

/-- Conditional original one-stage supplier: ONLY its arithmetic
coefficient margin remains, not the previously removed L2 premise. -/
theorem primitiveStageLower_of_pairedBand_gammaTail
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (j : ℕ)
    (hmargin : pairedPrimeMass chi ((j : ℝ)+1) ≤
      gammaConstant N (gammaParity chi) +
      pairedUpperBandWeight chi ((j : ℝ)+1) +
      gammaTailFloor (gammaParity chi) ((j : ℝ)+1) +
      (1/2 : ℝ)^j) :
    PrimitiveStageLower chi hprimitive hnonprincipal j := by
  intro f hf
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hE : 0 ≤ energy (liftReal f) :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hmargin' :
      -((1/2 : ℝ)^j) ≤
      gammaConstant N (gammaParity chi) -
        pairedPrimeMass chi ((j : ℝ)+1) +
        pairedUpperBandWeight chi ((j : ℝ)+1) +
        gammaTailFloor (gammaParity chi) ((j : ℝ)+1) := by
    linarith
  exact (mul_le_mul_of_nonneg_right hmargin' hE).trans
    (primitiveArithmeticValue_ge_pairedBand_gammaTail
      chi hprimitive hnonprincipal (by positivity) f
      hLp hsupport harch)

end GRWTSK.NumberTheory.WeilQuadraticForm.PairedGammaTailCompensation
