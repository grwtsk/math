/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCompactSupportUpperBand
import Mathlib.MeasureTheory.Integral.IntegrableOn
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Tactic

/-!
# Physical half-correlation from the actual compact Weil test support

Source revision grwtsk/math@eef4e69aac22d8e6495052b391ed381b80f5eda0.
The actual source is SourcePrimeCorrelation.correlation and .energy on
the complex whole-line L2(R), not a newly named graph Laplacian or a
finite quadrature. The consumer is exactly
WeilCompactSupportUpperBand.HalfCorrelationOnUpperBand and the ORIGINAL
DirichletStageChain.PrimitiveStageLower.

For f supported POINTWISE in [-T,T] and r>=T, set
  e_-(t) = 1_{t<=0} * norm(f(t))^2,
  e_+(t) = 1_{0<=t} * norm(f(t))^2.
The boundary t=0 is counted twice only on a Lebesgue-null singleton.
Thus integral e_- + integral e_+ = integral norm(f)^2 = energy f.

For every t, the ORIGINAL correlation integrand satisfies
  norm(conj(f(t))*f(t+r))
        <= (e_-(t)+e_+(t+r))/2.
Indeed, when t<=0<=t+r this is Young's inequality. When t>0,
t+r>T, so the second factor vanishes by the ACTUAL support premise.
When t+r<0, t<-T, so the first factor vanishes. Integrate with
Lebesgue translation invariance of the positive-half energy to obtain
  2*norm(correlation f r) <= energy f.

This proof is a literal source measure comparison; no spectral
contraction, graph-to-Weil identification, or physics premise enters.
The arithmetic upper band is the ORIGINAL
LowSchur.activePrimePowers T of ALL integers under the strict cutoff.
For every q in that set with log q>=T the estimate is proved rather
than introduced as a HalfCorrelationOnUpperBand assumption. The
consequence is
  primitiveArithmeticValue chi hp hn T f >=
    (gammaConstant N (gammaParity chi)
      - characterPrimeMass chi T + upperBandWeight chi T) * energy f
on the existing MemLp/integrable-gamma/pointwise-support domain.

The old PrimitiveStageLower consumer now requires ONLY the explicit
arithmetic margin
  characterPrimeMass chi (j+1) <=
    gammaConstant N (gammaParity chi) +
      upperBandWeight chi (j+1) + (1/2)^j.
The original real odd Admissible condition supplies pointwise
support and all other integrability premises. This does NOT prove the
margin at any j, never mind every j, and does NOT prove RH or
Dirichlet GRH. It eliminates one logical analytic premise from the
conditional upper-band stage route, subject to Lean verification.

Hostile comparison: without r>=T the discrete three-cell example
f=(1,1,1) at a one-cell translation has correlation 2 and energy 3,
so 2|C|<=E fails. Compact support, its FULL geometric width, the
zero-extension and the correct shift inequality are indispensable.
This is a standard Young/translation argument, not mathematical
novelty. Primary arithmetic context: Connes, Consani, Moscovici,
Zeta Spectral Triples arXiv:2511.22755v1 equations (3.19)-(3.20);
the original Dirichlet comparison is Fiorilli--Miller (2012)
equation (2.2), as preserved in the existing OddRootProjection.

Mathlib pinned d13f23b723b8a846827a245b89c10fc7d3f11612,
Lean4 v4.34.1. Fresh elaboration, kernel replay, transitive axiom
audit and independent analytical review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeilPhysicalHalfCorrelation

open SourcePrimeCorrelation
open WeilCompactSupportUpperBand
open CharacterSensitiveFrobeniusFloor
open GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection

/-- Nonpositive-half energy, with the shared point zero included.
Its overlap with the positive-half energy is Lebesgue-null. -/
private def negativeMass (f : ℝ → ℂ) (t : ℝ) : ℝ :=
  if t ≤ 0 then ‖f t‖ ^ 2 else 0

/-- Nonnegative-half energy, with the shared point zero included. -/
private def positiveMass (f : ℝ → ℂ) (t : ℝ) : ℝ :=
  if 0 ≤ t then ‖f t‖ ^ 2 else 0

private theorem negativeMass_nonneg (f : ℝ → ℂ) (t : ℝ) :
    0 ≤ negativeMass f t := by
  unfold negativeMass
  split_ifs <;> positivity

private theorem positiveMass_nonneg (f : ℝ → ℂ) (t : ℝ) :
    0 ≤ positiveMass f t := by
  unfold positiveMass
  split_ifs <;> positivity

private theorem integrable_negativeMass {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) :
    Integrable (negativeMass f) volume := by
  have hsq : Integrable (fun t : ℝ => ‖f t‖ ^ 2) :=
    hf.integrable_norm_pow (p := 2) (by norm_num)
  change Integrable
    ((Iic (0 : ℝ)).indicator (fun t : ℝ => ‖f t‖ ^ 2)) volume
  exact hsq.indicator measurableSet_Iic

private theorem integrable_positiveMass {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) :
    Integrable (positiveMass f) volume := by
  have hsq : Integrable (fun t : ℝ => ‖f t‖ ^ 2) :=
    hf.integrable_norm_pow (p := 2) (by norm_num)
  change Integrable
    ((Ici (0 : ℝ)).indicator (fun t : ℝ => ‖f t‖ ^ 2)) volume
  exact hsq.indicator measurableSet_Ici

