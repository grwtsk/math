# Complete source: GRWTSK.Algebra.LinearAlgebra.B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara.Variantb576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e19311addbe9d8c126d2f26290e89d26b7de394` · SHA-256 `b576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.InterventionDefect

/-!
# Phase-IV comparator separation

This module begins Phase IV of the Positive Atlas.

Phase III provides a positive intervention sensitivity in the distinguished
(+,-) sector. Phase IV adds a comparator readout and a separate nonnegative
separation gap.

For a linear comparator q : V → ℝ and a linear intervention I, define

  Γ_q(x) = (q(ΔI(x)))²

and retain the Phase-III sensitivity

  Λ(x) = G(P₊₋ ΔI(x), P₊₋ ΔI(x)).

These are logically distinct quantities. Positive Λ alone does not force
positive Γ: the zero comparator has Γ = 0 for every intervention, even at
points with positive sensitivity.

A comparator can additionally be required to factor through the distinguished
intervention sector and to detect every visible projected differential for the
given intervention family. Under those separate Phase-IV hypotheses, positive
sensitivity does imply positive comparator separation.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {V : Type u} [AddCommGroup V] [Module ℝ V]
variable {X : Type v} [AddCommGroup X] [Module ℝ X]

/-- A real-valued linear comparator on the Phase-IV state space. -/
structure LinearComparator (V : Type u)
    [AddCommGroup V] [Module ℝ V] where
  readout : V →ₗ[ℝ] ℝ

namespace LinearComparator

/-- Comparator response to the raw intervention differential. -/
def responseDifference
    (Q : LinearComparator V) (I : LinearIntervention X V) :
    X →ₗ[ℝ] ℝ :=
  Q.readout.comp I.differential

@[simp]
theorem responseDifference_apply
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) :
    Q.responseDifference I x =
      Q.readout (I.intervened x - I.baseline x) := by
  simp [responseDifference, LinearIntervention.differential]

/-- Phase-IV comparator/separation gap Γ. -/
def comparatorGap
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) : ℝ :=
  (Q.responseDifference I x) ^ 2

/-- Comparator gap is always nonnegative. -/
theorem comparatorGap_nonnegative
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) :
    0 ≤ Q.comparatorGap I x :=
  sq_nonneg _

/-- Comparator separation is strict exactly when the response differential is
nonzero. -/
theorem comparatorGap_pos_iff
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) :
    0 < Q.comparatorGap I x ↔ Q.responseDifference I x ≠ 0 := by
  rw [comparatorGap, sq_pos_iff]

/-- Comparator gap vanishes exactly when the response differential vanishes. -/
theorem comparatorGap_eq_zero_iff
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) :
    Q.comparatorGap I x = 0 ↔ Q.responseDifference I x = 0 := by
  rw [comparatorGap, sq_eq_zero_iff]

/-- The comparator that discards all state information. -/
def zero : LinearComparator V where
  readout := 0

@[simp]
theorem zero_readout (x : V) :
    (zero : LinearComparator V).readout x = 0 :=
  rfl

@[simp]
theorem zero_responseDifference
    (I : LinearIntervention X V) (x : X) :
    (zero : LinearComparator V).responseDifference I x = 0 := by
  simp [responseDifference, zero]

@[simp]
theorem zero_comparatorGap
    (I : LinearIntervention X V) (x : X) :
    (zero : LinearComparator V).comparatorGap I x = 0 := by
  simp [comparatorGap]

end LinearComparator

namespace PositiveCommutingInvolutions

variable {G : PositiveForm V} (C : PositiveCommutingInvolutions G)

/-- Phase-IV sensitivity Λ is the Phase-III intervention-defect energy. -/
noncomputable def interventionSensitivity
    (I : LinearIntervention X V) (x : X) : ℝ :=
  C.interventionDefectEnergy I x

/-- Sensitivity is nonnegative. -/
theorem interventionSensitivity_nonnegative
    (I : LinearIntervention X V) (x : X) :
    0 ≤ C.interventionSensitivity I x :=
  C.interventionDefectEnergy_nonnegative I x

/-- Positive sensitivity is exactly visibility of the projected differential. -/
theorem interventionSensitivity_pos_iff_visible
    (I : LinearIntervention X V) (x : X) :
    0 < C.interventionSensitivity I x ↔
      G.Visible (C.projectedDifferential I x) :=
  C.interventionDefectEnergy_pos_iff_visible I x

/-- A comparator is sector-complete when its readout factors through the
distinguished (+,-) sector. -/
def ComparatorSectorComplete
    (Q : LinearComparator V) : Prop :=
  ∀ v : V, Q.readout v = Q.readout (C.sectorPM v)

