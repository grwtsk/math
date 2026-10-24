# Complete source: GRWTSK.Analysis.Complex.SymmetricPairChannelChoice

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c40a38ede8c169a01b4cff9700b8586c3140646` · SHA-256 `1d3d8b297b719848b3377bd2fbe688aa410c2a9a69c0d2feee7280b6669fd37f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.SymmetricPairRational

set_option autoImplicit false

/-!
# Selective symmetric-pair separation

A simultaneous endpoint zero annihilates BOTH channels. One certified nonzero
channel therefore suffices; uncertainty in the unused channel need not be paid.
The two-channel rational test is sharp for its independent closed error disks,
not a completeness theorem for arithmetic approximation or an RH claim.
No lower displacement bound, simplicity theorem, or common spectral gap follows.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.SymmetricPair
open _root_.Complex
noncomputable section

/-- Unlike a sum-of-squares test, one inaccurate channel cannot veto the other. -/
theorem Enclosure.excludes_pair_of_channel {F P : ℂ → ℂ} {c d : ℂ}
    (C : Enclosure F P c d)
    (h : C.valueError < ‖even P c d‖ ∨ C.secantError < ‖odd P c d‖) :
    ¬ (F (c+d)=0 ∧ F (c-d)=0) := by
  intro hz
  obtain ⟨he,ho⟩ := (endpoints_zero_iff F c d).mp hz
  rcases h with h | h
  · have hb := C.even_error
    rw [he,zero_sub,norm_neg] at hb
    exact (not_le_of_gt h) hb
  · have hb := C.odd_error
    rw [ho,zero_sub,norm_neg] at hb
    exact (not_le_of_gt h) hb

end
namespace Rational

inductive Channel where
  | even
  | odd
  deriving DecidableEq, Repr

noncomputable def Channel.read (k : Channel) (F : ℂ → ℂ) (c d : ℂ) : ℂ :=
  match k with
  | .even => even F c d
  | .odd => odd F c d

lemma Channel.read_zero_of_endpoints {F : ℂ → ℂ} {c d : ℂ} (k : Channel)
    (h : F (c+d)=0 ∧ F (c-d)=0) : k.read F c d=0 := by
  obtain ⟨he,ho⟩ := (endpoints_zero_iff F c d).mp h
  cases k with
  | even => exact he
  | odd => exact ho

/-- The selected channel, center and radius have explicit source binding. -/
structure Selected where
  channel : Channel
  center : Gaussian
  radius : ℚ
  deriving DecidableEq, Repr

namespace Selected

def Pass (W : Selected) : Prop := 0 ≤ W.radius ∧ W.radius^2 < W.center.normSq

def check (W : Selected) : Bool := decide (W.Pass)

lemma check_iff (W : Selected) : W.check=true ↔ W.Pass := by simp [check]

def Valid (W : Selected) (F : ℂ → ℂ) (c d : ℂ) : Prop :=
  ‖W.channel.read F c d-W.center.value‖ ≤ (W.radius : ℝ)

lemma radius_lt_center {W : Selected} (h : W.check=true) :
    (W.radius : ℝ) < ‖W.center.value‖ := by
  obtain ⟨hr,hgap⟩ := W.check_iff.mp h
  have hrR : (0 : ℝ) ≤ (W.radius : ℝ) := by exact_mod_cast hr
  have hg : (W.radius : ℝ)^2 < ‖W.center.value‖^2 := by
    rw [← Gaussian.normSq_cast]
    exact_mod_cast hgap
  nlinarith [norm_nonneg W.center.value]

/-- An actual lower bound on the selected source channel, not an energy difference. -/
theorem channel_lower {W : Selected} {F : ℂ → ℂ} {c d : ℂ}
    (hv : W.Valid F c d) :
    ‖W.center.value‖-(W.radius : ℝ) ≤ ‖W.channel.read F c d‖ := by
  have ht := norm_sub_le (W.channel.read F c d)
    (W.channel.read F c d-W.center.value)
  rw [sub_sub_cancel] at ht
  linarith

/-- No source-binding proof is inferred from the passing rational bit. -/
theorem sound {W : Selected} {F : ℂ → ℂ} {c d : ℂ}
    (hv : W.Valid F c d) (hc : W.check=true) :
    ¬ (F (c+d)=0 ∧ F (c-d)=0) := by
  intro hz
  have hb := hv
  rw [W.channel.read_zero_of_endpoints hz,zero_sub,norm_neg] at hb
  exact (not_le_of_gt (radius_lt_center hc)) hb

end Selected
namespace Data

def evenSelected (W : Data) : Selected := ⟨.even,W.evenCenter,W.evenRadius⟩
def oddSelected (W : Data) : Selected := ⟨.odd,W.oddCenter,W.oddRadius⟩

/-- The old displacement fields are deliberately not used by this new test.
Only independently bound channel disks matter to channelwise separation. -/
def ChannelPass (W : Data) : Prop :=
  0 ≤ W.evenRadius ∧ 0 ≤ W.oddRadius ∧
    (W.evenRadius^2 < W.evenCenter.normSq ∨ W.oddRadius^2 < W.oddCenter.normSq)

def channelCheck (W : Data) : Bool := decide (W.ChannelPass)

