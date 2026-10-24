/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformFiniteC1
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluatedPair

set_option autoImplicit false

/-!
# Separation-uniform evaluation errors for the actual mirror-pair checker

Finite-evaluation error is now transported by a derivative theorem for ONE
polynomial on the WHOLE horizontal segment. No endpoint-error division by |d|
appears in either error radius. Exact polynomial secant evaluation still divides
by nonzero rational d; this is exact arithmetic, not an error amplification.
The same continuum enclosure feeds the previous successor under an explicit
all-point strict-margin premise. No new shell or coverage is asserted.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.UniformPairEvaluation
open Complex Set
open UniformFiniteC1
open CenteredMellin.SexticPrimitive CenteredMellin.SexticPrimitive.C1Approximation
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.Rational
open RationalEvaluatedPair
noncomputable section

lemma norm_le_of_band {T : ℝ} {s : ℂ} (hs : s ∈ band T) : ‖s‖ ≤ T+1 := by
  have hr : |s.re| ≤ 1 := by rw [abs_of_pos hs.1]; exact hs.2.1.le
  have hi : |s.im| ≤ T := abs_le.mpr ⟨hs.2.2.1,hs.2.2.2⟩
  have h := (Complex.norm_le_abs_re_add_abs_im s).trans (add_le_add hr hi)
  linarith

/-- All points of the convex source band are used, not just rational endpoints. -/
def finiteEnclosure {C : Config} {T : ℝ} {c d : ℂ}
    (hc : C.Guard) (hsize : T+1 ≤ (C.size : ℝ)) (hd : d ≠ 0)
    (hp : c+d ∈ band T) (hm : c-d ∈ band T) :
    Enclosure (finiteModel C.cutoff) C.polynomial c d :=
  Enclosure.ofRegion (C.valueRadius : ℝ) (C.derivativeRadius : ℝ)
    (by exact_mod_cast (Config.radii_nonneg hc).1) (by exact_mod_cast (Config.radii_nonneg hc).2)
    hd (band_convex T)
    (fun s _ => (Config.finite_hasDerivAt hc.1 s).differentiableAt)
    (fun s _ => (C.polynomial_hasDerivAt s).differentiableAt)
    (fun s hs => (Config.errors hc hs.1.le ((norm_le_of_band hs).trans hsize)).1)
    (fun s hs => (Config.errors hc hs.1.le ((norm_le_of_band hs).trans hsize)).2) hp hm

/-- The actual Mellin tail and finite polynomial evaluation compose before squaring. -/
def sourceEnclosure {C : Config} {T : ℝ} {c d : ℂ}
    (hc : C.Guard) (hT : 0 ≤ T) (hsize : T+1 ≤ (C.size : ℝ)) (hd : d ≠ 0)
    (hp : c+d ∈ band T) (hm : c-d ∈ band T) :
    Enclosure poleNormalizedZeta C.polynomial c d :=
  (MirrorApproximation.enclosure hT hc.1 hd hp hm).trans (finiteEnclosure hc hsize hd hp hm)

def totalBudget (C : Config) (T : ℝ) (d : ℂ) : ℝ :=
  (valueRadius (T+6) C.cutoff+(C.valueRadius : ℝ))^2+
    ‖d‖^2*(derivativeRadius (T+6) C.cutoff+(C.derivativeRadius : ℝ))^2

lemma sourceEnclosure_budget {C : Config} {T : ℝ} {c d : ℂ}
    (hc : C.Guard) (hT : 0 ≤ T) (hsize : T+1 ≤ (C.size : ℝ)) (hd : d ≠ 0)
    (hp : c+d ∈ band T) (hm : c-d ∈ band T) :
    (sourceEnclosure hc hT hsize hd hp hm).budget=totalBudget C T d := rfl

