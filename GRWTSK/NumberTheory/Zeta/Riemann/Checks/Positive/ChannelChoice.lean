/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripChannelChoice

set_option autoImplicit false

/-!
# Selective-channel regression fixtures

All synthetic functions below are explicitly distinct from the zeta source.
Numerical comparison is not source validation. Central zero, zero displacement,
strictness, and unsuccessful comparison are retained as separate cases.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.ChannelChoice
open Complex Set
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.Rational
open CriticalStripHeightDescent CriticalStripHeightDescent.ZeroIsolation
noncomputable section

def a : ℂ := 1+13*I

def affine (c z : ℂ) : ℂ := a*(z-c)

/-- Valid error disks can be very loose in a channel that need not be used. -/
def loose (q : ℚ) : Data := ⟨⟨0,0⟩,⟨1,13⟩,1,12,q,q⟩

lemma loose_choice (q : ℚ) : (loose q).channelCheck=true := by
  norm_num [Data.channelCheck,Data.ChannelPass,loose,Gaussian.normSq]

/-- The previous weighted comparison rejects the entire stated small-offset range. -/
lemma loose_old_reject {q : ℚ} (hq : 0 < q) (hq1 : q ≤ 1/26) :
    (loose q).check=false := by
  cases hc : (loose q).check with
  | false => rfl
  | true =>
    have h := (Data.check_iff (loose q)).mp hc
    have hg := h.2.2.2.2
    norm_num [loose,Data.upperBudget,Data.lowerEnergy,Gaussian.normSq] at hg
    linarith

lemma affine_channels (c : ℂ) {d : ℂ} (hd : d ≠ 0) :
    even (affine c) c d=0 ∧ odd (affine c) c d=a := by
  constructor
  · unfold even affine
    ring
  · unfold odd affine
    field_simp [hd] <;> ring

lemma affine_valid (c : ℂ) {d : ℂ} (hd : d ≠ 0) (q : ℚ) :
    (loose q).ChannelValid (affine c) c d := by
  obtain ⟨he,ho⟩ := affine_channels c hd
  constructor
  · change ‖even (affine c) c d-(⟨0,0⟩ : Gaussian).value‖ ≤ (1 : ℝ)
    rw [he]
    norm_num [Gaussian.value]
  · change ‖odd (affine c) c d-(⟨1,13⟩ : Gaussian).value‖ ≤ (12 : ℝ)
    rw [ho]
    have ha : a=(⟨1,13⟩ : Gaussian).value := by
      apply Complex.ext <;> norm_num [a,Gaussian.value]
    rw [ha,sub_self,norm_zero]
    norm_num

/-- Every nonzero displacement uses one and the same pair of error radii. -/
theorem affine_pair_excluded (c : ℂ) {d : ℂ} (hd : d ≠ 0) :
    ¬ (affine c (c+d)=0 ∧ affine c (c-d)=0) :=
  Data.channel_sound (affine_valid c hd (1/64)) (loose_choice (1/64))

example (c : ℂ) : affine c c=0 := by simp [affine]
example : (loose (1/64)).check=false := loose_old_reject (by norm_num) (by norm_num)
example : (loose (1/64)).channelCheck=true := loose_choice _

/-- Its rational weight interval is valid for this actual displacement as well. -/
example (c : ℂ) : (loose (1/64)).Valid (affine c) c (1/8 : ℂ) := by
  have h := affine_valid c (by norm_num : (1/8 : ℂ) ≠ 0) (1/64)
  refine ⟨h.1,h.2,?_,?_⟩ <;> norm_num [loose,norm_div]

/-- The odd quotient at zero displacement remains zero, not the derivative. -/
example (c : ℂ) : ¬ (loose (1/64)).ChannelValid (affine c) c 0 := by
  intro h
  have hn := Data.channel_sound h (loose_choice (1/64))
  exact hn (by simp [affine])

-- Non-strict norm comparisons do not certify a nonzero channel.
def equality : Selected := ⟨.odd,⟨1,0⟩,1⟩
example : equality.check=false := by norm_num [Selected.check,Selected.Pass,equality,Gaussian.normSq]
example : ({equality with radius := -1} : Selected).check=false := by
  norm_num [Selected.check,Selected.Pass,equality]

-- Rejection permits a compatible zero function, not necessarily an actual source zero.
example (c d : ℂ) : (⟨⟨1,0⟩,⟨0,0⟩,1,0,1,1⟩ : Data).ChannelValid (fun _ => 0) c d := by
  apply Data.zero_compatible_of_reject <;>
    norm_num [Data.channelCheck,Data.ChannelPass,Gaussian.normSq]

-- A forged passing center does not provide its required source binding.
def forged : Selected := ⟨.even,⟨1,0⟩,0⟩
lemma forged_pass : forged.check=true := by
  norm_num [Selected.check,Selected.Pass,forged,Gaussian.normSq]
example (c d : ℂ) : ¬ forged.Valid (fun _ => 0) c d := by
  intro hv
  exact Selected.sound hv forged_pass ⟨rfl,rfl⟩

-- The actual arithmetic supplier is imported, not replaced by the affine fixture.
example : ZeroIsolation.ChannelChoice.fifteenOdd.check=true :=
  ZeroIsolation.ChannelChoice.fifteenOdd_check
example : HeightFiber.TargetCapacity fifteenBox :=
  ZeroIsolation.ChannelChoice.fifteen_fiber_capacity

-- A whole successor still requires actual continuum coverage.
example {ι : Type*} (P : ι → UniformPairRegion.Packet) (C : ι → UniformFiniteC1.Config)
    (hcheck : ∀ i, (P i).choiceCheck (C i)=true)
    (hbind : ∀ i, (P i).Binds (C i))
    (hcover : ∀ z ∈ HeightFiber.successorBox 17, MirrorApproximation.Eligible z →
      ∃ i, z ∈ (P i).carrier) : WindowRH 18 :=
  ZeroIsolation.ChannelChoice.window_successor_of_choice_regions
    SeventeenBandJet.windowRH_seventeen P C hcheck hbind hcover

end
end GRWTSK.RiemannHypothesis.Checks.ChannelChoice
