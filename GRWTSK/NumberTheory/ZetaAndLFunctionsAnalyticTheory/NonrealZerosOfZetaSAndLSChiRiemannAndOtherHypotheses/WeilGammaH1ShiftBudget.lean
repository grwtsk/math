/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaNearZeroEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExactGammaTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilPhysicalSineNegativeReturn
import Mathlib.Tactic

/-!
# Native real Weil gamma H1 shift budget

The physical gamma source is the ORIGINAL positive parityKernel a r
integrated against the whole-line translation difference
  ∫_R (f(t+r)-f(t))² dt.
No gamma operator or positive surrogate is introduced.

Two already maintained concrete source bounds are used:
GammaNearZero.kernel_moment_bounds at h=1 and
ExactGammaTail.tailMass_bounds at R=1. The first costs 7/12
times the genuine first-derivative L² mass; the second costs
2*tailUpper a 1 times the genuine function L² mass.

A new physical real shift theorem proves the large-shift
inequality E_r(f) <= 4||f||² from actual Lebesgue translation
invariance, for EVERY real r. Thus no long-range shift inequality
is assumed. The only remaining source analytic input is the
ordinary small-shift H1 estimate
  E_r(f) <= r² ||first||² for 0<r<=1.
It is retained as an explicit premise, not taken as an
axiom or inferred from bare L2. This input is standard for a
genuine first weak/classical derivative; its exact pinned Lean
proof on the intended source domain remains separate.

The theorem establishes integrability of the original gamma
density and its exact parity-dependent H1 upper budget, not a
sign for the FULL Weil form after its prime/pole subtractions.
The zeta and primitive-sector adapters preserve a=0 and the
actual gammaParity chi, respectively.

Source status: MANUAL_LEAN_SOURCE_CANDIDATE, not elaborated or
kernel checked. Full build, transitive axiom audit and independent
mathematical review NOT_RUN. RH and Dirichlet GRH are not proved.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.NativeGammaH1ShiftBudget

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.GammaNearZero
open GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail

/-- Exactly the REAL translation energy of the original physical
conjugate-pair and odd zeta gamma kernels. -/
def realShiftEnergy (f : ℝ → ℝ) (r : ℝ) : ℝ :=
  ∫ t : ℝ, (f (t + r) - f t) ^ 2

def realGammaDensity (a : ℕ) (f : ℝ → ℝ) (r : ℝ) : ℝ :=
  parityKernel a r * realShiftEnergy f r

def realGammaEnergy (a : ℕ) (f : ℝ → ℝ) : ℝ :=
  ∫ r in Ioi (0 : ℝ), realGammaDensity a f r

private theorem source_kernel_nonneg (a : ℕ) {r : ℝ} (hr : 0 < r) :
    0 ≤ parityKernel a r := by
  have hden : 0 < 1 - Real.exp (-2 * r) := by
    have hx : Real.exp (-2 * r) < 1 := by
      rw [← Real.exp_zero]
      exact Real.exp_lt_exp.mpr (by linarith)
    linarith
  unfold parityKernel
  exact div_nonneg (Real.exp_nonneg _) hden.le

private theorem realShiftEnergy_nonneg (f : ℝ → ℝ) (r : ℝ) :
    0 ≤ realShiftEnergy f r := by
  unfold realShiftEnergy
  exact integral_nonneg (fun _ => sq_nonneg _)

private theorem realShiftEnergy_measurable (f : ℝ → ℝ)
    (hf : Continuous f) : Measurable (realShiftEnergy f) := by
  let G : ℝ × ℝ → ℝ := fun z => (f (z.2 + z.1) - f z.2) ^ 2
  have hG : Measurable G := by
    dsimp [G]
    fun_prop
  exact hG.stronglyMeasurable.integral_prod_right'.measurable

private theorem realGammaDensity_measurable (a : ℕ) (f : ℝ → ℝ)
    (hf : Continuous f) : Measurable (realGammaDensity a f) := by
  have hk : Measurable (parityKernel a) := by
    unfold parityKernel
    fun_prop
  exact hk.mul (realShiftEnergy_measurable f hf)

