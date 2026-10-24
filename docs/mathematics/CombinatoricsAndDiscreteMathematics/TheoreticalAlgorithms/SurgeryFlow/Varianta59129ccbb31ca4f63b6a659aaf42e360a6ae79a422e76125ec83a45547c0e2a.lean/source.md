# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryFlow.Varianta59129ccbb31ca4f63b6a659aaf42e360a6ae79a422e76125ec83a45547c0e2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3365b2c905dd6ae14655f07c112491f96bf60e3` · SHA-256 `2213804ca58deea9d848b5fd9022845cb2b2022a04018b64978f4024a74fcfd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryStepSound.Variant20a1d4459fb9259ba0f6153377af1c0eca75a6a72c397d08e8539aa9fdd314f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20a1d4459fb9259ba0f6153377af1c0eca75a6a72c397d08e8539aa9fdd314f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SurgeryStepSound.Variant20a1d4459fb9259ba0f6153377af1c0eca75a6a72c397d08e8539aa9fdd314f4","mathematical_subject":"Computation.DataStructures","original_sha256":"20a1d4459fb9259ba0f6153377af1c0eca75a6a72c397d08e8539aa9fdd314f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Ricci/SurgeryFlow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.Ricci.Surgery


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SurgeryStepSound.Variant20a1d4459fb9259ba0f6153377af1c0eca75a6a72c397d08e8539aa9fdd314f4

namespace Surface
namespace Legacy

structure SurgeryStepSound
    (step : RicciSurgeryStep) : Prop where
  gluingSound : step.gluingSound.gluingCertified

structure RicciFlowWithSurgery where
  initial : RicciFlowTrajectory
  surgerySteps : List RicciSurgeryStep
  intervals : List RicciFlowTrajectory
  geometricHypothesesOnIntervals :
    ∀ R, R ∈ intervals -> RicciFlowGeometricHypotheses R
  surgerySound :
    ∀ step, step ∈ surgerySteps -> SurgeryStepSound step
  finiteSurgeryOnCompactIntervals? : Prop

end Legacy
end Surface
```
