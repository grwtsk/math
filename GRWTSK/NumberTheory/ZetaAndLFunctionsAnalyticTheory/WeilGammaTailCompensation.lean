/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddConductorThreeMassObstruction
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic

/-!
# Positive gamma-tail compensation on the actual primitive Weil form

Mathematical source pins: grwtsk/math@5f7100dc0d1e47a9a393b010affd139c1dc2e87c.
Reuses SourcePrimeCorrelation.energy and correlation (whole-line Lebesgue);
WeilConductorFrontier.gammaCorrectionDensity and primitiveArithmeticValue;
OddRootProjection.parityKernel, gammaConstant and pairedPrimeMass;
FrobeniusPhaseSurplus.pairedPhaseSurplus;
OddConductorThreeObstruction.primitive_real_paired_phaseSurplus_identity;
DirichletStageChain.Admissible and PrimitiveStageLower.
Pinned Mathlib4 d13f23b723b8a846827a245b89c10fc7d3f11612.
Connes--Consani--Moscovici, Zeta Spectral Triples (2025),
arXiv:2511.22755v1, formula (3.19)--(3.20); individual/pair
Dirichlet arithmetic comparison Fiorilli--Miller (2012), (2.2).

## Actual analytic improvement

If f vanishes pointwise outside [-T,T] and r>=2T, the original
Lebesgue supports of t |-> f(t) and t |-> f(t+r) are disjoint a.e.
On exactly the original source carrier,
  SourcePrimeCorrelation.energy (fun t => f(t+r)-f t)
    = 2 * SourcePrimeCorrelation.energy f.
This is proved from a.e. pointwise support and Lebesgue translation
invariance, not from finite graph heat or any RH assumption.

For a>=0, set alpha=a+1/2>0. The ACTUAL parity-dependent gamma kernel
  K_a(r)=exp(-alpha*r)/(1-exp(-2*r))
is >=exp(-alpha*r) for positive r. Restrict the exact source
archimedean correction to the far tail r>2T, use positivity of the
full integrand, and integrate this elementary exponential exactly.
Thus for T>0, L2 f with original source support and integrable
gamma density,
  Gamma_a(f) >= G_a(T)*E(f),
  G_a(T)=2*exp(-alpha*(2*T))/alpha >0.
No signed prime sum is replaced or dropped in this inequality.

The original REAL-TEST primitive sector additionally has the
EXACT previously proved source reassembly
  Q = (gammaConstant - pairedPrimeMass)*E + Gamma + pairedPhaseSurplus.
Because |C_f(log q)|<=E/2 on the upper half log q>=T (previous
WeilPhysicalHalfCorrelation), the paired surplus pays at least
  H_pair(T)*E, H_pair(T)=sum_{q∈original I_T, log q>=T}
                                 |OddRootProjection.pairedPrimeWeight chi q|.
This is the SAME original strict integer cutoff, with neither
prime multiplicity nor complex conjugation silently altered.
Consequently the original source satisfies
  Q_chi,T(liftReal f) >=
    [gammaConstant - pairedPrimeMass + H_pair(T) + G_parity(T)]*E.
The original PrimitiveStageLower consumer follows conditionally from
the displayed arithmetic scalar margin at stage j. The scalar
margin is NOT asserted true for any conductor; in particular the
odd-conductor-three obstruction from the previous file remains.

The new gamma tail is a positive, nonzero source component, not a
global coercivity certificate. Example at T=1 and odd parity a=1:
G_1(1)=4*exp(-3)/3=0.066382757823..., much smaller than
the absolute gamma constant |c_(3,odd)|=1.131978476967....
It therefore cannot independently pay the stage-zero deficit.
The remaining gamma contribution from intermediate r and correlated
prime phases must be estimated together. No new theorem about the
full completed L-function, zeta negative pole, signed residuals,
RH or Dirichlet GRH follows from this source floor.

Mathematical derivation is standard disjoint-support and elementary
exponential integral. Hostile check: a periodic ring mode would
invalidate disjoint support; the ORIGINAL source lives on R with
pointwise compact support, not on a loop quotient. The two notions
are not coerced. Novelty is not claimed.

Fresh Lean compilation, kernel checking, transitive axiom audit,
independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaTailCompensation

open OddRootProjection SourcePrimeCorrelation LowSchur CharacterWindow
open FrobeniusPhaseSurplus CharacterSensitiveFrobeniusFloor
open WeilCompactSupportUpperBand WeilPhysicalHalfCorrelation
open OddConductorThreeObstruction DirichletStageChain