/-- The large-shift estimate is PROVED unconditionally for every real
translation r and every genuine real L² source f. There is no
global Lipschitz or compact-support condition here. -/
theorem realShiftEnergy_le_four_mass
    (f : ℝ → ℝ) (hf : MemLp f 2 volume) (r : ℝ) :
    realShiftEnergy f r ≤ 4 * (∫ t : ℝ, f t ^ 2) := by
  have hshift : MemLp (fun t : ℝ => f (t + r)) 2 volume :=
    hf.comp_measurePreserving (measurePreserving_add_right volume r)
  have hsq : Integrable (fun t : ℝ => f t ^ 2) := hf.integrable_sq
  have hshiftSq : Integrable (fun t : ℝ => f (t + r) ^ 2) :=
    hshift.integrable_sq
  have hdiff : Integrable (fun t : ℝ => (f (t + r) - f t) ^ 2) :=
    (hshift.sub hf).integrable_sq
  have hmajorant : Integrable
      (fun t : ℝ => 2 * (f (t + r) ^ 2 + f t ^ 2)) :=
    (hshiftSq.add hsq).const_mul 2
  have hbound (t : ℝ) :
      (f (t + r) - f t) ^ 2 ≤
        2 * (f (t + r) ^ 2 + f t ^ 2) := by
    nlinarith [sq_nonneg (f (t + r) + f t)]
  calc
    _ ≤ ∫ t : ℝ, 2 * (f (t + r) ^ 2 + f t ^ 2) := by
      exact integral_mono hdiff hmajorant hbound
    _ = 4 * (∫ t : ℝ, f t ^ 2) := by
      rw [integral_const_mul, integral_add hshiftSq hsq,
        integral_add_right_eq_self (fun t : ℝ => f t ^ 2) r]
      ring

/-- The ONLY still-supplied H1 shift assertion is the standard
near-zero translation estimate, with its measured derivative mass. -/
def NearH1ShiftBound (f first : ℝ → ℝ) : Prop :=
  ∀ r ∈ Ioc (0 : ℝ) 1,
    realShiftEnergy f r ≤
      r ^ 2 * (∫ t : ℝ, first t ^ 2)

