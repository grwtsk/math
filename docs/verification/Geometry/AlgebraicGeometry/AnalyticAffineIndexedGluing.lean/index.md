# Verification target: GRWTSK.AlgebraicGeometry.AnalyticAffineIndexedGluing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4aef0b562eb1aa9c275a37fe764fc58eaac28810",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/index.md) · [Full source](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4aef0b562eb1aa9c275a37fe764fc58eaac28810`.

Source path: `GRWTSK/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.AnalyticAffineGluing`](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineGluing.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicIndexedCoverGluing`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Compatible](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/compatible--fe7c531793db33f5b8c01819.md) | 25 | `declaration-track:fe7c531793db33f5b8c0181902b707d45f3a58cce6241d59665518c047d6a78d` |
| 2 | `theorem` | [compatible_apply](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/compatible-apply--690bfc667aeee7358324fea8.md) | 31 | `result-track:690bfc667aeee7358324fea8acb87731bc7dcd9d766781b5a5804f64e56ba86d` |
| 3 | `def` | [glueRingHom](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/glueringhom--4770bc6611ac749035a7515c.md) | 38 | `declaration-track:4770bc6611ac749035a7515c26388a0e98d4a8a217807d4e7f0fe9227297549a` |
| 4 | `def` | [glue](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/glue--38b2c7aca21d086f5e764468.md) | 63 | `declaration-track:38b2c7aca21d086f5e7644681602e762d049cdd6743f0adc2a10b45029d9a6a5` |
| 5 | `theorem` | [restrict_glue](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/restrict-glue--fd0079b22903b1b9db20f75e.md) | 68 | `result-track:fd0079b22903b1b9db20f75e95a355f4afec19eb050618f6991a1a7d94f95eaf` |
| 6 | `theorem` | [glue_unique](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/glue-unique--8108d65f9d5d52976f39c669.md) | 78 | `result-track:8108d65f9d5d52976f39c669492e0e3975d8f0182c4e78944d76f7e14d88c2ac` |
| 7 | `theorem` | [existsUnique_glue](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/existsunique-glue--a14857e107131c7778798003.md) | 91 | `result-track:a14857e107131c77787980030f73e45cc0bd46f7c115a5f27855a7d55d8fda90` |
| 8 | `theorem` | [glue_pointMap_continuous](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/glue-pointmap-continuous--627f352e23645926db43de7f.md) | 99 | `result-track:627f352e23645926db43de7f14d636526ff548f596d056ed21b84d447eec102c` |
| 9 | `theorem` | [glue_pointMap_member](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/glue-pointmap-member--1572b84cf462225b1a9f5699.md) | 105 | `result-track:1572b84cf462225b1a9f56994684a8bd735ac121ad1d4cd6b0b33637f6782a6e` |
| 10 | `theorem` | [compatible_precomp](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/compatible-precomp--0d63b648704a09d5715d107e.md) | 119 | `result-track:0d63b648704a09d5715d107e67fa94299b6e37a000aa72e1dc3accf7c5ffeb68` |
| 11 | `theorem` | [glue_precomp](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/glue-precomp--32e472e8bfe647c3239205ce.md) | 130 | `result-track:32e472e8bfe647c3239205ce1ff08b1cce94f62ac1f27b50817646467e6dbf53` |
| 12 | `theorem` | [polynomial_compatible](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/polynomial-compatible--9d4b4b8adf6aea29235c69e3.md) | 141 | `result-track:9d4b4b8adf6aea29235c69e387f0a9f58bad8f70f5bdd48b1f41eedadf6e8acd` |
| 13 | `theorem` | [glue_polynomial_model](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/glue-polynomial-model--5e2e3a80f290f2504a8aa971.md) | 148 | `result-track:5e2e3a80f290f2504a8aa971e9e7ec4a33eb6ce3f6ff928f3feede5cc916f60c` |
| 14 | `theorem` | [allPunctures_polynomial_descent](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/declarations/allpunctures-polynomial-descent--6a243e6bad1b93f8e578afa0.md) | 158 | `result-track:6a243e6bad1b93f8e578afa03e4f88a1a0cf1b659dd403db197bf5a634a94179` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
