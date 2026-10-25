# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurgeryAxioms.Variantd23755ad1e2c4657e694a7c49c71c72bc412d2976dd2a864856c010420690289

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43b2b04e7fbd8dc3d9fa5f9d48e729dfebda4b1b` · SHA-256 `d23755ad1e2c4657e694a7c49c71c72bc412d2976dd2a864856c010420690289`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Refactor.Surgery

/-!
# Structural-surgery axiom audit

These checks cover the pure finite admission, energy, inverse, patch binding,
transaction no-op, and authority firewalls. Compiler and filesystem execution
remain explicit external observations; no runtime receipt is promoted to a
Lean proposition-valued certificate.
-/

#print axioms Surface.Refactor.Surgery.canonicalEndpointCompletion_is_balanced
#print axioms Surface.Refactor.Surgery.acceptedAnnealStep_decreases_measure
#print axioms Surface.Refactor.Surgery.annealTrace_length_le_fuel
#print axioms Surface.Refactor.Surgery.annealTrace_terminates
#print axioms Surface.Refactor.Surgery.exhaustiveAnnealResult_minimal_on_enumerated_candidates

#print axioms Surface.Refactor.Surgery.verifySurgeryProposal_sound
#print axioms Surface.Refactor.Surgery.rejectedSurgery_leavesSourceModelUnchanged
#print axioms Surface.Refactor.Surgery.staleRepositoryRevision_rejected
#print axioms Surface.Refactor.Surgery.equalRevisionSurgeryConflict_rejected
#print axioms Surface.Refactor.Surgery.admittedSurgery_ranges_nonoverlapping
#print axioms Surface.Refactor.Surgery.admittedSurgery_preserves_theorem_task_identity
#print axioms Surface.Refactor.Surgery.supportedOperation_inverse_roundtrip
#print axioms Surface.Refactor.Surgery.surgeryBundle_inverse_restores_sourceSnapshot
#print axioms Surface.Refactor.Surgery.finiteSurgeryTransport_has_no_theorem_authority

#print axioms Surface.Refactor.Surgery.canonicalSourcePatch_binds_exact_snapshots
#print axioms Surface.Refactor.Surgery.canonicalSourcePatch_has_no_source_mutation_authority
#print axioms Surface.Refactor.Surgery.prepareSnapshotRace_leavesRepositoryUnchanged
#print axioms Surface.Refactor.Surgery.prepareRevisionRace_leavesRepositoryUnchanged
#print axioms Surface.Refactor.Surgery.rejectedTransactionStep_leavesRepositoryUnchanged
#print axioms Surface.Refactor.Surgery.thirdPartyRollbackRace_leavesRepositoryUnchanged
```
