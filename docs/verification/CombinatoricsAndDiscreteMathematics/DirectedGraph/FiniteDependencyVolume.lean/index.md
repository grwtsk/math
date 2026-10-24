# Verification target: GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fbe62783332b2b420e4fba71535285a7b3422ab",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fbe62783332b2b420e4fba71535285a7b3422ab`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Union` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundedUpstream](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/boundedupstream--8d9a540fc9b871dd29c8dd6a.md) | 29 | `declaration-track:8d9a540fc9b871dd29c8dd6a489db03868a29c0a62be9f4a6ba931517adedbff` |
| 2 | `theorem` | [boundedUpstream_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/boundedupstream-zero--dd3ea134def24345a103c77a.md) | 35 | `result-track:dd3ea134def24345a103c77a04f5e1ecfcdab6a9822dfbedec4c91f07a24cc75` |
| 3 | `theorem` | [mem_boundedUpstream_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/mem-boundedupstream-succ--7f278d59518f5af89aa875d3.md) | 39 | `result-track:7f278d59518f5af89aa875d36461ef6fa1893195cb8644c16bb6e1d015541cc0` |
| 4 | `theorem` | [boundedUpstream_subset_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/boundedupstream-subset-succ--10066a2099c72d7af48466a7.md) | 47 | `result-track:10066a2099c72d7af48466a70fad7e5ac8cc31ea397a918462c40fdc4216fb5d` |
| 5 | `theorem` | [roots_subset_boundedUpstream](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/roots-subset-boundedupstream--72d46f4ed4d6af4fa590aeea.md) | 53 | `result-track:72d46f4ed4d6af4fa590aeea158dc2c0e9dd8b25b9e2e550dbeae8b0b306f1da` |
| 6 | `theorem` | [boundedUpstream_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/boundedupstream-union--0670d1a271dbd7ab516fac1d.md) | 60 | `result-track:0670d1a271dbd7ab516fac1d61cfd09e1a1d3d18a5a1d6f75daad80f91bc2bb6` |
| 7 | `theorem` | [boundedUpstream_duplicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/boundedupstream-duplicate--2cff147d19f77b6c0561e1e5.md) | 72 | `result-track:2cff147d19f77b6c0561e1e528630350b5f227ac74f34a4a2dd438e7dbaebc80` |
| 8 | `abbrev` | [upstreamThree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/upstreamthree--9a335ab06252cc5010f90743.md) | 78 | `declaration-track:9a335ab06252cc5010f90743c3810a539254291b4282e7d90e5ddef948607ce1` |
| 9 | `structure` | [WeightedEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/weightededges--4347371526a442a88fbcacca.md) | 82 | `declaration-track:4347371526a442a88fbcaccaf9a16c107ba5be62fb2cfe0255bd360512604009` |
| 10 | `def` | [incidence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/incidence--3e34f37af5b23730e74ab9b2.md) | 91 | `declaration-track:3e34f37af5b23730e74ab9b239630c379cf35723aa03bc5c56fb020822948699` |
| 11 | `theorem` | [incidence_loop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/incidence-loop--d1fc92c38926da5253834fb4.md) | 95 | `result-track:d1fc92c38926da5253834fb4fe6e9bf85618e9acdab8eb2e773e947108ca2314` |
| 12 | `def` | [laplacian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/laplacian--e6e4cacf252f4755239fda9f.md) | 101 | `declaration-track:e6e4cacf252f4755239fda9f0fdc1033e8a611f7d17cadcd8f5ed7bc56622b52` |
| 13 | `theorem` | [laplacian_symmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/laplacian-symmetric--d622fb0ce6dcb98c33416b28.md) | 106 | `result-track:d622fb0ce6dcb98c33416b284335a97acbf617d4f4f6f02e63200e42ed284d59` |
| 14 | `def` | [PositiveRegularizedDeterminant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/positiveregularizeddeterminant--f18b84dd88eacf8b50f32b04.md) | 113 | `declaration-track:f18b84dd88eacf8b50f32b04bba2ff8ebe23ab50c1780d9d1c9e2e6f7e60e9f6` |
| 15 | `def` | [spectralLogVolume](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/declarations/spectrallogvolume--0455bafe140732d19299bfb2.md) | 117 | `declaration-track:0455bafe140732d19299bfb24f3d89248d708d3f4f601ceb24590eda5cccacee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
