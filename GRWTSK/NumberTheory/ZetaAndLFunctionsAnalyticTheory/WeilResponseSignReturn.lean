/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilResponseGeneratedCore
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineSolveResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinal
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Exact signed response criterion and approximation charge

The response-generated form core has been proved dense, not assumed.
Whole-domain lower positivity is therefore equivalent to the corrected
physical response sign on ALL finite combinations of original sine loads.
The exact correction is R - (lambda-epsilon) R*R. Positivity of R alone
is insufficient; this theorem does not produce the arithmetic lower sign.

An a posteriori transport bound pays the error when an exact response is
replaced by a finite-sine trial. It consumes the existing COMPLETE physical
residual, not a finite row sample. The original StageLower predicate is the
final consumer, with its original dyadic defect and all source terms.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit, certified source evaluation and independent review:
NOT_RUN. No universal finite certificate existence or RH/GRH is asserted.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ResponseSignReturn

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open ClosedSourceBilinear ShiftedSourceSolve ResponseGeneratedCore
open FiniteSineOperator FiniteSineSolveResidual MirroredHermitian
open OddHighComplement OddRootProjection OddLiteralCofinal OddWrapEnergy

/-- The physical defect does not replace the graph norm or alter the pole. -/
def correctedEnergy (T β ε : ℝ) (z : FormDomain T) : ℝ :=
  sourceForm T β z z + ε * ‖windowInput T z‖ ^ 2

def responseDefect (T β : ℝ) (hT : 0 < T) (ε : ℝ) (h : WindowPhysical T) : ℝ :=
  inner ℝ h (physicalResponse T β hT h) -
    (regularization T β - ε) * ‖physicalResponse T β hT h‖ ^ 2

theorem correctedEnergy_continuous (T β ε : ℝ) :
    Continuous (correctedEnergy T β ε) := by
  unfold correctedEnergy
  fun_prop

/-- Exact cancellation of the construction shift on a genuine source solve. -/
theorem correctedEnergy_response (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) :
    correctedEnergy T β ε (weakSolve T β hT h) = responseDefect T β hT ε h := by
  have hw := weakSolve_spec T β hT h (weakSolve T β hT h)
  rw [coerciveForm_apply, real_inner_self_eq_norm_sq] at hw
  change sourceForm T β (weakSolve T β hT h) (weakSolve T β hT h) +
    regularization T β * ‖physicalResponse T β hT h‖ ^ 2 =
      inner ℝ h (physicalResponse T β hT h) at hw
  unfold correctedEnergy responseDefect
  change sourceForm T β (weakSolve T β hT h) (weakSolve T β hT h) +
    ε * ‖physicalResponse T β hT h‖ ^ 2 = _
  nlinarith

/-- This quantifies over EVERY finite coefficient vector, not just the
individual loads or a fixed matrix size. The full signed source survives. -/
theorem nonnegative_iff_finite_responses (T β : ℝ) (hT : 0 < T) (ε : ℝ) :
    (∀ z : FormDomain T, 0 ≤ correctedEnergy T β ε z) ↔
      (∀ c : ℕ →₀ ℝ, 0 ≤ responseDefect T β hT ε (loadMap T hT c)) := by
  constructor
  · intro h c
    simpa only [correctedEnergy_response] using h (weakSolve T β hT (loadMap T hT c))
  · intro h z
    have hc : IsClosed {w : FormDomain T | 0 ≤ correctedEnergy T β ε w} :=
      isClosed_le continuous_const (correctedEnergy_continuous T β ε)
    have hs : (responseCore T β hT : Set (FormDomain T)) ⊆
        {w | 0 ≤ correctedEnergy T β ε w} := by
      rintro _ ⟨c, rfl⟩
      simpa only [responseMap_apply, correctedEnergy_response] using h c
    apply closure_minimal hs hc
    rw [← Submodule.topologicalClosure_coe, responseCore_closure]
    trivial

