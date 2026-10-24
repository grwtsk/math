# Verification target: GRWTSK.Algebra.LinearAlgebra.EuclideanDist.Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb8d9ab84d2eb850d6bf93c25f1ec28cca5d2a96",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb8d9ab84d2eb850d6bf93c25f1ec28cca5d2a96`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toEuclidean](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/toeuclidean--cf1fa23dc02f98032849bf66.md) | 36 | `declaration-track:cf1fa23dc02f98032849bf66550f247eb21cbefd6960b2735a94f3f375b1ee08` |
| 2 | `def` | [dist](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/dist--6ce43c185b9d89bd7a70f73f.md) | 44 | `declaration-track:6ce43c185b9d89bd7a70f73fca0084e81e55d68043fe4fb54d46b4af1f625613` |
| 3 | `def` | [closedBall](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/closedball--e1a9b8d00ad9e1ef7579d344.md) | 48 | `declaration-track:e1a9b8d00ad9e1ef7579d344a2512fcce98540285d693827a01498091d7d1dce` |
| 4 | `def` | [ball](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/ball--222708e6bf66c7d036d681bd.md) | 52 | `declaration-track:222708e6bf66c7d036d681bd4a8b4210712a982b2774a55f0ae26170d1e50ea9` |
| 5 | `theorem` | [ball_eq_preimage](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/ball-eq-preimage--366e632cfde03fc6fe3504f8.md) | 55 | `result-track:366e632cfde03fc6fe3504f8f241e4c99cd1371825018787387522f223dcf762` |
| 6 | `theorem` | [closedBall_eq_preimage](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/closedball-eq-preimage--ab9f507a3ea874fdae07e3bf.md) | 59 | `result-track:ab9f507a3ea874fdae07e3bf8ae1358dd0f11dc77f06e0a16df721c3e79474e5` |
| 7 | `theorem` | [ball_subset_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/ball-subset-closedball--143e317aafb1a77750dc2c43.md) | 63 | `result-track:143e317aafb1a77750dc2c43c2a6a255a1dae9420f158078c988ec17a49526ae` |
| 8 | `theorem` | [isOpen_ball](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/isopen-ball--b2801212db2ac599e6b4682b.md) | 66 | `result-track:b2801212db2ac599e6b4682b5cfdeee8a80d320be1418124331d7f04e1806722` |
| 9 | `theorem` | [mem_ball_self](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/mem-ball-self--eb94182c3204487c728eef54.md) | 69 | `result-track:eb94182c3204487c728eef5456c398ebc9a66c9a5840e073544cfc57587c67c3` |
| 10 | `theorem` | [closedBall_eq_image](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/closedball-eq-image--990c22a9d1025c20fe7f7bb0.md) | 72 | `result-track:990c22a9d1025c20fe7f7bb02df70f145ce47ae583c40ebdbc2e1740f698637b` |
| 11 | `theorem` | [isCompact_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/iscompact-closedball--2d37f31ffefb2339be5037f8.md) | 76 | `result-track:2d37f31ffefb2339be5037f8f87f64d113ff4342c4f196cd033794f966f9903d` |
| 12 | `theorem` | [isClosed_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/isclosed-closedball--23cfbf9bbb35e50910197057.md) | 80 | `result-track:23cfbf9bbb35e50910197057b1ed0fbe7c99a074d039814cb7253a88ea6d6831` |
| 13 | `theorem` | [closure_ball](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/closure-ball--e552b0fc958b3d1d49b40bd1.md) | 83 | `result-track:e552b0fc958b3d1d49b40bd1239b602b3f804d327b4c11b1ed63a64437e558fd` |
| 14 | `theorem` | [exists_pos_lt_subset_ball](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/exists-pos-lt-subset-ball--da8c54155f7fdd96b678b8b4.md) | 87 | `result-track:da8c54155f7fdd96b678b8b4aade4b889a38497fd1cd832a80f14e198e08787d` |
| 15 | `theorem` | [nhds_basis_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/nhds-basis-closedball--e92793ac25563d9c988bac36.md) | 93 | `result-track:e92793ac25563d9c988bac3664a40bb2e25682cab462080cba5f2a4c55956100` |
| 16 | `theorem` | [closedBall_mem_nhds](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/closedball-mem-nhds--521b2578907332a297e46721.md) | 97 | `result-track:521b2578907332a297e4672132e56f9ff60ffdda2703b5100d1a49d99478ae82` |
| 17 | `theorem` | [nhds_basis_ball](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/nhds-basis-ball--350ec7f510dee8114d887c3f.md) | 100 | `result-track:350ec7f510dee8114d887c3f1e37996d81d17a71b2deda54fcbdfbdd2c554a2d` |
| 18 | `theorem` | [ball_mem_nhds](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/ball-mem-nhds--4c8b2e38720cedea81224e5d.md) | 104 | `result-track:4c8b2e38720cedea81224e5dfafdbd72d572f028fcc58855ec8027195466d933` |
| 19 | `theorem` | [ContDiff.euclidean_dist](../../../../../mathematics/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/declarations/contdiff-euclidean-dist--eec5ce0fa1150a7ec47c3ff4.md) | 112 | `result-track:eec5ce0fa1150a7ec47c3ff4da050333038d965bf2320b37d3f9f577fe9a1cc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
