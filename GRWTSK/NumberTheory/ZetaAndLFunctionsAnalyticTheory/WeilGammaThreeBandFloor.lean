/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPhysicalThreeSliceCorrelation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaWeightedQuadrature
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Analysis.Complex.Norm
import Mathlib.Tactic

/-!
# The exact physical gamma correction over three disjoint shift bands

The physical shift energy is 2*energy f - 2*Re(correlation f r), with the
original antilinear-first complex whole-line correlation. On a function
supported pointwise in [-T,T], the existing three-slice source candidate
applies for 2T/3 < r <= T, the original half-correlation estimate for
T < r <= 2T, and original support disjointness for 2T < r.

Integrating the source density over these disjoint regions yields
 ( (2-sqrt 2)*kernelCellMass a (2T/3) T
   + kernelCellMass a T (2T) + tailMass a (2T) ) * energy f
   <= integral_(0,infinity) gammaCorrectionDensity a f.
The tailMass definition ALREADY includes the factor 2. The unbounded
parity kernel is never integrated alone at r=0; the physical density
remains integrable by the explicit hypothesis.

The original nonprincipal primitive arithmetic consumer at conductor 3
retains gamma parity, signed character prime phases, every active prime
power, and the original real odd admissible test. In particular, the
result is not the conductor-three PrimitiveStageLower sign theorem.

Hostile analytic comparison: the odd conductor-three scalar coefficient
from this three-band floor plus only the n=2 phase credit is still
strictly below -1. The floor is less than tailMass 1 (2/3), which is
less than log 2; the net prime-two scalar charge is at least log 2.
Thus this particular scalar sufficient bound cannot prove stage zero.
That does not refute the original source form, RH, or GRH. It motivates
retaining coupled gamma/prime correlations rather than scalar floors.

Lean elaboration, kernel replay, transitive-axiom audit, independent
analytic review and completed-L-function Weil source identification
are all NOT_RUN/UNASSESSED for this candidate.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ComplexConjugate BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaThreeBandFloor

open SourcePrimeCorrelation OddRootProjection
open GammaTailCompensation ExactGammaTail GammaWeightedQuadrature
open ThreeSliceCorrelation WeilPhysicalHalfCorrelation
open DirichletStageChain OddConductorThreeObstruction

/-- Real part of the exact antilinear-first autocorrelation controls
the original L2 translation energy, with all complex phases retained. -/
theorem shiftEnergy_eq_two_energy_sub_two_re_correlation
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    energy (fun t => f (t + r) - f t) =
      2 * energy f - 2 * (correlation f r).re := by
  have hsq : Integrable (fun t : ℝ => ‖f t‖ ^ 2) volume :=
    hf.integrable_norm_pow (p := 2) (by norm_num)
  have hshift : Integrable (fun t : ℝ => ‖f (t + r)‖ ^ 2) volume :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hsq
  have hc : Integrable (fun t : ℝ => conj (f t) * f (t + r)) volume :=
    integrable_correlation_integrand hf r
  have hreal : Integrable
      (fun t : ℝ => (conj (f t) * f (t + r)).re) volume := hc.re
  have hpoint (t : ℝ) :
      ‖f (t + r) - f t‖ ^ 2 =
        ‖f (t + r)‖ ^ 2 + ‖f t‖ ^ 2 -
          2 * (conj (f t) * f (t + r)).re := by
    calc
      _ = Complex.normSq (f (t + r) - f t) :=
        (Complex.normSq_eq_norm_sq _).symm
      _ = Complex.normSq (f (t + r)) + Complex.normSq (f t) -
          2 * (f (t + r) * conj (f t)).re :=
            Complex.normSq_sub _ _
      _ = _ := by
        rw [Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq,
          mul_comm (f (t + r)) (conj (f t))]
  calc
    energy (fun t => f (t + r) - f t) =
        ∫ t : ℝ, (‖f (t + r)‖ ^ 2 + ‖f t‖ ^ 2 -
          2 * (conj (f t) * f (t + r)).re) := by
          unfold energy
          exact integral_congr_ae (Filter.Eventually.of_forall hpoint)
    _ = (∫ t : ℝ, ‖f (t + r)‖ ^ 2) +
          (∫ t : ℝ, ‖f t‖ ^ 2) -
          2 * (∫ t : ℝ, (conj (f t) * f (t + r)).re) := by
          rw [integral_sub (hshift.add hsq) (hreal.const_mul 2),
            integral_add hshift hsq, integral_const_mul]
    _ = 2 * energy f - 2 * (correlation f r).re := by
          rw [integral_add_right_eq_self
            (fun t : ℝ => ‖f t‖ ^ 2) r, integral_re hc]
          unfold energy correlation
          ring

