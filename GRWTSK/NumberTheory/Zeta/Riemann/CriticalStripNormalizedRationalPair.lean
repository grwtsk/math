/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.GaussianRationalDivision
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMultiplierNormalized
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluatedPair

set_option autoImplicit false

/-!
# Rational evaluation of the exact multiplier-normalized source

Every original power proposal is rechecked. The finite-model center is divided
by its exact Gaussian multiplier; its evaluation radius is multiplied by the
computed upper norm of the inverse. The source radii belong to H/A7, not H.
The endpoint evaluator still pays 1/|d| in EVALUATION secants. Only the analytic
source-tail secant radius is separation- and height-independent here.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.NormalizedRationalPair
open Complex Set
open GRWTSK.Analysis.Complex.SymmetricPair
open GRWTSK.Analysis.Complex.SymmetricPair.Rational
open CenteredMellin.SexticPrimitive
open RationalEvaluatedPair (plusPoint minusPoint pairCenter pairOffset displacement)
namespace U
export CenteredMellin.SexticPrimitive.UnitNormalization
  (source model strip enclosure multiplier_ne_zero source_zero_of_target)
end U

abbrev Input := RationalEvaluatedPair.Data

def inverse (s : Gaussian) : Gaussian := Gaussian.qinv (RationalFiniteEvaluation.gproduct 7 s)
def quotientCenter (A : RationalFiniteEvaluation.Data) (N : ℕ) (s : Gaussian) : Gaussian :=
  Gaussian.qmul (A.center N s) (inverse s)
def quotientRadius (A : RationalFiniteEvaluation.Data) (N : ℕ) (s : Gaussian) : ℚ :=
  A.radius N s*(inverse s).l1

def sourceValue (N : ℕ) : ℚ := 1/(151200*(N : ℚ)^5)
def sourceSecant (N : ℕ) : ℚ := 1/(120960*(N : ℚ)^4)

lemma inverse_value {s : Gaussian} (hs : s.value ∈ U.strip) :
    (inverse s).value=(multiplier s.value)⁻¹ := by
  have hp : (RationalFiniteEvaluation.gproduct 7 s).value=multiplier s.value := by
    rw [RationalFiniteEvaluation.gproduct_value,DerivativeSixteen.product_seven]
  rw [inverse,Gaussian.value_qinv (by rw [hp]; exact U.multiplier_ne_zero hs),hp]

lemma quotient_encloses {A : RationalFiniteEvaluation.Data} {N : ℕ} {s : Gaussian}
    (hc : A.check N s=true) (hs : s.value ∈ U.strip) :
    ‖U.model N s.value-(quotientCenter A N s).value‖ ≤ (quotientRadius A N s : ℝ) := by
  have he := RationalFiniteEvaluation.Data.encloses hc
  have hi := Gaussian.norm_value_le_l1 (inverse s)
  have hr : (0 : ℝ) ≤ (A.radius N s : ℝ) :=
    by exact_mod_cast RationalFiniteEvaluation.Data.radius_nonneg hc
  rw [inverse_value hs] at hi
  have heq : U.model N s.value-(quotientCenter A N s).value =
      (finiteModel N s.value-(A.center N s).value)*(multiplier s.value)⁻¹ := by
    rw [quotientCenter,Gaussian.value_qmul,inverse_value hs]
    unfold UnitNormalization.model
    ring
  rw [heq,norm_mul]
  exact (mul_le_mul he hi (norm_nonneg _) hr).trans_eq (by
    simp only [quotientRadius,Rat.cast_mul])

lemma sourceValue_cast (N : ℕ) :
    C1Approximation.tailRadius N=(sourceValue N : ℝ) := by
  norm_num [C1Approximation.tailRadius,sourceValue,Real.rpow_neg] <;> push_cast <;> ring
lemma sourceSecant_cast (N : ℕ) :
    C1Approximation.logRadius N=(sourceSecant N : ℝ) := by
  norm_num [C1Approximation.logRadius,sourceSecant,Real.rpow_neg] <;> push_cast <;> ring

namespace Input

def packed (A : Input) (N : ℕ) (x y : ℚ) : Rational.Data where
  evenCenter := Gaussian.qscale (1/2) (Gaussian.qadd
    (quotientCenter A.plus N (plusPoint x y)) (quotientCenter A.minus N (minusPoint x y)))
  oddCenter := Gaussian.qscale (1/(2*displacement x)) (Gaussian.qsub
    (quotientCenter A.plus N (plusPoint x y)) (quotientCenter A.minus N (minusPoint x y)))
  evenRadius := sourceValue N+
    (quotientRadius A.plus N (plusPoint x y)+quotientRadius A.minus N (minusPoint x y))/2
  oddRadius := sourceSecant N+
    (quotientRadius A.plus N (plusPoint x y)+quotientRadius A.minus N (minusPoint x y))/(2*|displacement x|)
  weightLo := (displacement x)^2
  weightHi := (displacement x)^2

/-- The point-domain, complete power lists, and chosen channel are checked together. -/
def check (A : Input) (N : ℕ) (x y : ℚ) : Bool :=
  decide (0 < x ∧ x < 1 ∧ x ≠ 1/2) &&
    A.plus.check N (plusPoint x y) && A.minus.check N (minusPoint x y) &&
    (A.packed N x y).channelCheck

lemma check_iff (A : Input) (N : ℕ) (x y : ℚ) : A.check N x y=true ↔
    (0 < x ∧ x < 1 ∧ x ≠ 1/2) ∧ A.plus.check N (plusPoint x y)=true ∧
    A.minus.check N (minusPoint x y)=true ∧ (A.packed N x y).channelCheck=true := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq]
  tauto

