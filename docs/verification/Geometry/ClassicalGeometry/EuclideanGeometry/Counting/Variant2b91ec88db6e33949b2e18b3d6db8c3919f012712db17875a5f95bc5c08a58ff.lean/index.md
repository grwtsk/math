# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Counting.Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "655e0e0692fc07926bab1a2f5384e9c75df8053c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `655e0e0692fc07926bab1a2f5384e9c75df8053c`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean.json)

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
| 1 | `def` | [badVertices](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/declarations/badvertices--f347f609409b13b5dd1a005e.md) | 35 | `declaration-track:f347f609409b13b5dd1a005efa7a22472bd16aa8590dd29546f0151e9607712c` |
| 2 | `lemma` | [card_interedges_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/declarations/card-interedges-badvertices-le--8b2fa3448bc67b665815e107.md) | 38 | `result-track:8b2fa3448bc67b665815e107992f36ce3edb9150d12990cc7f68dec328661a05` |
| 3 | `lemma` | [edgeDensity_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/declarations/edgedensity-badvertices-le--3dd66fc7f4f5e00abf9b427c.md) | 47 | `result-track:3dd66fc7f4f5e00abf9b427ca4168d6cbed7b1b50f2cd457e45974efef6cc817` |
| 4 | `lemma` | [card_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/declarations/card-badvertices-le--1cd66fa15065cdfbd9bb8b2d.md) | 55 | `result-track:1cd66fa15065cdfbd9bb8b2d295b21f14d4561b226c6029ac38eb9b7e5511799` |
| 5 | `lemma` | [triangle_split_helper](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/declarations/triangle-split-helper--167da8a13b1bbe08db3b481a.md) | 66 | `result-track:167da8a13b1bbe08db3b481af52ca3ba0de61ae2245248a6b1ed141782f40105` |
| 6 | `lemma` | [good_vertices_triangle_card](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/declarations/good-vertices-triangle-card--d064001bf66d09b2dee4cd11.md) | 76 | `result-track:d064001bf66d09b2dee4cd11d054a8889ecebea22d463efab72a77554d2b2b0f` |
| 7 | `lemma` | [triangle_counting'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/declarations/triangle-counting--0992a0440da88fa4ce8c7fa8.md) | 104 | `result-track:0992a0440da88fa4ce8c7fa8c858aab14fbaef38fa8b4ba6acf65915c05a3c42` |
| 8 | `lemma` | [triple_eq_triple_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/declarations/triple-eq-triple-of-mem--c7abfe758c8d8f49731bc96d.md) | 138 | `result-track:c7abfe758c8d8f49731bc96d2e3ab246b83b8a3aa4f58b3bd4180c3965276960` |
| 9 | `lemma` | [triangle_counting](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/declarations/triangle-counting--53332d08e284d75f7bf9ea4f.md) | 151 | `result-track:53332d08e284d75f7bf9ea4f65cec1c03e2f2d2a26c9e2cc292741f812268216` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