/-- The finite-evaluation secant error is uniform over every nonzero displacement. -/
theorem finite_channel_errors {C : Config} {T : ℝ} {c d : ℂ}
    (hc : C.Guard) (hsize : T+1 ≤ (C.size : ℝ)) (hd : d ≠ 0)
    (hp : c+d ∈ band T) (hm : c-d ∈ band T) :
    ‖even (finiteModel C.cutoff) c d-even C.polynomial c d‖ ≤ (C.valueRadius : ℝ) ∧
    ‖odd (finiteModel C.cutoff) c d-odd C.polynomial c d‖ ≤ (C.derivativeRadius : ℝ) :=
  ⟨(finiteEnclosure hc hsize hd hp hm).even_error,(finiteEnclosure hc hsize hd hp hm).odd_error⟩

/-- The previous rational witness is reused with NEW uniform evaluation radii. -/
def witness (C : Config) (x y : ℚ) : RationalMirror.Witness where
  cutoff := C.cutoff
  evenCenter := Gaussian.qscale (1/2)
    (Gaussian.qadd (C.evaluate (plusPoint x y)) (C.evaluate (minusPoint x y)))
  oddCenter := Gaussian.qscale (1/(2*displacement x))
    (Gaussian.qsub (C.evaluate (plusPoint x y)) (C.evaluate (minusPoint x y)))
  sourceValue := RationalEvaluatedPair.sourceValue C.cutoff y
  sourceSecant := RationalEvaluatedPair.sourceSecant C.cutoff y
  evaluationValue := C.valueRadius
  evaluationSecant := C.derivativeRadius
  weightLo := (displacement x)^2
  weightHi := (displacement x)^2

def check (C : Config) (x y : ℚ) : Bool := C.check &&
  decide (0 < x ∧ x < 1 ∧ x ≠ 1/2 ∧ |y|+1 ≤ C.size) && (witness C x y).check

lemma check_iff (C : Config) (x y : ℚ) : check C x y=true ↔
    C.Guard ∧ (0 < x ∧ x < 1 ∧ x ≠ 1/2 ∧ |y|+1 ≤ C.size) ∧ (witness C x y).check=true := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq,Config.check_iff]
  tauto

lemma centers {C : Config} {x y : ℚ} (hoff : x ≠ 1/2) :
    (witness C x y).evenCenter.value=even C.polynomial (pairCenter y) (pairOffset x) ∧
    (witness C x y).oddCenter.value=odd C.polynomial (pairCenter y) (pairOffset x) := by
  constructor
  · simp only [witness,Gaussian.value_qscale,Gaussian.value_qadd,Config.evaluate_value,
      even,(endpoints x y).1,(endpoints x y).2]
    push_cast
    ring
  · simp only [witness,Gaussian.value_qscale,Gaussian.value_qsub,Config.evaluate_value,
      odd,(endpoints x y).1,(endpoints x y).2]
    have hcast : ((1/(2*displacement x) : ℚ) : ℂ)=1/(2*pairOffset x) := by simp [pairOffset]
    rw [hcast]
    ring

lemma source_valid {C : Config} {x y : ℚ} (hc : C.Guard)
    (hx : 0 < x) (hx1 : x < 1) (hoff : x ≠ 1/2) :
    (witness C x y).SourceTailValid (pairCenter y) (pairOffset x) := by
  have hp := endpoints_in_band y hx hx1
  apply RationalMirror.Witness.sourceTailValid_of_C1 (T := |(y : ℝ)|)
    (abs_nonneg _) hc.1 (offset_ne_zero hoff) hp.1 hp.2
  · exact (sourceValue_cast C.cutoff y).le
  · exact (sourceSecant_cast C.cutoff y).le

lemma evaluation_valid {C : Config} {x y : ℚ} (hc : C.Guard)
    (hx : 0 < x) (hx1 : x < 1) (hoff : x ≠ 1/2) (hsize : |y|+1 ≤ C.size) :
    (witness C x y).EvaluationValid (pairCenter y) (pairOffset x) := by
  have hp := endpoints_in_band y hx hx1
  have he := finite_channel_errors hc (T := |(y : ℝ)|)
    (by exact_mod_cast hsize) (offset_ne_zero hoff) hp.1 hp.2
  unfold RationalMirror.Witness.EvaluationValid
  rw [(centers hoff).1,(centers hoff).2]
  exact he

