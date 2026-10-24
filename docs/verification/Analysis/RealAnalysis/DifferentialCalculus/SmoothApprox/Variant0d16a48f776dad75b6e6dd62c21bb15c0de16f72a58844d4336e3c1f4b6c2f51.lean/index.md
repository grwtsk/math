# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SmoothApprox.Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b11c46b86b6edf9cecce495186f53342952a594a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b11c46b86b6edf9cecce495186f53342952a594a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeasureTheory.LocallyIntegrable.exists_contDiff_dist_le_of_forall_mem_ball_dist_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean/declarations/measuretheory-locallyintegrable-exists-contdiff-dist-le-of-forall-mem-ba--143ce7b2169e4d5aa90c5671.md) | 40 | `result-track:143ce7b2169e4d5aa90c5671d85f0dd28bb6f097a4e339af1f29d2a9d43c0ed0` |
| 2 | `theorem` | [Continuous.exists_contDiff_dist_le_of_forall_mem_ball_dist_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean/declarations/continuous-exists-contdiff-dist-le-of-forall-mem-ball-dist-le--5b093b637e4a241b78ffe9ea.md) | 49 | `result-track:5b093b637e4a241b78ffe9eaf168e65da0a06d838b7d5b4e6e7ba974a6d0de86` |
| 3 | `theorem` | [UniformContinuous.exists_contDiff_dist_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean/declarations/uniformcontinuous-exists-contdiff-dist-le--00a6f2c0da9f1bf54f98cbab.md) | 56 | `result-track:00a6f2c0da9f1bf54f98cbab026f54eaf5bfd3452e614779a672bce1c39fec1e` |
| 4 | `theorem` | [ContinuousMap.dense_setOfPred_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean/declarations/continuousmap-dense-setofpred-contdiff--b4d582742755bf478ba63f50.md) | 63 | `result-track:b4d582742755bf478ba63f50c1187e886d979cdbc433a51eaafaf1275570fc54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
