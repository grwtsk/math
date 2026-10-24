# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.SeventeenBandExtension

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a0f813767a21dcc15dbeaae3f7af9b5b101bc20` · SHA-256 `457a946acf2130efcb6b43e28268f1823f4a03a5c2df3f892e0e341514f1fb1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandOverlap

set_option autoImplicit false

/-! Source regression scripts, NOT_ELABORATED / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.RiemannHypothesis.Checks.SeventeenBandExtension
open Complex Set
open CriticalStripHeightDescent CriticalStripHeightDescent.ZeroIsolation
open CriticalStripHeightDescent.SeventeenBandJet
noncomputable section

example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (16 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) :
    ‖poleNormalizedZeta s-polynomial s‖ ≤ (1/8 : ℝ) := source_enclosed hx hx1 ht ht1
example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (16 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) :
    (71/8 : ℝ) ≤ -(poleNormalizedZeta s).re := source_negative_real hx hx1 ht ht1
example : ShellRH 16 := shellRH_sixteen
example : WindowRH 17 := windowRH_seventeen
example : WindowRH 17 := SixteenBandJet.window_seventeen_of_shell shellRH_sixteen
example : RHOn (mirrorBox 14 17 (1/2)) := threeBand_rhOn
example : AtMostOneTarget (mirrorBox 14 17 (1/2)) := threeBand_target_capacity
example : threeBandCover.count = 1 := rfl
example (i : Fin 1) : threeBandCover.regions i = fifteenBox := threeBandCover_region i

-- Both adjoining bands include height16. The source seam is inhabited.
example : (⟨1/2,16⟩ : ℂ) ∈ upperBand ∧ (⟨1/2,16⟩ : ℂ) ∈ SixteenBandJet.upperBand := by
  norm_num [upperBand,SixteenBandJet.upperBand]
example : SeventeenBandOverlap.seam.Nonempty := SeventeenBandOverlap.seam_nonempty
example {s : ℂ} (hs : s ∈ SeventeenBandOverlap.seam) :
    ‖polynomial s-SixteenBandJet.polynomial s‖ ≤ (1/16 : ℝ) := SeventeenBandOverlap.model_distance hs
example (t : ℝ) (s : ℂ) : deformation t s = SixteenBandJet.deformation t s := rfl

-- A target-permitting region is not turned into a zero-free region or an exact count.
example : (⟨1/2,29/2⟩ : ℂ) ∈ fifteenBox := by norm_num [fifteenBox,mirrorBox]
example : (⟨1/2,29/2⟩ : ℂ) ∉ threeBandCover.zeroFree := by
  norm_num [threeBandCover,ZeroPermittingCover.restrict,ZeroPermittingCover.extendZeroFree,
    SixteenBandJet.twoBandCover,SixteenBandJet.upperBand,upperBand]
example : (fun z : ℂ => z-(⟨1/2,29/2⟩ : ℂ)) ⟨1/2,29/2⟩ = 0 := by simp

-- Empty genuine source sets can support a cover with one region and no zero witness.
def emptyCover : ZeroPermittingCover (∅ : Set ℂ) where
  count := 1
  zeroFree := ∅
  regions := fun _ => ∅
  zeroFree_sound := by intro z hz; exact False.elim hz
  mirror_stable := by intro i z hz; exact False.elim hz
  capacity := by intro i z hz; exact False.elim hz
  covers := by intro z hz; exact False.elim hz
example : emptyCover.count = 1 := rfl
example : ¬ ∃ z ∈ (∅ : Set ℂ), NontrivialZetaZero z := by simp
example : AtMostOneTarget (∅ : Set ℂ) := emptyCover.atMostOneTarget_of_count_one rfl

-- Domain and error controls do not assert any ambient point is a zeta zero.
example : -(polynomial (⟨1/2,14⟩ : ℂ)).re < (9 : ℝ) := Certificate.projection_failure_below_band
example : (33/2 : ℝ)-(31/2) > 5/8 := by norm_num
example : (9 : ℝ)-1/8 = 71/8 := by norm_num
example : (9 : ℝ)-9 = 0 := by norm_num
example : (1/16 : ℝ) < 1/8+1/8 := by norm_num
example (h : ShellRH 17) : WindowRH 18 := window_eighteen_of_shell h
example (h : ∀ N : ℕ, 17 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_seventeen h

end
end GRWTSK.RiemannHypothesis.Checks.SeventeenBandExtension
```
