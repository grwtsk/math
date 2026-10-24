# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SmoothApprox.Variant7acf1ad6dba78ebe4377d01c40f1db09a196f112a2c4d4800352753b8d262328

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab0e271eb4dcb747be3ed6ad8133628181fd6791",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant7acf1ad6dba78ebe4377d01c40f1db09a196f112a2c4d4800352753b8d262328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant7acf1ad6dba78ebe4377d01c40f1db09a196f112a2c4d4800352753b8d262328.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant7acf1ad6dba78ebe4377d01c40f1db09a196f112a2c4d4800352753b8d262328.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab0e271eb4dcb747be3ed6ad8133628181fd6791`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant7acf1ad6dba78ebe4377d01c40f1db09a196f112a2c4d4800352753b8d262328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant7acf1ad6dba78ebe4377d01c40f1db09a196f112a2c4d4800352753b8d262328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeasureTheory.LocallyIntegrable.exists_contDiff_dist_le_of_forall_mem_ball_dist_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant7acf1ad6dba78ebe4377d01c40f1db09a196f112a2c4d4800352753b8d262328.lean/declarations/measuretheory-locallyintegrable-exists-contdiff-dist-le-of-forall-mem-ba--4ebcd617203048ace44c1669.md) | 36 | `result-track:4ebcd617203048ace44c16694343cadaa6394ef212f4d59ea5f604aaec154733` |
| 2 | `theorem` | [Continuous.exists_contDiff_dist_le_of_forall_mem_ball_dist_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant7acf1ad6dba78ebe4377d01c40f1db09a196f112a2c4d4800352753b8d262328.lean/declarations/continuous-exists-contdiff-dist-le-of-forall-mem-ball-dist-le--05f7f0af9f2d5b5b176bc977.md) | 45 | `result-track:05f7f0af9f2d5b5b176bc9776aaeac9300471b69413596bf5a25d01090339b00` |
| 3 | `theorem` | [UniformContinuous.exists_contDiff_dist_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant7acf1ad6dba78ebe4377d01c40f1db09a196f112a2c4d4800352753b8d262328.lean/declarations/uniformcontinuous-exists-contdiff-dist-le--e8c4f5ebbd9f22a47e11137f.md) | 52 | `result-track:e8c4f5ebbd9f22a47e11137f67bc980981d5c2ff51587d874aee83d83b0f2249` |
| 4 | `theorem` | [ContinuousMap.dense_setOf_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant7acf1ad6dba78ebe4377d01c40f1db09a196f112a2c4d4800352753b8d262328.lean/declarations/continuousmap-dense-setof-contdiff--00e6d262a07a6ee483633683.md) | 59 | `result-track:00e6d262a07a6ee4836336838f4a041b0739ef1a66d85182327ec256b55ff01a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
