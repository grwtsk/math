# Verification target: GRWTSK.Geometry.ConvexGeometry.Independent.Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aec0dc59229e02455f5401ba255751db9bf821b0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aec0dc59229e02455f5401ba255751db9bf821b0`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean.json)

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
| 1 | `def` | [ConvexIndependent](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent--68851157b12896047104ffeb.md) | 65 | `declaration-track:68851157b12896047104ffeb90d26e23e83305b709874d23009aaeab4f6cf1a6` |
| 2 | `theorem` | [Subsingleton.convexIndependent](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/subsingleton-convexindependent--7c3370c859dd6427d5890476.md) | 71 | `result-track:7c3370c859dd6427d589047697620da594357bd1b99bfcb9b95a073159e2a9c6` |
| 3 | `theorem` | [ConvexIndependent.injective](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent-injective--764f6ac85d9547fe956fe65d.md) | 78 | `result-track:764f6ac85d9547fe956fe65d773c8b7edc629489ee6d07d70848935abd79d85d` |
| 4 | `theorem` | [ConvexIndependent.comp_embedding](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent-comp-embedding--9d0dbcde6c533bd98aba3b3a.md) | 86 | `result-track:9d0dbcde6c533bd98aba3b3a9c953238efa7b9b720223ca8d7175ab6d285bd60` |
| 5 | `theorem` | [ConvexIndependent.subtype](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent-subtype--c984a1b7e53b88653f53240c.md) | 94 | `result-track:c984a1b7e53b88653f53240c429fcbebbbd723d258e697f881d5f94802623b54` |
| 6 | `theorem` | [ConvexIndependent.range](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent-range--946267f4d3243f34d267df6b.md) | 100 | `result-track:946267f4d3243f34d267df6b91cf1817b781ee5c0514bac5ea2b669eef365b3a` |
| 7 | `theorem` | [ConvexIndependent.mono](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent-mono--863b699ba49ff0bc8257fee0.md) | 110 | `result-track:863b699ba49ff0bc8257fee090262d1fba01c4c28e3ba468fd1c5a49803c40b8` |
| 8 | `theorem` | [Function.Injective.convexIndependent_iff_set](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/function-injective-convexindependent-iff-set--2876ac3bf0ca19e1f3df0467.md) | 115 | `result-track:2876ac3bf0ca19e1f3df046784c3192f029d4b5d2ec9b16d9ce8db1c6f585bb8` |
| 9 | `theorem` | [ConvexIndependent.mem_convexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent-mem-convexhull-iff--1886cb21a189be1f3862e3b6.md) | 126 | `result-track:1886cb21a189be1f3862e3b6d06bbde42a38519846a918203641f0eadaeb511c` |
| 10 | `theorem` | [convexIndependent_iff_notMem_convexHull_sdiff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent-iff-notmem-convexhull-sdiff--9cdc31e1cd35bbff806deebc.md) | 132 | `result-track:9cdc31e1cd35bbff806deebc1dff340f747df92961109a211f3c9844cf12e62d` |
| 11 | `theorem` | [convexIndependent_set_iff_inter_convexHull_subset](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent-set-iff-inter-convexhull-subset--3ef6c421217c2c16427c7ce6.md) | 145 | `result-track:3ef6c421217c2c16427c7ce68a00f37229a287f3f5ab7c608618a4cef53e6052` |
| 12 | `theorem` | [convexIndependent_set_iff_notMem_convexHull_sdiff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent-set-iff-notmem-convexhull-sdiff--33e32bd4e809c9282c25453c.md) | 158 | `result-track:33e32bd4e809c9282c25453c0960271d115532322ea25831c8f61364a132e318` |
| 13 | `theorem` | [convexIndependent_iff_finset](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convexindependent-iff-finset--71fcafc6a63126eaed0020d4.md) | 180 | `result-track:71fcafc6a63126eaed0020d47e823af5469597934da4c34bfaa34bdcabd44205` |
| 14 | `theorem` | [Convex.convexIndependent_extremePoints](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantb65ee6534b829b910318721ef0587e94c37429b9927e38b23b22d06b54ae6a42.lean/declarations/convex-convexindependent-extremepoints--9c9b9142d6ad3319e360a7e8.md) | 204 | `result-track:9c9b9142d6ad3319e360a7e8b1938edd7fe358a5e5d5eb5c38aaadf3611646be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
