# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Counting.Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d84b842b82ae80fd41cd2d5132e7ef5fc4c9e1dd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d84b842b82ae80fd41cd2d5132e7ef5fc4c9e1dd`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean.json)

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
| 1 | `def` | [badVertices](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/declarations/badvertices--327cfa0a730dac1cbe774729.md) | 43 | `declaration-track:327cfa0a730dac1cbe77472907dbc6c78ed6dd5d9c64afa310467a9ede8b7e1e` |
| 2 | `lemma` | [card_interedges_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/declarations/card-interedges-badvertices-le--d0d4b1b2fc4ea9555ac8d35a.md) | 46 | `result-track:d0d4b1b2fc4ea9555ac8d35ad689fe65d914377928609ec69a8df9ad607f6f57` |
| 3 | `lemma` | [edgeDensity_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/declarations/edgedensity-badvertices-le--05e19a69907f28a2a7001737.md) | 55 | `result-track:05e19a69907f28a2a7001737696b973dc0c315a5ab3d3ce094063749398fb9e2` |
| 4 | `lemma` | [card_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/declarations/card-badvertices-le--a06ec5d093c9d64a59406d02.md) | 63 | `result-track:a06ec5d093c9d64a59406d02d825df07c8b62706e952eb16031c9ab6605c7c7d` |
| 5 | `lemma` | [triangle_split_helper](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/declarations/triangle-split-helper--f53eb7da2559663f0dae8c98.md) | 74 | `result-track:f53eb7da2559663f0dae8c986271466542ff8e907ad88a33fa9edb4dab0a1080` |
| 6 | `lemma` | [good_vertices_triangle_card](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/declarations/good-vertices-triangle-card--1cb7fd2acf032abe58002d92.md) | 84 | `result-track:1cb7fd2acf032abe58002d92223f0b14a4ba76c0fad20614708f98aa64bdeb9d` |
| 7 | `lemma` | [triangle_counting'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/declarations/triangle-counting--3e8b727d72f3528d936219c4.md) | 112 | `result-track:3e8b727d72f3528d936219c448637d3df5574711433e795cc2d11e3c599a3cb7` |
| 8 | `lemma` | [triple_eq_triple_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/declarations/triple-eq-triple-of-mem--8f6b4519a41c23a7054ad894.md) | 146 | `result-track:8f6b4519a41c23a7054ad8946c00429b7c9eab16a6a46e73a2ab43c6aa0ea3b4` |
| 9 | `lemma` | [triangle_counting](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/declarations/triangle-counting--5c5f3519b89f0b196a017db7.md) | 159 | `result-track:5c5f3519b89f0b196a017db7ab2645e93c0525e480caca999d04c14efe5ebfb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
