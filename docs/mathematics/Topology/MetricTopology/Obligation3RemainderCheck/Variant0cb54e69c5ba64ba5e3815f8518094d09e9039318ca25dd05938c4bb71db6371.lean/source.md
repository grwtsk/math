# Complete source: GRWTSK.Topology.MetricTopology.Obligation3RemainderCheck.Variant0cb54e69c5ba64ba5e3815f8518094d09e9039318ca25dd05938c4bb71db6371

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64fc285993298f337f6b93a7f2c4def3da09be59` · SHA-256 `0a570bff3b7c08dd5afa50c25df6b415c207b6d14a25070018c3b1545af0152a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.SourceLaplaceConvergence.Variantcc7aa1c115f283a89351221590054c6735ef630c6a305e7acaa297c31660cc77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc7aa1c115f283a89351221590054c6735ef630c6a305e7acaa297c31660cc77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.SourceLaplaceConvergence.Variantcc7aa1c115f283a89351221590054c6735ef630c6a305e7acaa297c31660cc77","mathematical_subject":"Topology.MetricSpaces","original_sha256":"cc7aa1c115f283a89351221590054c6735ef630c6a305e7acaa297c31660cc77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/obligation3-remainder-check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceConvergence
import Mathlib.Analysis.Complex.AbsMax

namespace GRWTSK.Topology.MetricTopology.SourceLaplaceConvergence.Variantcc7aa1c115f283a89351221590054c6735ef630c6a305e7acaa297c31660cc77

open Metric
#check closure_ball
#check frontier_ball
#check frontier_closedBall
#check isCompact_sphere
#check Metric.frontier_ball_subset_sphere
#check Metric.closure_ball_subset_closedBall
#check Metric.mem_ball_self
#check Summable.of_nonneg_of_le
#check DifferentiableOn.analyticOnNhd
#check HasSumLocallyUniformlyOn
```