lemma channelCheck_iff (W : Data) : W.channelCheck=true ↔ W.ChannelPass := by
  simp [channelCheck]

def ChannelValid (W : Data) (F : ℂ → ℂ) (c d : ℂ) : Prop :=
  W.evenSelected.Valid F c d ∧ W.oddSelected.Valid F c d

lemma channelValid_of_valid {W : Data} {F : ℂ → ℂ} {c d : ℂ}
    (h : W.Valid F c d) : W.ChannelValid F c d := ⟨h.1,h.2.1⟩

theorem channel_sound {W : Data} {F : ℂ → ℂ} {c d : ℂ}
    (hv : W.ChannelValid F c d) (hc : W.channelCheck=true) :
    ¬ (F (c+d)=0 ∧ F (c-d)=0) := by
  obtain ⟨he,ho,hgap⟩ := W.channelCheck_iff.mp hc
  rcases hgap with hegap | hogap
  · exact Selected.sound hv.1 (W.evenSelected.check_iff.mpr ⟨he,hegap⟩)
  · exact Selected.sound hv.2 (W.oddSelected.check_iff.mpr ⟨ho,hogap⟩)

/-- Every old weighted numeric acceptance still passes. No validity is assumed. -/
theorem check_implies_channelCheck {W : Data} (h : W.check=true) :
    W.channelCheck=true := by
  obtain ⟨he,ho,hlo,horder,hgap⟩ := W.check_iff.mp h
  apply W.channelCheck_iff.mpr
  refine ⟨he,ho,?_⟩
  by_contra hn
  have he' : W.evenCenter.normSq ≤ W.evenRadius^2 := by
    by_contra hh
    exact hn (Or.inl (lt_of_not_ge hh))
  have ho' : W.oddCenter.normSq ≤ W.oddRadius^2 := by
    by_contra hh
    exact hn (Or.inr (lt_of_not_ge hh))
  have hmul := mul_le_mul_of_nonneg_left ho' hlo.le
  have hweight := mul_le_mul_of_nonneg_right horder (sq_nonneg W.oddRadius)
  have hb : W.lowerEnergy ≤ W.upperBudget := by
    unfold lowerEnergy upperBudget
    linarith
  exact (not_le_of_gt hgap) hb

/-- Failure with valid radius signs means that the zero function is compatible
with these two disks. This is sharpness for the supplied independent error sets,
not evidence that the actual arithmetic source has a zero. -/
theorem zero_compatible_of_reject {W : Data} (he : 0 ≤ W.evenRadius)
    (ho : 0 ≤ W.oddRadius) (hf : W.channelCheck=false) (c d : ℂ) :
    W.ChannelValid (fun _ => 0) c d := by
  have hnot : ¬ W.ChannelPass := by
    intro hp
    have hh := W.channelCheck_iff.mpr hp
    rw [hf] at hh
    cases hh
  have he' : W.evenCenter.normSq ≤ W.evenRadius^2 := by
    by_contra h
    exact hnot ⟨he,ho,Or.inl (lt_of_not_ge h)⟩
  have ho' : W.oddCenter.normSq ≤ W.oddRadius^2 := by
    by_contra h
    exact hnot ⟨he,ho,Or.inr (lt_of_not_ge h)⟩
  have heR : (0 : ℝ) ≤ (W.evenRadius : ℝ) := by exact_mod_cast he
  have hoR : (0 : ℝ) ≤ (W.oddRadius : ℝ) := by exact_mod_cast ho
  have hesq : ‖W.evenCenter.value‖^2 ≤ (W.evenRadius : ℝ)^2 := by
    rw [← Gaussian.normSq_cast]
    exact_mod_cast he'
  have hosq : ‖W.oddCenter.value‖^2 ≤ (W.oddRadius : ℝ)^2 := by
    rw [← Gaussian.normSq_cast]
    exact_mod_cast ho'
  constructor
  · change ‖even (fun _ => 0) c d-W.evenCenter.value‖ ≤ (W.evenRadius : ℝ)
    simp only [even,add_zero,zero_div,zero_sub,norm_neg]
    nlinarith [norm_nonneg W.evenCenter.value]
  · change ‖odd (fun _ => 0) c d-W.oddCenter.value‖ ≤ (W.oddRadius : ℝ)
    simp only [odd,sub_self,zero_div,zero_sub,norm_neg]
    nlinarith [norm_nonneg W.oddCenter.value]


/-- Exact robust separation for these two independent disks. This is not
completeness of the actual source supplier or of an arithmetic search. -/
theorem channelCheck_iff_zero_incompatible {W : Data}
    (he : 0 ≤ W.evenRadius) (ho : 0 ≤ W.oddRadius) (c d : ℂ) :
    W.channelCheck=true ↔ ¬ W.ChannelValid (fun _ => 0) c d := by
  constructor
  · intro hc hv
    exact channel_sound hv hc ⟨rfl,rfl⟩
  · intro hn
    cases hcheck : W.channelCheck with
    | false => exact False.elim (hn (zero_compatible_of_reject he ho hcheck c d))
    | true => rfl

end Data
end Rational
end GRWTSK.Analysis.Complex.SymmetricPair
```
