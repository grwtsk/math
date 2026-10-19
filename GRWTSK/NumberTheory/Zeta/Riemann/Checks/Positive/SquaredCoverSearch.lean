/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.RationalCover
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSquaredRectangle

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.SquaredCoverSearch

open CriticalStripHeightDescent RationalPatchCover

example (d : Disk) (b : Rectangle) (hb : b.WellFormed) :
    d.SquaredContainsBox b ↔ b.carrier ⊆ d.carrier := d.squaredContainsBox_iff b hb

example {n : ℕ} (disks : Fin n → Disk) (tree : Tree n) (b : Rectangle)
    (h : tree.check disks b = true) : SquaredCover.check disks tree b = true :=
  SquaredCover.check_of_L1_check disks tree b h

-- Exact single-disk geometry, including the corner attaining the maximum.
def unitBox : Rectangle := ⟨-1, 1, -1, 1⟩
def largeDisk : Disk := ⟨0, 0, 3 / 2⟩

example : largeDisk.SquaredContainsBox unitBox := by decide
example : ¬ largeDisk.ContainsBox unitBox := by decide

-- Squaring must not erase the radius sign, even on a singleton rectangle.
example : ¬ (⟨0, 0, -1⟩ : Disk).SquaredContainsBox (⟨0, 0, 0, 0⟩ : Rectangle) := by
  decide

-- Finite family genuinely needs different disk indices in the four quadrants.
def quarterDisks (i : Fin 4) : Disk :=
  { re := if i.val < 2 then -(1 / 2) else 1 / 2,
    im := if i.val % 2 = 0 then -(1 / 2) else 1 / 2,
    radius := 3 / 4 }

lemma insufficient_depth : (SquaredCover.search quarterDisks 1 unitBox).isSome = false := by
  decide

lemma sufficient_depth : (SquaredCover.search quarterDisks 2 unitBox).isSome = true := by
  decide

-- Exact boundary contact of a closed singleton is accepted at depth zero.
example : (SquaredCover.search (fun _ : Fin 1 => (⟨0, 0, 1⟩ : Disk)) 0
    (⟨1, 1, 0, 0⟩ : Rectangle)).isSome = true := by decide

-- Inverted targets and absent disk families cannot produce checked certificates.
example : (SquaredCover.search quarterDisks 2 (⟨1, -1, -1, 1⟩ : Rectangle)).isSome = false := by
  decide
example : (SquaredCover.search (fun i : Fin 0 => Fin.elim0 i) 2 unitBox).isSome = false := by
  decide

-- Corner disks still miss the interior; squaring is exact only for ONE leaf disk.
def cornerDisks (i : Fin 4) : Disk :=
  { re := if i.val < 2 then -1 else 1,
    im := if i.val % 2 = 0 then -1 else 1,
    radius := 1 / 4 }

example : (SquaredCover.search cornerDisks 3 unitBox).isSome = false := by decide

noncomputable section

/-- A valid analytic cover exists even though the depth-one run returned no result.
This gives a source countermodel to interpreting `none` as a zero certificate. -/
def constantPatch (i : Fin 4) :
    SampleVariationPatch (fun _ : ℂ => (1 : ℂ)) (quarterDisks i).carrier where
  center := (quarterDisks i).center
  lower := 1
  error := 0
  error_nonneg := le_rfl
  sample_lower := by simp
  variation := by intro z hz; simp
  strict_margin := by norm_num

def constantCover : FiniteVariationCover (fun _ : ℂ => (1 : ℂ)) unitBox.carrier :=
  ((SquaredCover.search quarterDisks 2 unitBox).get sufficient_depth).toFiniteVariationCover
    constantPatch

example : (∀ z ∈ unitBox.carrier, (fun _ : ℂ => (1 : ℂ)) z ≠ 0) ∧
    (SquaredCover.search quarterDisks 1 unitBox).isSome = false :=
  ⟨fun _ hz => constantCover.nonzero hz, insufficient_depth⟩

-- Concrete zeta source: unchanged analytic disk, now generated checked geometry.
example : (SquaredCover.search FourTermRectangle.disks 0
    SquaredFourTermRectangle.box).isSome = true := SquaredFourTermRectangle.search_accepts
example : FiniteVariationCover poleNormalizedZeta SquaredFourTermRectangle.box.carrier :=
  SquaredFourTermRectangle.cover
example {z : ℂ} (hz : z ∈ SquaredFourTermRectangle.box.carrier) :
    (3 / 64 : ℝ) ≤ ‖poleNormalizedZeta z‖ := SquaredFourTermRectangle.norm_lower_on_box hz
example : NoTargetZero SquaredFourTermRectangle.box.carrier :=
  SquaredFourTermRectangle.noTargetZero_box
example : FourTermRectangle.box.carrier ⊆ SquaredFourTermRectangle.box.carrier :=
  SquaredFourTermRectangle.old_box_subset
example : ∃ z ∈ SquaredFourTermRectangle.box.carrier,
    z ∉ FourTermRectangle.box.carrier := SquaredFourTermRectangle.strict_extension

-- Side lengths grow by 5/4; this is coordinate area arithmetic, not a new height band.
example : ((773 / 1024 - 763 / 1024) * (133 / 1024 - 123 / 1024) : ℚ) =
    (25 / 16) * ((193 / 256 - 191 / 256) * (33 / 256 - 31 / 256)) := by norm_num

end
end GRWTSK.RiemannHypothesis.Checks.SquaredCoverSearch