/-- The zero comparator is sector-complete: factoring through the distinguished
sector does not by itself imply separation. -/
theorem zeroComparator_sectorComplete :
    C.ComparatorSectorComplete (LinearComparator.zero : LinearComparator V) := by
  intro v
  simp

/-- Under sector-completeness, the raw comparator response is exactly the
readout of the projected intervention differential. -/
theorem responseDifference_eq_projected
    (Q : LinearComparator V) (I : LinearIntervention X V)
    (hcomplete : C.ComparatorSectorComplete Q) (x : X) :
    Q.responseDifference I x =
      Q.readout (C.projectedDifferential I x) := by
  have h := hcomplete (I.differential x)
  simpa [LinearComparator.responseDifference, projectedDifferential] using h

/-- Under sector-completeness, Γ is the square of the comparator readout on the
distinguished projected differential. -/
theorem comparatorGap_eq_projected_sq
    (Q : LinearComparator V) (I : LinearIntervention X V)
    (hcomplete : C.ComparatorSectorComplete Q) (x : X) :
    Q.comparatorGap I x =
      (Q.readout (C.projectedDifferential I x)) ^ 2 := by
  rw [LinearComparator.comparatorGap, C.responseDifference_eq_projected Q I hcomplete x]

/-- Pointwise comparator detection of the projected intervention differential. -/
def ComparatorDetectsAt
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) : Prop :=
  Q.readout (C.projectedDifferential I x) ≠ 0

/-- Sector-completeness plus pointwise detection gives strict comparator
separation. -/
theorem comparatorGap_pos_of_sectorComplete_detects
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X)
    (hcomplete : C.ComparatorSectorComplete Q)
    (hdetect : C.ComparatorDetectsAt Q I x) :
    0 < Q.comparatorGap I x := by
  rw [C.comparatorGap_eq_projected_sq Q I hcomplete x, sq_pos_iff]
  exact hdetect

/-- A comparator is complete for a given intervention family when it factors
through the (+,-) sector and detects every visible projected differential of
that family. -/
def ComparatorCompleteFor
    (Q : LinearComparator V) (I : LinearIntervention X V) : Prop :=
  C.ComparatorSectorComplete Q ∧
    ∀ x : X, G.Visible (C.projectedDifferential I x) →
      C.ComparatorDetectsAt Q I x

/-- In a complete comparator regime, positive Phase-III sensitivity forces
strict Phase-IV comparator separation. -/
theorem positive_sensitivity_implies_positive_gap_of_complete
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X)
    (hcomplete : C.ComparatorCompleteFor Q I)
    (hsensitivity : 0 < C.interventionSensitivity I x) :
    0 < Q.comparatorGap I x := by
  have hvisible :=
    (C.interventionSensitivity_pos_iff_visible I x).1 hsensitivity
  exact C.comparatorGap_pos_of_sectorComplete_detects Q I x
    hcomplete.1 (hcomplete.2 x hvisible)

/-- Even sector-completeness alone does not bridge sensitivity to separation:
the zero comparator factors through the (+,-) sector but has zero gap. -/
theorem positive_sensitivity_sectorComplete_zero_gap
    (I : LinearIntervention X V) (x : X)
    (hsensitivity : 0 < C.interventionSensitivity I x) :
    C.ComparatorSectorComplete (LinearComparator.zero : LinearComparator V) ∧
      0 < C.interventionSensitivity I x ∧
      (LinearComparator.zero : LinearComparator V).comparatorGap I x = 0 :=
  ⟨C.zeroComparator_sectorComplete, hsensitivity,
    LinearComparator.zero_comparatorGap I x⟩

/-- Positive sensitivity by itself does not force positive separation uniformly
over comparators: the zero comparator still has zero gap. -/
theorem positive_sensitivity_zero_comparator_gap
    (I : LinearIntervention X V) (x : X)
    (hsensitivity : 0 < C.interventionSensitivity I x) :
    0 < C.interventionSensitivity I x ∧
      (LinearComparator.zero : LinearComparator V).comparatorGap I x = 0 :=
  ⟨hsensitivity, LinearComparator.zero_comparatorGap I x⟩

/-- Equivalently, no positive-sensitivity point can have positive comparator gap
for every possible comparator. -/
theorem not_all_comparators_separate_of_positive_sensitivity
    (I : LinearIntervention X V) (x : X)
    (_hsensitivity : 0 < C.interventionSensitivity I x) :
    ¬ ∀ Q : LinearComparator V, 0 < Q.comparatorGap I x := by
  intro hall
  have hzero :=
    hall (LinearComparator.zero : LinearComparator V)
  rw [LinearComparator.zero_comparatorGap] at hzero
  exact (lt_irrefl 0) hzero

end PositiveCommutingInvolutions

end FormalResearch.PositiveAtlas
```
