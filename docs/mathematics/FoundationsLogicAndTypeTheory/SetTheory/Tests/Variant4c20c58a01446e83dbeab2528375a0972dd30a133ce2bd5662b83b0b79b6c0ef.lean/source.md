# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Tests.Variant4c20c58a01446e83dbeab2528375a0972dd30a133ce2bd5662b83b0b79b6c0ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ec3b5b484f6b0c3d64f15e22d4f297cd6c6648e` · SHA-256 `4c20c58a01446e83dbeab2528375a0972dd30a133ce2bd5662b83b0b79b6c0ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Wire

/-! # Focused kernel tests for the refactor protocol -/

public section

namespace Surface.Refactor.Tests

open Surface.Core Surface.Refactor Surface.PrimeBoundedContinuation

@[surface_certificate]
theorem authority_nonpromotion_test :
    RefactorAuthority.modelProposed ≠ .leanKernelChecked :=
  model_proposal_not_kernel_authority

@[surface_certificate]
theorem source_range_checker_test :
    verifySourceByteRange ⟨⟨3⟩, ⟨9⟩⟩ = true := by
  decide

@[surface_certificate]
theorem source_range_soundness_test :
    (SourceByteRange.mk ⟨3⟩ ⟨9⟩).Valid :=
  verifySourceByteRange_sound _ source_range_checker_test

@[surface_certificate]
theorem task_identity_test (task : TheoremRefactorTask) :
    task.statementIdentity = task.theoremTask.statementHash :=
  theorem_refactor_task_statement_identity_fixed task

@[surface_certificate]
theorem patch_statement_immutability_test (bundle : PatchBundle) :
    bundle.operations.all
      (fun operation => !operation.action.changesTheoremStatement) = true :=
  patch_bundle_cannot_edit_theorem_statement bundle

@[surface_certificate]
theorem phase_skip_rejected
    (step : RefactorPhaseStep .proposalReceived .kernelChecked) : False := by
  have h := kernel_checked_requires_elaboration step
  cases h

@[surface_certificate]
theorem field_torsion_nonpromotion_test :
    IsEmpty (ExactTorsionPowerAuthorization .fieldOnly) :=
  field_only_does_not_authorize_exact_torsion_power

@[surface_certificate]
def acceptedFiveSample : AcceptedSample 5 where
  rawSample := 7
  rejectionThreshold := 10
  rejectedSampleCount := 0
  acceptedBelowThreshold := by decide
  modulusPositive := by decide
  ordinal := 2
  ordinalEq := by decide

@[surface_certificate]
theorem accepted_sample_test : acceptedFiveSample.ordinal < 5 :=
  accepted_sample_is_in_range acceptedFiveSample

@[surface_certificate]
theorem scheduler_authority_test {radix : PrimeRadix}
    (coordinate : PrimeScheduleCoordinate radix) :
    primeAddressAuthority coordinate ≠ .leanKernelChecked :=
  prime_address_not_theorem_authority coordinate

@[surface_certificate]
theorem spectral_authority_test (witness : SpectralWitness) :
    witness.authority ≠ .leanKernelChecked :=
  spectral_packet_not_kernel_authority witness

@[surface_certificate]
theorem exhaustive_minimum_test (result : ExhaustiveSearchResult)
    (candidate : AnnealingCandidate) (h : candidate ∈ result.candidates) :
    result.chosen.energy.total ≤ candidate.energy.total :=
  exhaustive_argmin_is_minimal_on_enumerated_set result candidate h

@[surface_certificate]
theorem checked_trial_test (trial : CheckedTrial) : trial.task.proposition :=
  checked_trial_exposes_task_proposition trial

@[surface_certificate]
theorem artifact_reuse_nonauthority_test (evidence : ArtifactReuseEvidence) :
    artifactReuseAuthority evidence ≠ .leanKernelChecked :=
  reuse_receipt_is_not_proof evidence

@[surface_certificate]
theorem stable_error_code_test :
    RefactorErrorCode.statementChange.spelling = "STATEMENT_CHANGE" :=
  rfl

end Surface.Refactor.Tests
```
