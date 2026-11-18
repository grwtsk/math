/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilTranslationEnergyDomain
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilMirroredHermitian
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.LaxMilgram

/-!
# Continuous symmetric realization of the original signed Weil form

The gamma pairing is the inner product of the actual complete energy
outputs. Its mixed integral is proved integrable before source transport.
The prime operator is the finite sum of BOTH original translations with
all original von Mangoldt weights. The pole functional comes from the
original windowed sinh profile. Their continuous bilinear combination has
diagonal exactly `shiftedOddWeilEnergy` on every point of `FormDomain T`.

Adding `(perturbationBound T beta + 1)` times PHYSICAL mass gives a coercive
form on the already complete graph domain. The scalar pole port is not
shifted, no signed term is dropped, and no arithmetic positivity is assumed.
The Riesz representative here acts in the GRAPH metric; it is not mislabeled
as the unbounded self-adjoint operator on physical L2.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped Topology BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ClosedSourceBilinear

open TranslationCutoffs TranslationEnergyDomain MirroredHermitian
open OddRootProjection OddPrimePoleOutput OddSineForm OddHighComplement
open FixedWindowSemibounded OddLiteralWindow LowSchur

private theorem physical_inner (f g : Physical) :
    inner ℝ f g = ∫ t : ℝ, f t * g t := by
  simp [L2.inner_def, RCLike.inner_apply, mul_comm]

/-- The product of two translated energy outputs is the literal mixed
whole-line difference integral, at each fixed lag. -/
theorem jump_inner (f g : Physical) (r : ℝ) :
    inner ℝ (jump f r) (jump g r) =
      ∫ t : ℝ, (f (t + r) - f t) * (g (t + r) - g t) := by
  rw [physical_inner]
  apply integral_congr_ae
  filter_upwards [jump_ae f r, jump_ae g r] with t hf hg
  rw [hf, hg]

/-- The missing convergence obligation for mixed gamma pairings is
supplied by Hilbert-valued L2 Cauchy--Schwarz, not by totalizing an integral. -/
theorem mixedGamma_integrable (T : ℝ) (z w : FormDomain T) :
    IntegrableOn (fun r => parityKernel 0 r *
      (∫ t : ℝ, (input T z (t + r) - input T z t) *
        (input T w (t + r) - input T w t))) (Ioi (0 : ℝ)) := by
  have hz := (mem_energyGraph_iff (input T z) (output T z)).1 (form_observations T z)
  have hw := (mem_energyGraph_iff (input T w) (output T w)).1 (form_observations T w)
  have hi : Integrable (fun r => inner ℝ (jump (input T z) r)
      (jump (input T w) r)) GammaLag.measure := by
    apply (L2.integrable_inner (𝕜 := ℝ) (output T z) (output T w)).congr
    filter_upwards [hz, hw] with r hzr hwr
    rw [hzr, hwr]
  simpa only [jump_inner] using (GammaLag.integrable_measure_iff _).1 hi

/-- The bundled gamma form agrees with the existing source mixed integral. -/
theorem output_inner_eq_gammaPairing (T : ℝ) (z w : FormDomain T) :
    inner ℝ (output T z) (output T w) =
      gammaPairing (input T z) (input T w) := by
  have hz := (mem_energyGraph_iff (input T z) (output T z)).1 (form_observations T z)
  have hw := (mem_energyGraph_iff (input T w) (output T w)).1 (form_observations T w)
  rw [L2.inner_def]
  calc
    (∫ r, inner ℝ (output T z r) (output T w r) ∂GammaLag.measure) =
        ∫ r, inner ℝ (jump (input T z) r) (jump (input T w) r) ∂GammaLag.measure := by
          apply integral_congr_ae
          filter_upwards [hz, hw] with r hzr hwr
          rw [hzr, hwr]
    _ = _ := by rw [GammaLag.integral_measure]; simp only [jump_inner, gammaPairing]

/-- Both physical orientations are retained. -/
def mirror (r : ℝ) : Physical →L[ℝ] Physical :=
  (translate r).toContinuousLinearMap + (translate (-r)).toContinuousLinearMap

/-- Bounded finite source operator, with the ORIGINAL active prime powers. -/
def primeOperator (T : ℝ) : Physical →L[ℝ] Physical :=
  ∑ q ∈ activePrimePowers T, primeWeight q • mirror (Real.log q)

