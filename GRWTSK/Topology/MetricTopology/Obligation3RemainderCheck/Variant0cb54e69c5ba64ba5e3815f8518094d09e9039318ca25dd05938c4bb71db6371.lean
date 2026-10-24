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
