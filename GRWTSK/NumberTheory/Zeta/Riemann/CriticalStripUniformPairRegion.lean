/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.GaussianPolynomialPair
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPairEvaluation

set_option autoImplicit false

/-!
# Whole-region mirror-pair certificates, including arbitrarily small offsets

A rational disk Horner computation encloses both channels of ONE polynomial
on a rectangle. The squared offset ranges from zero to D^2: no positive lower
separation is required. The strict test is affine in that squared offset.
A separate exact polynomial identity binds the coefficients to the existing
uniform C1 model. Source and finite-evaluation errors still add before squaring.
Only complete valid covers feed the old successor; no all-height claim is made.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.UniformPairRegion
open Complex Set
open UniformFiniteC1 CenteredMellin.SexticPrimitive.C1Approximation
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.Rational
namespace QP
export GRWTSK.Analysis.ComplexAnalysis.GaussianPolynomialPair (Poly Disk eval pair enclose)
end QP
open GRWTSK.Analysis.ComplexAnalysis.GaussianPolynomialPair (affine_margin_pos)
noncomputable section

structure Packet where
  coefficients : QP.Poly
  height : ℚ
  heightRadius : ℚ
  offsetRadius : ℚ
  valueError : ℚ
  secantError : ℚ
  deriving DecidableEq, Repr

namespace Packet

def anchor (W : Packet) : ℂ := (⟨1/2,W.height⟩ : Gaussian).value
def heightBound (W : Packet) : ℚ := |W.height|+W.heightRadius
def carrier (W : Packet) : Set ℂ :=
  {z | |z.re-1/2| ≤ (W.offsetRadius : ℝ) ∧ |z.im-(W.height : ℝ)| ≤ (W.heightRadius : ℝ)}
def model (W : Packet) (z : ℂ) : ℂ := QP.eval W.coefficients (z-W.anchor)

def centerDisk (W : Packet) : QP.Disk := ⟨Gaussian.ofRat 0,W.heightRadius⟩
def squaredDisk (W : Packet) : QP.Disk :=
  ⟨Gaussian.ofRat (W.offsetRadius^2/2),W.offsetRadius^2/2⟩
def bounds (W : Packet) : QP.Disk × QP.Disk :=
  QP.enclose W.coefficients W.centerDisk W.squaredDisk
def lowerEven (W : Packet) : ℚ := W.bounds.1.lower
def lowerOdd (W : Packet) : ℚ := W.bounds.2.lower
def constantGap (W : Packet) : ℚ := W.lowerEven^2-W.valueError^2
def slopeGap (W : Packet) : ℚ := W.lowerOdd^2-W.secantError^2

/-- Every numerical obligation is recomputed. Source identity is not a numeric bit. -/
def Guard (W : Packet) (C : Config) : Prop :=
  C.Guard ∧ 0 ≤ W.heightRadius ∧ 0 < W.offsetRadius ∧ W.offsetRadius ≤ 1/2 ∧
  0 ≤ W.valueError ∧ 0 ≤ W.secantError ∧ W.heightBound+1 ≤ C.size ∧
  RationalEvaluatedPair.sourceValue C.cutoff W.heightBound+C.valueRadius ≤ W.valueError ∧
  RationalEvaluatedPair.sourceSecant C.cutoff W.heightBound+C.derivativeRadius ≤ W.secantError ∧
  0 ≤ W.constantGap ∧ 0 < W.constantGap+W.offsetRadius^2*W.slopeGap

def check (W : Packet) (C : Config) : Bool := decide (W.Guard C)
lemma check_iff (W : Packet) (C : Config) : W.check C=true ↔ W.Guard C := by simp [check]

/-- This identity cannot be supplied by a positive coefficient table alone. -/
def Binds (W : Packet) (C : Config) : Prop := ∀ z : ℂ, W.model z=C.polynomial z

