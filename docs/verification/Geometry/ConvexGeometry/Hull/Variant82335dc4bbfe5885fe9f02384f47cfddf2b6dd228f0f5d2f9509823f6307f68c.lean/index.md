# Verification target: GRWTSK.Geometry.ConvexGeometry.Hull.Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cf38f5fdf892480226551e0fc93d8b8626694d8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cf38f5fdf892480226551e0fc93d8b8626694d8`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull--862b1c7542ac003e9add39cc.md) | 43 | `declaration-track:862b1c7542ac003e9add39cc23a227a592a92cff993047f13903fb14ecc1895a` |
| 2 | `theorem` | [subset_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/subset-convexhull--62bedba30a31a1a7f29bf0bf.md) | 53 | `result-track:62bedba30a31a1a7f29bf0bf94cd7cc67ca83fc6999919d0af2a2a495dfc67a8` |
| 3 | `theorem` | [convex_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convex-convexhull--6069fb173b06c0bafdb70388.md) | 57 | `result-track:6069fb173b06c0bafdb703884dc0e1f17a8481fd1356679453a88a462ddf46f3` |
| 4 | `theorem` | [convexHull_eq_iInter](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-eq-iinter--aaf9298466807f928a73cea9.md) | 61 | `result-track:aaf9298466807f928a73cea9abd3165d7dfbed3edc18e07301fe9af81938d3c3` |
| 5 | `theorem` | [mem_convexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/mem-convexhull-iff--5fde65b5d756c4cb08ad5d51.md) | 68 | `result-track:5fde65b5d756c4cb08ad5d5170f9387f3e0df3dad259bbb51f220eeb2889aedd` |
| 6 | `theorem` | [convexHull_min](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-min--c1bd859a4fe129b38ee01098.md) | 72 | `result-track:c1bd859a4fe129b38ee01098946e30e47dc6e4733eca5e61fade80ad699a0568` |
| 7 | `theorem` | [Convex.convexHull_subset_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convex-convexhull-subset-iff--74df01b23b11bc166456880f.md) | 76 | `result-track:74df01b23b11bc166456880f14ad582116103dea58b3eb2248bef728966fbe89` |
| 8 | `theorem` | [convexHull_mono](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-mono--31cda7fb6cd8216f46360304.md) | 81 | `result-track:31cda7fb6cd8216f463603042a4da022421ef37f9086aae475b5a0bc277a8811` |
| 9 | `theorem` | [Convex.convexHull_eq](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convex-convexhull-eq--f97f1c37258cf48ec7c8b0c2.md) | 85 | `result-track:f97f1c37258cf48ec7c8b0c22e6e0953354e174b9551554b7302f4778173a5ad` |
| 10 | `theorem` | [convexHull_univ](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-univ--5160724a35c70166ec4f9e95.md) | 90 | `result-track:5160724a35c70166ec4f9e95631de1ae70686d51968f624b82024aa7087f8973` |
| 11 | `theorem` | [convexHull_empty](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-empty--a41431ad43105249b390d06c.md) | 95 | `result-track:a41431ad43105249b390d06c242bc5b83086e9cc286a5d1ccc076bfc41c6e981` |
| 12 | `theorem` | [convexHull_empty_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-empty-iff--cbcdf1713aded901a5fed127.md) | 100 | `result-track:cbcdf1713aded901a5fed127b91fbc025f524b878003b813431210e1ad1418f7` |
| 13 | `theorem` | [convexHull_nonempty_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-nonempty-iff--ffa0ab91b89d99230fbb12f3.md) | 110 | `result-track:ffa0ab91b89d99230fbb12f3bf96c0473be7da6787ce90550621ee56d726713f` |
| 14 | `theorem` | [segment_subset_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/segment-subset-convexhull--ae6d3717fc74395302085018.md) | 118 | `result-track:ae6d3717fc743953020850187ef15081d79f5b942d060cc922f346dd63e27f21` |
| 15 | `theorem` | [convexHull_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-singleton--be9c04a67ab29f81f6c54000.md) | 123 | `result-track:be9c04a67ab29f81f6c54000d755b8eec0b214e83cfbd7cdf620c8828b6f4fab` |
| 16 | `theorem` | [convexHull_zero](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-zero--c564d6ecbf3af80d641cc9f0.md) | 128 | `result-track:c564d6ecbf3af80d641cc9f0d9a665f3dc992cdfd149184b5770ec5d72654c8b` |
| 17 | `theorem` | [convexHull_pair](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-pair--5a3d3821ede8dde48a6de4c8.md) | 133 | `result-track:5a3d3821ede8dde48a6de4c83bb7f2535ed06349f82d4f4a415a655aa0b21cbe` |
| 18 | `theorem` | [convexHull_convexHull_union_left](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-convexhull-union-left--3e808a71cd297466ffbb54b1.md) | 140 | `result-track:3e808a71cd297466ffbb54b1052bfb974f8e9cb8d52a4932b800937a8ec1df71` |
| 19 | `theorem` | [convexHull_convexHull_union_right](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-convexhull-union-right--6120cf9db48759b6e92aa35a.md) | 145 | `result-track:6120cf9db48759b6e92aa35a866afd2c7e1271c6f3345d6f8b9bdffa125afd9e` |
| 20 | `theorem` | [Convex.convex_remove_iff_not_mem_convexHull_remove](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convex-convex-remove-iff-not-mem-convexhull-remove--4f55a6611bd8468238c18a57.md) | 150 | `result-track:4f55a6611bd8468238c18a57104ab9820f15e5093cea020bfc182d23991cc95a` |
| 21 | `theorem` | [IsLinearMap.convexHull_image](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/islinearmap-convexhull-image--99a8276d6832a7f7776e101e.md) | 167 | `result-track:99a8276d6832a7f7776e101e4efb071a77b8a4a086ccb478b99b56bc6287afbb` |
| 22 | `theorem` | [LinearMap.convexHull_image](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/linearmap-convexhull-image--824087523dd0e819e36f3c60.md) | 177 | `result-track:824087523dd0e819e36f3c60816720b186cb6bc65335f9d5a2b3671bc0f013ec` |
| 23 | `theorem` | [convexHull_smul](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-smul--bfca0d701407948202340ad1.md) | 190 | `result-track:bfca0d701407948202340ad1d0a9c957e71b137fea91731bb0d01d869d5a9836` |
| 24 | `theorem` | [AffineMap.image_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/affinemap-image-convexhull--ede4c76d9436da0c6b73153f.md) | 204 | `result-track:ede4c76d9436da0c6b73153f1e0d002d41c33d049ebb029a09f1bb1b0476210e` |
| 25 | `theorem` | [convexHull_subset_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-subset-affinespan--c30c36b9692304502703689d.md) | 215 | `result-track:c30c36b9692304502703689d5ef3a8e9b548f7c731814cafa39485dc8180e45a` |
| 26 | `theorem` | [affineSpan_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/affinespan-convexhull--12494622e9553ac8e04f6f61.md) | 220 | `result-track:12494622e9553ac8e04f6f619f70b3d3f7c7b7ede93aed8f4091173e5cf875c9` |
| 27 | `theorem` | [convexHull_neg](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/declarations/convexhull-neg--f41e5983fd5cc626d57903a6.md) | 226 | `result-track:f41e5983fd5cc626d57903a6c9ddf78208c02dc7b2547d20e04ea08baa046829` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
