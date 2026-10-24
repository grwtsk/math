# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TargetSufficiencyFixtures.Variant6260877c091c05ec4bac6889d2f450c364e66c0e02ec1f5fd8f888a6f578ac56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9187fe176b991c191d75f3512e91610644f18db` · SHA-256 `6260877c091c05ec4bac6889d2f450c364e66c0e02ec1f5fd8f888a6f578ac56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.TargetSufficiency

/-!
# Hostile and positive target-sufficiency fixtures

All identity strings below are synthetic finite fixture data, not verification
records or authenticated identities. The positive local replay proves `True`,
not RH. Operational authority remains an independent proposition.
-/

namespace FormalResearch.RiemannHypothesis.TargetSufficiency.Fixtures

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Synthetic provenance with independently variable identity components. -/
def source : SourceProvenance :=
  ⟨"synthetic-repository", "synthetic-commit", "synthetic-tree", "Synthetic.Module",
    "synthetic_declaration", "synthetic-toolchain", "synthetic-manifest"⟩

def profile : VerifierProfile := ⟨"synthetic-profile"⟩

def state (P : Prop) (s : SourceProvenance := source) (v : VerifierProfile := profile) :
    SelfState P s v Unit Unit Unit Bool Unit :=
  ⟨⟨s, v, (), (), (), true, ()⟩, rfl, rfl⟩

/-- A concrete nonempty image really has the proved section. -/
theorem positive_image_roundtrip :
    q (recover (q (state True))) = q (state True) := q_recover _

/-- False-target metadata is constructible; it supplies no proof of False. -/
theorem false_target_record_exists :
    Nonempty (SelfState False source profile Unit Unit Unit Bool Unit) :=
  ⟨(state True).retarget False⟩

theorem changed_commit_separates :
    (state True).signature ≠ (state True { source with commit := "other-commit" }).signature := by
  apply source_drift_separates
  decide

theorem changed_tree_separates :
    (state True).signature ≠ (state True { source with tree := "other-tree" }).signature := by
  apply source_drift_separates
  decide

theorem changed_toolchain_separates :
    (state True).signature ≠
      (state True { source with toolchain := "other-toolchain" }).signature := by
  apply source_drift_separates
  decide

theorem changed_manifest_separates :
    (state True).signature ≠
      (state True { source with dependencyManifest := "other-manifest" }).signature := by
  apply source_drift_separates
  decide

theorem changed_profile_separates :
    (state True).signature ≠ (state True source ⟨"other-profile"⟩).signature := by
  apply profile_drift_separates
  decide

/-- The same output bit cannot stand in for the full provenance signature. -/
theorem output_only_compression_loses_provenance :
    (state True).signature.output =
        (state True { source with commit := "other-commit" }).signature.output ∧
      (state True).signature ≠
        (state True { source with commit := "other-commit" }).signature :=
  ⟨rfl, changed_commit_separates⟩

/-- Proof fields cannot carry two distinct occurrence identities. -/
theorem proof_irrelevance_erases_proof_payloads (P : Prop) (p q : P) : p = q :=
  Subsingleton.elim p q

/-- A nonempty accepted replay of a deliberately trivial target. -/
def positiveJurisdiction : LocalJurisdiction Unit where
  targetIdentity := "synthetic-true"
  statement := True
  accepts := fun _ => true
  sound := fun _ _ => True.intro

def positiveReplay : LocalReplayResult Unit where
  translation := {
    externalCandidate := ⟨"synthetic-true", "synthetic-payload", {"synthetic-history"}, ∅⟩
    localTargetIdentity := "synthetic-true"
    certificate := ()
    targetPreserved := rfl
    liveDependencies := ∅
    provenance := {"synthetic-history"} }
  checkerAccepted := true

theorem positive_replay_descends : SuccessfulDescent positiveJurisdiction positiveReplay :=
  ⟨rfl, rfl, rfl, rfl⟩

/-- The same remote flag cannot override an independently rejecting checker. -/
def rejectingJurisdiction : LocalJurisdiction Unit where
  targetIdentity := "synthetic-true"
  statement := False
  accepts := fun _ => false
  sound := by intros; contradiction

theorem remote_flag_does_not_descend :
    positiveReplay.checkerAccepted = true ∧
      ¬ SuccessfulDescent rejectingJurisdiction positiveReplay :=
  ⟨rfl, local_rejection_blocks_descent _ _ rfl⟩

/-- Mathematical success and reconstruction do not determine an independent permission. -/
theorem positive_replay_without_permission :
    SuccessfulDescent positiveJurisdiction positiveReplay ∧
      q (recover (q (state True))) = q (state True) ∧ ¬ False :=
  ⟨positive_replay_descends, positive_image_roundtrip, not_false⟩

-- Statement-drift checks: the exact target comparator cannot be replaced by a
-- trivial proposition through definitional equality.
example : True := by
  fail_if_success have : Target.Statement = True := rfl
  fail_if_success have : Target.Statement = False := rfl
  trivial

end FormalResearch.RiemannHypothesis.TargetSufficiency.Fixtures
```
