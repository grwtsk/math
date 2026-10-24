# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EstimateLogSampling.Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e26b669042615dc7b7efede0e3e45b59b7fccf0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e26b669042615dc7b7efede0e3e45b59b7fccf0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSamplingTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/logsamplingterm--530f2d593865ec7eaa4f3092.md) | 42 | `declaration-track:530f2d593865ec7eaa4f3092d0c601040b02a3e1f69f70e2723172ea9961abab` |
| 2 | `def` | [logSamplingDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/logsamplingderivative--a5fb418f63a089042611d854.md) | 49 | `declaration-track:a5fb418f63a089042611d8548d70ce7a5f6551fa46c19bcd07e8a531c17f8ae4` |
| 3 | `theorem` | [logSamplingTerm_contDiffOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/logsamplingterm-contdiffon-pos--77b50f6346090dbd24252427.md) | 56 | `result-track:77b50f6346090dbd2425242707d18a4f6720b9d27cd98f34bb84e4ef2909efc7` |
| 4 | `theorem` | [logSamplingTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/logsamplingterm-hasderivat--a19c7fc83714d1341a422ed3.md) | 86 | `result-track:a19c7fc83714d1341a422ed382c7692a521a56925063396ca920131c0be5f4ae` |
| 5 | `theorem` | [deriv_logSamplingTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/deriv-logsamplingterm--ff65f7723fd414e60a18a697.md) | 127 | `result-track:ff65f7723fd414e60a18a6971a239fce5352174981d774051a61dbe575a3f6f4` |
| 6 | `theorem` | [logSamplingTerm_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/logsamplingterm-source-eq--bba7ba1e3adee65eacbe60da.md) | 136 | `result-track:bba7ba1e3adee65eacbe60da57ad12b5c98ef8123fe99bfdb77993dc7c058fa0` |
| 7 | `theorem` | [leftSampleSum_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/leftsamplesum-source-eq--7edb804efc8bddf3c5b58321.md) | 149 | `result-track:7edb804efc8bddf3c5b58321a8ea94cc7f75f025294b667d6588e24cbae57f5e` |
| 8 | `def` | [ProfileSupBounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/profilesupbounds--4c0e47e96c135a39ffada679.md) | 165 | `declaration-track:4c0e47e96c135a39ffada679bb255e632ce541469dfac4fa85516c97d5d01a43` |
| 9 | `def` | [logSamplingDerivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/logsamplingderivativemajorant--0944a6efdf710b4537245132.md) | 173 | `declaration-track:0944a6efdf710b4537245132477d75bc50ad09a83876038851d9f33f858aa2c5` |
| 10 | `theorem` | [abs_logSamplingDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/abs-logsamplingderivative-le--a57ea99299b6c5c161e8ebdb.md) | 181 | `result-track:a57ea99299b6c5c161e8ebdbb54424a8214925b95a9369b07a82dbd0edf874c7` |
| 11 | `def` | [LogSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/logsamplingcheckpoint--b93af0ff2c7c02fdf5ed2720.md) | 247 | `declaration-track:b93af0ff2c7c02fdf5ed2720ea7b126424821dc326781a37a6d49fba23ee95d1` |
| 12 | `theorem` | [log_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variant898614c8147de6eec30e50ee42e1bf5498e2c07bbe63c167ffcae8cc72ad72b7.lean/declarations/log-sampling-checkpoint--dd3bf367374f75cde4e49d31.md) | 261 | `result-track:dd3bf367374f75cde4e49d3172a3ac3feefb79771930c61dab4c2d2c37d6f012` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
