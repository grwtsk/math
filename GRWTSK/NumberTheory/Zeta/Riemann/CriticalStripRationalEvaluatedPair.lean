/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalFiniteEvaluation

set_option autoImplicit false

/-!
# Evaluated rational mirror pairs with no unfilled evaluation premise

The two finite-evaluation lists are checked at their actual rational endpoints.
The arithmetic tail comes from the preceding constructed C1 theorem. The even
and odd evaluation radii retain the endpoint errors, including division by the
NONZERO displacement in the odd channel. This endpoint evaluator is not a new
uniform near-line secant theorem. All-point complex coverage remains separate.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.RationalEvaluatedPair
open Complex Set
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.Rational
open CenteredMellin.SexticPrimitive CenteredMellin.SexticPrimitive.C1Approximation
open RationalFiniteEvaluation RationalMirror

structure Data where
  plus : RationalFiniteEvaluation.Data
  minus : RationalFiniteEvaluation.Data
  deriving DecidableEq, Repr

def plusPoint (x y : ℚ) : Gaussian := ⟨x,y⟩
def minusPoint (x y : ℚ) : Gaussian := ⟨1-x,y⟩
def displacement (x : ℚ) : ℚ := x-1/2
noncomputable def pairCenter (y : ℚ) : ℂ := (⟨1/2,y⟩ : Gaussian).value
noncomputable def pairOffset (x : ℚ) : ℂ := (displacement x : ℂ)

def sourceValue (N : ℕ) (y : ℚ) : ℚ := (|y|+6)^7/(151200*(N : ℚ)^5)
def sourceSecant (N : ℕ) (y : ℚ) : ℚ :=
  7*(|y|+6)^6/(151200*(N : ℚ)^5)+(|y|+6)^7/(120960*(N : ℚ)^4)

namespace Data

def witness (A : Data) (N : ℕ) (x y : ℚ) : RationalMirror.Witness where
  cutoff := N
  evenCenter := Gaussian.qscale (1/2)
    (Gaussian.qadd (A.plus.center N (plusPoint x y)) (A.minus.center N (minusPoint x y)))
  oddCenter := Gaussian.qscale (1/(2*displacement x))
    (Gaussian.qsub (A.plus.center N (plusPoint x y)) (A.minus.center N (minusPoint x y)))
  sourceValue := sourceValue N y
  sourceSecant := sourceSecant N y
  evaluationValue := (A.plus.radius N (plusPoint x y)+A.minus.radius N (minusPoint x y))/2
  evaluationSecant := (A.plus.radius N (plusPoint x y)+A.minus.radius N (minusPoint x y))/(2*|displacement x|)
  weightLo := (displacement x)^2
  weightHi := (displacement x)^2

/-- Every finite and source-tail charge is recomputed before the final comparison. -/
def check (A : Data) (N : ℕ) (x y : ℚ) : Bool :=
  decide (0 < x ∧ x < 1 ∧ x ≠ 1/2) &&
    A.plus.check N (plusPoint x y) && A.minus.check N (minusPoint x y) &&
    (A.witness N x y).check

lemma check_iff (A : Data) (N : ℕ) (x y : ℚ) : A.check N x y=true ↔
    (0 < x ∧ x < 1 ∧ x ≠ 1/2) ∧ A.plus.check N (plusPoint x y)=true ∧
    A.minus.check N (minusPoint x y)=true ∧ (A.witness N x y).check=true := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq]
  tauto

end Data

lemma endpoints (x y : ℚ) :
    pairCenter y+pairOffset x=(plusPoint x y).value ∧
    pairCenter y-pairOffset x=(minusPoint x y).value := by
  constructor <;> apply Complex.ext <;>
    simp [pairCenter,pairOffset,plusPoint,minusPoint,displacement,Gaussian.value] <;>
    push_cast <;> ring

lemma offset_norm (x : ℚ) : ‖pairOffset x‖=(|displacement x| : ℝ) := by
  have h : pairOffset x = ((displacement x : ℝ) : ℂ) := by
    simp [pairOffset]
  rw [h,Complex.norm_real,Real.norm_eq_abs]
  norm_cast

lemma offset_ne_zero {x : ℚ} (hx : x ≠ 1/2) : pairOffset x ≠ 0 := by
  have hd : displacement x ≠ 0 := sub_ne_zero.mpr hx
  exact_mod_cast hd

