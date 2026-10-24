# Verification target: GRWTSK.Topology.GeneralTopology.Equiv.Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b166675c3471ebe57a567bcc3a297d9b77ea1119",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b166675c3471ebe57a567bcc3a297d9b77ea1119`.

Source path: `GRWTSK/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/continuousalgequiv--494fa50df0ca895a94f616bd.md) | 40 | `declaration-track:494fa50df0ca895a94f616bd2bc469d86fab6292d4db300ca29f67044396abe3` |
| 2 | `class` | [ContinuousAlgEquivClass](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/continuousalgequivclass--b428b7c842bfdcccc00d4456.md) | 54 | `declaration-track:b428b7c842bfdcccc00d4456c8550ffd22860a6eb6910f2ef64c8877f61e803f` |
| 3 | `def` | [toContinuousAlgHom](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/tocontinuousalghom--398e44a609ec7ee6026271a1.md) | 69 | `declaration-track:398e44a609ec7ee6026271a1bfd183416f836300b8d942cce66e9a2bef7885f0` |
| 4 | `instance` | [coe](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/coe--a56a0f59c00a3f6680cba9d6.md) | 73 | `declaration-track:a56a0f59c00a3f6680cba9d69b3851830f32e322af53d14888a285e0e5e5622f` |
| 5 | `instance` | [equivLike](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/equivlike--3082eef882ca1b334684fdef.md) | 75 | `declaration-track:3082eef882ca1b334684fdef4c4ca58d8011ae0cfffe58ca9676be4815d7bebb` |
| 6 | `instance` | [continuousAlgEquivClass](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/continuousalgequivclass--95b00c1e12c58a6dce20e4e1.md) | 87 | `declaration-track:95b00c1e12c58a6dce20e4e13cbef70e05a0bc7542424878bd9af16387bff103` |
| 7 | `theorem` | [coe_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/coe-apply--3e91b7fbf7157efb130c6519.md) | 94 | `result-track:3e91b7fbf7157efb130c651922c6afe40a97a713a103b5ff49786874eede562e` |
| 8 | `theorem` | [coe_coe](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/coe-coe--a9f72467cfb2b15f87824eb0.md) | 97 | `result-track:a9f72467cfb2b15f87824eb0f13a0a4330849f875c7c223f75765f29234fe927` |
| 9 | `theorem` | [toAlgEquiv_injective](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/toalgequiv-injective--af58b48f627bde595a961b1c.md) | 99 | `result-track:af58b48f627bde595a961b1c45d11b0cdb38d47e40a643b1bc4ac05ca97ad6f0` |
| 10 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/ext--e4f16cf3a9edc911429d57e8.md) | 104 | `result-track:e4f16cf3a9edc911429d57e8d073506af5bbc1dbaaf95aad04680eabc9537574` |
| 11 | `theorem` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/coe-injective--5a7ed7521329407480c8b447.md) | 107 | `result-track:5a7ed7521329407480c8b44776cbff5450e4473f5728e05e38dafaee8b2b07b7` |
| 12 | `theorem` | [coe_inj](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/coe-inj--1c5430314c1524c05f017eb7.md) | 111 | `result-track:1c5430314c1524c05f017eb7e32e5d89c92eee602092dc44d8e1363c396ee525` |
| 13 | `theorem` | [coe_toAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/coe-toalgequiv--0ad9345b423d3ea6e444f4ea.md) | 115 | `result-track:0ad9345b423d3ea6e444f4eaaead35bbf897e5b85a6361441691c6f3520d4369` |
| 14 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/isopenmap--47b78b23fd1246b40bbacb6e.md) | 117 | `result-track:47b78b23fd1246b40bbacb6e91a69cbce5654a08d7ee0f33ac121397bcbfdfd4` |
| 15 | `theorem` | [image_closure](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/image-closure--18d487069a76ce9818d425a0.md) | 120 | `result-track:18d487069a76ce9818d425a05caae017b91db155f8a0aab665aa136888bcba2c` |
| 16 | `theorem` | [preimage_closure](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/preimage-closure--b58a1da11b0bd50451c6b9d2.md) | 123 | `result-track:b58a1da11b0bd50451c6b9d204f2755744e165e4f6fa75d6245e53f612da00b1` |
| 17 | `theorem` | [isClosed_image](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/isclosed-image--cd835eaf2c8fb6928dcd9f98.md) | 127 | `result-track:cd835eaf2c8fb6928dcd9f985953040a9c92f04717404bb96424644bfae517c0` |
| 18 | `theorem` | [map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/map-nhds-eq--6cc260b5407a9c1ad32d7798.md) | 130 | `result-track:6cc260b5407a9c1ad32d77982ae0baea88e2500875ef7a209dc237f65de20986` |
| 19 | `theorem` | [map_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/map-eq-zero-iff--e32e0a28e9f55706115ca559.md) | 133 | `result-track:e32e0a28e9f55706115ca559c0ba0481f46a4b5f76476c8518fb91507a9c7a9c` |
| 20 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/continuous--377c56393a6894df2621f10d.md) | 140 | `result-track:377c56393a6894df2621f10dbb39b6e817d94795ed0490d5feea2697764f6712` |
| 21 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/continuouson--d78ad3515148e2040b1ee378.md) | 142 | `result-track:d78ad3515148e2040b1ee378bf2d28c11c5ef3ff2c28b3dcec50da91cf42c32c` |
| 22 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/continuousat--25614d2016ed54ead3948dc6.md) | 145 | `result-track:25614d2016ed54ead3948dc6e2d73125ab7a3a5beaa8a4c15a19fce635d0ee3b` |
| 23 | `theorem` | [continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/continuouswithinat--6ea2c0e3ae5363a6a15f1b5d.md) | 148 | `result-track:6ea2c0e3ae5363a6a15f1b5d0245f6cfacd3cfbaa2abc2528b563d0494c337b1` |
| 24 | `theorem` | [comp_continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/comp-continuous-iff--ca7e223b3c0d24dbfd1f6d31.md) | 152 | `result-track:ca7e223b3c0d24dbfd1f6d314e8e78de1b85c0866cb5f8593b118721b98c724f` |
| 25 | `theorem` | [comp_continuous_iff'](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/comp-continuous-iff--6ee3b204a04f221e9857a4a3.md) | 156 | `result-track:6ee3b204a04f221e9857a4a37ce0c22b18a52c5090699b6b0627dd5be1523aee` |
| 26 | `def` | [refl](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/refl--64beafbda3faceb2e170601d.md) | 164 | `declaration-track:64beafbda3faceb2e170601da0d08cb4c16cc345b6947ceb32a50c135d9fc71f` |
| 27 | `theorem` | [refl_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/refl-apply--873ea72d70e0f7091a1b4a90.md) | 170 | `result-track:873ea72d70e0f7091a1b4a903291f1358ef005d7d9a0d78e5fa62406237f91d0` |
| 28 | `theorem` | [coe_refl](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/coe-refl--f34db750d8ba95ac403432bc.md) | 173 | `result-track:f34db750d8ba95ac403432bcd29e6e6b044f5ac4dd942daf8fa398afe495f8be` |
| 29 | `theorem` | [coe_refl'](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/coe-refl--2e903a4b710e8406df0d4b2d.md) | 176 | `result-track:2e903a4b710e8406df0d4b2d91e0ba3a2f85e463e05275718b65d50fa5a6234e` |
| 30 | `def` | [symm](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm--a94ac61153d0bb8cf78e583b.md) | 182 | `declaration-track:a94ac61153d0bb8cf78e583b43f8cfa500d03781d6897a02139418c938240482` |
| 31 | `theorem` | [apply_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/apply-symm-apply--9b8381b4aedad63d8c514b78.md) | 188 | `result-track:9b8381b4aedad63d8c514b780900235fd8912608e0696117efb49855f983e277` |
| 32 | `theorem` | [symm_apply_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-apply-apply--692001e53e8b58bf85360825.md) | 192 | `result-track:692001e53e8b58bf8536082521ce2d3a614af66b688c16cc2f3aab01c0a7f5ef` |
| 33 | `theorem` | [symm_image_image](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-image-image--27efc9ab2975d6eea570119f.md) | 196 | `result-track:27efc9ab2975d6eea570119f7292f8cdc45fb9febbc1b8054225e79e3862312f` |
| 34 | `theorem` | [image_symm_image](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/image-symm-image--04ab279456fdb77fb2dc3e62.md) | 200 | `result-track:04ab279456fdb77fb2dc3e6219baadaebe84f12bf757c41274a6adacbbef0198` |
| 35 | `theorem` | [symm_toAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-toalgequiv--dacd41e2f133403d40a9b496.md) | 204 | `result-track:dacd41e2f133403d40a9b49666869f3da4d90167ed1034c26a9568a4a37e3031` |
| 36 | `theorem` | [symm_toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-tohomeomorph--427c6b6ad5e52f1fb03bcc6f.md) | 207 | `result-track:427c6b6ad5e52f1fb03bcc6f1c5f2eb775fe73b1bffd7bc7d768b9166db01621` |
| 37 | `theorem` | [symm_map_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-map-nhds-eq--f37fca0a6b34dbbe34ff8137.md) | 209 | `result-track:f37fca0a6b34dbbe34ff8137c51f2d0388f5d3aa4f0d8dcaa4ddde6c66274509` |
| 38 | `def` | [trans](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/trans--f392b1886a06181057234a13.md) | 214 | `declaration-track:f392b1886a06181057234a130b78a441fde19dfcdfea04479df217ab4a671295` |
| 39 | `theorem` | [trans_toAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/trans-toalgequiv--401d17eeb5750fa686b1b244.md) | 220 | `result-track:401d17eeb5750fa686b1b244300902722dfe4f344a5bbb484792dcfad17cacf4` |
| 40 | `theorem` | [trans_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/trans-apply--56384a85bb837af15a10d043.md) | 225 | `result-track:56384a85bb837af15a10d0435f3db05fb6d4bcea72ca6557177b46604455b56e` |
| 41 | `theorem` | [symm_trans_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-trans-apply--39c7b09e8769b9e620cc44b3.md) | 230 | `result-track:39c7b09e8769b9e620cc44b3fe0a2b782d53168fa47a72d9cc423b4f5e6ee7a3` |
| 42 | `theorem` | [comp_coe](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/comp-coe--ffd682e222dc42c4d6c80ede.md) | 234 | `result-track:ffd682e222dc42c4d6c80edeca8ec1b9881c53560620d8e9d35a531fac605670` |
| 43 | `theorem` | [coe_comp_coe_symm](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/coe-comp-coe-symm--3bad8c01ed2fd34cc8f41b95.md) | 239 | `result-track:3bad8c01ed2fd34cc8f41b952b8e88e8b669f0a73566266befcc0e425844606e` |
| 44 | `theorem` | [coe_symm_comp_coe](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/coe-symm-comp-coe--164690ad826ccf480185fc70.md) | 244 | `result-track:164690ad826ccf480185fc704e332d98b8402c684d9eb6858f990999122b749b` |
| 45 | `theorem` | [symm_comp_self](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-comp-self--2219cfc72712cb380fb03f7b.md) | 249 | `result-track:2219cfc72712cb380fb03f7bc820fc84acd57d3fee589a7018152a08e34b694d` |
| 46 | `theorem` | [self_comp_symm](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/self-comp-symm--ea4fcd4554b865916383e072.md) | 253 | `result-track:ea4fcd4554b865916383e0724bf076b6c1dbbe406af4e4b38c101b6f261fe96b` |
| 47 | `theorem` | [symm_symm](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-symm--347f347fd9cae835b0ee8659.md) | 257 | `result-track:347f347fd9cae835b0ee86590a9601e5d9142ef7e0ecc08dc096f030b88760e3` |
| 48 | `theorem` | [symm_bijective](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-bijective--836285bfe13d9f0bb9e30680.md) | 259 | `result-track:836285bfe13d9f0bb9e30680f05221bc9aab6385ea31208912e4ce8c64690cb3` |
| 49 | `theorem` | [refl_symm](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/refl-symm--ebb61089638e9d73ab30bf6e.md) | 263 | `result-track:ebb61089638e9d73ab30bf6e16fd07508b0ed71280ea319b235297325cdb09d4` |
| 50 | `theorem` | [symm_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-symm-apply--c173cb56fc87caa0f2498339.md) | 265 | `result-track:c173cb56fc87caa0f2498339cecaca29a9cf151e02cc1a656bc27855fff07978` |
| 51 | `theorem` | [symm_apply_eq](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-apply-eq--ed3fa96a9591a378a76529f1.md) | 267 | `result-track:ed3fa96a9591a378a76529f1abd9e07a195e53a332dc59963a36aab1916c0677` |
| 52 | `theorem` | [eq_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/eq-symm-apply--338b691ae5bedc67e3d36223.md) | 270 | `result-track:338b691ae5bedc67e3d362237e287e6285d8acb9cf9ac8c546196c25f0f70c8a` |
| 53 | `theorem` | [image_eq_preimage](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/image-eq-preimage--95ffceb2049e11e1c791528d.md) | 273 | `result-track:95ffceb2049e11e1c791528d89bb58036f9fa83a0ac91d0f5cc728862ec963fe` |
| 54 | `theorem` | [image_symm_eq_preimage](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/image-symm-eq-preimage--c6909dda9e3c0ad72d58f2e1.md) | 276 | `result-track:c6909dda9e3c0ad72d58f2e1263bd9b88285689ee80b6de89942e38246d07552` |
| 55 | `theorem` | [symm_preimage_preimage](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/symm-preimage-preimage--896f520e4ffaaabacea48ac5.md) | 280 | `result-track:896f520e4ffaaabacea48ac523d108daf55f8591573821ab9186f3e71d75a8c2` |
| 56 | `theorem` | [preimage_symm_preimage](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/preimage-symm-preimage--40f0a7770a9a41f5b1671552.md) | 284 | `result-track:40f0a7770a9a41f5b16715523dddb80d6c285500f1df281b26f6b3a494fee5c0` |
| 57 | `theorem` | [isUniformEmbedding](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/isuniformembedding--f484a869472163a2f77209c2.md) | 287 | `result-track:f484a869472163a2f77209c253937b133a6f0584e2bbac2e7d9cc4a07831432a` |
| 58 | `theorem` | [_root_.AlgEquiv.isUniformEmbedding](../../../../../mathematics/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/declarations/root-algequiv-isuniformembedding--c8beacf72f39253b0aa6e3f3.md) | 293 | `result-track:c8beacf72f39253b0aa6e3f384ff8d41aa463dd8ff9a171a2df395267d433632` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