/-- Exact full support disjointness at r>=2T, modulo one Lebesgue-null
boundary endpoint. The energy is the ORIGINAL source L2 energy. -/
theorem shiftEnergy_eq_two_of_cutoff
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    {T r : ℝ}
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hr : 2 * T ≤ r) :
    energy (fun t => f (t+r)-f t) = 2 * energy f := by
  have hsq : Integrable (fun t : ℝ => ‖f t‖ ^ 2) :=
    hf.integrable_norm_pow (p := 2) (by norm_num)
  have hsqshift : Integrable (fun t : ℝ => ‖f (t+r)‖ ^ 2) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hsq
  have hnot : ∀ᵐ t : ℝ ∂volume, t ≠ -T := by
    rw [ae_iff]
    simp
  have hzero : ∀ᵐ t : ℝ ∂volume, f t = 0 ∨ f (t+r) = 0 := by
    filter_upwards [hnot] with t hne
    by_cases ht : t ∈ Icc (-T) T
    · right
      apply hsupport (t+r)
      intro htr
      have htge := ht.1
      have htrle := htr.2
      have htEq : t = -T := by linarith
      exact hne htEq
    · left
      exact hsupport t ht
  have hpoint :
      (fun t : ℝ => ‖f (t+r)-f t‖ ^ 2) =ᵐ[volume]
        (fun t : ℝ => ‖f (t+r)‖ ^ 2 + ‖f t‖ ^ 2) := by
    filter_upwards [hzero] with t ht
    rcases ht with h | h
    · simp [h]
    · simp [h]
  unfold energy
  rw [integral_congr_ae hpoint, integral_add hsqshift hsq]
  rw [integral_add_right_eq_self (fun t : ℝ => ‖f t‖ ^ 2) r]
  ring

/-- Actual gamma denominator only INCREASES its positive exponential
numerator on the positive shift half-line. -/
theorem parityKernel_ge_exp (a : ℕ) {r : ℝ} (hr : 0 < r) :
    Real.exp (-((a : ℝ) + 1/2)*r) ≤ parityKernel a r := by
  have hden : 0 < 1 - Real.exp (-2*r) := by
    have h : Real.exp (-2*r) < Real.exp 0 :=
      Real.exp_lt_exp.mpr (by linarith)
    simpa only [Real.exp_zero] using sub_pos.mpr h
  unfold parityKernel
  apply (le_div_iff₀ hden).2
  nlinarith [mul_nonneg
    (Real.exp_nonneg (-((a : ℝ) + 1/2)*r))
    (Real.exp_nonneg (-2*r))]

private theorem density_nonneg (a : ℕ) (f : ℝ → ℂ) {r : ℝ}
    (hr : 0 < r) : 0 ≤ gammaCorrectionDensity a f r := by
  unfold gammaCorrectionDensity parityKernel
  have h : Real.exp (-2*r) < 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  exact mul_nonneg
    (div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr h.le))
    (integral_nonneg (fun _ => sq_nonneg _))

/-- An actual explicit, positive source floor depending ONLY on the
original gamma parity and the physical support radius. -/
def gammaTailFloor (a : ℕ) (T : ℝ) : ℝ :=
  2 * Real.exp (-((a : ℝ) + 1/2)*(2*T)) / ((a : ℝ) + 1/2)

theorem gammaTailFloor_pos (a : ℕ) (T : ℝ) :
    0 < gammaTailFloor a T := by
  unfold gammaTailFloor
  exact div_pos (mul_pos (by norm_num) (Real.exp_pos _)) (by positivity)

