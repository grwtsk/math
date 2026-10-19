/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.FourTermWitness
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourTermRectangle

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.RationalCoverChecks

open CriticalStripHeightDescent RationalPatchCover

example : FourTermRectangle.tree.check FourTermRectangle.disks FourTermRectangle.box = true :=
  FourTermRectangle.tree_accepted

example : FourTermRectangle.tree.leafCount = 4 := FourTermRectangle.tree_leaves

example : FiniteVariationCover poleNormalizedZeta FourTermRectangle.box.carrier :=
  FourTermRectangle.cover

example {z : ℂ} (hz : z ∈ FourTermRectangle.box.carrier) :
    (3 / 64 : ℝ) ≤ ‖poleNormalizedZeta z‖ := FourTermRectangle.norm_lower_on_box hz

example : NoTargetZero FourTermRectangle.box.carrier := FourTermRectangle.noTargetZero_box

example : ∃ z ∈ FourTermRectangle.box.carrier, z ∉ FourTermWitness.disk :=
  FourTermRectangle.box_extends_oldDisk

-- Retain both children and the shared seam, with exact child targets.
example (b : Rectangle) (cut : ℚ) (hc : b.left ≤ cut ∧ cut ≤ b.right) :
    (b.west cut).carrier ∪ (b.east cut).carrier = b.carrier :=
  b.west_east_union hc

example (b : Rectangle) (cut : ℚ) (hc : b.bottom ≤ cut ∧ cut ≤ b.top) :
    (b.south cut).carrier ∪ (b.north cut).carrier = b.carrier :=
  b.south_north_union hc

-- A nontrivial four-disk GEOMETRY fixture, not four zeta evaluations.
def unitBox : Rectangle := ⟨-1, 1, -1, 1⟩

def quarterDisks (i : Fin 4) : Disk :=
  { re := if i.val < 2 then -(1 / 2) else 1 / 2,
    im := if i.val % 2 = 0 then -(1 / 2) else 1 / 2,
    radius := 1 }

def quarterTree : Tree 4 :=
  .splitReal 0
    (.splitImag 0 (.leaf 0) (.leaf 1))
    (.splitImag 0 (.leaf 2) (.leaf 3))

example : quarterTree.check quarterDisks unitBox = true := by
  norm_num [quarterTree, Tree.check, quarterDisks, unitBox, Rectangle.WellFormed,
    Rectangle.west, Rectangle.east, Rectangle.south, Rectangle.north,
    Disk.ContainsBox, Disk.realReach, Disk.imagReach]

-- An endpoint split cannot be substituted for strict subdivision progress.
example : (Tree.splitReal (-1) (.leaf 0) (.leaf 0)).check quarterDisks unitBox = false := by
  norm_num [Tree.check, unitBox, Rectangle.WellFormed]

-- Inverted rectangles cannot receive vacuous coverage acceptance.
example : (Tree.leaf (0 : Fin 4)).check quarterDisks
    (⟨1, -1, -1, 1⟩ : Rectangle) = false := by
  norm_num [Tree.check, Rectangle.WellFormed]

-- Wrong leaf selection loses a half, even though both recursive children are present.
example : (Tree.splitReal 0 (.leaf 0) (.leaf 0)).check quarterDisks unitBox = false := by
  norm_num [Tree.check, quarterDisks, unitBox, Rectangle.WellFormed,
    Rectangle.west, Rectangle.east, Disk.ContainsBox, Disk.realReach, Disk.imagReach]

-- Covering all four corners does not cover the interior: radius-1/4 corner disks.
def cornerDisks (i : Fin 4) : Disk :=
  { re := if i.val < 2 then -1 else 1,
    im := if i.val % 2 = 0 then -1 else 1,
    radius := 1 / 4 }

example : quarterTree.check cornerDisks unitBox = false := by
  norm_num [quarterTree, Tree.check, cornerDisks, unitBox, Rectangle.WellFormed,
    Rectangle.west, Rectangle.east, Rectangle.south, Rectangle.north,
    Disk.ContainsBox, Disk.realReach, Disk.imagReach]

-- A source zero blocks the analytic conclusion for EVERY proposed accepted tree.
example {n : ℕ} {F : ℂ → ℂ} (disks : Fin n → Disk)
    (patches : ∀ i, SampleVariationPatch F (disks i).carrier)
    (tree : Tree n) (b : Rectangle) {z : ℂ}
    (hz : z ∈ b.carrier) (hzero : F z = 0) : tree.check disks b ≠ true :=
  tree.not_check_of_source_zero disks patches b hz hzero

-- Strict positive margin and the exact radius, not a rounded variant.
example : (13 / 16 : ℝ) - 53 / 128 - 45 / 128 = 3 / 64 := by norm_num
example : (53 / 128 : ℝ) + 45 * (1 / 128) < 13 / 16 := by norm_num

end GRWTSK.RiemannHypothesis.Checks.RationalCoverChecks
