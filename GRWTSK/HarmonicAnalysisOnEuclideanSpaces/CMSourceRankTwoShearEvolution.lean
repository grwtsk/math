/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMArithmeticRankTwoCoupling
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Tactic

/-!
# Two-sided finite-rank source interaction as an exact two-time cocycle

The *given* geometric and arithmetic vectors v and w live in separate
positive Hilbert summands. Their rank-one cross maps F : geometry ->
arithmetic and G : arithmetic -> geometry are each genuine source maps.
Since the two ranges lie in opposite summands, F^2=G^2=0. Consequently
(I+a F)(I+a G) is invertible for every complex a, with inverse
(I-a G)(I-a F); no division by any arithmetic response is required.

The interaction-picture transport A(t) A(s)^(-1) obeys identity, inverse,
and exact two-time composition. Its two directions are nonzero for a
nonzero geometric vector and the retained nonzero arithmetic latent source.
This is a constructed reversible bounded causal coupling, NOT an assertion
that a particular physical Hamiltonian, PDE, or canonical Hodge metric
produces it. The interaction time parameter is a chosen dimensionless
coupling clock; physical calibration remains an independent premise.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceRankTwoShearEvolution

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMArithmeticRankTwoCoupling

universe u v
variable {H : Type u} {C : Type v}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
variable [NormedAddCommGroup C] [InnerProductSpace ℂ C] [CompleteSpace C]

/-- Source-exact maps; the directional order is NOT interchangeable. -/
abbrev F (v : H) (w : C) : Joint H C →L[ℂ] Joint H C := cmToArithmetic v w
abbrev G (v : H) (w : C) : Joint H C →L[ℂ] Joint H C := arithmeticToCM v w

/-- Both off-diagonal rank-one maps square to zero, regardless of norm. -/
theorem F_square_zero (v : H) (w : C) :
    (F v w).comp (F v w) = 0 := by
  have ho : inner ℂ (includeCM (H := H) (C := C) v)
      (includeCausal (H := H) (C := C) w) = 0 :=
    includeCM_orthogonal_includeCausal v w
  change (InnerProductSpace.rankOne ℂ
    (includeCausal (H := H) (C := C) w)
    (includeCM (H := H) (C := C) v)).comp
      (InnerProductSpace.rankOne ℂ
        (includeCausal (H := H) (C := C) w)
        (includeCM (H := H) (C := C) v)) = 0
  rw [InnerProductSpace.rankOne_comp_rankOne]
  simp [ho]

theorem G_square_zero (v : H) (w : C) :
    (G v w).comp (G v w) = 0 := by
  have ho : inner ℂ (includeCausal (H := H) (C := C) w)
      (includeCM (H := H) (C := C) v) = 0 := by
    simp [includeCM_apply, includeCausal_apply, WithLp.prod_inner_apply]
  change (InnerProductSpace.rankOne ℂ
    (includeCM (H := H) (C := C) v)
    (includeCausal (H := H) (C := C) w)).comp
      (InnerProductSpace.rankOne ℂ
        (includeCM (H := H) (C := C) v)
        (includeCausal (H := H) (C := C) w)) = 0
  rw [InnerProductSpace.rankOne_comp_rankOne]
  simp [ho]

/-- Coordinate level: CM input is detected only by the actual geometric vector. -/
theorem F_apply (v : H) (w : C) (x : Joint H C) :
    F v w x = WithLp.toLp 2
      ((0 : H), (inner ℂ v x.fst) • w) := by
  simp [F, cmToArithmetic, InnerProductSpace.rankOne_apply,
    includeCM_apply, includeCausal_apply, WithLp.prod_inner_apply]

/-- Reverse channel detects the full causal Hilbert state. -/
theorem G_apply (v : H) (w : C) (x : Joint H C) :
    G v w x = WithLp.toLp 2
      ((inner ℂ w x.snd) • v, (0 : C)) := by
  simp [G, arithmeticToCM, InnerProductSpace.rankOne_apply,
    includeCM_apply, includeCausal_apply, WithLp.prod_inner_apply]

/-- Geometry -> arithmetic shear, with no unpriced inverse factor. -/
def forwardShear (v : H) (w : C) (a : ℂ) : Joint H C →L[ℂ] Joint H C :=
  ContinuousLinearMap.id ℂ (Joint H C) + a • F v w

/-- Arithmetic -> geometry shear, retaining the opposite direction. -/
def reverseShear (v : H) (w : C) (a : ℂ) : Joint H C →L[ℂ] Joint H C :=
  ContinuousLinearMap.id ℂ (Joint H C) + a • G v w

@[simp] theorem forwardShear_apply (v : H) (w : C) (a : ℂ) (x : Joint H C) :
    forwardShear v w a x = x + a • F v w x := by
  simp [forwardShear]

