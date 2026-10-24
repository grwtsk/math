# Verification target: GRWTSK.Analysis.MeasureTheory.ActualCurvatureResolutionAttempt03.Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e1fdcc7a7d68a130c8a8f7fe2a524ea70b6023b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e1fdcc7a7d68a130c8a8f7fe2a524ea70b6023b`.

Source path: `GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCurvatureBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampledCurvatureWork](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/sampledcurvaturework--b94199fe40cff13c5617a943.md) | 16 | `declaration-track:b94199fe40cff13c5617a943cf2705ac8e4010396192237cc5c2b2af992d1b4f` |
| 2 | `theorem` | [sampled_integrand_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/sampled-integrand-intervalintegrable--15a3c394c0b7d681d289caf8.md) | 19 | `result-track:15a3c394c0b7d681d289caf8bb647b9fe5a3e37e2e165cf5d615a31f05ab7f6b` |
| 3 | `theorem` | [sampled_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/sampled-work-error--bc71c8bb5a13ffd7150dcaaa.md) | 39 | `result-track:bc71c8bb5a13ffd7150dcaaadc3096483a1196d73104a986a95fb571d523c6f0` |
| 4 | `def` | [leftGridSample](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/leftgridsample--45e640d01a540fe1f9759151.md) | 66 | `declaration-track:45e640d01a540fe1f9759151e4e2fff4f7233fe0ea61f17aea5b69f3538ed167` |
| 5 | `theorem` | [leftGridSample_measurable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/leftgridsample-measurable--c23d363823e4b0baf71b4765.md) | 69 | `result-track:c23d363823e4b0baf71b47650756416c2372009df6f078fdaa7f3b8b57241c7b` |
| 6 | `theorem` | [leftGridSample_range_mesh](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/leftgridsample-range-mesh--d19b6eedb54b657d96b4cc88.md) | 73 | `result-track:d19b6eedb54b657d96b4cc883f52bd98b7267e44384cfad3407c2aa65c1525a6` |
| 7 | `theorem` | [actual_grid_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/actual-grid-work-error--dba2a28511d4b759ef9be307.md) | 95 | `result-track:dba2a28511d4b759ef9be307fa227b49fdddc4e6e711a7dac1c896ec9199fd1b` |
| 8 | `def` | [curvatureResolutionCount](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/curvatureresolutioncount--2d8381755cccbabf0a9f5f01.md) | 112 | `declaration-track:2d8381755cccbabf0a9f5f01d4de38fb3464da160bab42873688c3a49d09b54b` |
| 9 | `theorem` | [curvatureResolutionCount_pos](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/curvatureresolutioncount-pos--a3d869b87b24d8f535e9d40b.md) | 114 | `result-track:a3d869b87b24d8f535e9d40bd3279dccd1c96f62f032df3f6ea4085986cc9195` |
| 10 | `theorem` | [curvatureResolutionCount_mono](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/curvatureresolutioncount-mono--ae6766cafbedb328a7f77051.md) | 118 | `result-track:ae6766cafbedb328a7f77051b8a7dc40406523d05894dd50bc74057063abf793` |
| 11 | `theorem` | [actual_joint_grid_work_accuracy](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/actual-joint-grid-work-accuracy--d424aa3b048d2383cb6106cc.md) | 125 | `result-track:d424aa3b048d2383cb6106cc35a5a0ab5f1e10721d5e6337cb0d08d381dbb0a2` |
| 12 | `def` | [CurvatureGridTailLowerBound](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/curvaturegridtaillowerbound--b3eeed31e7875f309cda94c0.md) | 139 | `declaration-track:b3eeed31e7875f309cda94c050e62c126d404631e00bdf0dd8b5bafdf48d67c4` |
| 13 | `theorem` | [actual_tail_iff_grid_tail](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/declarations/actual-tail-iff-grid-tail--8f9e406ef72799537885f4f9.md) | 144 | `result-track:8f9e406ef72799537885f4f93ffffab394d3d27b132753bae1a3dab9e42fe7f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
