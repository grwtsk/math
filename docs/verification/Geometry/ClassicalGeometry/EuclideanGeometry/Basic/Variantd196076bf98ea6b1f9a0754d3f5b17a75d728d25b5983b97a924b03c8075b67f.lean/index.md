# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Basic.Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "250428384ec99a2aeb68795bf15220cd0ec92bf6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `250428384ec99a2aeb68795bf15220cd0ec92bf6`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/triangle--cd7d70ce89fcffc3cc41241f.md) | 40 | `declaration-track:cd7d70ce89fcffc3cc41241f9cdfb3b40358b26833b5b2a44d927703fc54b719` |
| 2 | `def` | [Triangle.mk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/triangle-mk--d195be61aae1d270fb05b634.md) | 61 | `declaration-track:d195be61aae1d270fb05b63401a4a7b049b8618ec7265b570c519bf8c43a3b8d` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/instance--24d0b0ee782de677b87cef4c.md) | 77 | `declaration-track:24d0b0ee782de677b87cef4c72eb815c344d3b982f16a73f235a6bd979a4572c` |
| 4 | `def` | [contractibleTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/contractibletriangle--36286bd0558be58c8f52f999.md) | 83 | `declaration-track:36286bd0558be58c8f52f999c1f927092e675da10eb44bf881b2f56019de2d46` |
| 5 | `structure` | [TriangleMorphism](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/trianglemorphism--3114446a06fb06f152121b6f.md) | 105 | `declaration-track:3114446a06fb06f152121b6f93e687f64f65a8f3dde024e0a69641b837ab150d` |
| 6 | `def` | [triangleMorphismId](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/trianglemorphismid--395fdb29db0f9026bf2751ea.md) | 126 | `declaration-track:395fdb29db0f9026bf2751ea406c9779a1beccdfb0f85b1e110f36bdb611012c` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/instance--c2bd27e0f9c2916e0f7f2dbc.md) | 133 | `declaration-track:c2bd27e0f9c2916e0f7f2dbc9da6c917ac531b7e794e0df7d4884fd74db6bc1a` |
| 8 | `def` | [TriangleMorphism.comp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/trianglemorphism-comp--b51d695349d442dece6eeb00.md) | 141 | `declaration-track:b51d695349d442dece6eeb0094bd39eff56d8eb0bf64f04d2966b5cd75ce09b4` |
| 9 | `instance` | [triangleCategory](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/trianglecategory--e280fe28b5d450b3016d2ca7.md) | 151 | `declaration-track:e280fe28b5d450b3016d2ca75f44f9c473246e79947c7cb8a60c539fe13545a2` |
| 10 | `lemma` | [Triangle.hom_ext](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/triangle-hom-ext--3f16011768eff8f6691fe9ea.md) | 159 | `result-track:3f16011768eff8f6691fe9ea2e428d4572c7b7b33dc18f2cf534cb5323cfae40` |
| 11 | `def` | [Triangle.homMk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/triangle-hommk--c86cfcc8c6a97465635feb98.md) | 164 | `declaration-track:c86cfcc8c6a97465635feb984b42ba5a0f0b979411e1990c8c473143b2799948` |
| 12 | `def` | [Triangle.isoMk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantd196076bf98ea6b1f9a0754d3f5b17a75d728d25b5983b97a924b03c8075b67f.lean/declarations/triangle-isomk--adf1430100933ecc12666928.md) | 179 | `declaration-track:adf1430100933ecc12666928b57681e77588c7ca4bf494a01184063f6b80c22c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