@[simp] theorem reverseShear_apply (v : H) (w : C) (a : ℂ) (x : Joint H C) :
    reverseShear v w a x = x + a • G v w x := by
  simp [reverseShear]

/-- Nilpotence is the exact algebraic reason the inverse is global. -/
theorem forwardShear_cancel (v : H) (w : C) (a : ℂ) (x : Joint H C) :
    forwardShear v w (-a) (forwardShear v w a x) = x := by
  have hzero : F v w (F v w x) = 0 := by
    have h := congrArg (fun T : Joint H C →L[ℂ] Joint H C => T x)
      (F_square_zero v w)
    simpa only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.zero_apply] using h
  rw [forwardShear_apply, forwardShear_apply]
  rw [map_add, map_smul, hzero]
  simp [smul_smul, add_assoc]

theorem reverseShear_cancel (v : H) (w : C) (a : ℂ) (x : Joint H C) :
    reverseShear v w (-a) (reverseShear v w a x) = x := by
  have hzero : G v w (G v w x) = 0 := by
    have h := congrArg (fun T : Joint H C →L[ℂ] Joint H C => T x)
      (G_square_zero v w)
    simpa only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.zero_apply] using h
  rw [reverseShear_apply, reverseShear_apply]
  rw [map_add, map_smul, hzero]
  simp [smul_smul, add_assoc]

/-- Reverse-order inverse as well. -/
theorem forwardShear_cancel_reverse (v : H) (w : C) (a : ℂ) (x : Joint H C) :
    forwardShear v w a (forwardShear v w (-a) x) = x := by
  simpa only [neg_neg] using forwardShear_cancel v w (-a) x

theorem reverseShear_cancel_reverse (v : H) (w : C) (a : ℂ) (x : Joint H C) :
    reverseShear v w a (reverseShear v w (-a) x) = x := by
  simpa only [neg_neg] using reverseShear_cancel v w (-a) x

/-- Both causal directions appear in the frame. -/
def coupledFrame (v : H) (w : C) (a : ℂ) : Joint H C →L[ℂ] Joint H C :=
  (forwardShear v w a).comp (reverseShear v w a)

/-- The literal two-way frame inverse. -/
def coupledFrameInverse (v : H) (w : C) (a : ℂ) : Joint H C →L[ℂ] Joint H C :=
  (reverseShear v w (-a)).comp (forwardShear v w (-a))

@[simp] theorem coupledFrame_zero (v : H) (w : C) :
    coupledFrame v w 0 = ContinuousLinearMap.id ℂ (Joint H C) := by
  simp [coupledFrame, forwardShear, reverseShear]

@[simp] theorem coupledFrameInverse_zero (v : H) (w : C) :
    coupledFrameInverse v w 0 = ContinuousLinearMap.id ℂ (Joint H C) := by
  simp [coupledFrameInverse, forwardShear, reverseShear]

theorem coupledFrame_inverse_left (v : H) (w : C) (a : ℂ) :
    (coupledFrameInverse v w a).comp (coupledFrame v w a) =
      ContinuousLinearMap.id ℂ (Joint H C) := by
  ext x
  change reverseShear v w (-a)
      (forwardShear v w (-a)
        (forwardShear v w a (reverseShear v w a x))) = x
  rw [forwardShear_cancel, reverseShear_cancel]

theorem coupledFrame_inverse_right (v : H) (w : C) (a : ℂ) :
    (coupledFrame v w a).comp (coupledFrameInverse v w a) =
      ContinuousLinearMap.id ℂ (Joint H C) := by
  ext x
  change forwardShear v w a
      (reverseShear v w a
        (reverseShear v w (-a) (forwardShear v w (-a) x))) = x
  rw [reverseShear_cancel_reverse, forwardShear_cancel_reverse]

/-- A global two-time groupoid evolution; the frame itself need not be unitary. -/
def interactionPicture (v : H) (w : C) (s t : ℝ) : Joint H C →L[ℂ] Joint H C :=
  (coupledFrame v w (t : ℂ)).comp (coupledFrameInverse v w (s : ℂ))

theorem interactionPicture_self (v : H) (w : C) (s : ℝ) :
    interactionPicture v w s s = ContinuousLinearMap.id ℂ (Joint H C) :=
  coupledFrame_inverse_right v w (s : ℂ)

theorem interactionPicture_comp (v : H) (w : C) (s t u : ℝ) :
    (interactionPicture v w t u).comp (interactionPicture v w s t) =
      interactionPicture v w s u := by
  apply ContinuousLinearMap.ext
  intro x
  change coupledFrame v w (u : ℂ)
      (coupledFrameInverse v w (t : ℂ)
        (coupledFrame v w (t : ℂ)
          (coupledFrameInverse v w (s : ℂ) x))) = _
  have hi := congrArg (fun T : Joint H C →L[ℂ] Joint H C =>
    T (coupledFrameInverse v w (s : ℂ) x))
      (coupledFrame_inverse_left v w (t : ℂ))
  rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply] at hi
  rw [hi]
  rfl