lemma height_bound {W : Packet} {z : ℂ} (hz : z ∈ W.carrier) :
    |z.im| ≤ (W.heightBound : ℝ) := by
  have he : z.im=(z.im-(W.height : ℝ))+(W.height : ℝ) := by ring
  have h := (abs_add (z.im-(W.height : ℝ)) (W.height : ℝ)).trans
    (add_le_add_right hz.2 |(W.height : ℝ)|)
  rw [← he] at h
  simpa only [heightBound,Rat.cast_add,Rat.cast_abs,add_comm] using h

lemma channel_bounds {W : Packet} {z : ℂ} (hz : z ∈ W.carrier) (hoff : z.re ≠ 1/2) :
    (W.lowerEven : ℝ) ≤ ‖even W.model (MirrorChannels.center z) (MirrorChannels.offset z)‖ ∧
    (W.lowerOdd : ℝ) ≤ ‖odd W.model (MirrorChannels.center z) (MirrorChannels.offset z)‖ := by
  let d : ℝ := z.re-1/2
  let v : ℂ := (z.im-(W.height : ℝ))*I
  have hv : W.centerDisk.Valid v := by
    change ‖v-(Gaussian.ofRat 0).value‖ ≤ (W.heightRadius : ℝ)
    simpa [v,Gaussian.value_ofRat,norm_mul,Complex.norm_real,Real.norm_eq_abs] using hz.2
  have hD : (0 : ℝ) ≤ (W.offsetRadius : ℝ) := (abs_nonneg d).trans hz.1
  have hd2 : d^2 ≤ (W.offsetRadius : ℝ)^2 := by
    have h := pow_le_pow_left₀ (abs_nonneg d) hz.1 2
    simpa only [sq_abs] using h
  have hq : W.squaredDisk.Valid ((d : ℂ)^2) := by
    change ‖(d : ℂ)^2-(Gaussian.ofRat (W.offsetRadius^2/2)).value‖ ≤ _
    rw [Gaussian.value_ofRat]
    have he : (d : ℂ)^2-((W.offsetRadius^2/2 : ℚ) : ℂ) =
        ((d^2-(W.offsetRadius : ℝ)^2/2 : ℝ) : ℂ) := by push_cast; ring
    rw [he,Complex.norm_real,Real.norm_eq_abs]
    have hb : |d^2-(W.offsetRadius : ℝ)^2/2| ≤ (W.offsetRadius : ℝ)^2/2 :=
      abs_le.mpr ⟨by nlinarith [sq_nonneg d],by linarith⟩
    simpa only [squaredDisk,Rat.cast_div,Rat.cast_pow,Rat.cast_ofNat] using hb
  have hp := GRWTSK.Analysis.ComplexAnalysis.GaussianPolynomialPair.enclose_valid W.coefficients hv hq
  have hplus : MirrorChannels.center z+MirrorChannels.offset z-W.anchor=v+(d : ℂ) := by
    apply Complex.ext <;> simp [v,d,MirrorChannels.center,MirrorChannels.offset,anchor,Gaussian.value] <;> ring
  have hminus : MirrorChannels.center z-MirrorChannels.offset z-W.anchor=v-(d : ℂ) := by
    apply Complex.ext <;> simp [v,d,MirrorChannels.center,MirrorChannels.offset,anchor,Gaussian.value] <;> ring
  have he : even W.model (MirrorChannels.center z) (MirrorChannels.offset z)=
      even (QP.eval W.coefficients) v (d : ℂ) := by
    unfold even model
    rw [hplus,hminus]
  have ho : odd W.model (MirrorChannels.center z) (MirrorChannels.offset z)=
      odd (QP.eval W.coefficients) v (d : ℂ) := by
    unfold odd model
    rw [hplus,hminus]
    rfl
  rw [he,ho,GRWTSK.Analysis.ComplexAnalysis.GaussianPolynomialPair.pair_even,
    GRWTSK.Analysis.ComplexAnalysis.GaussianPolynomialPair.pair_odd _ _
      (Complex.ofReal_ne_zero.mpr (sub_ne_zero.mpr hoff))]
  exact ⟨hp.1.lower_le,hp.2.lower_le⟩

