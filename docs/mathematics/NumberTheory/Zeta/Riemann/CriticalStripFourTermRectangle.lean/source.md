# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourTermRectangle

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52d2386b65c86fbb033eb7cc78346303c0ef0d7c` · SHA-256 `b868f1f6ebcb7eab12c6d0484fcdd126633a1378cb33d4cf485d15e7ad5641e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourTermWitness
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalCover

set_option autoImplicit false

/-!
# A concrete closed rectangle from the existing four-term arithmetic source

No additional transcendental sample is introduced. The exact existing sample has
real part at least 13/16; retaining this sharper bound enlarges the certified disk
radius from 1/512 to 1/128. The source error remains 53/128 and the derivative bound
remains 45. The resulting lower bound is 3/64 on the entire CLOSED enlarged disk.

A rational split tree then covers an explicit closed rectangle with four leaves.
All four leaves reuse the SAME proved disk: this tests geometric composition, not
four independent arithmetic evaluations. The rectangle is not a complete shell,
global positive-height seed, or multiplicity/Weil certificate. Source-only.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.FourTermRectangle

open Complex Set RationalPatchCover

noncomputable section

/-- The sharper lower bound follows from the exact previously computed rational sample. -/
lemma sample_lower : (13 / 16 : ℝ) ≤ ‖FourTermWitness.enclosure.sample‖ := by
  have h : (13 / 16 : ℝ) ≤ FourTermWitness.enclosure.sample.re := by
    rw [FourTermWitness.sample_eq]
    norm_num
  exact h.trans (Complex.re_le_norm _)

def enlargedDisk : Set ℂ := Metric.closedBall FourTermWitness.center (1 / 128)

lemma disk_radius {z : ℂ} (hz : z ∈ enlargedDisk) :
    ‖z - FourTermWitness.center‖ ≤ (1 / 128 : ℝ) := by
  simpa only [enlargedDisk, Metric.mem_closedBall, dist_eq_norm] using hz

lemma disk_real_lower {z : ℂ} (hz : z ∈ enlargedDisk) : (1 / 2 : ℝ) ≤ z.re := by
  have h := (Complex.re_le_norm (FourTermWitness.center - z)).trans
    (by simpa only [norm_sub_rev] using disk_radius hz)
  simp only [Complex.sub_re, FourTermWitness.center] at h
  linarith

lemma disk_norm_le_one {z : ℂ} (hz : z ∈ enlargedDisk) : ‖z‖ ≤ (1 : ℝ) := by
  calc
    ‖z‖ = ‖(z - FourTermWitness.center) + FourTermWitness.center‖ := by
      congr 1; ring
    _ ≤ ‖z - FourTermWitness.center‖ + ‖FourTermWitness.center‖ := norm_add_le _ _
    _ ≤ (1 / 128 : ℝ) + 7 / 8 :=
      add_le_add (disk_radius hz) FourTermWitness.center_norm_le
    _ ≤ 1 := by norm_num

lemma derivative_bound {z : ℂ} (hz : z ∈ enlargedDisk) :
    ‖deriv poleNormalizedZeta z‖ ≤ (45 : ℝ) := by
  have h := poleNormalized_deriv_norm_le (a := (1 / 4 : ℝ)) (B := 1)
    (by norm_num) (by simpa using disk_real_lower hz) (disk_norm_le_one hz)
  norm_num at h
  exact h

/-- This uses the unchanged arithmetic enclosure, not a new data-table premise. -/
def enlargedPatch : SampleVariationPatch poleNormalizedZeta enlargedDisk :=
  SampleVariationPatch.ofDerivativeEnclosure (U := enlargedDisk) (V := enlargedDisk)
    FourTermWitness.center FourTermWitness.enclosure.sample
    (13 / 16) (53 / 128) 45 (1 / 128)
    (by norm_num) (by norm_num) (by norm_num)
    (convex_closedBall FourTermWitness.center (1 / 128))
    (by norm_num [enlargedDisk]) (fun _ hz => hz)
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun _ hz => derivative_bound hz)
    (fun _ hz => disk_radius hz)
    sample_lower FourTermWitness.source_enclosed (by norm_num)

theorem norm_lower_on_enlargedDisk {z : ℂ} (hz : z ∈ enlargedDisk) :
    (3 / 64 : ℝ) ≤ ‖poleNormalizedZeta z‖ := by
  have h := enlargedPatch.value_norm_lower hz
  change (13 / 16 : ℝ) - 53 / 128 - 45 * (1 / 128) ≤ _ at h
  norm_num at h
  exact h

/-- Four times the radius; no new global strip height is inferred. -/
theorem oldDisk_subset : FourTermWitness.disk ⊆ enlargedDisk := by
  intro z hz
  change dist z FourTermWitness.center ≤ (1 / 128 : ℝ)
  rw [dist_eq_norm]
  exact (FourTermWitness.disk_radius hz).trans (by norm_num)

def box : Rectangle where
  left := 191 / 256
  right := 193 / 256
  bottom := 31 / 256
  top := 33 / 256

def rationalDisk : Disk where
  re := 3 / 4
  im := 1 / 8
  radius := 1 / 128

def disks : Fin 1 → Disk := fun _ => rationalDisk

lemma rationalDisk_carrier : rationalDisk.carrier = enlargedDisk := by
  norm_num [rationalDisk, Disk.carrier, Disk.center, enlargedDisk, FourTermWitness.center]

/-- A four-leaf exact subdivision. Both seams belong to both incident children. -/
def tree : Tree 1 :=
  .splitReal (3 / 4)
    (.splitImag (1 / 8) (.leaf 0) (.leaf 0))
    (.splitImag (1 / 8) (.leaf 0) (.leaf 0))

/-- A kernel-directed finite arithmetic script, not an external check result. -/
lemma tree_accepted : tree.check disks box = true := by
  norm_num [tree, Tree.check, box, disks, rationalDisk, Rectangle.WellFormed,
    Rectangle.west, Rectangle.east, Rectangle.south, Rectangle.north,
    Disk.ContainsBox, Disk.realReach, Disk.imagReach]

lemma tree_leaves : tree.leafCount = 4 := rfl

lemma box_wellFormed : box.WellFormed := by norm_num [box, Rectangle.WellFormed]

lemma box_nonempty : box.carrier.Nonempty := box.carrier_nonempty box_wellFormed

/-- The geometric tree is combined with the independently sourced analytic patch. -/
def cover : FiniteVariationCover poleNormalizedZeta box.carrier :=
  tree.toFiniteVariationCover disks
    (fun _ => by simpa only [disks, rationalDisk_carrier] using enlargedPatch)
    box tree_accepted

theorem box_subset_enlargedDisk : box.carrier ⊆ enlargedDisk := by
  intro z hz
  obtain ⟨i, hi⟩ := tree.check_covers disks box tree_accepted z hz
  simpa only [disks, rationalDisk_carrier] using hi

theorem norm_lower_on_box {z : ℂ} (hz : z ∈ box.carrier) :
    (3 / 64 : ℝ) ≤ ‖poleNormalizedZeta z‖ :=
  norm_lower_on_enlargedDisk (box_subset_enlargedDisk hz)

theorem noTargetZero_box : NoTargetZero box.carrier := by
  intro z hz hzero
  exact cover.nonzero hz (poleNormalizedZeta_zero_of_target hzero)

/-- An explicit point of the new rectangle is outside the previous smaller disk. -/
theorem box_extends_oldDisk : ∃ z ∈ box.carrier, z ∉ FourTermWitness.disk := by
  let z : ℂ := ⟨193 / 256, 1 / 8⟩
  refine ⟨z, ?_, ?_⟩
  · norm_num [z, box, Rectangle.carrier]
  · intro hz
    have h := (Complex.re_le_norm (z - FourTermWitness.center)).trans
      (FourTermWitness.disk_radius hz)
    norm_num [z, FourTermWitness.center] at h

/-- The entire new region remains above the older uniform 1/16 seed. -/
theorem box_above_old_seed {z : ℂ} (hz : z ∈ box.carrier) : (1 / 16 : ℝ) < z.im := by
  have h := hz.2.2.1
  norm_num [box] at h
  linarith

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.FourTermRectangle
```
