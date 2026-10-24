# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripChannelChoice

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2564a62cd4dc91a81e5a0e46016c59338bd1af15` · SHA-256 `13c918f81f56390d479442a5de6a41f13e156defbd19b6200f081c1b79d6e073`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.SymmetricPairChannelChoice
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPairRegion

set_option autoImplicit false

/-!
# Channel-selective arithmetic region certificates

The polynomial, exact source binding, whole-region C1 errors and every domain
guard are unchanged. Either independently positive channel can now discharge
mirror-pair exclusion. This strictly generalizes the prior fixed-weight test.
The concrete odd-channel supplier reuses the ACTUAL FifteenWitness derivative
certificate. It allows a central source zero and claims no new height window.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
open Complex Set
open UniformFiniteC1 CenteredMellin.SexticPrimitive.C1Approximation
open GRWTSK.Analysis.Complex.SymmetricPair
open GRWTSK.Analysis.Complex.SymmetricPair.Rational
noncomputable section
namespace UniformPairRegion.Packet

/-- The previous source/evaluation obligations remain; only the terminal margin changes. -/
def ChoiceGuard (W : Packet) (C : Config) : Prop :=
  C.Guard ∧ 0 ≤ W.heightRadius ∧ 0 < W.offsetRadius ∧ W.offsetRadius ≤ 1/2 ∧
  0 ≤ W.valueError ∧ 0 ≤ W.secantError ∧ W.heightBound+1 ≤ C.size ∧
  RationalEvaluatedPair.sourceValue C.cutoff W.heightBound+C.valueRadius ≤ W.valueError ∧
  RationalEvaluatedPair.sourceSecant C.cutoff W.heightBound+C.derivativeRadius ≤ W.secantError ∧
  (W.valueError < W.lowerEven ∨ W.secantError < W.lowerOdd)

def choiceCheck (W : Packet) (C : Config) : Bool := decide (W.ChoiceGuard C)

lemma choiceCheck_iff (W : Packet) (C : Config) :
    W.choiceCheck C=true ↔ W.ChoiceGuard C := by simp [choiceCheck]

/-- The existing polynomial identities and source bounds are still mandatory. -/
theorem old_check_implies_choiceCheck {W : Packet} {C : Config}
    (hcheck : W.check C=true) : W.choiceCheck C=true := by
  obtain ⟨hc,hh,hD,hD1,he0,he1,hs,hv,hd,ha,hend⟩ := (W.check_iff C).mp hcheck
  apply (W.choiceCheck_iff C).mpr
  refine ⟨hc,hh,hD,hD1,he0,he1,hs,hv,hd,?_⟩
  by_contra hn
  have he : W.lowerEven ≤ W.valueError := by
    by_contra h
    exact hn (Or.inl (lt_of_not_ge h))
  have ho : W.lowerOdd ≤ W.secantError := by
    by_contra h
    exact hn (Or.inr (lt_of_not_ge h))
  have he2 := pow_le_pow_left₀ W.bounds.1.lower_nonneg he 2
  have ho2 := pow_le_pow_left₀ W.bounds.2.lower_nonneg ho 2
  have hw := mul_nonpos_of_nonneg_of_nonpos (sq_nonneg W.offsetRadius)
    (sub_nonpos.mpr ho2)
  unfold constantGap slopeGap at hend
  nlinarith

/-- A channel selected by a rational guard is nonzero for the ACTUAL source.
An inaccurate unused channel is not subtracted from its strict margin. -/
theorem choice_rhOn {W : Packet} {C : Config}
    (hcheck : W.choiceCheck C=true) (hb : W.Binds C) : RHOn W.carrier := by
  obtain ⟨hc,hh,hD,hD1,he0,he1,hs,hv,hd,hchoice⟩ := (W.choiceCheck_iff C).mp hcheck
  intro z hz hz0
  by_contra hoff
  have hTq : (0 : ℚ) ≤ W.heightBound := add_nonneg (abs_nonneg _) hh
  have hT : (0 : ℝ) ≤ (W.heightBound : ℝ) := by exact_mod_cast hTq
  have hheight := abs_le.mp (height_bound hz)
  have hp : MirrorChannels.center z+MirrorChannels.offset z ∈ band (W.heightBound : ℝ) := by
    rw [MirrorChannels.center_plus_offset]
    exact ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hheight.1,hheight.2⟩
  have hm : MirrorChannels.center z-MirrorChannels.offset z ∈ band (W.heightBound : ℝ) := by
    rw [MirrorChannels.center_minus_offset]
    have hr := hz0.critical_reflection.mem_critical_strip
    have hi : (criticalReflection z).im=z.im := by simp [criticalReflection]
    exact ⟨hr.1,hr.2,by rwa [hi],by rwa [hi]⟩
  let E := UniformPairEvaluation.sourceEnclosure hc hT (by exact_mod_cast hs)
    (MirrorChannels.offset_ne_zero hoff) hp hm
  have hvCast := RationalEvaluatedPair.sourceValue_cast C.cutoff W.heightBound
  have hdCast := RationalEvaluatedPair.sourceSecant_cast C.cutoff W.heightBound
  rw [abs_of_nonneg hT] at hvCast hdCast
  have he : E.valueError ≤ (W.valueError : ℝ) := by
    change valueRadius ((W.heightBound : ℝ)+6) C.cutoff+(C.valueRadius : ℝ) ≤ _
    rw [hvCast]
    exact_mod_cast hv
  have ho : E.secantError ≤ (W.secantError : ℝ) := by
    change derivativeRadius ((W.heightBound : ℝ)+6) C.cutoff+(C.derivativeRadius : ℝ) ≤ _
    rw [hdCast]
    exact_mod_cast hd
  have hchannels := channel_bounds hz hoff
  have hfunc : W.model=C.polynomial := funext hb
  rw [hfunc] at hchannels
  have hstrict : E.valueError < ‖even C.polynomial (MirrorChannels.center z) (MirrorChannels.offset z)‖ ∨
      E.secantError < ‖odd C.polynomial (MirrorChannels.center z) (MirrorChannels.offset z)‖ := by
    rcases hchoice with hvpos | hdpos
    · have hvR : (W.valueError : ℝ) < (W.lowerEven : ℝ) := by exact_mod_cast hvpos
      exact Or.inl (he.trans_lt (hvR.trans_le hchannels.1))
    · have hdR : (W.secantError : ℝ) < (W.lowerOdd : ℝ) := by exact_mod_cast hdpos
      exact Or.inr (ho.trans_lt (hdR.trans_le hchannels.2))
  apply E.excludes_pair_of_channel hstrict
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset]
  exact ⟨poleNormalizedZeta_zero_of_target hz0,poleNormalizedZeta_zero_of_target hz0.critical_reflection⟩

end UniformPairRegion.Packet
namespace ChannelChoice

/-- A source-zero-permitting rational certificate, not a new zeta sample. -/
def fifteenOdd : Selected := ⟨.odd,⟨1,13⟩,12⟩

lemma fifteenOdd_check : fifteenOdd.check=true := by
  norm_num [Selected.check,Selected.Pass,Gaussian.normSq,fifteenOdd]

lemma fifteenOdd_center : fifteenOdd.center.value=FifteenWitness.linearPart := by
  apply Complex.ext <;> norm_num [fifteenOdd,Gaussian.value,FifteenWitness.linearPart]

/-- Reuse the complete existing derivative witness, including its arithmetic tail. -/
theorem fifteenOdd_valid {z : ℂ} (hx : 0 < z.re) (hx1 : z.re < 1)
    (ht : (14 : ℝ) ≤ z.im) (ht1 : z.im ≤ 15) (hoff : z.re ≠ 1/2) :
    fifteenOdd.Valid poleNormalizedZeta (MirrorChannels.center z) (MirrorChannels.offset z) := by
  change ‖odd poleNormalizedZeta (MirrorChannels.center z) (MirrorChannels.offset z)-
    fifteenOdd.center.value‖ ≤ (12 : ℝ)
  rw [fifteenOdd_center]
  exact MirrorChannels.fifteen_odd_channel_bound hx hx1 ht ht1 hoff

/-- An actual channel lower bound, not a difference of squared error budgets. -/
theorem fifteenOdd_lower {z : ℂ} (hx : 0 < z.re) (hx1 : z.re < 1)
    (ht : (14 : ℝ) ≤ z.im) (ht1 : z.im ≤ 15) (hoff : z.re ≠ 1/2) :
    (1 : ℝ) ≤ ‖odd poleNormalizedZeta (MirrorChannels.center z) (MirrorChannels.offset z)‖ := by
  have h := Selected.channel_lower (fifteenOdd_valid hx hx1 ht ht1 hoff)
  change ‖fifteenOdd.center.value‖-12 ≤
    ‖odd poleNormalizedZeta (MirrorChannels.center z) (MirrorChannels.offset z)‖ at h
  rw [fifteenOdd_center] at h
  linarith [FifteenWitness.linearPart_norm_lower]

/-- Reflection is used only on the canonical target zeros. Central zeros are allowed. -/
theorem fifteen_rhOn : RHOn fifteenBox := by
  intro z hz hz0
  by_contra hoff
  have hb := mem_fifteenBox.mp hz
  have hv := fifteenOdd_valid hz0.mem_critical_strip.1 hz0.mem_critical_strip.2
    hb.2.2.1 hb.2.2.2 hoff
  have hn := Selected.sound hv fifteenOdd_check
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset] at hn
  exact hn ⟨poleNormalizedZeta_zero_of_target hz0,
    poleNormalizedZeta_zero_of_target hz0.critical_reflection⟩

theorem fifteen_fiber_capacity : HeightFiber.TargetCapacity fifteenBox :=
  HeightFiber.targetCapacity_of_rhOn fifteen_rhOn

/-- All eligible points in the closed successor box must still be covered.
The old window retains the lower seam; this theorem supplies no new cover. -/
theorem window_successor_of_choice_regions {K : ℕ} (hbase : WindowRH K)
    {ι : Type*} (P : ι → UniformPairRegion.Packet) (C : ι → Config)
    (hcheck : ∀ i, (P i).choiceCheck (C i)=true)
    (hbind : ∀ i, (P i).Binds (C i))
    (hcover : ∀ z ∈ HeightFiber.successorBox K, MirrorApproximation.Eligible z →
      ∃ i, z ∈ (P i).carrier) : WindowRH (K+1) := by
  apply HeightFiber.window_successor_of_fibers hbase
  apply HeightFiber.targetCapacity_of_rhOn
  intro z hz hz0
  by_contra hoff
  obtain ⟨i,hi⟩ := hcover z hz ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
  exact hoff ((P i).choice_rhOn (hcheck i) (hbind i) z hi hz0)

end ChannelChoice
end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
```