/-- The original gamma kernel is integrable against the actual shift
energy on the whole positive line, with an outward bound in terms of
the exact native gamma second-moment and tailMajorant. No global
gamma integrability assumption is made here. -/
theorem realGammaEnergy_integrable_and_bound
    (a : ℕ) (f first : ℝ → ℝ)
    (hfCont : Continuous f)
    (hf : MemLp f 2 volume)
    (hfirst : MemLp first 2 volume)
    (hnear : NearH1ShiftBound f first) :
    IntegrableOn (realGammaDensity a f) (Ioi 0) ∧
    0 ≤ realGammaEnergy a f ∧
    realGammaEnergy a f ≤
      (7 / 12 : ℝ) * (∫ t : ℝ, first t ^ 2) +
        2 * tailUpper a 1 * (∫ t : ℝ, f t ^ 2) := by
  let E : ℝ := ∫ t : ℝ, f t ^ 2
  let D : ℝ := ∫ t : ℝ, first t ^ 2
  have hE : 0 ≤ E := integral_nonneg (fun _ => sq_nonneg _)
  have hD : 0 ≤ D := integral_nonneg (fun _ => sq_nonneg _)
  have hmeas : Measurable (realGammaDensity a f) :=
    realGammaDensity_measurable a f hfCont
  obtain ⟨hkHead, _, _, hMomentUpper, _⟩ :=
    GammaNearZero.kernel_moment_bounds a (by norm_num : (0 : ℝ) ≤ 1)
  have hkTail : IntegrableOn (parityKernel a) (Ioi (1 : ℝ)) :=
    ExactGammaTail.parityKernel_integrableOn_tail a (by norm_num)
  have hHead : IntegrableOn (realGammaDensity a f) (Ioc (0 : ℝ) 1) := by
    apply (hkHead.const_mul D).mono' hmeas.aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    have hkr : 0 ≤ parityKernel a r := source_kernel_nonneg a hr.1
    have hG : 0 ≤ realGammaDensity a f r :=
      mul_nonneg hkr (realShiftEnergy_nonneg f r)
    rw [Real.norm_eq_abs, abs_of_nonneg hG]
    calc
      realGammaDensity a f r ≤
          parityKernel a r * (r ^ 2 * D) :=
        mul_le_mul_of_nonneg_left (hnear r hr) hkr
      _ = D * (parityKernel a r * r ^ 2) := by ring
  have hTail : IntegrableOn (realGammaDensity a f) (Ioi (1 : ℝ)) := by
    apply (hkTail.const_mul (4 * E)).mono' hmeas.aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    have hkr : 0 ≤ parityKernel a r :=
      source_kernel_nonneg a (by linarith : 0 < r)
    have hG : 0 ≤ realGammaDensity a f r :=
      mul_nonneg hkr (realShiftEnergy_nonneg f r)
    rw [Real.norm_eq_abs, abs_of_nonneg hG]
    calc
      realGammaDensity a f r ≤
          parityKernel a r * (4 * E) :=
        mul_le_mul_of_nonneg_left (realShiftEnergy_le_four_mass f hf r) hkr
      _ = (4 * E) * parityKernel a r := by ring
  have hUnion : Ioc (0 : ℝ) 1 ∪ Ioi 1 = Ioi 0 := by
    ext r
    constructor
    · rintro (hr | hr)
      · exact hr.1
      · exact (by norm_num : (0 : ℝ) < 1).trans hr
    · intro hr
      by_cases h : r ≤ 1
      · exact Or.inl ⟨hr, h⟩
      · exact Or.inr (lt_of_not_ge h)
  have hDisjoint : Disjoint (Ioc (0 : ℝ) 1) (Ioi 1) := by
    apply Set.disjoint_left.mpr
    intro r hr hr'
    exact (not_lt_of_ge hr.2) hr'
  have hAll : IntegrableOn (realGammaDensity a f) (Ioi 0) := by
    rw [← hUnion]
    exact hHead.union hTail
  have hSplit :
      realGammaEnergy a f =
        (∫ r in Ioc (0 : ℝ) 1, realGammaDensity a f r) +
        (∫ r in Ioi (1 : ℝ), realGammaDensity a f r) := by
    unfold realGammaEnergy
    rw [← hUnion]
    exact setIntegral_union hDisjoint measurableSet_Ioi hHead hTail
  have hHeadBound :
      (∫ r in Ioc (0 : ℝ) 1, realGammaDensity a f r) ≤
        D * GammaNearZero.secondMoment a 1 := by
    calc
      _ ≤ ∫ r in Ioc (0 : ℝ) 1,
          D * (parityKernel a r * r ^ 2) := by
        apply setIntegral_mono_on hHead
          (hkHead.const_mul D) measurableSet_Ioc
        intro r hr
        have hkr : 0 ≤ parityKernel a r := source_kernel_nonneg a hr.1
        calc
          _ ≤ parityKernel a r * (r ^ 2 * D) :=
            mul_le_mul_of_nonneg_left (hnear r hr) hkr
          _ = D * (parityKernel a r * r ^ 2) := by ring
      _ = D * GammaNearZero.secondMoment a 1 := by
        rw [integral_const_mul]
        rfl
  have hTailBound :
      (∫ r in Ioi (1 : ℝ), realGammaDensity a f r) ≤
        (4 * E) * (∫ r in Ioi (1 : ℝ), parityKernel a r) := by
    calc
      _ ≤ ∫ r in Ioi (1 : ℝ), (4 * E) * parityKernel a r := by
        apply setIntegral_mono_on hTail
          (hkTail.const_mul (4 * E)) measurableSet_Ioi
        intro r hr
        have hkr : 0 ≤ parityKernel a r :=
          source_kernel_nonneg a (by linarith : 0 < r)
        calc
          _ ≤ parityKernel a r * (4 * E) :=
            mul_le_mul_of_nonneg_left (realShiftEnergy_le_four_mass f hf r) hkr
          _ = (4 * E) * parityKernel a r := by ring
      _ = _ := by rw [integral_const_mul]
  have hMomentBound : GammaNearZero.secondMoment a 1 ≤ (7 / 12 : ℝ) := by
    norm_num at hMomentUpper
    exact hMomentUpper
  have hTailMoment :=
    (ExactGammaTail.tailMass_bounds a (by norm_num : (0 : ℝ) < 1)).2
  have hTailUniform :
      (4 * E) * (∫ r in Ioi (1 : ℝ), parityKernel a r) ≤
        2 * tailUpper a 1 * E := by
    have hStep :
        2 * E * tailMass a 1 ≤ 2 * E * tailUpper a 1 :=
      mul_le_mul_of_nonneg_left hTailMoment (by positivity)
    unfold ExactGammaTail.tailMass at hStep
    nlinarith
  have hGammaNonneg : 0 ≤ realGammaEnergy a f := by
    unfold realGammaEnergy
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    exact mul_nonneg (source_kernel_nonneg a hr)
      (realShiftEnergy_nonneg f r)
  have hGammaUpper : realGammaEnergy a f ≤
      (7 / 12 : ℝ) * D + 2 * tailUpper a 1 * E := by
    rw [hSplit]
    calc
      _ ≤ D * GammaNearZero.secondMoment a 1 +
          (4 * E) * (∫ r in Ioi (1 : ℝ), parityKernel a r) :=
        add_le_add hHeadBound hTailBound
      _ ≤ D * (7 / 12 : ℝ) + 2 * tailUpper a 1 * E :=
        add_le_add
          (mul_le_mul_of_nonneg_left hMomentBound hD)
          hTailUniform
      _ = _ := by ring
  exact ⟨hAll, hGammaNonneg, hGammaUpper⟩

