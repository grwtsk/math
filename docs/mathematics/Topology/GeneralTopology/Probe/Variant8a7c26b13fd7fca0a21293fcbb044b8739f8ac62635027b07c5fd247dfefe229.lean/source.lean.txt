-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SourcePrimeSquareTailWork.Variantbe33e23a9ae285e80b7a20a69171dda4556807dc1552bfa0d1c63f4492721a88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be33e23a9ae285e80b7a20a69171dda4556807dc1552bfa0d1c63f4492721a88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SourcePrimeSquareTailWork.Variantbe33e23a9ae285e80b7a20a69171dda4556807dc1552bfa0d1c63f4492721a88","mathematical_subject":"Topology.GeneralTopology","original_sha256":"be33e23a9ae285e80b7a20a69171dda4556807dc1552bfa0d1c63f4492721a88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle11/next-square-tail-work/instance-probe-v1/Probe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePrimeSquareTailWork

namespace GRWTSK.Topology.GeneralTopology.SourcePrimeSquareTailWork.Variantbe33e23a9ae285e80b7a20a69171dda4556807dc1552bfa0d1c63f4492721a88

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork
#check @Summable.sum_le_tsum
#check @SummationFilter.instNeBotUnconditional
#synth (SummationFilter.unconditional Nat.Primes).NeBot
example : (SummationFilter.unconditional Nat.Primes).NeBot := by
  constructor
  change (Filter.atTop : Filter (Finset Nat.Primes)).NeBot
  infer_instance
