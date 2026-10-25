# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Audit.Variant8b98fc187e0ec5998156fa4c1c170145b73a54e6ad05e0a1488851d32c41b07e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61877a7d70cc93893de0428ac63aef9922e8614a` · SHA-256 `8b98fc187e0ec5998156fa4c1c170145b73a54e6ad05e0a1488851d32c41b07e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SUCAS.Notion
import FormalResearch.SUCAS.ProofHorizon
import FormalResearch.SUCAS.Intuition
import FormalResearch.SUCAS.Trust
import FormalResearch.SUCAS.NoGo
#print axioms FormalResearch.SUCAS.ObservationPolicy
#print axioms FormalResearch.SUCAS.ObservationallyEquivalent
#print axioms FormalResearch.SUCAS.notionSetoid
#print axioms FormalResearch.SUCAS.notionQuotient
#print axioms FormalResearch.SUCAS.observationallyEquivalent_of_budget_le
#print axioms FormalResearch.SUCAS.FiniteNotion
#print axioms FormalResearch.SUCAS.FiniteNotion.Equivalent
#print axioms FormalResearch.SUCAS.FiniteNotion.setoid
#print axioms FormalResearch.SUCAS.FiniteNotion.compare
#print axioms FormalResearch.SUCAS.FiniteNotion.compare_eq_true
#print axioms FormalResearch.SUCAS.FiniteNotion.equivalent_of_budget_le
#print axioms FormalResearch.SUCAS.FiniteNotion.equivalent_of_semantic
#print axioms FormalResearch.SUCAS.Polarity
#print axioms FormalResearch.SUCAS.FiniteProofAperture
#print axioms FormalResearch.SUCAS.FiniteProofAperture.HasAccepted
#print axioms FormalResearch.SUCAS.LocallyUnresolved
#print axioms FormalResearch.SUCAS.FiniteProofAperture.checkUnresolved
#print axioms FormalResearch.SUCAS.FiniteProofAperture.checkUnresolved_eq_true
#print axioms FormalResearch.SUCAS.FiniteProofAperture.SoundFor
#print axioms FormalResearch.SUCAS.locallyUnresolved_iff_all_rejected
#print axioms FormalResearch.SUCAS.FiniteProofAperture.not_both
#print axioms FormalResearch.SUCAS.emptyProofAperture
#print axioms FormalResearch.SUCAS.emptyProofAperture_unresolved
#print axioms FormalResearch.SUCAS.emptyProofAperture_sound
#print axioms FormalResearch.SUCAS.local_unresolvedness_does_not_imply_truth
#print axioms FormalResearch.SUCAS.local_unresolvedness_does_not_imply_falsehood
#print axioms FormalResearch.SUCAS.PriorityFeature
#print axioms FormalResearch.SUCAS.IntuitionPriority
#print axioms FormalResearch.SUCAS.IntuitionKernel
#print axioms FormalResearch.SUCAS.AttemptOutcome
#print axioms FormalResearch.SUCAS.IntuitionAttempt
#print axioms FormalResearch.SUCAS.intuition_replay
#print axioms FormalResearch.SUCAS.DependencySet
#print axioms FormalResearch.SUCAS.ProvenanceSet
#print axioms FormalResearch.SUCAS.ExternalObservation
#print axioms FormalResearch.SUCAS.ExternalCertificateCandidate
#print axioms FormalResearch.SUCAS.CertificateTranslation
#print axioms FormalResearch.SUCAS.LocalJurisdiction
#print axioms FormalResearch.SUCAS.LocalReplayResult
#print axioms FormalResearch.SUCAS.SuccessfulDescent
#print axioms FormalResearch.SUCAS.successfulDescent_statement
#print axioms FormalResearch.SUCAS.successfulDescent_no_live_dependencies
#print axioms FormalResearch.SUCAS.local_rejection_blocks_descent
#print axioms FormalResearch.SUCAS.live_dependency_blocks_descent
#print axioms FormalResearch.SUCAS.vanished_dependency_can_retain_provenance
#print axioms FormalResearch.SUCAS.TrustPhase
#print axioms FormalResearch.SUCAS.TrustPhase.next
#print axioms FormalResearch.SUCAS.TrustPhase.four_turns
#print axioms FormalResearch.SUCAS.TrustPhase.half_turn_involutive
#print axioms FormalResearch.SUCAS.trust_phase_closure_does_not_imply_truth
#print axioms FormalResearch.SUCAS.ProgramHalts
#print axioms FormalResearch.SUCAS.finite_observation_halting_no_go
#print axioms FormalResearch.SUCAS.accepted_certificates_re
#print axioms FormalResearch.SUCAS.EffectiveBinaryCertificates
#print axioms FormalResearch.SUCAS.bidirectional_certificate_no_go
#print axioms FormalResearch.SUCAS.EffectiveHaltingProofCost
#print axioms FormalResearch.SUCAS.UniversalHaltingProofBound
#print axioms FormalResearch.SUCAS.halting_proof_cost_bound_no_go
#print axioms FormalResearch.SUCAS.SameProgramBehavior
#print axioms FormalResearch.SUCAS.computable_behavior_class_trivial
#print axioms FormalResearch.SUCAS.behavioral_canonicalization_no_go
#print axioms FormalResearch.SUCAS.four_squares_plus_one_no_integer_solution
#print axioms FormalResearch.SUCAS.four_squares_plus_one_modular_solution
```
