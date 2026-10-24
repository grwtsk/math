# Verification target: GRWTSK.Geometry.ConvexGeometry.AffineMap.Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "410f1a6b7d3dd5f2a29635257deeab8ca582aa04",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `410f1a6b7d3dd5f2a29635257deeab8ca582aa04`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean.json)

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
| 1 | `structure` | [AffineMap](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/affinemap--25d83ec9791d159beda5c1a6.md) | 26 | `declaration-track:25d83ec9791d159beda5c1a6e0f532b0d6ebd93911d9dabf3d47f62c0b64e82f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/instance--05b4296c57ac2b1a5cf17ddc.md) | 37 | `declaration-track:05b4296c57ac2b1a5cf17ddc78bde8434da6cc78759104cacc72574d7f2fbf8c` |
| 3 | `lemma` | [coe_mk](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/coe-mk--8477d090375950cad155cd7f.md) | 43 | `result-track:8477d090375950cad155cd7f6bc572685443f4d142577c1cc971e2449d6867fe` |
| 4 | `lemma` | [ext](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/ext--dde7140e46e0c25ee4e32094.md) | 46 | `result-track:dde7140e46e0c25ee4e3209483b5b826a08baae8b55fb99e095e87256be5afdc` |
| 5 | `lemma` | [isAffineMap](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/isaffinemap--9dc17ed31212cf74192ef260.md) | 49 | `result-track:9dc17ed31212cf74192ef260bae1befb6064c02261fe7385e7a73657b134fc9c` |
| 6 | `def` | [id](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/id--105d3cc2537472bdcb617d3e.md) | 54 | `declaration-track:105d3cc2537472bdcb617d3e5679ad919bea5a21116faaf6f09e21a17d61ee9b` |
| 7 | `def` | [comp](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/comp--0a54bc4337a4e3b64257dcb7.md) | 59 | `declaration-track:0a54bc4337a4e3b64257dcb7d3079e4443f1f6c2545928c924599200aa240fdc` |
| 8 | `lemma` | [coe_comp](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/coe-comp--a44055174d819c7f78004a41.md) | 64 | `result-track:a44055174d819c7f78004a419ce6fc4c7153fb46928db7e5a493abe4d4c78474` |
| 9 | `lemma` | [id_comp](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/id-comp--a6e7d3e57eb0250e7b9029a2.md) | 67 | `result-track:a6e7d3e57eb0250e7b9029a2e303478bb4237e73b9e8cd59755692aac292ce2c` |
| 10 | `lemma` | [comp_id](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/comp-id--519e8d2b5f23fbaeab771abe.md) | 68 | `result-track:519e8d2b5f23fbaeab771abe4c1cc1c289a133a6278317ccb67f68896b8376fa` |
| 11 | `lemma` | [assoc](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/assoc--b569361d6bd642b22d434997.md) | 70 | `result-track:b569361d6bd642b22d434997c593b7103e5b3b7e902211753acd27069430a337` |
| 12 | `def` | [const](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/const--1c00bede167a25d6ec697365.md) | 77 | `declaration-track:1c00bede167a25d6ec69736508faba2175d1cc29f0944955de618c1751087c4c` |
| 13 | `lemma` | [affineMap_ext](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/affinemap-ext--f3ff2ed1760e3e5fee4c615f.md) | 86 | `result-track:f3ff2ed1760e3e5fee4c615f6a7ac4aa5e1a202e106a4ce3d2dc912039fb2da1` |
| 14 | `def` | [affineMap](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/affinemap--c9c11c016bb6aaf90fcd2db1.md) | 97 | `declaration-track:c9c11c016bb6aaf90fcd2db1a657eac4b6dec4d099811dc83640525450e17ba9` |
| 15 | `lemma` | [coe_affineMap](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/coe-affinemap--31f2e8343d967c6a74f30d14.md) | 102 | `result-track:31f2e8343d967c6a74f30d14b00aad05886a3b275a4c86b379eca47a8a3a81e5` |
| 16 | `lemma` | [affineMap_id](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/affinemap-id--a0de2de153a4ff1a0ae52337.md) | 106 | `result-track:a0de2de153a4ff1a0ae52337f5f020fe8be95a743cf674b672a35ec8bfbe94da` |
| 17 | `def` | [affineMapMk](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/affinemapmk--afca3ec5dfb9aa032c2ddf1c.md) | 110 | `declaration-track:afca3ec5dfb9aa032c2ddf1c74ae24f0e03bb9d4499e5a9f607626f2dc68c231` |
| 18 | `lemma` | [affineMapMk_apply](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/affinemapmk-apply--5644a054c4060f25e50d4f86.md) | 115 | `result-track:5644a054c4060f25e50d4f86ef544f0374f7931be2cec20f2a2c00f19485c4a2` |
| 19 | `lemma` | [affineMapMk_single](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/affinemapmk-single--9925e386d97b12db1edffb40.md) | 120 | `result-track:9925e386d97b12db1edffb40246ad18ef9b4a8ab18855f60dde0b5b7833c1104` |
| 20 | `lemma` | [affineMapMk_surjective](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/affinemapmk-surjective--bad1c053a76279722b85f017.md) | 124 | `result-track:bad1c053a76279722b85f01733463ec2d84b18a37cee57206d591285f4254ac8` |
| 21 | `lemma` | [comp_affineMapMk](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/declarations/comp-affinemapmk--abfdfcc1fc2e2563e8fcdb48.md) | 129 | `result-track:abfdfcc1fc2e2563e8fcdb48f6ce99c47d9b32e79725502cd7524f5fff86c4fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