/-- For every supported L2 source with integrable original gamma
density, the actual gamma shift correction strictly dominates the
explicit positive far-tail multiple of physical energy. -/
theorem gammaCorrectionIntegral_ge_tailFloor
    (a : ℕ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    {T : ℝ} (hT : 0 < T)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0)) :
    gammaTailFloor a T * energy f ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  let α : ℝ := (a : ℝ) + 1/2
  have hα : 0 < α := by dsimp [α]; positivity
  have hsubset : (Ioi (2*T) : Set ℝ) ⊆ Ioi 0 := by
    intro r hr
    have hTT : 0 < 2*T := by linarith
    exact lt_trans hTT hr
  have htailintegrable :
      IntegrableOn (gammaCorrectionDensity a f) (Ioi (2*T)) :=
    harch.mono_set hsubset
  have hexp :
      IntegrableOn (fun r : ℝ => Real.exp (-α*r)) (Ioi (2*T)) := by
    simpa only [neg_mul] using
      (integrableOn_exp_mul_Ioi (a := -α) (by linarith) (2*T))
  have hexpScaled :
      IntegrableOn (fun r : ℝ => (2 * energy f) * Real.exp (-α*r))
        (Ioi (2*T)) :=
    hexp.const_mul _
  have hE : 0 ≤ energy f :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hpoint (r : ℝ) (hr : r ∈ Ioi (2*T)) :
      (2 * energy f) * Real.exp (-α*r) ≤
        gammaCorrectionDensity a f r := by
    have hrr : 2*T ≤ r := le_of_lt hr
    have hs := shiftEnergy_eq_two_of_cutoff hf hsupport hrr
    have hke : Real.exp (-α*r) ≤ parityKernel a r := by
      simpa only [α] using
        parityKernel_ge_exp a (lt_trans (by linarith : 0 < 2*T) hr)
    have hcoeff :
        Real.exp (-α*r) * (2 * energy f) ≤
          parityKernel a r * (2 * energy f) :=
      mul_le_mul_of_nonneg_right hke (by linarith)
    unfold gammaCorrectionDensity
    rw [hs]
    nlinarith [hcoeff]
  have hexp_le_tail :
      (∫ r in Ioi (2*T),
          (2 * energy f) * Real.exp (-α*r)) ≤
        ∫ r in Ioi (2*T), gammaCorrectionDensity a f r :=
    setIntegral_mono_on hexpScaled htailintegrable
      measurableSet_Ioi hpoint
  have hnonneg :
      0 ≤ᵐ[(volume : Measure ℝ).restrict (Ioi 0)]
        (gammaCorrectionDensity a f) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    exact density_nonneg a f hr
  have htail_le_full :
      (∫ r in Ioi (2*T), gammaCorrectionDensity a f r) ≤
        ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r :=
    setIntegral_mono_set harch hnonneg hsubset.eventuallySubset
  have heval :
      (∫ r in Ioi (2*T),
          (2 * energy f) * Real.exp (-α*r)) =
        (2 * energy f) * (Real.exp (-α*(2*T)) / α) := by
    rw [integral_const_mul]
    rw [integral_exp_mul_Ioi (a := -α) (by linarith) (2*T)]
    ring
  calc
    gammaTailFloor a T * energy f =
        (2 * energy f) * (Real.exp (-α*(2*T)) / α) := by
          unfold gammaTailFloor
          dsimp [α]
          ring
    _ = (∫ r in Ioi (2*T),
          (2 * energy f) * Real.exp (-α*r)) := heval.symm
    _ ≤ ∫ r in Ioi (2*T), gammaCorrectionDensity a f r :=
      hexp_le_tail
    _ ≤ ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r :=
      htail_le_full

/-- The ORIGINAL complex-source Q retains the gamma tail and the
entire existing signed prime response. It does not assume a sign. -/
theorem primitiveArithmeticValue_ge_gammaTail
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    {T : ℝ} (hT : 0 < T)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0)) :
    (gammaConstant N (gammaParity chi) -
      characterPrimeMass chi T + gammaTailFloor (gammaParity chi) T) *
      energy f ≤ primitiveArithmeticValue chi hprimitive hnonprincipal T f := by
  have hprime := (le_abs_self _).trans
    (abs_twistedPrime_le_characterPrimeMass_energy chi T hf)
  have htail := gammaCorrectionIntegral_ge_tailFloor
    (gammaParity chi) hf hT hsupport harch
  unfold primitiveArithmeticValue
  nlinarith

/-- On the original real source, use the earlier upper-band gain
AND the new positive far-gamma tail. No change in original weights. -/
theorem primitiveArithmeticValue_ge_upperBand_and_gammaTail
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    {T : ℝ} (hT : 0 < T)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Ioi 0)) :
    (gammaConstant N (gammaParity chi) -
       characterPrimeMass chi T +
       upperBandWeight chi T +
       gammaTailFloor (gammaParity chi) T) * energy f ≤
       primitiveArithmeticValue chi hprimitive hnonprincipal T f := by
  have hgamma := gammaCorrectionIntegral_ge_tailFloor
    (gammaParity chi) hf hT hsupport harch
  have hphase := upperBandWeight_energy_le_phaseSurplus chi T hf
    (halfCorrelationOnUpperBand_of_support T hf hsupport)
  have hsource := primitiveArithmeticValue_exact_phaseSurplus
    chi hprimitive hnonprincipal T f
  rw [hsource]
  nlinarith

/-- Existing one-stage consumer: the gamma tail improves the numerical
margin, but this margin is NOT asserted true for any primitive sector. -/
theorem primitiveStageLower_of_upperBand_and_gammaTail
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (j : ℕ)
    (hmargin :
      characterPrimeMass chi ((j : ℝ)+1) ≤
        gammaConstant N (gammaParity chi) +
        upperBandWeight chi ((j : ℝ)+1) +
        gammaTailFloor (gammaParity chi) ((j : ℝ)+1) +
        (1/2 : ℝ)^j) :
    PrimitiveStageLower chi hprimitive hnonprincipal j := by
  intro f hf
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hE : 0 ≤ energy (liftReal f) :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hcoef :
      -((1/2 : ℝ)^j) ≤
        gammaConstant N (gammaParity chi) -
          characterPrimeMass chi ((j : ℝ)+1) +
          upperBandWeight chi ((j : ℝ)+1) +
          gammaTailFloor (gammaParity chi) ((j : ℝ)+1) := by linarith
  exact (mul_le_mul_of_nonneg_right hcoef hE).trans
    (primitiveArithmeticValue_ge_upperBand_and_gammaTail chi
      hprimitive hnonprincipal (by positivity) hLp hsupport harch)

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaTailCompensation
