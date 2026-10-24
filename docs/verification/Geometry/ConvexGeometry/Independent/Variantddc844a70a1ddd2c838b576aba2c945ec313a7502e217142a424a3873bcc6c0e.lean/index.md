# Verification target: GRWTSK.Geometry.ConvexGeometry.Independent.Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6bb28916ba51c59f00f50367ab5ae2d909dbb1c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6bb28916ba51c59f00f50367ab5ae2d909dbb1c`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConvexIndependent](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent--39ecc3441186f92d275e95e0.md) | 57 | `declaration-track:39ecc3441186f92d275e95e0d054cd018c82d680c15de2a88073c78a5cbbb23e` |
| 2 | `theorem` | [Subsingleton.convexIndependent](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/subsingleton-convexindependent--ba7fbc74c6982d8197e669bc.md) | 63 | `result-track:ba7fbc74c6982d8197e669bc41541ad080b22f345da4d34308cf8e6bc471c5a3` |
| 3 | `theorem` | [ConvexIndependent.injective](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent-injective--c2eeab988b293347e5a18231.md) | 70 | `result-track:c2eeab988b293347e5a1823111d268d273f579168bbf2de24fc93b925677f915` |
| 4 | `theorem` | [ConvexIndependent.comp_embedding](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent-comp-embedding--2f7f0e6ceb11963dfa4da03b.md) | 78 | `result-track:2f7f0e6ceb11963dfa4da03bf08a862151222d7f4f7a858ffd69c9e251806eb4` |
| 5 | `theorem` | [ConvexIndependent.subtype](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent-subtype--5a76d9efe255b639dcdc909e.md) | 86 | `result-track:5a76d9efe255b639dcdc909e87cf73e7957eec43fec1311fc2db8bac57a6563e` |
| 6 | `theorem` | [ConvexIndependent.range](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent-range--48d0ac87dac1da7665fcd014.md) | 92 | `result-track:48d0ac87dac1da7665fcd0144c09e6610c262dab2db8bdee48cc07fa62d82aac` |
| 7 | `theorem` | [ConvexIndependent.mono](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent-mono--5c173136f7b14da6f25360c5.md) | 102 | `result-track:5c173136f7b14da6f25360c57d605dcd3bd8511485d32eb386e7670673883c87` |
| 8 | `theorem` | [Function.Injective.convexIndependent_iff_set](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/function-injective-convexindependent-iff-set--377fe041f3ae8e094028b377.md) | 107 | `result-track:377fe041f3ae8e094028b377b4bb9cc2461062ac6029a0ab3c80196c8543ee37` |
| 9 | `theorem` | [ConvexIndependent.mem_convexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent-mem-convexhull-iff--92772cfa51d8190d411dbdd9.md) | 118 | `result-track:92772cfa51d8190d411dbdd95254caf5e57cec39ec37f15198f4b7efa6d9b29a` |
| 10 | `theorem` | [convexIndependent_iff_notMem_convexHull_sdiff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent-iff-notmem-convexhull-sdiff--36143671441d4722c25b91e1.md) | 124 | `result-track:36143671441d4722c25b91e1349a96f7aafff0b83837fb177e6a17c56d1388df` |
| 11 | `theorem` | [convexIndependent_set_iff_inter_convexHull_subset](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent-set-iff-inter-convexhull-subset--4114f852a9cdafdd967a5662.md) | 137 | `result-track:4114f852a9cdafdd967a5662450925aa892cdac47c8a135ab3c5b2e1b857aca9` |
| 12 | `theorem` | [convexIndependent_set_iff_notMem_convexHull_sdiff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent-set-iff-notmem-convexhull-sdiff--b6a07eb0026d1b742c86d288.md) | 150 | `result-track:b6a07eb0026d1b742c86d2884af7715d78307cd8c0df9dc526f46b7b526b4c0b` |
| 13 | `theorem` | [convexIndependent_iff_finset](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convexindependent-iff-finset--35ec2d01b0e6eef84be4b126.md) | 172 | `result-track:35ec2d01b0e6eef84be4b126e7153df14800e88f3082703fea1a5353001953f5` |
| 14 | `theorem` | [Convex.convexIndependent_extremePoints](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/declarations/convex-convexindependent-extremepoints--81c59630dc82b54216f7c12a.md) | 196 | `result-track:81c59630dc82b54216f7c12a9c0d8840782ac07cf4b94baadf2b163345b85b8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
