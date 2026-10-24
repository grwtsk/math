/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightFiberSuccessor
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive

set_option autoImplicit false

/-!
# Mirror-pair channels for the actual normalized zeta source

The center and displacement reconstruct z and 1-conj(z) at the maintained signed
root height. No off-line zero is projected onto the line. Both channel residuals
are derived from the same exact sextic arithmetic identity. Their product laws
retain all cross terms. A model's strict two-channel margin is sufficient, not
claimed constructed at every height. At a critical-line point no margin is demanded;
repeated central zeros are not rejected by this interface.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.MirrorChannels
open Complex Set
namespace Pair
export GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
  (even odd energy Enclosure even_product odd_product endpoints_zero_iff)
end Pair
open CenteredMellin.SexticPrimitive
noncomputable section

def center (z : ℂ) : ℂ := ⟨1/2,z.im⟩
def offset (z : ℂ) : ℂ := ((z.re-1/2 : ℝ) : ℂ)

lemma center_plus_offset (z : ℂ) : center z+offset z=z := by
  apply Complex.ext <;> simp [center,offset] <;> ring

lemma center_minus_offset (z : ℂ) : center z-offset z=criticalReflection z := by
  apply Complex.ext <;> simp [center,offset,criticalReflection] <;> ring

lemma center_height (z : ℂ) :
    ZetaCommutatorRoot.root.heightAt (center z)=ZetaCommutatorRoot.root.heightAt z := by
  simp [ZetaCommutatorRoot.heightAt_eq_im,center]

lemma offset_ne_zero {z : ℂ} (hz : z.re ≠ 1/2) : offset z ≠ 0 := by
  exact Complex.ofReal_ne_zero.mpr (sub_ne_zero.mpr hz)

lemma offset_norm (z : ℂ) : ‖offset z‖=|z.re-1/2| := by
  simp [offset,Complex.norm_real,Real.norm_eq_abs]

/-- Actual target zeros annihilate both channels, without equality of arbitrary
reflected source values or any simplicity assumption. -/
theorem target_channels_zero {z : ℂ} (hz : NontrivialZetaZero z) :
    Pair.even poleNormalizedZeta (center z) (offset z)=0 ∧
      Pair.odd poleNormalizedZeta (center z) (offset z)=0 := by
  apply (Pair.endpoints_zero_iff poleNormalizedZeta (center z) (offset z)).mp
  rw [center_plus_offset,center_minus_offset]
  exact ⟨poleNormalizedZeta_zero_of_target hz,
    poleNormalizedZeta_zero_of_target hz.critical_reflection⟩

/-- The independent even and odd tail channels retain the same cutoff, multiplier,
normalization and arithmetic source. The off-line hypothesis justifies division. -/
theorem arithmetic_residual_channels {N : ℕ} {z : ℂ}
    (hN : 1 ≤ N) (hx : 0 < z.re) (hx1 : z.re < 1) (hoff : z.re ≠ 1/2) :
    (Pair.even poleNormalizedZeta (center z) (offset z)-
        Pair.even (finiteModel N) (center z) (offset z) =
      -(Pair.even multiplier (center z) (offset z)*
          Pair.even (tail (N : ℝ)) (center z) (offset z)+
        (offset z)^2*Pair.odd multiplier (center z) (offset z)*
          Pair.odd (tail (N : ℝ)) (center z) (offset z))) ∧
    (Pair.odd poleNormalizedZeta (center z) (offset z)-
        Pair.odd (finiteModel N) (center z) (offset z) =
      -(Pair.even multiplier (center z) (offset z)*
          Pair.odd (tail (N : ℝ)) (center z) (offset z)+
        Pair.odd multiplier (center z) (offset z)*
          Pair.even (tail (N : ℝ)) (center z) (offset z))) := by
  have hp := finiteModel_residual (N := N) (s := z) hN hx
  have hm := finiteModel_residual (N := N) (s := criticalReflection z) hN (by
    simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re]
    linarith)
  have he : Pair.even poleNormalizedZeta (center z) (offset z)-
      Pair.even (finiteModel N) (center z) (offset z) =
      -Pair.even (fun w => multiplier w*tail (N : ℝ) w) (center z) (offset z) := by
    unfold GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.even
    rw [center_plus_offset,center_minus_offset]
    linear_combination (1/2 : ℂ)*hp+(1/2 : ℂ)*hm
  have ho : Pair.odd poleNormalizedZeta (center z) (offset z)-
      Pair.odd (finiteModel N) (center z) (offset z) =
      -Pair.odd (fun w => multiplier w*tail (N : ℝ) w) (center z) (offset z) := by
    unfold GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.odd
    rw [center_plus_offset,center_minus_offset]
    linear_combination (1/(2*offset z))*hp-(1/(2*offset z))*hm
  rw [Pair.even_product] at he
  rw [Pair.odd_product _ _ _ (offset_ne_zero hoff)] at ho
  exact ⟨he,ho⟩

/-- No all-height margin is supplied here. Each witness must enclose the ACTUAL
source at both mirror endpoints and prove its own strict model margin. -/
theorem rhOn_of_pair_enclosures {U : Set ℂ} (P : ℂ → ℂ → ℂ)
    (C : ∀ z, z ∈ U → z.re ≠ 1/2 →
      Pair.Enclosure poleNormalizedZeta (P z) (center z) (offset z))
    (hgap : ∀ z hz hoff,
      (C z hz hoff).valueError^2+‖offset z‖^2*(C z hz hoff).secantError^2 <
        Pair.energy (P z) (center z) (offset z)) : RHOn U := by
  intro z hz hzero
  by_contra hoff
  apply (C z hz hoff).excludes_pair (hgap z hz hoff)
  rw [center_plus_offset,center_minus_offset]
  exact ⟨poleNormalizedZeta_zero_of_target hzero,
    poleNormalizedZeta_zero_of_target hzero.critical_reflection⟩

/-- Classification is obtained for every actual zero before extracting fiber capacity. -/
theorem targetCapacity_of_pair_enclosures {U : Set ℂ} (P : ℂ → ℂ → ℂ)
    (C : ∀ z, z ∈ U → z.re ≠ 1/2 →
      Pair.Enclosure poleNormalizedZeta (P z) (center z) (offset z))
    (hgap : ∀ z hz hoff,
      (C z hz hoff).valueError^2+‖offset z‖^2*(C z hz hoff).secantError^2 <
        Pair.energy (P z) (center z) (offset z)) : HeightFiber.TargetCapacity U :=
  HeightFiber.targetCapacity_of_rhOn (rhOn_of_pair_enclosures P C hgap)

/-- Consume the exact previous successor; retain the lower seam via hbase. -/
theorem window_successor_of_pair_enclosures {N : ℕ} (hbase : WindowRH N)
    (P : ℂ → ℂ → ℂ)
    (C : ∀ z, z ∈ HeightFiber.successorBox N → z.re ≠ 1/2 →
      Pair.Enclosure poleNormalizedZeta (P z) (center z) (offset z))
    (hgap : ∀ z hz hoff,
      (C z hz hoff).valueError^2+‖offset z‖^2*(C z hz hoff).secantError^2 <
        Pair.energy (P z) (center z) (offset z)) : WindowRH (N+1) :=
  HeightFiber.window_successor_of_fibers hbase (targetCapacity_of_pair_enclosures P C hgap)

/-- A concrete source-bound instance from the existing height-fifteen derivative
certificate. This is not a new height result or a uniform all-height estimate. -/
theorem fifteen_odd_channel_bound {z : ℂ} (hx : 0 < z.re) (hx1 : z.re < 1)
    (ht : (14 : ℝ) ≤ z.im) (ht1 : z.im ≤ 15) (hoff : z.re ≠ 1/2) :
    ‖Pair.odd poleNormalizedZeta (center z) (offset z)-FifteenWitness.linearPart‖ ≤ 12 := by
  let P : ℂ → ℂ := fun w => FifteenWitness.linearPart*w
  have hP (w : ℂ) : HasDerivAt P FifteenWitness.linearPart w := by
    simpa [P] using (hasDerivAt_id w).const_mul FifteenWitness.linearPart
  have hp : center z+offset z ∈ FifteenWitness.domain := by
    rw [center_plus_offset]
    exact ⟨hx,hx1.le,ht,ht1⟩
  have hm : center z-offset z ∈ FifteenWitness.domain := by
    rw [center_minus_offset]
    change 0 < (criticalReflection z).re ∧ (criticalReflection z).re ≤ 1 ∧
      (14 : ℝ) ≤ (criticalReflection z).im ∧ (criticalReflection z).im ≤ 15
    simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re,
      Complex.sub_im,Complex.one_im,Complex.conj_im,zero_sub,neg_neg]
    exact ⟨by linarith,by linarith,ht,ht1⟩
  have h := GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.odd_error_of_derivatives
    (offset_ne_zero hoff) FifteenWitness.domain_convex
    (fun w _ => differentiable_poleNormalizedZeta w)
    (fun w _ => (hP w).differentiableAt)
    (fun w hw => by rw [(hP w).deriv]; exact FifteenWitness.source_derivative_disk hw)
    hp hm
  have hodd : Pair.odd P (center z) (offset z)=FifteenWitness.linearPart := by
    unfold GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.odd P
    field_simp [offset_ne_zero hoff] <;> ring
  rwa [hodd] at h

/-- One-sided use of the constructed source disk; no numerical zeta evaluation. -/
theorem fifteen_odd_channel_lower {z : ℂ} (hx : 0 < z.re) (hx1 : z.re < 1)
    (ht : (14 : ℝ) ≤ z.im) (ht1 : z.im ≤ 15) (hoff : z.re ≠ 1/2) :
    (1 : ℝ) ≤ ‖Pair.odd poleNormalizedZeta (center z) (offset z)‖ := by
  have he := fifteen_odd_channel_bound hx hx1 ht ht1 hoff
  have ht' := norm_sub_le (Pair.odd poleNormalizedZeta (center z) (offset z))
    (Pair.odd poleNormalizedZeta (center z) (offset z)-FifteenWitness.linearPart)
  rw [sub_sub_cancel] at ht'
  linarith [FifteenWitness.linearPart_norm_lower]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.MirrorChannels