/-- Exact partition of a genuine integrable upper-tail integrand.
No naked gamma kernel is integrated across r = 0. -/
private theorem integral_Ioi_split
    (g : ℝ → ℝ) {u v : ℝ} (huv : u ≤ v)
    (hg : IntegrableOn g (Ioi u)) :
    (∫ r in Ioi u, g r) =
      (∫ r in Ioc u v, g r) + ∫ r in Ioi v, g r := by
  have hv : IntegrableOn g (Ioi v) :=
    hg.mono_set (fun r hr => huv.trans_lt hr)
  have hcell : IntegrableOn g (Ioc u v) :=
    hg.mono_set (fun r hr => hr.1)
  have hd : Disjoint (Ioc u v) (Ioi v) := by
    apply Set.disjoint_left.mpr
    intro r hr hr'
    exact (not_lt_of_ge hr.2) hr'
  have hset : Ioc u v ∪ Ioi v = Ioi u := by
    ext r
    constructor
    · rintro (hr | hr)
      · exact hr.1
      · exact huv.trans_lt hr
    · intro hr
      by_cases hv' : r ≤ v
      · exact Or.inl ⟨hr, hv'⟩
      · exact Or.inr (lt_of_not_ge hv')
  rw [← hset]
  exact setIntegral_union hd measurableSet_Ioi hcell hv

/-- An exact integral lower comparison on a measurable source set. -/
private theorem integral_lower_of_weight
    {s : Set ℝ} (hs : MeasurableSet s)
    (K D : ℝ → ℝ) (hK : IntegrableOn K s)
    (hD : IntegrableOn D s) (c : ℝ)
    (hpoint : ∀ r ∈ s, c * K r ≤ D r) :
    c * (∫ r in s, K r) ≤ ∫ r in s, D r := by
  have h := setIntegral_mono_on (hK.const_mul c) hD hs hpoint
  simpa only [integral_const_mul] using h

/-- Reuse the original positive kernel rather than a surrogate majorant. -/
private theorem parityKernel_nonneg (a : ℕ) {r : ℝ} (hr : 0 < r) :
    0 ≤ parityKernel a r :=
  (Real.exp_nonneg _).trans (parityKernel_ge_exp a hr)

/-- Every hypothesis of this theorem concerns the actual gamma correction.
The r=0 kernel singularity is contained in the integrable physical density,
not integrated by itself. -/
theorem gammaCorrection_integral_ge_threeSlice_bandFloor
    (a : ℕ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    {T : ℝ} (hT : 0 < T)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0)) :
    ((2 - Real.sqrt 2) * kernelCellMass a (2 * T / 3) T +
      kernelCellMass a T (2 * T) + tailMass a (2 * T)) * energy f ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  let A : ℝ := 2 * T / 3
  let E : ℝ := energy f
  let D : ℝ → ℝ := gammaCorrectionDensity a f
  have hA : 0 < A := by dsimp [A]; linarith
  have hAT : A ≤ T := by dsimp [A]; linarith
  have hT2 : T ≤ 2 * T := by linarith
  have htwo : 0 < 2 * T := by linarith
  have harchA : IntegrableOn D (Ioi A) :=
    harch.mono_set (fun r hr => hA.trans hr)
  have harchT : IntegrableOn D (Ioi T) :=
    harch.mono_set (fun r hr => hT.trans hr)
  have harch2 : IntegrableOn D (Ioi (2 * T)) :=
    harch.mono_set (fun r hr => htwo.trans hr)
  have hD0 : IntegrableOn D (Ioc 0 A) :=
    harch.mono_set (fun r hr => hr.1)
  have hD1 : IntegrableOn D (Ioc A T) :=
    harch.mono_set (fun r hr => hA.trans hr.1)
  have hD2 : IntegrableOn D (Ioc T (2 * T)) :=
    harch.mono_set (fun r hr => hT.trans hr.1)
  have hsplit0 := integral_Ioi_split D hA.le harch
  have hsplit1 := integral_Ioi_split D hAT harchA
  have hsplit2 := integral_Ioi_split D hT2 harchT
  have hdecomp :
      (∫ r in Ioi (0 : ℝ), D r) =
        (∫ r in Ioc 0 A, D r) +
        (∫ r in Ioc A T, D r) +
        (∫ r in Ioc T (2 * T), D r) +
        (∫ r in Ioi (2 * T), D r) := by
    rw [hsplit0, hsplit1, hsplit2]
    ring
  have hnear : 0 ≤ ∫ r in Ioc 0 A, D r := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    change 0 ≤ gammaCorrectionDensity a f r
    unfold gammaCorrectionDensity
    exact mul_nonneg (parityKernel_nonneg a hr.1)
      (by exact integral_nonneg (fun _ => sq_nonneg _))
  have hk1 : IntegrableOn (parityKernel a) (Ioc A T) :=
    (parityKernel_integrableOn_tail a hA).mono_set (fun r hr => hr.1)
  have hk2 : IntegrableOn (parityKernel a) (Ioc T (2 * T)) :=
    (parityKernel_integrableOn_tail a hT).mono_set (fun r hr => hr.1)
  have hk3 : IntegrableOn (parityKernel a) (Ioi (2 * T)) :=
    parityKernel_integrableOn_tail a htwo
  have hpoint1 (r : ℝ) (hr : r ∈ Ioc A T) :
      ((2 - Real.sqrt 2) * E) * parityKernel a r ≤ D r := by
    have hr0 : 0 < r := hA.trans hr.1
    have h3 : 2 * T < 3 * r := by
      have hleft := hr.1
      dsimp [A] at hleft
      linarith
    have hc := norm_correlation_le_sqrt_two_half_of_three_slice
      hf hT hr0 h3 hsupport
    have hre : (correlation f r).re ≤ ‖correlation f r‖ :=
      (le_abs_self _).trans (Complex.abs_re_le_norm _)
    have heq := shiftEnergy_eq_two_energy_sub_two_re_correlation hf r
    have hshift :
        (2 - Real.sqrt 2) * E ≤
          energy (fun t => f (t + r) - f t) := by
      rw [heq]
      dsimp [E]
      nlinarith [hc, hre]
    calc
      ((2 - Real.sqrt 2) * E) * parityKernel a r =
          parityKernel a r * ((2 - Real.sqrt 2) * E) := mul_comm _ _
      _ ≤ parityKernel a r * energy (fun t => f (t + r) - f t) :=
          mul_le_mul_of_nonneg_left hshift (parityKernel_nonneg a hr0)
      _ = D r := rfl
  have hpoint2 (r : ℝ) (hr : r ∈ Ioc T (2 * T)) :
      E * parityKernel a r ≤ D r := by
    have hr0 : 0 < r := hT.trans hr.1
    have hc := norm_correlation_le_half_energy_of_support
      hf T r hr.1.le hsupport
    have hre : (correlation f r).re ≤ ‖correlation f r‖ :=
      (le_abs_self _).trans (Complex.abs_re_le_norm _)
    have heq := shiftEnergy_eq_two_energy_sub_two_re_correlation hf r
    have hshift : E ≤ energy (fun t => f (t + r) - f t) := by
      rw [heq]
      dsimp [E]
      nlinarith [hc, hre]
    calc
      E * parityKernel a r = parityKernel a r * E := mul_comm _ _
      _ ≤ parityKernel a r * energy (fun t => f (t + r) - f t) :=
          mul_le_mul_of_nonneg_left hshift (parityKernel_nonneg a hr0)
      _ = D r := rfl
  have hpoint3 (r : ℝ) (hr : r ∈ Ioi (2 * T)) :
      (2 * E) * parityKernel a r ≤ D r := by
    have hr2 : 2 * T ≤ r := hr.le
    have heq := shiftEnergy_eq_two_of_cutoff hf hsupport hr2
    change (2 * E) * parityKernel a r ≤
      parityKernel a r * energy (fun t => f (t + r) - f t)
    rw [heq]
    dsimp [E]
    nlinarith
  have hband1 :
      ((2 - Real.sqrt 2) * E) * kernelCellMass a A T ≤
        ∫ r in Ioc A T, D r := by
    exact integral_lower_of_weight measurableSet_Ioc
      (parityKernel a) D hk1 hD1 _
      hpoint1
  have hband2 :
      E * kernelCellMass a T (2 * T) ≤ ∫ r in Ioc T (2 * T), D r := by
    exact integral_lower_of_weight measurableSet_Ioc
      (parityKernel a) D hk2 hD2 E hpoint2
  have hband3 :
      tailMass a (2 * T) * E ≤ ∫ r in Ioi (2 * T), D r := by
    have h :=
      integral_lower_of_weight measurableSet_Ioi
        (parityKernel a) D hk3 harch2 (2 * E) hpoint3
    unfold tailMass
    nlinarith [h]
  change
    ((2 - Real.sqrt 2) * kernelCellMass a A T +
      kernelCellMass a T (2 * T) + tailMass a (2 * T)) * E ≤
      ∫ r in Ioi (0 : ℝ), D r
  rw [hdecomp]
  nlinarith [hnear, hband1, hband2, hband3]