private theorem translate_inner (r : ℝ) (f g : Physical) :
    inner ℝ (translate r f) g = ∫ t : ℝ, g t * f (t + r) := by
  rw [physical_inner]
  apply integral_congr_ae
  filter_upwards [translate_ae r f] with t ht
  rw [ht, mul_comm]

private theorem backward_pairing (r : ℝ) (f g : Physical) :
    (∫ t : ℝ, g t * f (t + -r)) = ∫ t : ℝ, f t * g (t + r) := by
  simpa only [add_neg_cancel_right, mul_comm] using
    (integral_add_right_eq_self (fun t : ℝ => g t * f (t + -r)) r).symm

private theorem mirror_inner (r : ℝ) (f g : Physical) :
    inner ℝ (mirror r f) g =
      (∫ t : ℝ, g t * f (t + r)) + ∫ t : ℝ, f t * g (t + r) := by
  change inner ℝ (translate r f + translate (-r) f) g = _
  rw [inner_add_left, translate_inner, translate_inner, backward_pairing]

/-- Exact return of the operator pairing to the public prime-output source. -/
theorem primeOperator_inner (T : ℝ) (f g : Physical) :
    inner ℝ (primeOperator T f) g = ∫ t : ℝ, g t * primeOutput T f t := by
  classical
  have hsum (s : Finset ℕ) :
      inner ℝ ((∑ q ∈ s, primeWeight q • mirror (Real.log q)) f) g =
        ∑ q ∈ s, primeWeight q *
          ((∫ t : ℝ, g t * f (t + Real.log q)) +
            ∫ t : ℝ, f t * g (t + Real.log q)) := by
    induction s using Finset.induction_on with
    | empty => simp
    | @insert q s hq ih =>
        rw [Finset.sum_insert hq, Finset.sum_insert hq]
        change inner ℝ (primeWeight q • mirror (Real.log q) f +
          (∑ n ∈ s, primeWeight n • mirror (Real.log n)) f) g = _
        rw [inner_add_left, real_inner_smul_left, mirror_inner, ih]
  exact (hsum (activePrimePowers T)).trans
    (integral_mul_primeOutput T (Lp.memLp f) (Lp.memLp g)).symm

/-- The actual zero-extended pole profile as an L2 equivalence class. -/
def poleVector (T : ℝ) : Physical :=
  (memLp_sourcePoleProfile T).toLp (sourcePoleProfile T)

def poleFunctional (T : ℝ) : FormDomain T →L[ℝ] ℝ :=
  (innerSL ℝ (poleVector T)).comp (input T)

/-- Source support removes the indicator only inside this justified pairing. -/
theorem poleFunctional_apply (T : ℝ) (z : FormDomain T) :
    poleFunctional T z = ∫ t : ℝ, input T z t * Real.sinh (t / 2) := by
  change inner ℝ (poleVector T) (input T z) = _
  rw [physical_inner]
  apply integral_congr_ae
  filter_upwards [(memLp_sourcePoleProfile T).coeFn_toLp,
    form_input_supported T z] with t hp hs
  rw [hp, sourcePoleProfile_apply]
  by_cases ht : t ∈ Icc (-T) T
  · simp [ht, mul_comm]
  · simp [ht, hs ht]

/-- Graph-metric representative of the exact signed form.
It is NOT the unbounded physical-L2 operator. -/
def sourceRepresentative (T β : ℝ) : FormDomain T →L[ℝ] FormDomain T :=
  (output T).adjoint.comp (output T) +
    (gammaConstant 1 0 - β) • ((input T).adjoint.comp (input T)) -
    (input T).adjoint.comp ((primeOperator T).comp (input T)) -
    2 • ((poleFunctional T).adjoint.comp (poleFunctional T))

/-- A continuous bilinear form on the complete ORIGINAL maximal domain. -/
def sourceForm (T β : ℝ) : FormDomain T →L[ℝ] FormDomain T →L[ℝ] ℝ :=
  (innerSL ℝ).comp (sourceRepresentative T β)

/-- Whole-domain, off-diagonal source correspondence. -/
theorem sourceForm_apply (T β : ℝ) (z w : FormDomain T) :
    sourceForm T β z w = sourcePairing T β (input T z) (input T w) := by
  change inner ℝ (sourceRepresentative T β z) w = _
  simp only [sourceRepresentative, ContinuousLinearMap.add_apply,
    ContinuousLinearMap.sub_apply, ContinuousLinearMap.smul_apply,
    ContinuousLinearMap.comp_apply, inner_add_left, inner_sub_left,
    real_inner_smul_left, ContinuousLinearMap.adjoint_inner_left]
  rw [output_inner_eq_gammaPairing, physical_inner, primeOperator_inner]
  simp only [poleFunctional_apply, RCLike.inner_apply, starRingEnd_apply, star_trivial]
  unfold sourcePairing
  ring

