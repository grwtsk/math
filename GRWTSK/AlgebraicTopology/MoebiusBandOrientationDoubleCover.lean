/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.AlgebraicTopology.MoebiusBandHolonomyClassification
import Mathlib.Tactic

/-!
# Finite orientation double-cover and monodromy of a Möbius half-twist

This module gives the **finite cyclic combinatorial model** for the
orientation double cover. A point of its fiber is one of two orientation
sheets (ZMod 2). Transport along edge-transition parities changes the
sheet by the prefix holonomy. A single closed half-twist interchanges
both sheets and two circuits return each sheet to itself.

It does NOT construct a topological covering map of the Möbius band or
identify these finite transition values with the first Stiefel-Whitney
class of a particular manifold. The deleted-product and Frolkina-
Melikhov embedding obstructions remain independent mathematical work.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.MoebiusBandOrientationDoubleCover

open GRWTSK.Topology.AlgebraicTopology.MoebiusBandGaugePacking

/-- The source's two-sheet orientation state after the first n edges. -/
def orientationSheetAt (w : ℕ → ZMod 2) (z : ZMod 2) (n : ℕ) : ZMod 2 :=
  z + parityHolonomy w n

/-- A path lift starts at its prescribed original sheet. -/
theorem orientationSheetAt_zero (w : ℕ → ZMod 2) (z : ZMod 2) :
    orientationSheetAt w z 0 = z := by
  simp [orientationSheetAt, parityHolonomy]

/-- Crossing the next ORIGINAL edge adds exactly its orientation parity. -/
theorem orientationSheetAt_succ (w : ℕ → ZMod 2) (z : ZMod 2) (n : ℕ) :
    orientationSheetAt w z (n + 1) = orientationSheetAt w z n + w n := by
  simp [orientationSheetAt, parityHolonomy, Finset.sum_range_succ]
  ring

/-- Exact change of a path lift under a change of local orientation gauges.
The only difference is the boundary-frame mismatch; no edge is omitted. -/
theorem orientationSheetAt_gauge (w g : ℕ → ZMod 2) (z : ZMod 2) (n : ℕ) :
    orientationSheetAt (transportEdge w g) z n =
      orientationSheetAt w z n + g 0 - g n := by
  rw [orientationSheetAt, transport_holonomy_boundary]
  unfold orientationSheetAt
  ring

/-- The full-loop sheet permutation is a literal two-element equivalence. -/
def loopMonodromy (w : ℕ → ZMod 2) (n : ℕ) : ZMod 2 ≃ ZMod 2 where
  toFun := fun z => z + parityHolonomy w n
  invFun := fun z => z - parityHolonomy w n
  left_inv := by
    intro z
    dsimp
    ring
  right_inv := by
    intro z
    dsimp
    ring

/-- Closed changes of orientation frames do not change the monodromy. -/
theorem loopMonodromy_closed_gauge (w g : ℕ → ZMod 2) (n : ℕ)
    (hclosed : g n = g 0) :
    loopMonodromy (transportEdge w g) n = loopMonodromy w n := by
  apply Equiv.ext
  intro z
  simp [loopMonodromy, closed_holonomy_invariant w g n hclosed]

/-- The monodromy is identity precisely for even total parity. -/
theorem loopMonodromy_eq_refl_iff (w : ℕ → ZMod 2) (n : ℕ) :
    loopMonodromy w n = Equiv.refl (ZMod 2) ↔ parityHolonomy w n = 0 := by
  constructor
  · intro h
    have h0 := congrArg (fun f : ZMod 2 ≃ ZMod 2 => f 0) h
    simpa [loopMonodromy] using h0
  · intro h
    apply Equiv.ext
    intro z
    simp [loopMonodromy, h]

/-- In a half-twist, traversing the complete loop exchanges both sheets. -/
theorem oddMonodromy_swaps_sheets (w : ℕ → ZMod 2) (n : ℕ)
    (hodd : parityHolonomy w n = 1) :
    loopMonodromy w n 0 = 1 ∧ loopMonodromy w n 1 = 0 := by
  constructor <;> norm_num [loopMonodromy, hodd]

/-- No starting orientation survives a single odd loop unchanged. -/
theorem oddMonodromy_no_fixed_sheet (w : ℕ → ZMod 2) (n : ℕ)
    (hodd : parityHolonomy w n = 1) (z : ZMod 2) :
    loopMonodromy w n z ≠ z := by
  intro heq
  have hplus : z + (1 : ZMod 2) = z + 0 := by
    simpa [loopMonodromy, hodd] using heq
  have hone : (1 : ZMod 2) = 0 := add_left_cancel hplus
  norm_num at hone

/-- In characteristic two, traversing the monodromy twice returns
exactly the original sheet (even for odd single-lap holonomy). -/
theorem loopMonodromy_twice (w : ℕ → ZMod 2) (n : ℕ) (z : ZMod 2) :
    loopMonodromy w n (loopMonodromy w n z) = z := by
  change (z + parityHolonomy w n) + parityHolonomy w n = z
  have htwo : (2 : ZMod 2) = 0 := by norm_num
  calc
    (z + parityHolonomy w n) + parityHolonomy w n =
        z + (2 : ZMod 2) * parityHolonomy w n := by ring
    _ = z := by simp [htwo]

/-- The canonical one-edge Möbius half-twist interchanges sheets. -/
theorem canonical_half_twist_swaps_sheets :
    loopMonodromy (fun _ : ℕ => (1 : ZMod 2)) 1 0 = 1 ∧
    loopMonodromy (fun _ : ℕ => (1 : ZMod 2)) 1 1 = 0 :=
  oddMonodromy_swaps_sheets _ 1 canonical_half_twist_holonomy

end GRWTSK.Topology.AlgebraicTopology.MoebiusBandOrientationDoubleCover