lemma sourceValue_cast (N : ℕ) (y : ℚ) :
    valueRadius (|((y : ℚ) : ℝ)|+6) N = (sourceValue N y : ℝ) := by
  norm_num [valueRadius,tailRadius,sourceValue,Real.rpow_neg] <;> push_cast <;> ring

lemma sourceSecant_cast (N : ℕ) (y : ℚ) :
    derivativeRadius (|((y : ℚ) : ℝ)|+6) N = (sourceSecant N y : ℝ) := by
  norm_num [derivativeRadius,tailRadius,logRadius,sourceSecant,Real.rpow_neg] <;>
    push_cast <;> ring

lemma endpoints_in_band {x : ℚ} (y : ℚ) (hx : 0 < x) (hx1 : x < 1) :
    pairCenter y+pairOffset x ∈ band |(y : ℝ)| ∧
    pairCenter y-pairOffset x ∈ band |(y : ℝ)| := by
  rw [(endpoints x y).1,(endpoints x y).2]
  have hxr : (0 : ℝ) < (x : ℝ) := by exact_mod_cast hx
  have hx1r : (x : ℝ) < 1 := by exact_mod_cast hx1
  have hm0 : (0 : ℝ) < ((1-x : ℚ) : ℝ) := by exact_mod_cast (sub_pos.mpr hx1)
  have hm1 : ((1-x : ℚ) : ℝ) < 1 := by exact_mod_cast (by linarith : (1-x : ℚ) < 1)
  exact ⟨⟨hxr,hx1r,neg_abs_le _,le_abs_self _⟩,
    ⟨hm0,hm1,neg_abs_le _,le_abs_self _⟩⟩

/-- This supplier is a theorem, not a caller-provided error array. -/
theorem Data.source_valid {A : Data} {N : ℕ} {x y : ℚ}
    (hN : 1 ≤ N) (hx : 0 < x) (hx1 : x < 1) (hoff : x ≠ 1/2) :
    (A.witness N x y).SourceTailValid (pairCenter y) (pairOffset x) := by
  have hp := endpoints_in_band y hx hx1
  apply Witness.sourceTailValid_of_C1 (T := |(y : ℝ)|)
    (abs_nonneg _) hN (offset_ne_zero hoff) hp.1 hp.2
  · exact (sourceValue_cast N y).le
  · exact (sourceSecant_cast N y).le

