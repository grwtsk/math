/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSquaredCover
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourTermRectangle

set_option autoImplicit false

/-!
# A larger rectangle using the unchanged four-term analytic disk

Squared Euclidean leaf checking admits a larger rectangle inside the SAME analytic
disk of radius 1/128. No new power evaluation, zeta value or derivative bound is
introduced. The lower bound remains 3/64. This is one local rectangle, not a shell,
new uniform height, source-divisor identification or RH theorem.
The bounded search success below is a Lean proof script, NOT a replay receipt.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SquaredFourTermRectangle

open Set RationalPatchCover

noncomputable section

def box : Rectangle where
  left := 763 / 1024
  right := 773 / 1024
  bottom := 123 / 1024
  top := 133 / 1024

/-- The exact farthest-corner square is 50/1024^2, below 64/1024^2. -/
lemma squared_leaf_accepts :
    FourTermRectangle.rationalDisk.SquaredContainsBox box := by
  norm_num [Disk.SquaredContainsBox, Disk.realReach, Disk.imagReach,
    FourTermRectangle.rationalDisk, box]

/-- The original L1 leaf fails here: 10/1024 > 8/1024. It was sufficient, not exact. -/
lemma old_leaf_rejects : ¬ FourTermRectangle.rationalDisk.ContainsBox box := by
  norm_num [Disk.ContainsBox, Disk.realReach, Disk.imagReach,
    FourTermRectangle.rationalDisk, box]

/-- Concrete bounded witness generation, with no externally supplied tree. -/
lemma search_accepts :
    (SquaredCover.search FourTermRectangle.disks 0 box).isSome = true := by
  decide

/-- Extract the actual checked result, rather than accepting a JSON success flag. -/
def certificate : SquaredCover.CheckedTree FourTermRectangle.disks box :=
  (SquaredCover.search FourTermRectangle.disks 0 box).get search_accepts

/-- Geometry becomes an analytic cover only with the existing source-bearing patch. -/
def cover : FiniteVariationCover poleNormalizedZeta box.carrier :=
  certificate.toFiniteVariationCover (fun _ => by
    simpa only [FourTermRectangle.disks, FourTermRectangle.rationalDisk_carrier]
      using FourTermRectangle.enlargedPatch)

lemma box_subset_disk : box.carrier ⊆ FourTermRectangle.enlargedDisk := by
  intro z hz
  have h := FourTermRectangle.rationalDisk.squaredContainsBox_sound box
    squared_leaf_accepts hz
  simpa only [FourTermRectangle.rationalDisk_carrier] using h

theorem norm_lower_on_box {z : ℂ} (hz : z ∈ box.carrier) :
    (3 / 64 : ℝ) ≤ ‖poleNormalizedZeta z‖ :=
  FourTermRectangle.norm_lower_on_enlargedDisk (box_subset_disk hz)

theorem noTargetZero_box : NoTargetZero box.carrier := by
  intro z hz hzero
  exact cover.nonzero hz (poleNormalizedZeta_zero_of_target hzero)

/-- Both coordinates strictly enlarge the previously constructed rectangle. -/
theorem old_box_subset : FourTermRectangle.box.carrier ⊆ box.carrier := by
  intro z hz
  change (191 / 256 : ℝ) ≤ z.re ∧ z.re ≤ 193 / 256 ∧
    (31 / 256 : ℝ) ≤ z.im ∧ z.im ≤ 33 / 256 at hz
  change (763 / 1024 : ℝ) ≤ z.re ∧ z.re ≤ 773 / 1024 ∧
    (123 / 1024 : ℝ) ≤ z.im ∧ z.im ≤ 133 / 1024
  rcases hz with ⟨hl, hr, hb, ht⟩
  constructor
  · linarith
  constructor
  · linarith
  constructor <;> linarith

theorem strict_extension : ∃ z ∈ box.carrier, z ∉ FourTermRectangle.box.carrier := by
  refine ⟨(⟨773 / 1024, 1 / 8⟩ : ℂ), ?_, ?_⟩
  · norm_num [box, Rectangle.carrier]
  · norm_num [FourTermRectangle.box, Rectangle.carrier]

/-- No unproved zero is used to demonstrate that this is only a local patch. -/
theorem ambient_point_outside : (⟨3 / 4, 1⟩ : ℂ) ∉ box.carrier := by
  norm_num [box, Rectangle.carrier]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SquaredFourTermRectangle
