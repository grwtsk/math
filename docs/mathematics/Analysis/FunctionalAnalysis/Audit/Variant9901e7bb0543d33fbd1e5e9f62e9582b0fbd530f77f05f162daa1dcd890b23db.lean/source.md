# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Audit.Variant9901e7bb0543d33fbd1e5e9f62e9582b0fbd530f77f05f162daa1dcd890b23db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d7514d1f3fac2241dd25bed0582648ef8aeb9b6` · SHA-256 `c2f9268c10e3aae5cc3e2dcb28b64c64856134c28b2bb6d3c5bb9c3e325f7b33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Observation.Variantaa47d7d7fe8c22fdc035316771f623b4ef7c6696360eae3c25d34e7cde2de1da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa47d7d7fe8c22fdc035316771f623b4ef7c6696360eae3c25d34e7cde2de1da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Observation.Variantaa47d7d7fe8c22fdc035316771f623b4ef7c6696360eae3c25d34e7cde2de1da","mathematical_subject":"Foundations.Unclassified","original_sha256":"aa47d7d7fe8c22fdc035316771f623b4ef7c6696360eae3c25d34e7cde2de1da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/sucas-observation-audit/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SUCAS.Observation
import FormalResearch.SUCAS.GaloisObservation
import FormalResearch.SUCAS.SpectralObservation
import FormalResearch.SUCAS.Towers
import FormalResearch.SUCAS.RHAdapter

namespace GRWTSK.Analysis.FunctionalAnalysis.Observation.Variantaa47d7d7fe8c22fdc035316771f623b4ef7c6696360eae3c25d34e7cde2de1da

#print axioms FormalResearch.SUCAS.Observation.PolynomialSource
#print axioms FormalResearch.SUCAS.Observation.RootPreservingCompilation
#print axioms FormalResearch.SUCAS.Observation.scaleCompilation
#print axioms FormalResearch.SUCAS.Observation.scale_compilation_sound
#print axioms FormalResearch.SUCAS.Observation.square_preserves_integer_roots
#print axioms FormalResearch.SUCAS.Observation.positive_power_preserves_integer_roots
#print axioms FormalResearch.SUCAS.Observation.arbitrary_degree_inflation
#print axioms FormalResearch.SUCAS.Observation.root_equivalence_does_not_determine_degree
#print axioms FormalResearch.SUCAS.GaloisObservation.reduction
#print axioms FormalResearch.SUCAS.GaloisObservation.GoodPrimeFactorization
#print axioms FormalResearch.SUCAS.GaloisObservation.factorDegrees
#print axioms FormalResearch.SUCAS.GaloisObservation.fullCycleType
#print axioms FormalResearch.SUCAS.GaloisObservation.full_cycle_type_identity
#print axioms FormalResearch.SUCAS.GaloisObservation.full_cycle_type_sum
#print axioms FormalResearch.SUCAS.GaloisObservation.FactorCycleWitness
#print axioms FormalResearch.SUCAS.GaloisObservation.factor_degrees_identify_cycles
#print axioms FormalResearch.SUCAS.GaloisObservation.cycle_observation_does_not_determine_group
#print axioms FormalResearch.SUCAS.SpectralObservation.featureGram
#print axioms FormalResearch.SUCAS.SpectralObservation.complex_gram_norm_square
#print axioms FormalResearch.SUCAS.SpectralObservation.real_gram_sum_squares
#print axioms FormalResearch.SUCAS.SpectralObservation.complex_gram_posSemidef
#print axioms FormalResearch.SUCAS.SpectralObservation.real_gram_posSemidef
#print axioms FormalResearch.SUCAS.SpectralObservation.complex_gram_rank_bound
#print axioms FormalResearch.SUCAS.SpectralObservation.real_gram_rank_bound
#print axioms FormalResearch.SUCAS.Towers.cumulativeField
#print axioms FormalResearch.SUCAS.Towers.cumulative_field_mono
#print axioms FormalResearch.SUCAS.Towers.component_le_cumulative
#print axioms FormalResearch.SUCAS.Towers.cumulativeInclusion
#print axioms FormalResearch.SUCAS.Towers.cumulative_inclusion_comp
#print axioms FormalResearch.SUCAS.Towers.FiniteInverseSystem
#print axioms FormalResearch.SUCAS.Towers.CompatibleSection
#print axioms FormalResearch.SUCAS.Towers.compatible_section_restrict
#print axioms FormalResearch.SUCAS.Towers.constantInverseSystem
#print axioms FormalResearch.SUCAS.Towers.sectionFromLast
#print axioms FormalResearch.SUCAS.Towers.section_from_last_compatible
#print axioms FormalResearch.SUCAS.RHAdapter.SectorIntegrability
#print axioms FormalResearch.SUCAS.RHAdapter.evenPairing
#print axioms FormalResearch.SUCAS.RHAdapter.oddPairing
#print axioms FormalResearch.SUCAS.RHAdapter.reflectedSourceValue
#print axioms FormalResearch.SUCAS.RHAdapter.signed_reflection_with_boundary
#print axioms FormalResearch.SUCAS.RHAdapter.arithmetic_representation_with_reflection
#print axioms FormalResearch.SUCAS.RHAdapter.boundary_removal_iff
```