/-- Actual finite-model evaluation from both validated power lists. -/
theorem Data.evaluation_valid {A : Data} {N : ℕ} {x y : ℚ}
    (hoff : x ≠ 1/2)
    (hp : A.plus.check N (plusPoint x y)=true)
    (hm : A.minus.check N (minusPoint x y)=true) :
    (A.witness N x y).EvaluationValid (pairCenter y) (pairOffset x) := by
  have hep := RationalFiniteEvaluation.Data.encloses hp
  have hem := RationalFiniteEvaluation.Data.encloses hm
  have hd : 0 < (|displacement x| : ℝ) := by
    have h : (0 : ℚ) < |displacement x| := abs_pos.mpr (sub_ne_zero.mpr hoff)
    exact_mod_cast h
  have hs : ‖(finiteModel N (plusPoint x y).value-(A.plus.center N (plusPoint x y)).value)+
      (finiteModel N (minusPoint x y).value-(A.minus.center N (minusPoint x y)).value)‖ ≤
      ((A.plus.radius N (plusPoint x y)+A.minus.radius N (minusPoint x y) : ℚ) : ℝ) := by
    exact (norm_add_le _ _).trans (by simpa only [Rat.cast_add] using add_le_add hep hem)
  have hdif : ‖(finiteModel N (plusPoint x y).value-(A.plus.center N (plusPoint x y)).value)-
      (finiteModel N (minusPoint x y).value-(A.minus.center N (minusPoint x y)).value)‖ ≤
      ((A.plus.radius N (plusPoint x y)+A.minus.radius N (minusPoint x y) : ℚ) : ℝ) := by
    exact (norm_sub_le _ _).trans (by simpa only [Rat.cast_add] using add_le_add hep hem)
  constructor
  · change ‖even (finiteModel N) (pairCenter y) (pairOffset x)-
        (Gaussian.qscale (1/2) (Gaussian.qadd (A.plus.center N (plusPoint x y))
          (A.minus.center N (minusPoint x y)))).value‖ ≤ _
    rw [Gaussian.value_qscale,Gaussian.value_qadd]
    unfold even
    rw [(endpoints x y).1,(endpoints x y).2]
    have heq : (finiteModel N (plusPoint x y).value+finiteModel N (minusPoint x y).value)/2-
        (1/2 : ℂ)*((A.plus.center N (plusPoint x y)).value+(A.minus.center N (minusPoint x y)).value) =
        ((finiteModel N (plusPoint x y).value-(A.plus.center N (plusPoint x y)).value)+
          (finiteModel N (minusPoint x y).value-(A.minus.center N (minusPoint x y)).value))/2 := by ring
    norm_num only [Rat.cast_div,Rat.cast_one,Rat.cast_ofNat] at *
    rw [heq,norm_div]
    rw [show ‖(2 : ℂ)‖=(2 : ℝ) by norm_num]
    simpa only [Data.witness,Rat.cast_div,Rat.cast_ofNat] using
      div_le_div_of_nonneg_right hs (by norm_num : (0 : ℝ) ≤ 2)
  · change ‖odd (finiteModel N) (pairCenter y) (pairOffset x)-
        (Gaussian.qscale (1/(2*displacement x)) (Gaussian.qsub (A.plus.center N (plusPoint x y))
          (A.minus.center N (minusPoint x y)))).value‖ ≤ _
    rw [Gaussian.value_qscale,Gaussian.value_qsub]
    unfold odd
    rw [(endpoints x y).1,(endpoints x y).2]
    have hc : ((1/(2*displacement x) : ℚ) : ℂ)=1/(2*pairOffset x) := by
      simp [pairOffset]
    rw [hc]
    have hscale : (1/(2*pairOffset x))*
        ((A.plus.center N (plusPoint x y)).value-(A.minus.center N (minusPoint x y)).value) =
        ((A.plus.center N (plusPoint x y)).value-(A.minus.center N (minusPoint x y)).value)/(2*pairOffset x) := by ring
    rw [hscale,← sub_div,norm_div]
    have heq : finiteModel N (plusPoint x y).value-finiteModel N (minusPoint x y).value-
        ((A.plus.center N (plusPoint x y)).value-(A.minus.center N (minusPoint x y)).value) =
        (finiteModel N (plusPoint x y).value-(A.plus.center N (plusPoint x y)).value)-
        (finiteModel N (minusPoint x y).value-(A.minus.center N (minusPoint x y)).value) := by ring
    rw [heq,norm_mul,offset_norm]
    rw [show ‖(2 : ℂ)‖=(2 : ℝ) by norm_num]
    simpa only [Data.witness,Rat.cast_div,Rat.cast_mul,Rat.cast_ofNat,Rat.cast_abs] using
      div_le_div_of_nonneg_right hdif (by positivity : (0 : ℝ) ≤ 2*(|displacement x| : ℝ))

lemma Data.weight_valid (A : Data) (N : ℕ) (x y : ℚ) :
    (A.witness N x y).WeightValid (pairOffset x) := by
  unfold Witness.WeightValid
  rw [offset_norm]
  have he : (((displacement x)^2 : ℚ) : ℝ) = (|displacement x| : ℝ)^2 := by
    norm_cast
    exact (sq_abs (displacement x)).symm
  exact ⟨he.le,he.ge⟩

/-- End-to-end rational acceptance with no caller-supplied analytic validity fields. -/
theorem Data.not_target {A : Data} {N : ℕ} {x y : ℚ} (hc : A.check N x y=true) :
    ¬ NontrivialZetaZero (plusPoint x y).value := by
  obtain ⟨⟨hx,hx1,hoff⟩,hp,hm,hw⟩ := (A.check_iff N x y).mp hc
  have hN := ((A.plus.check_iff N (plusPoint x y)).mp hp).1
  have hs := Witness.sound (A.source_valid hN hx hx1 hoff)
    (A.evaluation_valid hoff hp hm) (A.weight_valid N x y) hw
  rw [(endpoints x y).1,(endpoints x y).2] at hs
  intro hz
  have hmzero := poleNormalizedZeta_zero_of_target hz.critical_reflection
  have hr : criticalReflection (plusPoint x y).value=(minusPoint x y).value := by
    apply Complex.ext <;> simp [criticalReflection,plusPoint,minusPoint,Gaussian.value]
  rw [hr] at hmzero
  exact hs ⟨poleNormalizedZeta_zero_of_target hz,hmzero⟩

/-- Pure finite proposal generation. No success, adaptive termination, or coverage claim. -/
def rawData (N m n : ℕ) (x y : ℚ) : Data :=
  ⟨RationalFiniteEvaluation.rawData N m n (plusPoint x y),
    RationalFiniteEvaluation.rawData N m n (minusPoint x y)⟩

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.RationalEvaluatedPair