/-- Both half energies sum to the ORIGINAL whole-line energy.
Their double count at zero is null with respect to Lebesgue volume. -/
private theorem integral_halves_eq_energy {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) :
    (∫ t : ℝ, negativeMass f t) +
      (∫ t : ℝ, positiveMass f t) = energy f := by
  have hn := integrable_negativeMass hf
  have hp := integrable_positiveMass hf
  have hnotzero : ∀ᵐ t : ℝ ∂volume, t ≠ 0 := by
    rw [ae_iff]
    simp
  have hpoint :
      (fun t : ℝ => negativeMass f t + positiveMass f t) =ᵐ[volume]
        (fun t : ℝ => ‖f t‖ ^ 2) := by
    filter_upwards [hnotzero] with t ht
    rcases lt_trichotomy t 0 with hlt | heq | hgt
    · simp [negativeMass, positiveMass, le_of_lt hlt, not_le.mpr hlt]
    · exact (ht heq).elim
    · simp [negativeMass, positiveMass, not_le.mpr hgt, le_of_lt hgt]
  calc
    (∫ t : ℝ, negativeMass f t) +
        (∫ t : ℝ, positiveMass f t) =
      ∫ t : ℝ, (negativeMass f t + positiveMass f t) :=
        (integral_add hn hp).symm
    _ = energy f := by
      unfold energy
      exact integral_congr_ae hpoint

/-- The physical support forces any nonzero r-pair to cross
from the nonpositive to the nonnegative half of the actual line.
There are no periodic boundary identifications. -/
private theorem correlation_integrand_halves_bound
    (f : ℝ → ℂ) (T r : ℝ) (hr : T ≤ r)
    (hsupport : ∀ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (t : ℝ) :
    ‖conj (f t) * f (t + r)‖ ≤
      (negativeMass f t + positiveMass f (t + r)) / 2 := by
  by_cases ht : t ≤ 0
  · by_cases htr : 0 ≤ t + r
    · simp only [negativeMass, positiveMass, if_pos ht, if_pos htr]
      rw [norm_mul, Complex.norm_conj]
      nlinarith [sq_nonneg (‖f t‖ - ‖f (t + r)‖)]
    · have hzero : f t = 0 := by
        apply hsupport t
        intro hm
        have hlo := hm.1
        have hrneg : t + r < 0 := lt_of_not_ge htr
        linarith
      rw [hzero]
      simp only [Complex.conj_zero, zero_mul, norm_zero]
      exact div_nonneg
        (add_nonneg (negativeMass_nonneg f t)
          (positiveMass_nonneg f (t + r))) (by norm_num)
  · have hzero : f (t + r) = 0 := by
      apply hsupport (t + r)
      intro hm
      have hu := hm.2
      have htpos : 0 < t := lt_of_not_ge ht
      linarith
    rw [hzero]
    simp only [mul_zero, norm_zero]
    exact div_nonneg
      (add_nonneg (negativeMass_nonneg f t)
        (positiveMass_nonneg f (t + r))) (by norm_num)

/-- The sharp physical L2 half-correlation lemma, on the exact source
complex-valued whole-line correlation and energy. All hypotheses
are actual L2, support and real shift facts, no missing readout. -/
theorem norm_correlation_le_half_energy_of_support
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (T r : ℝ) (hr : T ≤ r)
    (hsupport : ∀ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    ‖correlation f r‖ ≤ energy f / 2 := by
  have hn : Integrable (negativeMass f) volume :=
    integrable_negativeMass hf
  have hp : Integrable (positiveMass f) volume :=
    integrable_positiveMass hf
  have hshift : Integrable (fun t : ℝ => positiveMass f (t + r)) volume :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hp
  have hbound :=
    norm_integral_le_of_norm_le ((hn.add hshift).div_const 2)
      (Filter.Eventually.of_forall
        (correlation_integrand_halves_bound f T r hr hsupport))
  change ‖correlation f r‖ ≤
    ∫ t : ℝ, (negativeMass f t + positiveMass f (t + r)) / 2 at hbound
  rw [integral_div, integral_add hn hshift,
    integral_add_right_eq_self (positiveMass f) r] at hbound
  rw [integral_halves_eq_energy hf] at hbound
  exact hbound

/-- The exact missing upper-band premise in the previous source is
now derived from actual physical support, not assumed. -/
theorem halfCorrelationOnUpperBand_of_support
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (hsupport : ∀ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    HalfCorrelationOnUpperBand T f := by
  intro q hq hupper
  exact norm_correlation_le_half_energy_of_support hf T
    (Real.log (q : ℝ)) hupper hsupport

/-- The original primitive arithmetic source gets the improved
upper-band lower bound with NO half-correlation hypothesis.
The conductor, gamma parity, signed correlation and domain stay fixed. -/
theorem primitiveArithmeticValue_ge_upperBand_of_support
    {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (hsupport : ∀ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0)) :
    (gammaConstant N (gammaParity chi) -
        characterPrimeMass chi T + upperBandWeight chi T) * energy f ≤
      primitiveArithmeticValue chi hprimitive hnonprincipal T f := by
  exact primitiveArithmeticValue_ge_upperBand chi hprimitive hnonprincipal
    T hf harch (halfCorrelationOnUpperBand_of_support T hf hsupport)

/-- Exact primitive stage consumer with only the EXPLICIT arithmetic
margin left. All original Admissible conditions are reused. -/
theorem primitiveStageLower_of_upperBand_margin
    {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (j : ℕ)
    (hmargin : characterPrimeMass chi ((j : ℝ) + 1) ≤
      gammaConstant N (gammaParity chi) +
        upperBandWeight chi ((j : ℝ) + 1) + (1 / 2 : ℝ) ^ j) :
    PrimitiveStageLower chi hprimitive hnonprincipal j := by
  apply primitiveStageLower_of_upperBand chi hprimitive hnonprincipal j ?_ hmargin
  intro f hf
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  exact halfCorrelationOnUpperBand_of_support ((j : ℝ) + 1)
    hLp hsupport

end GRWTSK.NumberTheory.WeilQuadraticForm.WeilPhysicalHalfCorrelation
