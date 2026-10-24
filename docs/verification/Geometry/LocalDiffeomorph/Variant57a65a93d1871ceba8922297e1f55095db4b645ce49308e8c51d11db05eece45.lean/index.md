# Verification target: GRWTSK.Geometry.LocalDiffeomorph.Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2e98974713c04f90bde224c81ee6a3b23f652a2",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/index.md) · [Full source](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2e98974713c04f90bde224c81ee6a3b23f652a2`.

Source path: `GRWTSK/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Diffeomorph` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.IsLocalHomeomorph` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialDiffeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/partialdiffeomorph--d40d256143b88e7a35cafa46.md) | 73 | `declaration-track:d40d256143b88e7a35cafa46afffc570f65769e8e203a31b4105cac461deb7f0` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/instance--f0a0ddd6c4ac7c140aa155b3.md) | 82 | `declaration-track:f0a0ddd6c4ac7c140aa155b3916913734e5414862c3b0c6d2c53d7af28c83f5c` |
| 3 | `def` | [Diffeomorph.toPartialDiffeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/diffeomorph-topartialdiffeomorph--c64b6540bc4ab1116e0672ca.md) | 88 | `declaration-track:c64b6540bc4ab1116e0672cad8e3f373c16df7bf85c21cbeede81c86ba306e39` |
| 4 | `def` | [toPartialHomeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/topartialhomeomorph--ce9048f4e1991332eb7e48ef.md) | 101 | `declaration-track:ce9048f4e1991332eb7e48ef29564843dffc253b27f768d7351464a60ba12930` |
| 5 | `def` | [symm](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/symm--cf032fcd358f2751ea87b375.md) | 109 | `declaration-track:cf032fcd358f2751ea87b37515022f1eb5d96c011f311bb9bed02729571ebaad` |
| 6 | `theorem` | [contMDiffOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/contmdiffon--13053398395bd24e86d4f628.md) | 116 | `result-track:13053398395bd24e86d4f628ecd511bb4f43659039fb9a1456bde6645c35c6a0` |
| 7 | `theorem` | [mdifferentiableOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/mdifferentiableon--311ea9e8584b463319d2df7d.md) | 119 | `result-track:311ea9e8584b463319d2df7d73dc6e224e9a0fb23766f8d2cb5235ad7df914b2` |
| 8 | `theorem` | [mdifferentiableAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/mdifferentiableat--dfd0f4c441a5c5b93b1fbbeb.md) | 122 | `result-track:dfd0f4c441a5c5b93b1fbbeb10ae210ed6364629cdce40eaedd633d6129aba4b` |
| 9 | `def` | [IsLocalDiffeomorphAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorphat--e375948d76c25b75dc132ffd.md) | 137 | `declaration-track:e375948d76c25b75dc132ffd1291a428e31adff2b4d94aa33f39c337b53d05d2` |
| 10 | `lemma` | [PartialDiffeomorph.isLocalDiffeomorphAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/partialdiffeomorph-islocaldiffeomorphat--be9b1d030f86b45bdbda0316.md) | 140 | `result-track:be9b1d030f86b45bdbda0316f62a9b5eb6654f7050e094433c52c875adcf750f` |
| 11 | `def` | [localInverse](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse--0758313424b012b4b715c4c5.md) | 151 | `declaration-track:0758313424b012b4b715c4c5d175cf663898c29614b326052c831e04d1a67f0f` |
| 12 | `lemma` | [localInverse_open_source](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-open-source--190739b3deeb891e12293617.md) | 154 | `result-track:190739b3deeb891e1229361766c92ae0025006e2c970cbf6194cc95ba57d7aa0` |
| 13 | `lemma` | [localInverse_mem_source](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-mem-source--7ef75adb34ab498ca322cda1.md) | 158 | `result-track:7ef75adb34ab498ca322cda12fe4a7b3b9a3a8dfd62e2f420fe1fb8e67701ac9` |
| 14 | `lemma` | [localInverse_mem_target](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-mem-target--d76113f80c958b236b7a209a.md) | 163 | `result-track:d76113f80c958b236b7a209a05eb7bcbdfe512a6e5be2d7a8c7cda8e335d75b2` |
| 15 | `lemma` | [contmdiffOn_localInverse](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/contmdiffon-localinverse--8c2eff087c05da3db11e8614.md) | 167 | `result-track:8c2eff087c05da3db11e86142d8a0f73b2b418b9c360e1828197893eeddf212b` |
| 16 | `lemma` | [localInverse_right_inv](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-right-inv--c578e67236b8d32cbb335d28.md) | 171 | `result-track:c578e67236b8d32cbb335d28edf458e0c288affb4ffaaf84b0a193e334fa04b1` |
| 17 | `lemma` | [localInverse_eqOn_right](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-eqon-right--38725ac0ee99f63e81dac35d.md) | 179 | `result-track:38725ac0ee99f63e81dac35d869ef08313b0717ce46a87ce744700255cbdb3c4` |
| 18 | `lemma` | [localInverse_eventuallyEq_right](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-eventuallyeq-right--b14ba0c1635bca8049f43b88.md) | 183 | `result-track:b14ba0c1635bca8049f43b880a871414e74fd25c888d8c8689194c991252d38f` |
| 19 | `lemma` | [localInverse_left_inv](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-left-inv--07d77c335989dbe5a02920b4.md) | 189 | `result-track:07d77c335989dbe5a02920b4d9dbaa0d59313df7fda8dc087617bcfdb30c1c79` |
| 20 | `lemma` | [localInverse_eqOn_left](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-eqon-left--6fa5a0b828060017dca0058d.md) | 194 | `result-track:6fa5a0b828060017dca0058d396e7e36a3eb961ae6eaccc523d3e8d7def83c8d` |
| 21 | `lemma` | [localInverse_eventuallyEq_left](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-eventuallyeq-left--0edfaee615176581425e7746.md) | 198 | `result-track:0edfaee615176581425e7746935ff060e036b1d1d8ad18525f2bb1f1534aa125` |
| 22 | `lemma` | [localInverse_isLocalDiffeomorphAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-islocaldiffeomorphat--85977f8414014a86503fd9c1.md) | 203 | `result-track:85977f8414014a86503fd9c11a3c2fa733494d5f55f297646351a0b91857d207` |
| 23 | `lemma` | [localInverse_contMDiffOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-contmdiffon--92163edc67fd3accaf927852.md) | 207 | `result-track:92163edc67fd3accaf927852d6c34b4b244e9d79fe7eee758e1869cb7c6048dc` |
| 24 | `lemma` | [localInverse_contMDiffAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-contmdiffat--9c8aaaae2fd84d4751dd761f.md) | 211 | `result-track:9c8aaaae2fd84d4751dd761fa99fbd6e1828086c44864acd7e0bdc250cf23e5b` |
| 25 | `lemma` | [localInverse_mdifferentiableAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/localinverse-mdifferentiableat--c7fba0b4a156fb698b9064e2.md) | 216 | `result-track:c7fba0b4a156fb698b9064e2554b3aa766ac3e9af3bc53aecf530845e0094c6d` |
| 26 | `def` | [IsLocalDiffeomorphOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorphon--2714ec773a03b4ab9b12ae71.md) | 224 | `declaration-track:2714ec773a03b4ab9b12ae7160da88d35489e98fa5f8a118ec3c7ca279bee05f` |
| 27 | `def` | [IsLocalDiffeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph--c527c1ee866f5a54e6e0001b.md) | 229 | `declaration-track:c527c1ee866f5a54e6e0001b30e4238966504fb08c8e3d2ef291a2ccd170bd78` |
| 28 | `lemma` | [isLocalDiffeomorphOn_iff](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorphon-iff--0a4f65d4e3efd445e2c43420.md) | 233 | `result-track:0a4f65d4e3efd445e2c43420ce990639dea16e9b6a3a08c711f06b1c8c60b50f` |
| 29 | `lemma` | [isLocalDiffeomorph_iff](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-iff--4d08ecd6cc20b9c833571727.md) | 237 | `result-track:4d08ecd6cc20b9c833571727423817379c138bce790a3eb7e23f12b743538495` |
| 30 | `theorem` | [isLocalDiffeomorph_iff_isLocalDiffeomorphOn_univ](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-iff-islocaldiffeomorphon-univ--5994e144d08ec795485049bd.md) | 241 | `result-track:5994e144d08ec795485049bd5bec2c0d1d1937d42ae325d5568b1a0bf3085188` |
| 31 | `lemma` | [IsLocalDiffeomorph.isLocalDiffeomorphOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-islocaldiffeomorphon--dc25b922415ababe1f8d8616.md) | 246 | `result-track:dc25b922415ababe1f8d86167de1098fa3950b5f513e4fdcaa803f5713cd94fe` |
| 32 | `lemma` | [IsLocalDiffeomorphAt.contMDiffAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorphat-contmdiffat--6f18dd23af0c037e8cd47b7d.md) | 256 | `result-track:6f18dd23af0c037e8cd47b7d4ab3294febc7a8307715c2ec8c8cfc1cc066be5c` |
| 33 | `lemma` | [IsLocalDiffeomorphAt.mdifferentiableAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorphat-mdifferentiableat--ef4c82a4eb96d05000d625b8.md) | 263 | `result-track:ef4c82a4eb96d05000d625b8895f39c07d58edae4637e559c42f874c8607bafc` |
| 34 | `lemma` | [IsLocalDiffeomorphOn.contMDiffOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorphon-contmdiffon--44df8fbce3285e968e23ebb4.md) | 268 | `result-track:44df8fbce3285e968e23ebb40908a8a7fad8616fa8334d7cee2ab92965f3df3c` |
| 35 | `lemma` | [IsLocalDiffeomorphOn.mdifferentiableOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorphon-mdifferentiableon--25d69ad33bf2e46162436a0a.md) | 273 | `result-track:25d69ad33bf2e46162436a0acb294beff50f373fd7ee98d836224ea5890b698b` |
| 36 | `lemma` | [IsLocalDiffeomorph.contMDiff](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-contmdiff--071294055c7e4ee68b19b5ac.md) | 278 | `result-track:071294055c7e4ee68b19b5acf5253ac69e0cd24cc9160a9a6aac3a8f6e252b4d` |
| 37 | `lemma` | [IsLocalDiffeomorph.mdifferentiable](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-mdifferentiable--f9d80b5c784339789ef180a4.md) | 282 | `result-track:f9d80b5c784339789ef180a4e072049226653414a396c238e60219580267e9be` |
| 38 | `lemma` | [Diffeomorph.isLocalDiffeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/diffeomorph-islocaldiffeomorph--d39326175dc16cd0215739aa.md) | 287 | `result-track:d39326175dc16cd0215739aae029ec943f14c0f80089961c69702d0a55657ba5` |
| 39 | `theorem` | [IsLocalDiffeomorphOn.isLocalHomeomorphOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorphon-islocalhomeomorphon--0607578463ed132bff3fa080.md) | 293 | `result-track:0607578463ed132bff3fa08020a2c0457ee4a9e1b28da5a6305d6a39479ccd18` |
| 40 | `theorem` | [IsLocalDiffeomorph.isLocalHomeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-islocalhomeomorph--c063274704d2b58e59c40410.md) | 301 | `result-track:c063274704d2b58e59c4041047d0bbeff9689ed8c49b3233757df75127a49390` |
| 41 | `lemma` | [IsLocalDiffeomorph.isOpenMap](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-isopenmap--22c02bf6fdcfd20bda9328a0.md) | 308 | `result-track:22c02bf6fdcfd20bda9328a01402100452105b2b6f254da9b43ac232befd8e47` |
| 42 | `lemma` | [IsLocalDiffeomorph.isOpen_range](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-isopen-range--d6d1653288b2994fadba9f44.md) | 312 | `result-track:d6d1653288b2994fadba9f444643fe5c2e87314e6da51404d2ce001a883a5a86` |
| 43 | `def` | [IsLocalDiffeomorph.image](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-image--6f2d6d2142c182fa236a0843.md) | 316 | `declaration-track:6f2d6d2142c182fa236a08435087d1f737330c99a97ebbe67ffa2abadeff40c5` |
| 44 | `lemma` | [IsLocalDiffeomorph.image_coe](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-image-coe--ac90fd5bc06e96076da2d127.md) | 319 | `result-track:ac90fd5bc06e96076da2d12766db46a9d619a6d813781be062f4b0d69dba2ff8` |
| 45 | `def` | [IsLocalDiffeomorph.diffeomorph_of_bijective](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-diffeomorph-of-bijective--356ec06dadfb8129b35363a2.md) | 326 | `declaration-track:356ec06dadfb8129b35363a2fd6f62974ad99f61bf2509de74d55590b8984382` |
| 46 | `def` | [IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorphat-mfderivtocontinuouslinearequiv--9678ea95c77593dafef09372.md) | 367 | `declaration-track:9678ea95c77593dafef09372c2ccfee121d0b766039c7210d34367b135abab24` |
| 47 | `lemma` | [IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv_coe](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorphat-mfderivtocontinuouslinearequiv-coe--b5ca6dabb0d9c41b805be092.md) | 392 | `result-track:b5ca6dabb0d9c41b805be092edb1933b596c7c043ab8ad990fc1c733736a6220` |
| 48 | `def` | [Diffeomorph.mfderivToContinuousLinearEquiv](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/diffeomorph-mfderivtocontinuouslinearequiv--6316fdcdaf387a3290e99917.md) | 398 | `declaration-track:6316fdcdaf387a3290e99917dbd41a9d0fe8f67ac23c4cc0c07ea8509f6a3f40` |
| 49 | `lemma` | [Diffeomorph.mfderivToContinuousLinearEquiv_coe](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/diffeomorph-mfderivtocontinuouslinearequiv-coe--17b5806da7374f86b7d81299.md) | 403 | `result-track:17b5806da7374f86b7d81299343a7b47067c3bb43419596921d224b64e45ef8a` |
| 50 | `def` | [IsLocalDiffeomorph.mfderivToContinuousLinearEquiv](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-mfderivtocontinuouslinearequiv--4bac7d50cecbf437a1bbd547.md) | 408 | `declaration-track:4bac7d50cecbf437a1bbd54715ccc0067c76291213a30b5a73fe805338bd8cec` |
| 51 | `lemma` | [IsLocalDiffeomorph.mfderivToContinuousLinearEquiv_coe](../../../../mathematics/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/declarations/islocaldiffeomorph-mfderivtocontinuouslinearequiv-coe--d2bf02e9e12e92310b4a0fd4.md) | 413 | `result-track:d2bf02e9e12e92310b4a0fd4fb6ce6a52efac0102b1c80c4545e40a53220e2c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
