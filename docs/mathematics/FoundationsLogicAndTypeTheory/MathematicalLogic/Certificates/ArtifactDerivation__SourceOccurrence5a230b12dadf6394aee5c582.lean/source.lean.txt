/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Inference.RuleSoundness

/-!
# Grounded artifact reconstruction

Reconstruction is relative to retained literal inputs, declared rules, and an
exact byte interpretation.  Generated artifacts may read only their declared
inputs in this model.  The derivation is inductive, so a cycle of generated
artifacts cannot manufacture a reconstruction without a grounded leaf or an
independently justified empty-input rule.

This module proves the abstract contract.  It does not assert that the current
repository inventory is complete or that a Python generator implements one of
these rules; those are separate adapter and coverage obligations.
-/

namespace GRWTSK.Logic.Certificates

universe u v

/-- A deterministic artifact rule with an explicit finite read set.
The dependent input function makes an undeclared artifact unavailable to the
rule evaluator. -/
structure ArtifactRule (Artifact : Type u) where
  output : Artifact
  inputs : Finset Artifact
  reconstruct : ((artifact : Artifact) → artifact ∈ inputs → ByteArray) → ByteArray

/-- Exactness of one rule at one byte snapshot. -/
def ArtifactRule.ExactAt {Artifact : Type u}
    (bytes : Artifact → ByteArray) (rule : ArtifactRule Artifact) : Prop :=
  rule.reconstruct (fun artifact _ ↦ bytes artifact) = bytes rule.output

/-- A finite, grounded reconstruction description.  Literal leaves can read
only declared basis members.  Generated nodes receive the reconstructed bytes
of every declared input, rather than an oracle for the expected output
snapshot. -/
inductive ReconstructionDerivation {Artifact : Type u} {RuleId : Type v}
    [DecidableEq Artifact] [DecidableEq RuleId]
    (basis : Finset Artifact) (rules : RuleId → ArtifactRule Artifact)
    (eligible : Finset RuleId) : Artifact → Type (max u v) where
  | literal {artifact : Artifact} : artifact ∈ basis →
      ReconstructionDerivation basis rules eligible artifact
  | generated (ruleId : RuleId) : ruleId ∈ eligible →
      ((input : Artifact) → input ∈ (rules ruleId).inputs →
        ReconstructionDerivation basis rules eligible input) →
      ReconstructionDerivation basis rules eligible (rules ruleId).output

/-- Interpret a reconstruction description from the retained basis bytes.
This is the proof-level evaluator; a concrete executable generator still needs
an adapter and a source-bound operational receipt. -/
noncomputable def ReconstructionDerivation.evaluate
    {Artifact : Type u} {RuleId : Type v}
    [DecidableEq Artifact] [DecidableEq RuleId]
    {basis : Finset Artifact} {rules : RuleId → ArtifactRule Artifact}
    {eligible : Finset RuleId}
    (basisBytes : (artifact : Artifact) → artifact ∈ basis → ByteArray) :
    {artifact : Artifact} → ReconstructionDerivation basis rules eligible artifact → ByteArray :=
  ReconstructionDerivation.rec
    (motive := fun _ _ ↦ ByteArray)
    (fun member ↦ basisBytes _ member)
    (fun ruleId _ _ inputBytes ↦
      (rules ruleId).reconstruct (fun input member ↦ inputBytes input member))

/-- Local exactness of the literal basis and every admitted rule composes into
exact reconstruction of the derivation's output.  The reconstructed bytes on
the left are computed only from `basisBytes` and the finite derivation. -/
theorem reconstruction_exact {Artifact : Type u} {RuleId : Type v}
    [DecidableEq Artifact] [DecidableEq RuleId]
    (bytes : Artifact → ByteArray) (basis : Finset Artifact)
    (rules : RuleId → ArtifactRule Artifact) (eligible : Finset RuleId)
    (basisBytes : (artifact : Artifact) → artifact ∈ basis → ByteArray)
    (basisExact : ∀ artifact member, basisBytes artifact member = bytes artifact)
    (rulesExact : ∀ ruleId, ruleId ∈ eligible → (rules ruleId).ExactAt bytes)
    {artifact : Artifact}
    (derivation : ReconstructionDerivation basis rules eligible artifact) :
    derivation.evaluate basisBytes = bytes artifact := by
  induction derivation with
  | literal member => exact basisExact _ member
  | generated ruleId admitted inputs inputExact =>
      change (rules ruleId).reconstruct
        (fun input member ↦ (inputs input member).evaluate basisBytes) =
          bytes (rules ruleId).output
      rw [show (fun input member ↦ (inputs input member).evaluate basisBytes) =
          (fun input _ ↦ bytes input) by
        funext input member
        exact inputExact input member]
      exact rulesExact ruleId admitted

end GRWTSK.Logic.Certificates