/-- A negative original-domain direction has a finite RESPONSE-combination
witness. This existence theorem supplies neither a search bound nor samples. -/
theorem negative_witness_iff_finite_response (T β : ℝ) (hT : 0 < T) (ε : ℝ) :
    (∃ z : FormDomain T, correctedEnergy T β ε z < 0) ↔
      (∃ c : ℕ →₀ ℝ, responseDefect T β hT ε (loadMap T hT c) < 0) := by
  constructor
  · rintro ⟨z, hz⟩
    by_contra hn
    have hs : ∀ c : ℕ →₀ ℝ, 0 ≤ responseDefect T β hT ε (loadMap T hT c) := by
      intro c
      exact le_of_not_gt (fun hc => hn ⟨c, hc⟩)
    exact (not_le_of_gt hz)
      ((nonnegative_iff_finite_responses T β hT ε).2 hs z)
  · rintro ⟨c, hc⟩
    exact ⟨responseMap T β hT c,
      by simpa only [responseMap_apply, correctedEnergy_response] using hc⟩

/-- The candidate response quantity at a supplied graph-domain trial. -/
def trialDefect (T β ε : ℝ) (h : WindowPhysical T) (v : FormDomain T) : ℝ :=
  inner ℝ h (windowInput T v) -
    (regularization T β - ε) * ‖windowInput T v‖ ^ 2

