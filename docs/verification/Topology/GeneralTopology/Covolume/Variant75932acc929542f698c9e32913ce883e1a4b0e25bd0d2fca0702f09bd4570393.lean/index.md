# Verification target: GRWTSK.Topology.GeneralTopology.Covolume.Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ea7846d49f9b471740e48867069f6a6e43c1cc1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ea7846d49f9b471740e48867069f6a6e43c1cc1`.

Source path: `GRWTSK/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean.json)

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
| 1 | `def` | [covolume](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/covolume--25807d8e9e83bd35f09d2381.md) | 80 | `declaration-track:25807d8e9e83bd35f09d238162dc0f25857bf3a8756c52aabbb12349c82b00ee` |
| 2 | `theorem` | [covolume_eq_measure_fundamentalDomain](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/covolume-eq-measure-fundamentaldomain--80af400e4470df224b5250f0.md) | 92 | `result-track:80af400e4470df224b5250f06b5dfaf85be3d9fd36cf80740163cf8f8c25bb32` |
| 3 | `theorem` | [covolume_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/covolume-ne-zero--faac62640e58901a256d30cb.md) | 99 | `result-track:faac62640e58901a256d30cb30048def8617b24d52e01052f76c75d7a4d910ae` |
| 4 | `theorem` | [covolume_pos](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/covolume-pos--e6721fc6ffd582f7ebed2d24.md) | 106 | `result-track:e6721fc6ffd582f7ebed2d244e14ecb9cbb75dacb6c5de0fae04dfb73a427c1d` |
| 5 | `theorem` | [covolume_comap](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/covolume-comap--9da43df3dd97990c1a1f2126.md) | 110 | `result-track:9da43df3dd97990c1a1f21268099eaddaac3e736d7383ce6d870c09bf30c6fd5` |
| 6 | `theorem` | [covolume_eq_det_mul_measureReal](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/covolume-eq-det-mul-measurereal--2f2d95f142238491c3f9d3dd.md) | 123 | `result-track:2f2d95f142238491c3f9d3dd4a79c1e89a56fbcbd42654c764b4390fa494bd90` |
| 7 | `theorem` | [covolume_eq_det](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/covolume-eq-det--717426ef56090321150af0b0.md) | 133 | `result-track:717426ef56090321150af0b0f0229055c52af963f0b23f1b667bf223be3275b6` |
| 8 | `theorem` | [covolume_eq_det_inv](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/covolume-eq-det-inv--016a9629611b2c9ee6c9294b.md) | 142 | `result-track:016a9629611b2c9ee6c9294ba15e8e74d23a8bbf300c689063cc392f97f2f5c6` |
| 9 | `theorem` | [covolume_div_covolume_eq_relIndex](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/covolume-div-covolume-eq-relindex--fb610468a8ca53dea4623d51.md) | 156 | `result-track:fb610468a8ca53dea4623d513df913ea2865cb5ad92253180b1211d766c57e31` |
| 10 | `theorem` | [covolume_div_covolume_eq_relIndex'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/covolume-div-covolume-eq-relindex--0209f3dbef325df8c3e2ed12.md) | 178 | `result-track:0209f3dbef325df8c3e2ed12ecf190dc1e415baeffaf460ea3c4e64741b78a56` |
| 11 | `theorem` | [volume_image_eq_volume_div_covolume](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/volume-image-eq-volume-div-covolume--6d24d19b58f310657439fa73.md) | 193 | `result-track:6d24d19b58f310657439fa73b1b8aab066517841345956ca610d0da1075105ce` |
| 12 | `theorem` | [volume_image_eq_volume_div_covolume'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/volume-image-eq-volume-div-covolume--ef7ea6d388850389be956fb6.md) | 203 | `result-track:ef7ea6d388850389be956fb627f910be777f39090306757752fc96db45e13ea3` |
| 13 | `theorem` | [tendsto_card_div_pow''](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/tendsto-card-div-pow--ffa00f9a5ae207249931b4f3.md) | 238 | `result-track:ffa00f9a5ae207249931b4f3827936e2aeb53354fe20785b1dcb3d12794fc3b3` |
| 14 | `theorem` | [tendsto_card_le_div''_aux](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/tendsto-card-le-div-aux--7c3a6eb8d69695c9b6fc1b8f.md) | 257 | `result-track:7c3a6eb8d69695c9b6fc1b8feccf7c2f6cc9706e0cbfbd9edb5e02cfc3407ea3` |
| 15 | `theorem` | [tendsto_card_le_div''](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/tendsto-card-le-div--ed11c3df79fd92802bffbc29.md) | 268 | `result-track:ed11c3df79fd92802bffbc29181be37aff41701a6482101545efb5165d8185c4` |
| 16 | `theorem` | [frontier_equivFun](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/frontier-equivfun--0618ae92b072369e2c2a2715.md) | 315 | `result-track:0618ae92b072369e2c2a2715f7c1507f866340aa859c09dcc64d2a3133c75fb5` |
| 17 | `theorem` | [tendsto_card_div_pow](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/tendsto-card-div-pow--795166e1f782d27106b174e1.md) | 325 | `result-track:795166e1f782d27106b174e1f2fc197eb1836b38b1181455a15d52eda29074f9` |
| 18 | `theorem` | [tendsto_card_le_div](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/tendsto-card-le-div--de1502a331e1d842a1476010.md) | 335 | `result-track:de1502a331e1d842a147601032dded6a955d4f49ef52253bf8640349132dbb6b` |
| 19 | `theorem` | [tendsto_card_div_pow'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/tendsto-card-div-pow--5ab2287fb868c77d978aaa4e.md) | 366 | `result-track:5ab2287fb868c77d978aaa4ea52453dbe05232485f406d1db76e13db442eac90` |
| 20 | `theorem` | [tendsto_card_le_div'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/declarations/tendsto-card-le-div--e76b1cb4599dd35345809619.md) | 381 | `result-track:e76b1cb4599dd353458096195c4dfe64963309be687949c88b8a91b2aa73eb8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