/-- All real points of the rectangle are controlled; no grid or offset floor. -/
theorem polynomial_margin {W : Packet} {C : Config} (hg : W.Guard C)
    (hb : W.Binds C) {z : ℂ} (hz : z ∈ W.carrier) (hoff : z.re ≠ 1/2) :
    (W.valueError : ℝ)^2+‖MirrorChannels.offset z‖^2*(W.secantError : ℝ)^2 <
      energy C.polynomial (MirrorChannels.center z) (MirrorChannels.offset z) := by
  obtain ⟨hc,hh,hD,hD1,he0,he1,hs,hv,hd,ha,hend⟩ := hg
  have hq0 : 0 < ‖MirrorChannels.offset z‖^2 := sq_pos_of_pos
    (norm_pos_iff.mpr (MirrorChannels.offset_ne_zero hoff))
  have hq : ‖MirrorChannels.offset z‖^2 ≤ (W.offsetRadius : ℝ)^2 := by
    rw [MirrorChannels.offset_norm]
    exact pow_le_pow_left₀ (abs_nonneg _) hz.1 2
  have hgap := affine_margin_pos (a := (W.constantGap : ℝ)) (b := (W.slopeGap : ℝ))
    (q := ‖MirrorChannels.offset z‖^2) (Q := (W.offsetRadius : ℝ)^2)
    (by exact_mod_cast ha) hq0 hq (by exact_mod_cast hend)
  have hm := channel_bounds hz hoff
  have hfunc : W.model=C.polynomial := funext hb
  rw [hfunc] at hm
  have he2 := pow_le_pow_left₀
    (show (0 : ℝ) ≤ (W.lowerEven : ℝ) by exact_mod_cast W.bounds.1.lower_nonneg) hm.1 2
  have ho2 := pow_le_pow_left₀
    (show (0 : ℝ) ≤ (W.lowerOdd : ℝ) by exact_mod_cast W.bounds.2.lower_nonneg) hm.2 2
  have hw := mul_le_mul_of_nonneg_left ho2 (sq_nonneg ‖MirrorChannels.offset z‖)
  simp only [constantGap,slopeGap,Rat.cast_sub,Rat.cast_pow] at hgap
  unfold energy
  nlinarith

/-- The missing all-point model margin is discharged by the checked region data. -/
theorem rhOn {W : Packet} {C : Config} (hcheck : W.check C=true) (hb : W.Binds C) :
    RHOn W.carrier := by
  have hg := (W.check_iff C).mp hcheck
  obtain ⟨hc,hh,hD,hD1,he0,he1,hs,hv,hd,ha,hend⟩ := hg
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
  have he2 := pow_le_pow_left₀ E.value_nonneg he 2
  have ho2 := pow_le_pow_left₀ E.secant_nonneg ho 2
  have hbudget : E.budget ≤ (W.valueError : ℝ)^2+
      ‖MirrorChannels.offset z‖^2*(W.secantError : ℝ)^2 :=
    add_le_add he2 (mul_le_mul_of_nonneg_left ho2 (sq_nonneg _))
  apply E.excludes_pair (hbudget.trans_lt (polynomial_margin hg hb hz hoff))
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset]
  exact ⟨poleNormalizedZeta_zero_of_target hz0,poleNormalizedZeta_zero_of_target hz0.critical_reflection⟩

end Packet

/-- A proven cover is still required; a local passing rectangle is not a shell. -/
theorem window_successor_of_regions {K : ℕ} (hbase : WindowRH K)
    {ι : Type*} (P : ι → Packet) (C : ι → Config)
    (hcheck : ∀ i, (P i).check (C i)=true) (hbind : ∀ i, (P i).Binds (C i))
    (hcover : ∀ z ∈ HeightFiber.successorBox K, MirrorApproximation.Eligible z →
      ∃ i, z ∈ (P i).carrier) : WindowRH (K+1) := by
  apply HeightFiber.window_successor_of_fibers hbase
  apply HeightFiber.targetCapacity_of_rhOn
  intro z hz hz0
  by_contra hoff
  obtain ⟨i,hi⟩ := hcover z hz ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hoff⟩
  exact hoff ((P i).rhOn (hcheck i) (hbind i) z hi hz0)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.UniformPairRegion
