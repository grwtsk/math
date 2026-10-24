# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Counting.Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b9eec3bfffe16edcb4476095c15bb04bf922f7c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b9eec3bfffe16edcb4476095c15bb04bf922f7c`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Uniform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [badVertices](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/declarations/badvertices--76bf63e2458cd80af8a8db3b.md) | 31 | `declaration-track:76bf63e2458cd80af8a8db3bd7bfdc1bdd8912d744664fd0425c20d731f80244` |
| 2 | `lemma` | [card_interedges_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/declarations/card-interedges-badvertices-le--40ddc3773437d9404fa22a24.md) | 34 | `result-track:40ddc3773437d9404fa22a24687adb2123be4ce12b48324c57ea69e2c7d6f7a1` |
| 3 | `lemma` | [edgeDensity_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/declarations/edgedensity-badvertices-le--b6d68df2120f620afda86a37.md) | 43 | `result-track:b6d68df2120f620afda86a377af6412f7cdee936a6fdf8d9141d2e09f889f41d` |
| 4 | `lemma` | [card_badVertices_le](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/declarations/card-badvertices-le--647075a733762c38747faaa7.md) | 51 | `result-track:647075a733762c38747faaa73c9b75886d4f96134980ce0e48ce11c6d9263985` |
| 5 | `lemma` | [triangle_split_helper](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/declarations/triangle-split-helper--a3304e65e1e5721d7cee8a37.md) | 62 | `result-track:a3304e65e1e5721d7cee8a370c5039a3fd73e4a11a9654a118b6360704385c46` |
| 6 | `lemma` | [good_vertices_triangle_card](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/declarations/good-vertices-triangle-card--07e814dc2f22c1be2d11a61f.md) | 72 | `result-track:07e814dc2f22c1be2d11a61f4146fd746784b8632859c1d2cec2e78630760e0b` |
| 7 | `lemma` | [triangle_counting'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/declarations/triangle-counting--c55d865a47f8f72f1b1878c6.md) | 100 | `result-track:c55d865a47f8f72f1b1878c6eb88c1c7f31cf5adcd2f45281e3b0343d2f18b13` |
| 8 | `lemma` | [triple_eq_triple_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/declarations/triple-eq-triple-of-mem--4a4a79b66a932e7cce491bcd.md) | 134 | `result-track:4a4a79b66a932e7cce491bcda357b7d9c610b8ea2517172f4e1c210d5ccf0712` |
| 9 | `lemma` | [triangle_counting](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/declarations/triangle-counting--72b878f571ce2275cbb847ed.md) | 154 | `result-track:72b878f571ce2275cbb847eda9c7840dbdc793961ef2dd9a566008fc80af6d97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