theorem sourceForm_symmetric (T β : ℝ) (z w : FormDomain T) :
    sourceForm T β z w = sourceForm T β w z := by
  rw [sourceForm_apply, sourceForm_apply]
  exact sourcePairing_symmetric T β (Lp.memLp (input T z)) (Lp.memLp (input T w))

/-- The diagonal is exactly the original signed energy. -/
theorem sourceForm_self (T β : ℝ) (z : FormDomain T) :
    sourceForm T β z z = shiftedOddWeilEnergy T β (input T z) := by
  rw [sourceForm_apply]
  exact sourcePairing_self T β (Lp.memLp (input T z))

theorem sourceRepresentative_symmetric (T β : ℝ) :
    (sourceRepresentative T β).IsSymmetric := by
  intro z w
  change sourceForm T β z w = inner ℝ z (sourceRepresentative T β w)
  rw [real_inner_comm z (sourceRepresentative T β w)]
  exact sourceForm_symmetric T β z w

/-- Physical mass as a continuous bilinear form on the graph domain. -/
def massForm (T : ℝ) : FormDomain T →L[ℝ] FormDomain T →L[ℝ] ℝ :=
  (innerSL ℝ).comp ((input T).adjoint.comp (input T))

theorem massForm_apply (T : ℝ) (z w : FormDomain T) :
    massForm T z w = inner ℝ (input T z) (input T w) :=
  ContinuousLinearMap.adjoint_inner_left (input T) w (input T z)

/-- The explicit semibounded-source shift acts on PHYSICAL mass only. -/
def regularization (T β : ℝ) : ℝ := perturbationBound T β + 1

theorem regularization_pos (T β : ℝ) (hT : 0 ≤ T) :
    0 < regularization T β := by
  have h := perturbationBound_nonnegative T β hT
  unfold regularization
  linarith

def coerciveForm (T β : ℝ) : FormDomain T →L[ℝ] FormDomain T →L[ℝ] ℝ :=
  sourceForm T β + regularization T β • massForm T

theorem coerciveForm_apply (T β : ℝ) (z w : FormDomain T) :
    coerciveForm T β z w = sourceForm T β z w +
      regularization T β * inner ℝ (input T z) (input T w) := by
  simp only [coerciveForm, ContinuousLinearMap.add_apply,
    ContinuousLinearMap.smul_apply, smul_eq_mul, massForm_apply]

theorem coerciveForm_symmetric (T β : ℝ) (z w : FormDomain T) :
    coerciveForm T β z w = coerciveForm T β w z := by
  rw [coerciveForm_apply, coerciveForm_apply, sourceForm_symmetric,
    real_inner_comm (input T z) (input T w)]

/-- The shifted diagonal returns to the existing exact source norm. -/
theorem coerciveForm_self (T β : ℝ) (z : FormDomain T) :
    coerciveForm T β z z = sourceNormSq T β (input T z) := by
  simpa only [sourceNormSq, regularization, sourceForm_self,
    real_inner_self_eq_norm_sq, norm_sq_integral volume] using
    (coerciveForm_apply T β z z)

/-- The lower constant is proved from the original source estimate,
not supplied as a new positivity assumption. -/
theorem coerciveForm_bounds (T β : ℝ) (hT : 0 ≤ T) (z : FormDomain T) :
    ‖z‖ ^ 2 ≤ coerciveForm T β z z ∧
      coerciveForm T β z z ≤ (2 * perturbationBound T β + 1) * ‖z‖ ^ 2 := by
  rw [coerciveForm_self]
  exact form_sourceNormSq_equivalent T β hT z

theorem coerciveForm_isCoercive (T β : ℝ) (hT : 0 ≤ T) :
    IsCoercive (coerciveForm T β) := by
  refine ⟨1, by norm_num, ?_⟩
  intro z
  simpa only [one_mul, pow_two] using (coerciveForm_bounds T β hT z).1

end GRWTSK.NumberTheory.WeilQuadraticForm.ClosedSourceBilinear
