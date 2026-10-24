# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Counting.Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c22ec81f13ab28b30e15946042b4f29a770bb48b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c22ec81f13ab28b30e15946042b4f29a770bb48b`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Uniform` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [badVertices](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/declarations/badvertices--2576187f1b6b278e060f2cfa.md) | 39 | `declaration-track:2576187f1b6b278e060f2cfa6ab7a2893bd632f39bb6c1db2bbbb1404cc188cb` |
| 2 | `lemma` | [card_interedges_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/declarations/card-interedges-badvertices-le--51787b1263dcf989554d011b.md) | 42 | `result-track:51787b1263dcf989554d011ba3372582cd42c124320a7bcc9aafbb5b4fd735c9` |
| 3 | `lemma` | [edgeDensity_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/declarations/edgedensity-badvertices-le--04a129e05cc0a911fa284acf.md) | 51 | `result-track:04a129e05cc0a911fa284acf74d0c25e4b6c70174e105e6a1e7a06f5a9360dca` |
| 4 | `lemma` | [card_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/declarations/card-badvertices-le--5e30fa90a6eb912ddfe6a200.md) | 59 | `result-track:5e30fa90a6eb912ddfe6a20019c7f37c5e8ecb63080df73f0f80708e66ab7ae8` |
| 5 | `lemma` | [triangle_split_helper](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/declarations/triangle-split-helper--edd63c7e682f8d03da92454f.md) | 70 | `result-track:edd63c7e682f8d03da92454faa1e10afa6aeb8d60cd4742a8236e6489c290275` |
| 6 | `lemma` | [good_vertices_triangle_card](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/declarations/good-vertices-triangle-card--33b6ecbed54146d1fef26aa2.md) | 80 | `result-track:33b6ecbed54146d1fef26aa2e2e43c85891de7ae5c8e6012a9a9ae149976f54c` |
| 7 | `lemma` | [triangle_counting'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/declarations/triangle-counting--055d146b12c28699d02ee19d.md) | 108 | `result-track:055d146b12c28699d02ee19d7d4c1cccc685fd358a9f0e0a32cc2d6c67709027` |
| 8 | `lemma` | [triple_eq_triple_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/declarations/triple-eq-triple-of-mem--19772b243fd7086c0562d7c2.md) | 142 | `result-track:19772b243fd7086c0562d7c2041e589c26e64bb669094fdaa3312113f3977729` |
| 9 | `lemma` | [triangle_counting](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/declarations/triangle-counting--870f065e556e157edbb07035.md) | 162 | `result-track:870f065e556e157edbb070356bee898cdf7d7cd617532b62b92b075f405d0b29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
