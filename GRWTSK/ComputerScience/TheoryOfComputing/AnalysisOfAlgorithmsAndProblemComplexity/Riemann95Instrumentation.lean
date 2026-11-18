/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license as described in the file LICENSE.
-/
import Cryptids.Riemann95Definition
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.ExactCoreInstrumentation
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95ControlCoordinates

/-!
# Instrumentation of the literal Riemann95 core

This module belongs in the isolated Cryptids adaptation environment. It
does not change the root dependency pins or claim RH. The pinned upstream
table starts `1L48 0R49`, so its blank first step enters label 48 and has
residue 10 modulo 19. A forced clock increment is not its transition.

Source: google-deepmind/cryptids,
3647718b5df22e1a61462dec0376bd204526285a,
Cryptids/Machines.lean, Cryptids/Riemann95Definition.lean, and
artifacts/riemann_95/machine.txt. See the adjacent record for evidence status.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.Riemann95Instrumentation

open ConjectureMachines
open ConjectureMachines.Riemann95
open GRWTSK.ComputerScience.ExactCoreInstrumentation

abbrev Config := ConjectureMachines.Cfg 95 2

/-- This is the actual transition-table cell, not an asserted fixture header. -/
theorem first_transition :
    machine.transition 0 0 = some (1, Turing.Dir.left, 48) := by
  rfl

theorem first_step_state :
    (ConjectureMachines.step machine (ConjectureMachines.init : Config)).map
      (fun config => config.state) = some 48 := by
  rfl

/-- The first native step refutes the claimed independent 19-phase increment. -/
theorem first_step_phase :
    (ConjectureMachines.step machine (ConjectureMachines.init : Config)).map
      (fun config => (Riemann95ControlCoordinates.decode config.state).2) =
        some (10 : Fin 19) := by
  rfl

theorem first_step_phase_not_one :
    (ConjectureMachines.step machine (ConjectureMachines.init : Config)).map
      (fun config => (Riemann95ControlCoordinates.decode config.state).2) ≠
        some (1 : Fin 19) := by
  rw [first_step_phase]
  decide

theorem nativeRun_eq_nSteps (n : Nat) (config : Config) :
    nativeRun (ConjectureMachines.step machine) n config = nSteps n config := by
  induction n generalizing config with
  | zero => rfl
  | succ n ih =>
    simp only [nativeRun, nSteps]
    cases transition : ConjectureMachines.step machine config with
    | none => rfl
    | some next => exact ih next

/-- Exact observation and holds erase to the existing native step-count contract. -/
theorem replay_projects_to_nSteps {Metadata : Type}
    (commands : List (Command Metadata)) (initial : State Config Metadata) :
    (replay (ConjectureMachines.step machine) commands initial).map State.core =
      nSteps (commitCount commands) initial.core := by
  rw [replay_projection, nativeRun_eq_nSteps]

/-- A committed instrumented prefix supplies the literal native trace needed by
the existing stage receipts; metadata never supplies that trace by itself. -/
theorem committed_prefix_is_native {Metadata : Type}
    {commands : List (Command Metadata)} {initial final : State Config Metadata}
    (reached : replay (ConjectureMachines.step machine) commands initial = some final) :
    nSteps (commitCount commands) initial.core = some final.core := by
  rw [← nativeRun_eq_nSteps]
  exact replay_eq_some_projects (ConjectureMachines.step machine) reached

/-- A halt observation retains both its native prefix and the missing native
transition. Being paused or exhausting an external budget is not this premise. -/
theorem terminal_prefix_is_native {Metadata : Type}
    {commands : List (Command Metadata)} {initial final : State Config Metadata}
    (reached : replay (ConjectureMachines.step machine) commands initial = some final)
    (terminal : ConjectureMachines.step machine final.core = none) :
    nSteps (commitCount commands) initial.core = some final.core ∧
      ConjectureMachines.step machine final.core = none :=
  ⟨committed_prefix_is_native reached, terminal⟩

end GRWTSK.ComputerScience.Riemann95Instrumentation
