-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.System.Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.System.Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e","mathematical_subject":"Computation.DataStructures","original_sha256":"1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Causal/ObservableRecursion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Logic.Function.Iterate

/-!
# Input-driven observable recursion

This generic interface is owned by the DAF causal layer; it has no
BinaryMatrix-specific dependency.

`System Input State Resolution` is the small, generic transition interface used
by the later causal constructions.  A finite input word is processed from left
to right: for `[a₁, …, aₙ]`, `run` applies the transition for `a₁` first and
the transition for `aₙ` last.  Observations may have a different result type
at each resolution.

The input-driven interface is primary.  An autonomous recurrence is only its
specialization to the one-point input type `PUnit`; it does not introduce a
second dynamics framework.  Nothing here assumes finite state, reversibility,
minimality, computational efficiency, or any relationship between different
observation resolutions.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.System.Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e

namespace ObservableRecursion

universe uI uS uR uO

/-- An input-driven state transition equipped with resolution-indexed observations. -/
structure System
    (Input : Type uI)
    (State : Type uS)
    (Resolution : Type uR) where
  Observation : Resolution → Type uO
  step : Input → State → State
  observe : ∀ ρ, State → Observation ρ

namespace System

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}

/-- Process a word from left to right, threading the state through its letters. -/
def run
    (M : System Input State Resolution)
    (inputs : List Input)
    (state : State) : State :=
  match inputs with
  | [] => state
  | input :: rest => M.run rest (M.step input state)

@[simp]
theorem run_nil
    (M : System Input State Resolution)
    (state : State) :
    M.run [] state = state :=
  rfl

@[simp]
theorem run_cons
    (M : System Input State Resolution)
    (input : Input)
    (inputs : List Input)
    (state : State) :
    M.run (input :: inputs) state =
      M.run inputs (M.step input state) :=
  rfl

/-- Concatenating input words is sequential composition in the stated order. -/
theorem run_append
    (M : System Input State Resolution)
    (first second : List Input)
    (state : State) :
    M.run (first ++ second) state =
      M.run second (M.run first state) := by
  induction first generalizing state with
  | nil => rfl
  | cons input rest ih =>
      simp only [List.cons_append, run_cons]
      exact ih (M.step input state)

@[simp]
theorem run_singleton
    (M : System Input State Resolution)
    (input : Input)
    (state : State) :
    M.run [input] state = M.step input state :=
  rfl

/-- Regard an autonomous recurrence as an input-driven system with one input. -/
def autonomous
    (step : State → State)
    (Observation : Resolution → Type uO)
    (observe : ∀ ρ, State → Observation ρ) :
    System PUnit State Resolution where
  Observation := Observation
  step := fun _ => step
  observe := observe

/-- Running `t` trivial inputs in the autonomous specialization is `t` iteration. -/
theorem autonomous_run_replicate
    (step : State → State)
    (Observation : Resolution → Type uO)
    (observe : ∀ ρ, State → Observation ρ)
    (t : Nat)
    (state : State) :
    (autonomous step Observation observe).run
        (List.replicate t PUnit.unit) state =
      step^[t] state := by
  induction t generalizing state with
  | zero => rfl
  | succ t ih =>
      simp only [List.replicate_succ, run_cons, Function.iterate_succ_apply]
      exact ih (step state)

end System

end ObservableRecursion