/-- Pay the linear and quadratic error of a response approximation.
The hypothesis is the ACTUAL graph error, not a finite-coordinate test. -/
theorem responseDefect_error_le (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (v : FormDomain T) (η : ℝ)
    (herror : ‖weakSolve T β hT h - v‖ ≤ η) :
    |responseDefect T β hT ε h - trialDefect T β ε h v| ≤
      η * (‖h‖ + |regularization T β - ε| * (2 * ‖windowInput T v‖ + η)) := by
  let u := physicalResponse T β hT h
  let w := windowInput T v
  have hη : 0 ≤ η := (norm_nonneg _).trans herror
  have he : ‖u - w‖ ≤ η := by
    change ‖windowInput T (weakSolve T β hT h) - windowInput T v‖ ≤ η
    rw [← map_sub]
    exact (windowInput_norm_le T _).trans herror
  have hu : ‖u‖ ≤ ‖w‖ + η := by
    have ht := norm_add_le (u - w) w
    rw [sub_add_cancel] at ht
    linarith
  have hi : |inner ℝ h (u - w)| ≤ ‖h‖ * η := by
    have ht : |inner ℝ h (u - w)| ≤ ‖h‖ * ‖u - w‖ := by
      simpa only [Real.norm_eq_abs] using norm_inner_le_norm h (u - w)
    exact ht.trans (mul_le_mul_of_nonneg_left he (norm_nonneg _))
  have hq : |‖u‖ ^ 2 - ‖w‖ ^ 2| ≤ η * (2 * ‖w‖ + η) := by
    calc
      |‖u‖ ^ 2 - ‖w‖ ^ 2| = |‖u‖ - ‖w‖| * (‖u‖ + ‖w‖) := by
        rw [show ‖u‖ ^ 2 - ‖w‖ ^ 2 = (‖u‖ - ‖w‖) * (‖u‖ + ‖w‖) by ring,
          abs_mul, abs_of_nonneg (add_nonneg (norm_nonneg _) (norm_nonneg _))]
      _ ≤ η * (2 * ‖w‖ + η) :=
        mul_le_mul ((abs_norm_sub_norm_le u w).trans he)
          (by linarith) (add_nonneg (norm_nonneg _) (norm_nonneg _)) hη
  change |(inner ℝ h u - (regularization T β - ε) * ‖u‖ ^ 2) -
      (inner ℝ h w - (regularization T β - ε) * ‖w‖ ^ 2)| ≤ _
  calc
    _ = |inner ℝ h (u - w) -
        (regularization T β - ε) * (‖u‖ ^ 2 - ‖w‖ ^ 2)| := by
          rw [inner_sub_right]
          congr 1
          ring
    _ ≤ |inner ℝ h (u - w)| +
        |regularization T β - ε| * |‖u‖ ^ 2 - ‖w‖ ^ 2| := by
          simpa only [abs_mul] using abs_sub (inner ℝ h (u - w))
            ((regularization T β - ε) * (‖u‖ ^ 2 - ‖w‖ ^ 2))
    _ ≤ ‖h‖ * η + |regularization T β - ε| * (η * (2 * ‖w‖ + η)) :=
      add_le_add hi (mul_le_mul_of_nonneg_left hq (abs_nonneg _))
    _ = _ := by ring

/-- The existing COMPLETE physical residual supplies the required error.
Finite row and remote enclosures remain the explicit suppliers of its norm. -/
theorem finiteTrial_responseDefect_error_le {M : ℕ}
    (T β : ℝ) (hT : 0 < T) (ε : ℝ) (h : WindowPhysical T) (x : Fin M → ℝ) :
    |responseDefect T β hT ε h - trialDefect T β ε h (finiteLift T hT x)| ≤
      ‖physicalResidual T hT β h x‖ *
        (‖h‖ + |regularization T β - ε| *
          (2 * ‖finiteInput T x‖ + ‖physicalResidual T hT β h x‖)) := by
  simpa only [finiteLift_windowInput] using
    responseDefect_error_le T β hT ε h (finiteLift T hT x)
      ‖physicalResidual T hT β h x‖ (weakSolve_error_le_physical T hT β h x)

/-- Observation and response errors are separate charges. -/
theorem responseDefect_lower_of_observation (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (h : WindowPhysical T) (v : FormDomain T) (η observed rounding : ℝ)
    (herror : ‖weakSolve T β hT h - v‖ ≤ η)
    (hobs : |trialDefect T β ε h v - observed| ≤ rounding) :
    observed - rounding -
      η * (‖h‖ + |regularization T β - ε| * (2 * ‖windowInput T v‖ + η)) ≤
        responseDefect T β hT ε h := by
  have ht := (abs_le.mp (responseDefect_error_le T β hT ε h v η herror)).1
  have ho := (abs_le.mp hobs).1
  linarith

/-- Return the dense-core lower sign to every ORIGINAL source representative. -/
theorem literal_lower_of_finite_response_sign (T β : ℝ) (hT : 0 < T) (ε : ℝ)
    (hsign : ∀ c : ℕ →₀ ℝ, 0 ≤ responseDefect T β hT ε (loadMap T hT c))
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0)
    (ho : ∀ᵐ t ∂volume, f (-t) = -f t)
    (he : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T β f + ε * (∫ t : ℝ, ‖f t‖ ^ 2) := by
  obtain ⟨z, hz, _⟩ := existsUnique_form_lift_of_source T f hf hs ho he
  have ha : input T z =ᵐ[volume] f := by
    rw [hz]
    exact hf.coeFn_toLp
  have hq : sourceForm T β z z = shiftedOddWeilEnergy T β f := by
    rw [sourceForm_apply, sourcePairing_congr_ae T β ha ha]
    exact sourcePairing_self T β hf
  have hm : ‖windowInput T z‖ ^ 2 = ∫ t : ℝ, ‖f t‖ ^ 2 := by
    change ‖input T z‖ ^ 2 = _
    rw [norm_sq_integral volume]
    apply integral_congr_ae
    filter_upwards [ha] with t ht
    rw [ht]
  have hp := (nonnegative_iff_finite_responses T β hT ε).2 hsign z
  simpa only [correctedEnergy, hq, hm] using hp

/-- The unchanged literal stage, with dyadic defect and all original tests.
The universal signed response comparison is a premise, NOT a conclusion. -/
theorem stageLower_of_finite_response_sign (j : ℕ)
    (hsign : ∀ c : ℕ →₀ ℝ,
      0 ≤ responseDefect ((j : ℝ) + 1) 0 (by positivity) ((1 / 2 : ℝ) ^ j)
        (loadMap ((j : ℝ) + 1) (by positivity) c)) : StageLower j := by
  intro f hf _hm ho hs he
  have hp := literal_lower_of_finite_response_sign ((j : ℝ) + 1) 0
    (by positivity) ((1 / 2 : ℝ) ^ j) hsign hf hs
    (Eventually.of_forall ho) he
  rw [shiftedOddWeilEnergy_eq_unshifted_sub_mass]
  simpa only [neg_mul, sub_neg_eq_add] using hp

/-- Source return at the existing cofinal endpoint, without a new RH target. -/
theorem literal_nonnegative_of_finite_response_signs
    (hsign : ∀ (j : ℕ) (c : ℕ →₀ ℝ),
      0 ≤ responseDefect ((j : ℝ) + 1) 0 (by positivity) ((1 / 2 : ℝ) ^ j)
        (loadMap ((j : ℝ) + 1) (by positivity) c))
    {T : ℝ} {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hm : Measurable f)
    (ho : Function.Odd f) (hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0)
    (he : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T 0 f :=
  nonnegative_of_stageLower (fun j => stageLower_of_finite_response_sign j (hsign j))
    hf hm ho hs he

end GRWTSK.NumberTheory.WeilQuadraticForm.ResponseSignReturn
