# Complete source: GRWTSK.Analysis.FunctionalAnalysis.AxiomAudit.Variant2e82a4fb675315245a19701ead44f730534b45d904474525e3da582c02166e93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0170c75c323f3bd4c0066f0df464f616306c6a6` · SHA-256 `9f7e796bdd91f49a78b3c3e014b1fe17574ed7fee9e31d7a1101389b350cebda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BitMatrix.Variant3b8e158b764945f6c1425796e606d875633236745d6d22504140094495affdde","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b8e158b764945f6c1425796e606d875633236745d6d22504140094495affdde","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.BitMatrix.Variant3b8e158b764945f6c1425796e606d875633236745d6d22504140094495affdde","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"3b8e158b764945f6c1425796e606d875633236745d6d22504140094495affdde","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/1e7b1a9b7c438e6b6d8e1d492cbfcf80807087d20dad84776bae96932559747f/workspace/Surface/BitMatrix/AxiomAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix

/-! Kernel dependency witnesses for the public BitMatrix correspondence core. -/


namespace GRWTSK.Analysis.FunctionalAnalysis.BitMatrix.Variant3b8e158b764945f6c1425796e606d875633236745d6d22504140094495affdde

#print axioms BitMatrix.ArrayBacked.mapInPlace_refines
#print axioms BitMatrix.Carrier.baselineEquiv
#print axioms BitMatrix.Carrier.distinguishedInterpreter_eq_baseline_iff
#print axioms BitMatrix.Carrier.SequentialPrimeSpecification.canonicalPrimeEnumeration_value
#print axioms BitMatrix.Carrier.SequentialPrimeSpecification.canonicalPrimeEnumeration_prime
#print axioms BitMatrix.Carrier.SequentialPrimeSpecification.canonicalPrimeEnumeration_strictlyIncreasing
#print axioms BitMatrix.Carrier.rawCanonicalAddressEnumeration_code_enumerate
#print axioms BitMatrix.Carrier.rawCanonicalAddressEnumeration_order
#print axioms BitMatrix.Codec.SourceCodec.encode_injective
#print axioms BitMatrix.Codec.oneHotSourceCodec_decode_encode
#print axioms BitMatrix.Configuration.Schema003.policy_valid
#print axioms BitMatrix.Configuration.Schema003.generated_entries_required
#print axioms BitMatrix.Configuration.Schema003.generated_entry_count_matches
#print axioms BitMatrix.Rhetorical.four_mode_coverage
#print axioms BitMatrix.Rhetorical.source_relative_scalar_exists_unique
#print axioms BitMatrix.Topology.Raster.edgeAdjacent_symmetric
#print axioms BitMatrix.Surgery.Digital.Repair.changeSupport_subset_selected
#print axioms BitMatrix.Surgery.Digital.Repair.reconstruct_apply
#print axioms BitMatrix.Dynamics.EvolutionSurgeryRestart.EvolutionStatus.meet_le_left
#print axioms BitMatrix.Dynamics.EvolutionSurgeryRestart.EvolutionRoot.mem_dependencyClosure_iff_reachable
#print axioms BitMatrix.Dynamics.EvolutionSurgeryRestart.EvolutionRoot.globalStatus_le_effective
#print axioms BitMatrix.Dynamics.EvolutionSurgeryRestart.RasterSurgeryEvent.outside_unchanged
#print axioms BitMatrix.Dynamics.EvolutionSurgeryRestart.RasterSurgeryEvent.reconstruction_post_eq_pre
#print axioms BitMatrix.Runtime.Semantics.mem_fixedSet_iff_graphPoint_liesOnDiagonal
#print axioms BitMatrix.Runtime.Semantics.mem_fixedSet_linear_iff_mem_ker_id_sub
#print axioms BitMatrix.Runtime.Semantics.triangleSuccessor_third_power
#print axioms BitMatrix.Geometry.CarrierGrid.carrierMultiplicity_eq_two_pow_codimension
#print axioms BitMatrix.Geometry.CarrierGrid.originMatches_implies_exactCarrier
#print axioms BitMatrix.Geometry.CarrierGrid.odd_center_carrierMultiplicity
#print axioms BitMatrix.Geometry.CarrierGrid.even_center_carrierMultiplicity
#print axioms BitMatrix.Codec.Profiles.normalizeLineEndings_idempotent
#print axioms BitMatrix.Codec.Profiles.profiles_agree_on_canonical_domain
#print axioms BitMatrix.Codec.decodeWitness_length_representable
#print axioms BitMatrix.Runtime.Correspondence.abstractGridCell_rowMajorIndex
#print axioms BitMatrix.Runtime.Correspondence.carrierStateRecord_support_complete
#print axioms BitMatrix.Runtime.Correspondence.carrierStateRecord_count_eq_carrierMultiplicity
#print axioms BitMatrix.Runtime.Correspondence.codecInvocation_encodeDecodeRelation
#print axioms BitMatrix.Runtime.Correspondence.codecInvocation_serialize_preserved
#print axioms BitMatrix.Runtime.FixedProgramInterpreter.DecodedProgram.evaluateOperations_eq_some_evaluate
#print axioms BitMatrix.Runtime.FixedProgramInterpreter.interpretTotal_of_decode_none
#print axioms BitMatrix.Topology.FixedPointAuthority.banach_exists
#print axioms BitMatrix.Topology.FixedPointAuthority.banach_fixed
#print axioms BitMatrix.Topology.FixedPointAuthority.banach_unique
#print axioms BitMatrix.Topology.FixedPointAuthority.banach_iteration
#print axioms BitMatrix.Topology.FixedPointAuthority.knasterTarski_least_fixed
#print axioms BitMatrix.Topology.FixedPointAuthority.knasterTarski_greatest_fixed
#print axioms BitMatrix.Topology.FixedPointAuthority.kleene_completeLattice_iteration
```
