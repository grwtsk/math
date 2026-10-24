# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalPairCheck

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c5d776f62190967266cfe4a6a127ca0c1086ba8` · SHA-256 `943aea6613cc02ec9b3f4d1f97578fa8be998c083719117ef2a0dba27f956562`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.SymmetricPairRational
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorPairApproximation

set_option autoImplicit false

/-!
# Checked rational mirror margins with separate arithmetic and evaluation radii

The data keep an exact integer cutoff. SourceTailValid binds H to finiteModel N;
EvaluationValid binds THAT finiteModel to Gaussian rational channel centers.
Neither field is inferred from checker acceptance. All four radii are checked
nonnegative and add before squaring. A checked region still requires continuum
coverage. This is not a universal evaluator or a proof of all-point coverage.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.RationalMirror
open Complex Set
open GRWTSK.Analysis.Complex.SymmetricPair
open CenteredMellin.SexticPrimitive CenteredMellin.SexticPrimitive.C1Approximation

structure Witness where
  cutoff : ℕ
  evenCenter : Rational.Gaussian
  oddCenter : Rational.Gaussian
  sourceValue : ℚ
  sourceSecant : ℚ
  evaluationValue : ℚ
  evaluationSecant : ℚ
  weightLo : ℚ
  weightHi : ℚ
  deriving DecidableEq, Repr

namespace Witness

def packed (W : Witness) : Rational.Data where
  evenCenter := W.evenCenter
  oddCenter := W.oddCenter
  evenRadius := W.sourceValue+W.evaluationValue
  oddRadius := W.sourceSecant+W.evaluationSecant
  weightLo := W.weightLo
  weightHi := W.weightHi

def Guard (W : Witness) : Prop := 1 ≤ W.cutoff ∧
  0 ≤ W.sourceValue ∧ 0 ≤ W.sourceSecant ∧
  0 ≤ W.evaluationValue ∧ 0 ≤ W.evaluationSecant

def check (W : Witness) : Bool :=
  decide (1 ≤ W.cutoff ∧ 0 ≤ W.sourceValue ∧ 0 ≤ W.sourceSecant ∧
    0 ≤ W.evaluationValue ∧ 0 ≤ W.evaluationSecant) && W.packed.check

lemma check_iff (W : Witness) : W.check = true ↔ W.Guard ∧ W.packed.Pass := by
  simp [check, Guard, Rational.Data.check_iff]

/-- Both quantities are errors for the SAME cutoff and mirror coordinates. -/
def SourceTailValid (W : Witness) (c d : ℂ) : Prop :=
  ‖even poleNormalizedZeta c d-even (finiteModel W.cutoff) c d‖ ≤ (W.sourceValue : ℝ) ∧
  ‖odd poleNormalizedZeta c d-odd (finiteModel W.cutoff) c d‖ ≤ (W.sourceSecant : ℝ)

def EvaluationValid (W : Witness) (c d : ℂ) : Prop :=
  ‖even (finiteModel W.cutoff) c d-W.evenCenter.value‖ ≤ (W.evaluationValue : ℝ) ∧
  ‖odd (finiteModel W.cutoff) c d-W.oddCenter.value‖ ≤ (W.evaluationSecant : ℝ)

def WeightValid (W : Witness) (d : ℂ) : Prop :=
  (W.weightLo : ℝ) ≤ ‖d‖^2 ∧ ‖d‖^2 ≤ (W.weightHi : ℝ)

/-- Error radii add BEFORE squaring, retaining all cross-error terms. -/
theorem source_valid {W : Witness} {c d : ℂ}
    (hs : W.SourceTailValid c d) (he : W.EvaluationValid c d)
    (hw : W.WeightValid d) : W.packed.Valid poleNormalizedZeta c d := by
  refine ⟨?_,?_,hw.1,hw.2⟩
  · change ‖even poleNormalizedZeta c d-W.evenCenter.value‖ ≤
      ((W.sourceValue+W.evaluationValue : ℚ) : ℝ)
    rw [Rat.cast_add]
    calc
      _ = ‖(even poleNormalizedZeta c d-even (finiteModel W.cutoff) c d)+
          (even (finiteModel W.cutoff) c d-W.evenCenter.value)‖ := by congr 1; ring
      _ ≤ _ := (norm_add_le _ _).trans (add_le_add hs.1 he.1)
  · change ‖odd poleNormalizedZeta c d-W.oddCenter.value‖ ≤
      ((W.sourceSecant+W.evaluationSecant : ℚ) : ℝ)
    rw [Rat.cast_add]
    calc
      _ = ‖(odd poleNormalizedZeta c d-odd (finiteModel W.cutoff) c d)+
          (odd (finiteModel W.cutoff) c d-W.oddCenter.value)‖ := by congr 1; ring
      _ ≤ _ := (norm_add_le _ _).trans (add_le_add hs.2 he.2)

theorem sound {W : Witness} {c d : ℂ}
    (hs : W.SourceTailValid c d) (he : W.EvaluationValid c d)
    (hw : W.WeightValid d) (hcheck : W.check = true) :
    ¬ (poleNormalizedZeta (c+d)=0 ∧ poleNormalizedZeta (c-d)=0) := by
  have hp := (W.check_iff).mp hcheck
  exact Rational.Data.sound (source_valid hs he hw) ((W.packed.check_iff).mpr hp.2)

/-- Reuse the CONSTRUCTED all-cutoff C1 theorem; only rational majorization remains. -/
theorem sourceTailValid_of_C1 {W : Witness} {T : ℝ} {c d : ℂ}
    (hT : 0 ≤ T) (hN : 1 ≤ W.cutoff) (hd : d ≠ 0)
    (hp : c+d ∈ band T) (hm : c-d ∈ band T)
    (h0 : valueRadius (T+6) W.cutoff ≤ (W.sourceValue : ℝ))
    (h1 : derivativeRadius (T+6) W.cutoff ≤ (W.sourceSecant : ℝ)) :
    W.SourceTailValid c d := by
  have h := MirrorApproximation.channel_errors hT hN hd hp hm
  exact ⟨h.1.trans h0,h.2.trans h1⟩

/-- Concrete inherited tail bounds, not a certificate that the finite model passes. -/
theorem sourceTailValid_cutoff64 {W : Witness} {c d : ℂ}
    (hN : W.cutoff=64) (hd : d ≠ 0) (hp : c+d ∈ band 20) (hm : c-d ∈ band 20)
    (h0 : (1/20000 : ℚ) ≤ W.sourceValue) (h1 : (1/250 : ℚ) ≤ W.sourceSecant) :
    W.SourceTailValid c d := by
  have h := MirrorApproximation.cutoff64_channel_bounds hd hp hm
  unfold SourceTailValid
  rw [hN]
  exact ⟨h.1.trans (by exact_mod_cast h0),h.2.trans (by exact_mod_cast h1)⟩

/-- Acceptance refutes only this actual canonical source zero. -/
theorem not_target {W : Witness} {z : ℂ}
    (hs : W.SourceTailValid (MirrorChannels.center z) (MirrorChannels.offset z))
    (he : W.EvaluationValid (MirrorChannels.center z) (MirrorChannels.offset z))
    (hw : W.WeightValid (MirrorChannels.offset z)) (hcheck : W.check=true) :
    ¬ NontrivialZetaZero z := by
  intro hz
  have h := sound hs he hw hcheck
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset] at h
  exact h ⟨poleNormalizedZeta_zero_of_target hz,
    poleNormalizedZeta_zero_of_target hz.critical_reflection⟩

end Witness

/-- A local region requires the same arithmetic witness to be valid at EVERY
eligible point there. Rational-point samples do not inhabit these fields. -/
structure CertifiedRegion (U : Set ℂ) where
  data : Witness
  accepted : data.check=true
  source : ∀ z ∈ U, MirrorApproximation.Eligible z →
    data.SourceTailValid (MirrorChannels.center z) (MirrorChannels.offset z)
  evaluation : ∀ z ∈ U, MirrorApproximation.Eligible z →
    data.EvaluationValid (MirrorChannels.center z) (MirrorChannels.offset z)
  weight : ∀ z ∈ U, MirrorApproximation.Eligible z → data.WeightValid (MirrorChannels.offset z)

theorem CertifiedRegion.rhOn {U : Set ℂ} (C : CertifiedRegion U) : RHOn U := by
  intro z hz hz0
  by_contra hoff
  have he : MirrorApproximation.Eligible z :=
    ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
  exact Witness.not_target (C.source z hz he) (C.evaluation z hz he)
    (C.weight z hz he) C.accepted hz0

/-- A cover is still a mathematical premise, including all near-line points. -/
theorem rhOn_of_cover {ι : Type*} {U : Set ℂ} (V : ι → Set ℂ)
    (C : ∀ i, CertifiedRegion (V i))
    (hcover : ∀ z ∈ U, MirrorApproximation.Eligible z → ∃ i, z ∈ V i) : RHOn U := by
  intro z hz hz0
  by_contra hoff
  obtain ⟨i,hi⟩ := hcover z hz ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
  exact hoff ((C i).rhOn z hi hz0)

/-- The previous window supplies the closed lower seam through the maintained port. -/
theorem window_successor_of_cover {N : ℕ} (hbase : WindowRH N)
    {ι : Type*} (V : ι → Set ℂ) (C : ∀ i, CertifiedRegion (V i))
    (hcover : ∀ z ∈ HeightFiber.successorBox N,
      MirrorApproximation.Eligible z → ∃ i, z ∈ V i) : WindowRH (N+1) :=
  HeightFiber.window_successor_of_fibers hbase
    (HeightFiber.targetCapacity_of_rhOn (rhOn_of_cover V C hcover))

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.RationalMirror
```