/-- Source comparison for the unshifted zeta gamma term. This is the
exact previously maintained oddArchimedeanEnergy, not a new kernel. -/
theorem realGammaEnergy_eq_native_zeta (f : ℝ → ℝ) :
    realGammaEnergy 0 f =
      GRWTSK.NumberTheory.WeilQuadraticForm.OddHighComplement.oddArchimedeanEnergy f :=
  rfl

/-- The primitive nonprincipal paired-character physical source uses
exactly this kernel and the retained true character gamma parity. -/
theorem primitive_paired_source_gamma_rewrite
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℝ) :
    GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSineNegativeReturn.
        primitivePairedOddPhysicalValue chi hp hn T f =
      gammaConstant q (gammaParity chi) * (∫ t : ℝ, f t ^ 2) +
        realGammaEnergy (gammaParity chi) f -
        (∑ n ∈ activePrimePowers T, pairedPrimeWeight chi n *
          ((∫ t : ℝ, f t * f (t + Real.log (n : ℝ))) +
           (∫ t : ℝ, f t * f (t - Real.log (n : ℝ))))) :=
  rfl

/-- Zeta keeps parity zero. This bounds ONLY its positive gamma energy,
not the negative original signed zeta pole/prime contributions. -/
theorem zeta_realGamma_H1_bound
    (f first : ℝ → ℝ) (hfCont : Continuous f)
    (hf : MemLp f 2 volume) (hfirst : MemLp first 2 volume)
    (hnear : NearH1ShiftBound f first) :
    realGammaEnergy 0 f ≤
      (7 / 12 : ℝ) * (∫ t : ℝ, first t ^ 2) +
        2 * tailUpper 0 1 * (∫ t : ℝ, f t ^ 2) :=
  (realGammaEnergy_integrable_and_bound 0 f first hfCont hf hfirst hnear).2.2

/-- Character gamma parity is not replaced by the even zeta kernel. -/
theorem primitive_paired_realGamma_H1_bound
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (_hp : chi.IsPrimitive) (_hn : chi ≠ 1)
    (f first : ℝ → ℝ) (hfCont : Continuous f)
    (hf : MemLp f 2 volume) (hfirst : MemLp first 2 volume)
    (hnear : NearH1ShiftBound f first) :
    realGammaEnergy (gammaParity chi) f ≤
      (7 / 12 : ℝ) * (∫ t : ℝ, first t ^ 2) +
        2 * tailUpper (gammaParity chi) 1 *
          (∫ t : ℝ, f t ^ 2) :=
  (realGammaEnergy_integrable_and_bound (gammaParity chi)
    f first hfCont hf hfirst hnear).2.2

end GRWTSK.NumberTheory.WeilQuadraticForm.NativeGammaH1ShiftBudget