/-- The original primitive nonprincipal conductor-three consumer, for
every genuinely admissible real odd source test. All prime-power phases
remain in the complete pairedPhaseSurplus source identity; the lower
estimate only discards their individually proved nonnegative residuals.
This coefficient is NOT sufficient to establish PrimitiveStageLower. -/
theorem primitiveArithmeticValue_ge_threeBandPrimeTwo
    (chi : DirichletCharacter ℂ 3)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (f : ℝ → ℝ) (hf : Admissible chi 1 f) :
    (gammaConstant 3 (gammaParity chi) -
        pairedPrimeMass chi 1 +
        (2 - Real.sqrt 2) *
          kernelCellMass (gammaParity chi) (2 / 3 : ℝ) 1 +
        kernelCellMass (gammaParity chi) 1 2 +
        tailMass (gammaParity chi) 2 +
        2 * (1 - Real.sqrt 2 / 2) * |pairedPrimeWeight chi 2|) *
      energy (liftReal f) ≤
        primitiveArithmeticValue chi hprimitive hnonprincipal 1
          (liftReal f) := by
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hgamma :=
    gammaCorrection_integral_ge_threeSlice_bandFloor
      (gammaParity chi) hLp (T := 1) (by norm_num) hsupport harch
  have hphase :=
    pairedPhaseSurplus_ge_primeTwo_threeSlice chi hLp hsupport
  have hsource :=
    primitive_real_paired_phaseSurplus_identity
      chi hprimitive hnonprincipal 1 f hLp
  rw [hsource]
  norm_num at hgamma
  nlinarith [hgamma, hphase]

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaThreeBandFloor
