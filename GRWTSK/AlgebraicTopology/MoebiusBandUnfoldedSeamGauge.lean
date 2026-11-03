/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.AlgebraicTopology.MoebiusBandHolonomyClassification
import GRWTSK.AlgebraicTopology.MoebiusBandOrientationDoubleCover
import Mathlib.Tactic

/-!
# Unfold the orientation circle, retain the Möbius seam

An interval gauge can trivialize *every* edge transition in a finite
orientation loop. Its defect is the original mod-two holonomy at the
seam. It closes exactly when that holonomy vanishes; for a Möbius
half-twist, it necessarily fails to close. The existing two-sheet
monodromy nevertheless returns after two circuits.

This is a combinatorial ZMod 2 orientation-local-system statement,
not an identification with the manifold's Stiefel-Whitney class.
It is not a Kakeya or arithmetic Möbius cancellation estimate.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.MoebiusBandUnfoldedSeamGauge

open GRWTSK.Topology.AlgebraicTopology.MoebiusBandGaugePacking
open GRWTSK.Topology.AlgebraicTopology.MoebiusBandHolonomyClassification
open GRWTSK.Topology.AlgebraicTopology.MoebiusBandOrientationDoubleCover

/-- The explicit interval gauge obtained by unfolding the loop at edge zero. -/
def unfoldedFrame (w : ℕ → ZMod 2) (i : ℕ) : ZMod 2 :=
  gaugeBetween w (fun _ => 0) i

/-- The unfolded gauge is normalized at the first vertex. -/
theorem unfoldedFrame_zero (w : ℕ → ZMod 2) : unfoldedFrame w 0 = 0 := by
  simp [unfoldedFrame, gaugeBetween, parityHolonomy]

/-- Every original edge transition is exactly removed on the unfolded interval. -/
theorem unfolded_transport_zero (w : ℕ → ZMod 2) (i : ℕ) :
    transportEdge w (unfoldedFrame w) i = 0 := by
  simpa only [unfoldedFrame] using
    (gaugeBetween_transports w (fun _ => 0) i)

/-- The missing seam frame is exactly the original orientation holonomy. -/
theorem unfolded_seam_eq_holonomy (w : ℕ → ZMod 2) (n : ℕ) :
    unfoldedFrame w n = parityHolonomy w n := by
  calc
    unfoldedFrame w n = gaugeBetween w (fun _ => 0) n := rfl
    _ = parityHolonomy w n - parityHolonomy (fun _ => 0) n :=
      gaugeBetween_closing_defect w (fun _ => 0) n
    _ = parityHolonomy w n := by simp [parityHolonomy]

/-- An unfolded interval gauge descends to a closed-circle gauge iff
its source loop has even orientation parity. -/
theorem unfolded_closed_iff_zero_holonomy (w : ℕ → ZMod 2) (n : ℕ) :
    unfoldedFrame w n = unfoldedFrame w 0 ↔ parityHolonomy w n = 0 := by
  rw [unfolded_seam_eq_holonomy, unfoldedFrame_zero]

/-- The odd Möbius seam cannot be closed while trivializing all edges. -/
theorem odd_unfolded_seam_not_closed (w : ℕ → ZMod 2) (n : ℕ)
    (hodd : parityHolonomy w n = 1) :
    unfoldedFrame w n ≠ unfoldedFrame w 0 := by
  intro hclose
  have hzero := (unfolded_closed_iff_zero_holonomy w n).mp hclose
  rw [hodd] at hzero
  norm_num at hzero

/-- A half-twist is nontrivial on one circuit but trivial on the
orientation double cover after two circuits. -/
theorem odd_seam_two_lap_return (w : ℕ → ZMod 2) (n : ℕ)
    (hodd : parityHolonomy w n = 1) (z : ZMod 2) :
    unfoldedFrame w n ≠ unfoldedFrame w 0 ∧
      loopMonodromy w n (loopMonodromy w n z) = z :=
  ⟨odd_unfolded_seam_not_closed w n hodd,
   loopMonodromy_twice w n z⟩

end GRWTSK.Topology.AlgebraicTopology.MoebiusBandUnfoldedSeamGauge