/-- Independent analytic validity for the NORMALIZED source is constructed. -/
theorem valid {A : Input} {N : ℕ} {x y : ℚ}
    (hx : 0 < x) (hx1 : x < 1) (hoff : x ≠ 1/2)
    (hp : A.plus.check N (plusPoint x y)=true)
    (hm : A.minus.check N (minusPoint x y)=true) :
    (A.packed N x y).ChannelValid U.source (pairCenter y) (pairOffset x) := by
  have hN := ((A.plus.check_iff N (plusPoint x y)).mp hp).1
  have hb := RationalEvaluatedPair.endpoints_in_band y hx hx1
  have hsp : pairCenter y+pairOffset x ∈ U.strip := ⟨hb.1.1,hb.1.2.1⟩
  have hsm : pairCenter y-pairOffset x ∈ U.strip := ⟨hb.2.1,hb.2.2.1⟩
  have hpp : (plusPoint x y).value ∈ U.strip := by
    rwa [(RationalEvaluatedPair.endpoints x y).1] at hsp
  have hmp : (minusPoint x y).value ∈ U.strip := by
    rwa [(RationalEvaluatedPair.endpoints x y).2] at hsm
  have ep := quotient_encloses hp hpp
  have em := quotient_encloses hm hmp
  rw [← (RationalEvaluatedPair.endpoints x y).1] at ep
  rw [← (RationalEvaluatedPair.endpoints x y).2] at em
  have hfinite := channels_of_endpoint_disks ep em
  let C := U.enclosure hN (RationalEvaluatedPair.offset_ne_zero hoff) hsp hsm
  have heC : ‖even U.source (pairCenter y) (pairOffset x)-
      even (U.model N) (pairCenter y) (pairOffset x)‖ ≤ (sourceValue N : ℝ) := by
    have h : ‖even U.source (pairCenter y) (pairOffset x)-
        even (U.model N) (pairCenter y) (pairOffset x)‖ ≤ C1Approximation.tailRadius N := C.even_error
    rwa [sourceValue_cast] at h
  have hoC : ‖odd U.source (pairCenter y) (pairOffset x)-
      odd (U.model N) (pairCenter y) (pairOffset x)‖ ≤ (sourceSecant N : ℝ) := by
    have h : ‖odd U.source (pairCenter y) (pairOffset x)-
        odd (U.model N) (pairCenter y) (pairOffset x)‖ ≤ C1Approximation.logRadius N := C.odd_error
    rwa [sourceSecant_cast] at h
  have heCenter : (A.packed N x y).evenCenter.value =
      ((quotientCenter A.plus N (plusPoint x y)).value+
        (quotientCenter A.minus N (minusPoint x y)).value)/2 := by
    simp only [packed,Gaussian.value_qscale,Gaussian.value_qadd]
    push_cast; ring
  have hoCenter : (A.packed N x y).oddCenter.value =
      ((quotientCenter A.plus N (plusPoint x y)).value-
        (quotientCenter A.minus N (minusPoint x y)).value)/(2*pairOffset x) := by
    simp only [packed,Gaussian.value_qscale,Gaussian.value_qsub]
    simp only [pairOffset]
    push_cast; ring
  constructor
  · change ‖even U.source (pairCenter y) (pairOffset x)-(A.packed N x y).evenCenter.value‖ ≤ _
    rw [heCenter]
    have h := norm_add_le
      (even U.source (pairCenter y) (pairOffset x)-even (U.model N) (pairCenter y) (pairOffset x))
      (even (U.model N) (pairCenter y) (pairOffset x)-
        ((quotientCenter A.plus N (plusPoint x y)).value+
          (quotientCenter A.minus N (minusPoint x y)).value)/2)
    rw [sub_add_sub_cancel] at h
    exact h.trans (by simpa only [packed,Rat.cast_add,Rat.cast_div,Rat.cast_ofNat]
      using add_le_add heC hfinite.1)
  · change ‖odd U.source (pairCenter y) (pairOffset x)-(A.packed N x y).oddCenter.value‖ ≤ _
    rw [hoCenter]
    have h := norm_add_le
      (odd U.source (pairCenter y) (pairOffset x)-odd (U.model N) (pairCenter y) (pairOffset x))
      (odd (U.model N) (pairCenter y) (pairOffset x)-
        ((quotientCenter A.plus N (plusPoint x y)).value-
          (quotientCenter A.minus N (minusPoint x y)).value)/(2*pairOffset x))
    rw [sub_add_sub_cancel] at h
    rw [RationalEvaluatedPair.offset_norm] at hfinite
    exact h.trans (by simpa only [packed,Rat.cast_add,Rat.cast_div,Rat.cast_mul,Rat.cast_ofNat,Rat.cast_abs]
      using add_le_add hoC hfinite.2)

/-- End-to-end source-bound acceptance; no caller-provided tail/evaluation oracle. -/
theorem not_target {A : Input} {N : ℕ} {x y : ℚ} (hc : A.check N x y=true) :
    ¬ NontrivialZetaZero (plusPoint x y).value := by
  obtain ⟨⟨hx,hx1,hoff⟩,hp,hm,hpass⟩ := (A.check_iff N x y).mp hc
  have hn := Rational.Data.channel_sound (A.valid hx hx1 hoff hp hm) hpass
  rw [(RationalEvaluatedPair.endpoints x y).1,(RationalEvaluatedPair.endpoints x y).2] at hn
  intro hz
  have hr : criticalReflection (plusPoint x y).value=(minusPoint x y).value := by
    apply Complex.ext <;> simp [criticalReflection,plusPoint,minusPoint,Gaussian.value]
  have hmzero := U.source_zero_of_target hz.critical_reflection
  rw [hr] at hmzero
  exact hn ⟨U.source_zero_of_target hz,hmzero⟩

end Input
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.NormalizedRationalPair