lemma weight_valid (C : Config) (x y : ℚ) : (witness C x y).WeightValid (pairOffset x) := by
  unfold RationalMirror.Witness.WeightValid
  rw [offset_norm]
  have h : (((displacement x)^2 : ℚ) : ℝ)=(|displacement x| : ℝ)^2 := by
    norm_cast
    exact (sq_abs (displacement x)).symm
  exact ⟨h.le,h.ge⟩

/-- Boolean soundness with source and uniform finite-evaluation bindings constructed. -/
theorem not_target {C : Config} {x y : ℚ} (hc : check C x y=true) :
    ¬ NontrivialZetaZero (plusPoint x y).value := by
  obtain ⟨hcfg,⟨hx,hx1,hoff,hsize⟩,hw⟩ := (check_iff C x y).mp hc
  have h := RationalMirror.Witness.sound (source_valid hcfg hx hx1 hoff)
    (evaluation_valid hcfg hx hx1 hoff hsize) (weight_valid C x y) hw
  rw [(endpoints x y).1,(endpoints x y).2] at h
  intro hz
  have hm := poleNormalizedZeta_zero_of_target hz.critical_reflection
  have he : criticalReflection (plusPoint x y).value=(minusPoint x y).value := by
    apply Complex.ext <;> simp [criticalReflection,plusPoint,minusPoint,Gaussian.value]
  rw [he] at hm
  exact h ⟨poleNormalizedZeta_zero_of_target hz,hm⟩

/-- The missing strict margin remains an ALL-POINT premise, not a finite sample set. -/
theorem window_successor_of_uniform_margin {K : ℕ} {C : Config}
    (hbase : WindowRH K) (hc : C.Guard)
    (hsize : (((K+1 : ℕ) : ℝ)+1) ≤ (C.size : ℝ))
    (hgap : ∀ z ∈ HeightFiber.successorBox K, MirrorApproximation.Eligible z →
      totalBudget C ((K+1 : ℕ) : ℝ) (MirrorChannels.offset z) <
        energy C.polynomial (MirrorChannels.center z) (MirrorChannels.offset z)) :
    WindowRH (K+1) := by
  apply HeightFiber.window_successor_of_fibers hbase
  apply HeightFiber.targetCapacity_of_rhOn
  intro z hz hz0
  by_contra hoff
  have hel : MirrorApproximation.Eligible z := ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
  have hb := HeightFiber.mem_successorBox.mp hz
  have hT0 : (0 : ℝ) ≤ ((K+1 : ℕ) : ℝ) := Nat.cast_nonneg _
  have hi0 : 0 ≤ z.im := (Nat.cast_nonneg K).trans hb.2.2.1
  have hp : MirrorChannels.center z+MirrorChannels.offset z ∈ band ((K+1 : ℕ) : ℝ) := by
    rw [MirrorChannels.center_plus_offset]
    exact ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,by linarith,hb.2.2.2⟩
  have hm : MirrorChannels.center z-MirrorChannels.offset z ∈ band ((K+1 : ℕ) : ℝ) := by
    rw [MirrorChannels.center_minus_offset]
    have hzm := hz0.critical_reflection.mem_critical_strip
    have he : (criticalReflection z).im=z.im := by simp [criticalReflection]
    exact ⟨hzm.1,hzm.2,by rw [he]; linarith,by rwa [he]⟩
  let E := sourceEnclosure hc hT0 hsize (MirrorChannels.offset_ne_zero hoff) hp hm
  apply E.excludes_pair (hgap z hz hel)
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset]
  exact ⟨poleNormalizedZeta_zero_of_target hz0,poleNormalizedZeta_zero_of_target hz0.critical_reflection⟩

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.UniformPairEvaluation