theorem interactionPicture_inverse (v : H) (w : C) (s t : ℝ) :
    (interactionPicture v w t s).comp (interactionPicture v w s t) =
      ContinuousLinearMap.id ℂ (Joint H C) := by
  rw [interactionPicture_comp, interactionPicture_self]

/-- At unit coupling time the geometry sector produces a GENUINE causal output. -/
theorem coupledFrame_one_on_CM (v : H) (w : C)
    (hv : ‖v‖ = 1) :
    coupledFrame v w 1 (includeCM (H := H) (C := C) v) =
      WithLp.toLp 2 (v, w) := by
  simp [coupledFrame, forwardShear_apply, reverseShear_apply,
    F_apply, G_apply, includeCM_apply, includeCausal_apply,
    WithLp.prod_inner_apply, inner_self_eq_norm_sq_to_K, hv]

/-- The opposite source direction returns its actual geometric cycle. -/
theorem coupledFrame_one_on_C (v : H) (w : C)
    (hw : ‖w‖ = 1) :
    (coupledFrame v w 1 (includeCausal (H := H) (C := C) w)).fst = v := by
  simp [coupledFrame, forwardShear_apply, reverseShear_apply,
    F_apply, G_apply, includeCM_apply, includeCausal_apply,
    WithLp.prod_inner_apply, inner_self_eq_norm_sq_to_K, hw]

/-- Pointwise finite time bounds, explicit in the source map norms. -/
theorem forwardShear_norm_bound (v : H) (w : C) (a : ℂ) :
    ‖forwardShear v w a‖ ≤ 1 + ‖a‖ * (‖v‖ * ‖w‖) := by
  calc
    _ ≤ ‖(ContinuousLinearMap.id ℂ (Joint H C))‖ + ‖a • F v w‖ :=
      norm_add_le _ _
    _ ≤ 1 + ‖a‖ * (‖v‖ * ‖w‖) := by
      rw [norm_smul, cmToArithmetic_norm]
      exact add_le_add_right (ContinuousLinearMap.norm_id_le :
        ‖(ContinuousLinearMap.id ℂ (Joint H C))‖ ≤ 1) _

theorem reverseShear_norm_bound (v : H) (w : C) (a : ℂ) :
    ‖reverseShear v w a‖ ≤ 1 + ‖a‖ * (‖v‖ * ‖w‖) := by
  calc
    _ ≤ ‖(ContinuousLinearMap.id ℂ (Joint H C))‖ + ‖a • G v w‖ :=
      norm_add_le _ _
    _ ≤ 1 + ‖a‖ * (‖v‖ * ‖w‖) := by
      rw [norm_smul, arithmeticToCM_norm]
      exact add_le_add_right (ContinuousLinearMap.norm_id_le :
        ‖(ContinuousLinearMap.id ℂ (Joint H C))‖ ≤ 1) _

theorem coupledFrame_norm_bound (v : H) (w : C) (a : ℂ) :
    ‖coupledFrame v w a‖ ≤ (1 + ‖a‖ * (‖v‖ * ‖w‖)) ^ 2 := by
  calc
    ‖coupledFrame v w a‖ ≤ ‖forwardShear v w a‖ * ‖reverseShear v w a‖ :=
      ContinuousLinearMap.opNorm_comp_le _ _
    _ ≤ (1 + ‖a‖ * (‖v‖ * ‖w‖)) *
        (1 + ‖a‖ * (‖v‖ * ‖w‖)) := by
      exact mul_le_mul (forwardShear_norm_bound v w a)
        (reverseShear_norm_bound v w a) (norm_nonneg _) (by positivity)
    _ = _ := by ring

theorem coupledFrameInverse_norm_bound (v : H) (w : C) (a : ℂ) :
    ‖coupledFrameInverse v w a‖ ≤ (1 + ‖a‖ * (‖v‖ * ‖w‖)) ^ 2 := by
  calc
    ‖coupledFrameInverse v w a‖ ≤
        ‖reverseShear v w (-a)‖ * ‖forwardShear v w (-a)‖ :=
      ContinuousLinearMap.opNorm_comp_le _ _
    _ ≤ (1 + ‖a‖ * (‖v‖ * ‖w‖)) *
        (1 + ‖a‖ * (‖v‖ * ‖w‖)) := by
      rw [← norm_neg a]
      exact mul_le_mul (reverseShear_norm_bound v w (-a))
        (forwardShear_norm_bound v w (-a)) (norm_nonneg _) (by positivity)
    _ = _ := by ring

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceRankTwoShearEvolution
