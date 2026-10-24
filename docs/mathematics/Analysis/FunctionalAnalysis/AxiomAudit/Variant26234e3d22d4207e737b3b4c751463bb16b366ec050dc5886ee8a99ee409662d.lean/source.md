# Complete source: GRWTSK.Analysis.FunctionalAnalysis.AxiomAudit.Variant26234e3d22d4207e737b3b4c751463bb16b366ec050dc5886ee8a99ee409662d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87907b57f4bf7839a14de929e9cb4d89319271e0` · SHA-256 `930865ea746d1aea0cbd4cbf8fb9932517c1aa30197e4238dbe841351ec57fb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BitMatrix.Variant5e40b74f8ad3135700b903f74a524d88f8d689cbf2933adc097e1b8d3b4fa893","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e40b74f8ad3135700b903f74a524d88f8d689cbf2933adc097e1b8d3b4fa893","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.BitMatrix.Variant5e40b74f8ad3135700b903f74a524d88f8d689cbf2933adc097e1b8d3b4fa893","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"5e40b74f8ad3135700b903f74a524d88f8d689cbf2933adc097e1b8d3b4fa893","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/fc7d7eae7b6ed38352f1c4d954e0ed19a9b431b4c0ca926895d879d23d0ad504/workspace/Surface/BitMatrix/AxiomAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix

/-! Kernel dependency witnesses for the public BitMatrix correspondence core. -/


namespace GRWTSK.Analysis.FunctionalAnalysis.BitMatrix.Variant5e40b74f8ad3135700b903f74a524d88f8d689cbf2933adc097e1b8d3b4fa893

#print axioms BitMatrix.ArrayBacked.mapInPlace_refines
#print axioms BitMatrix.Carrier.baselineEquiv
#print axioms BitMatrix.Carrier.distinguishedInterpreter_eq_baseline_iff
#print axioms BitMatrix.Carrier.SequentialPrimeSpecification.canonicalPrimeEnumeration_value
#print axioms BitMatrix.Carrier.SequentialPrimeSpecification.canonicalPrimeEnumeration_prime
#print axioms BitMatrix.Carrier.SequentialPrimeSpecification.canonicalPrimeEnumeration_strictlyIncreasing
#print axioms BitMatrix.Carrier.rawCanonicalAddressEnumeration_code_enumerate
#print axioms BitMatrix.Carrier.rawCanonicalAddressEnumeration_order
#print axioms BitMatrix.Carrier.CoordinateFiber.mixedRadixEquiv
#print axioms BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration_inverse_count
#print axioms BitMatrix.Topology.designatedCantorScalar_injective
#print axioms BitMatrix.Codec.SourceCodec.encode_injective
#print axioms BitMatrix.Codec.oneHotSourceCodec_decode_encode
#print axioms BitMatrix.Codec.SequentialPrimeSource.sourceState_injective
#print axioms BitMatrix.Codec.SequentialPrimeSource.distinguishedCanonicalSource_decodes
#print axioms BitMatrix.Codec.SequentialPrimeSource.sourceState_root_ref
#print axioms BitMatrix.Configuration.Schema003.policy_valid
#print axioms BitMatrix.Configuration.Schema003.generated_entries_required
#print axioms BitMatrix.Configuration.Schema003.generated_entry_count_matches
#print axioms BitMatrix.Rhetorical.four_mode_coverage
#print axioms BitMatrix.Rhetorical.source_relative_scalar_exists_unique
#print axioms BitMatrix.Rhetorical.documentedInterpreter_sourceRelativeScalar
#print axioms BitMatrix.Rhetorical.sourceRelativeScalar_documentedInterpreter
#print axioms BitMatrix.Rhetorical.selfSourceScalarEquiv_inverse_laws
#print axioms BitMatrix.Topology.Raster.edgeAdjacent_symmetric
#print axioms BitMatrix.Surgery.Digital.Repair.changeSupport_subset_selected
#print axioms BitMatrix.Surgery.Digital.Repair.reconstruct_apply
#print axioms BitMatrix.Surgery.CanonicalRaster.incidenceFaces_square_eq
#print axioms BitMatrix.Surgery.CanonicalRaster.edgeAdjacent_iff_shared_incidence_face
#print axioms BitMatrix.Surgery.CanonicalRaster.incidenceFaces_lowersDimension
#print axioms BitMatrix.Surgery.CanonicalRaster.vertexAdjacent_iff_coordinate_bounds
#print axioms BitMatrix.Surgery.CanonicalRaster.fullTwoByTwo_betaOne
#print axioms BitMatrix.Surgery.CanonicalRaster.shift_betti_preserved
#print axioms BitMatrix.Surgery.CanonicalRaster.shift_background_components_preserved
#print axioms BitMatrix.Surgery.CanonicalRaster.controlledShift
#print axioms BitMatrix.Surgery.CanonicalRaster.controlledShiftReport
#print axioms BitMatrix.Surgery.CanonicalRaster.controlledShiftReport_local_counts
#print axioms BitMatrix.Surgery.CanonicalRaster.controlledShiftReport_backgroundComponents
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
#print axioms BitMatrix.Runtime.ForeignTrace.acceptedTrace_sound
#print axioms BitMatrix.Runtime.ForeignTrace.acceptedTrace_operation_preserved
#print axioms BitMatrix.Runtime.ForeignTraceEvidenceGenerated.javascriptAccepted
#print axioms BitMatrix.Runtime.ForeignTraceEvidenceGenerated.rustAccepted
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
