# Complete source: GRWTSK.Topology.GeneralTopology.Probe.Variant8a7c26b13fd7fca0a21293fcbb044b8739f8ac62635027b07c5fd247dfefe229

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `056cbba50dc24c93eaca4dcc444343a9e240bb8e` · SHA-256 `f457fdf9808025ebc1d77be0d717d25b442f7638118e16b3bc0d83fc7345f5d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
