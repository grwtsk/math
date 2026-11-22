/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Cryptids.Semantics.Riemann95

/-!
# Action obstructions for a successor-only projection of Riemann95

The masks remove exactly the cells (41,1) and (61,1). The three-pair
projection agrees on successor codes at every pair of retained cells.
Literal action preservation rules out each of its proposed merges.
-/

namespace GRWTSK.ComputerScience.Riemann95SuccessorProjectionControl

open ConjectureMachines ConjectureMachines.Riemann95

abbrev retained (q : Fin 95) (b : Fin 2) : Prop :=
  (q, b) ≠ (41, 1) ∧ (q, b) ≠ (61, 1)

def projection (q : Fin 95) : Fin 95 :=
  if q = 90 then 47 else if q = 59 then 55 else if q = 61 then 56 else q

def nextCode (q : Fin 95) (b : Fin 2) : Option (Fin 95) :=
  (machine.transition q b).map fun a => projection a.2.2

set_option maxRecDepth 10000 in
set_option maxHeartbeats 4000000 in
/-- Check the reported projection directly against the pinned Lean table. -/
theorem projection_preserves_retained_successor :
    ∀ (q r : Fin 95) (b : Fin 2), retained q b → retained r b →
      projection q = projection r → nextCode q b = nextCode r b := by
  decide +kernel

def PreservesRetainedActions {n : ℕ} (encode : Fin 95 → Fin n) (target : Machine n 2) : Prop :=
  ∀ q b, retained q b →
    target.transition (encode q) b =
      (machine.transition q b).map fun a => (a.1, a.2.1, encode a.2.2)

theorem retained_actions_exclude_reported_merges {n : ℕ} (encode : Fin 95 → Fin n)
    (target : Machine n 2) (exactActions : PreservesRetainedActions encode target) :
    encode 47 ≠ encode 90 ∧ encode 55 ≠ encode 59 ∧ encode 56 ≠ encode 61 := by
  have compare (q r : Fin 95) (b : Fin 2) (hq : retained q b) (hr : retained r b)
      (he : encode q = encode r) :
      (machine.transition q b).map (fun a => (a.1, a.2.1, encode a.2.2)) =
        (machine.transition r b).map (fun a => (a.1, a.2.1, encode a.2.2)) := by
    rw [← exactActions q b hq, ← exactActions r b hr, he]
  have no56_61 : encode 56 ≠ encode 61 := by
    intro h
    have he := congrArg (Option.map (fun a : Fin 2 × Dir × Fin n => a.1))
      (compare 56 61 0 (by decide) (by decide) h)
    change some (1 : Fin 2) = some 0 at he
    exact (by decide : (1 : Fin 2) ≠ 0) (Option.some.inj he)
  refine ⟨?_, ?_, no56_61⟩
  · intro h
    have he := congrArg (Option.map (fun a : Fin 2 × Dir × Fin n => a.2.2))
      (compare 47 90 1 (by decide) (by decide) h)
    change some (encode 56) = some (encode 61) at he
    exact no56_61 (Option.some.inj he)
  · intro h
    let right : Fin 2 × Dir × Fin n → Bool := fun a =>
      match a.2.1 with
      | .left => false
      | .right => true
    have he := congrArg (Option.map right) (compare 55 59 1 (by decide) (by decide) h)
    change some true = some false at he
    exact Bool.noConfusion (Option.some.inj he)

end GRWTSK.ComputerScience.Riemann95SuccessorProjectionControl
