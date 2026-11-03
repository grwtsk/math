/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Positive root-relative quadratic responses across dependent families

Local attribution: grwtsk contributors.

This theorem family is about a CHOSEN measurement, not an intrinsic positive
order on algebraic group torsion or on the antisymmetric torsion tensor of an
affine connection. The zero locus may contain more than one state. A unique
root requires an additional faithful measurement.

A family of positive proportionality constants gives an energy strictly
positive away from the measurement's zero locus. Source preservation and
energy preservation under a proposed frame are separately typed. For a
non-preserving frame the entire signed response defect remains explicit.
There is no automatic uniform lower bound over an increasing family index.

Lean compilation, kernel replay and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.FunctionalAnalysis.RootedQuadraticFamilies

universe u v

/-- A dependent family whose response is measured in the real numbers. -/
structure Family (Index : Type u) where
  Carrier : Index → Type v
  response : ∀ i : Index, Carrier i → ℝ
  weight : Index → ℝ
  weight_pos : ∀ i, 0 < weight i

namespace Family

variable {Index : Type u} (F : Family Index)

/-- Root means zero *observed defect*, not necessarily the unique zero state. -/
def AtRoot (i : Index) (x : F.Carrier i) : Prop :=
  F.response i x = 0

/-- A nonnegative root-relative energy, with family-dependent scaling. -/
def energy (i : Index) (x : F.Carrier i) : ℝ :=
  F.weight i * (F.response i x) ^ 2

theorem energy_nonneg (i : Index) (x : F.Carrier i) :
    0 ≤ F.energy i x := by
  unfold energy
  exact mul_nonneg (F.weight_pos i).le (sq_nonneg _)

/-- Proportional positivity outside the precisely specified zero locus. -/
theorem energy_pos_of_not_root (i : Index) (x : F.Carrier i)
    (h : ¬ F.AtRoot i x) : 0 < F.energy i x := by
  have hn : F.response i x ≠ 0 := h
  have hsq : 0 < (F.response i x) ^ 2 := sq_pos_of_ne_zero hn
  exact mul_pos (F.weight_pos i) hsq

/-- The only zeros of the measured quadratic are the measured roots. -/
theorem energy_eq_zero_iff (i : Index) (x : F.Carrier i) :
    F.energy i x = 0 ↔ F.AtRoot i x := by
  constructor
  · intro he
    by_contra h
    have hp := F.energy_pos_of_not_root i x h
    linarith
  · intro hr
    change F.response i x = 0 at hr
    simp [energy, hr]

/-- Reversible source-frame maps are not automatically response isometries. -/
structure Frame (i j : Index) where
  toEquiv : F.Carrier i ≃ F.Carrier j
  sourceResponse : ∀ x, F.response j (toEquiv x) = F.response i x

/-- A response-preserving frame carries the exact root set onto the root set. -/
theorem Frame.atRoot_iff {i j : Index} (frame : F.Frame i j)
    (x : F.Carrier i) :
    F.AtRoot j (frame.toEquiv x) ↔ F.AtRoot i x := by
  simp [AtRoot, frame.sourceResponse x]

/-- If the two physical scale factors agree, so do the exact energies. -/
theorem Frame.energy_eq_of_weight_eq {i j : Index} (frame : F.Frame i j)
    (hw : F.weight i = F.weight j) (x : F.Carrier i) :
    F.energy j (frame.toEquiv x) = F.energy i x := by
  simp [energy, frame.sourceResponse x, ← hw]

/-- No division by a potentially vanishing scale is used in transport. -/
theorem Frame.energy_weighted_identity {i j : Index} (frame : F.Frame i j)
    (x : F.Carrier i) :
    F.energy j (frame.toEquiv x) * F.weight i =
      F.energy i x * F.weight j := by
  simp [energy, frame.sourceResponse x]
  ring

/-- Signed response failure for an arbitrary, not necessarily faithful map. -/
def responseDefect {i j : Index}
    (map : F.Carrier i → F.Carrier j) (x : F.Carrier i) : ℝ :=
  F.response j (map x) - F.response i x

theorem response_with_defect {i j : Index}
    (map : F.Carrier i → F.Carrier j) (x : F.Carrier i) :
    F.response j (map x) =
      F.response i x + F.responseDefect map x := by
  unfold responseDefect
  ring

/-- Exact energy return with a named, signed response defect. -/
theorem energy_with_defect {i j : Index}
    (map : F.Carrier i → F.Carrier j) (x : F.Carrier i) :
    F.energy j (map x) =
      F.weight j * (F.response i x + F.responseDefect map x) ^ 2 := by
  rw [energy, F.response_with_defect map x]

/-- A two-term upper allowance, not a vanishing-defect claim. -/
theorem energy_le_two_terms {i j : Index}
    (map : F.Carrier i → F.Carrier j) (x : F.Carrier i) :
    F.energy j (map x) ≤
      2 * F.weight j * (F.response i x) ^ 2 +
      2 * F.weight j * (F.responseDefect map x) ^ 2 := by
  rw [F.energy_with_defect map x]
  have hsq :
      (F.response i x + F.responseDefect map x) ^ 2 ≤
        2 * (F.response i x) ^ 2 +
        2 * (F.responseDefect map x) ^ 2 := by
    nlinarith [sq_nonneg (F.response i x - F.responseDefect map x)]
  have hw := mul_le_mul_of_nonneg_left hsq (F.weight_pos j).le
  nlinarith

end Family

end GRWTSK.FunctionalAnalysis.RootedQuadraticFamilies

end
