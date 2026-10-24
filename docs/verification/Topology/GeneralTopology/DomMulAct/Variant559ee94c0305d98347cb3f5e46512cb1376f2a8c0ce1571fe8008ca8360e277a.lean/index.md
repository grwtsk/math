# Verification target: GRWTSK.Topology.GeneralTopology.DomMulAct.Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c55308687d443d6a7a642b9eb13eb800c2110a4e",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c55308687d443d6a7a642b9eb13eb800c2110a4e`.

Source path: `GRWTSK/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/insttopologicalspace--7fbe78356af8d8c679b8d831.md) | 39 | `declaration-track:7fbe78356af8d8c679b8d831a6f1ea26e143604186dc6ce3543184df9a3cce15` |
| 2 | `theorem` | [continuous_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/continuous-mk--2760a5fda7bc6164c100c1d8.md) | 42 | `result-track:2760a5fda7bc6164c100c1d8c3bbcf4089c468bd7f14fbffefa80935d1b6a427` |
| 3 | `theorem` | [continuous_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/continuous-mk-symm--d813a4b5f921304654afc04d.md) | 45 | `result-track:d813a4b5f921304654afc04d1eb8c02a33e4457a488a7d0107e95d403110c966` |
| 4 | `def` | [mkHomeomorph](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/mkhomeomorph--d3533f7ec925d770208582e3.md) | 49 | `declaration-track:d3533f7ec925d770208582e33e842095671a8626bfdb0c7f07777b2f905a46bd` |
| 5 | `theorem` | [coe_mkHomeomorph](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/coe-mkhomeomorph--574c47ef33e76ead4a2ff16e.md) | 52 | `result-track:574c47ef33e76ead4a2ff16e32636a32056faed214a87d24912313c8de69fd60` |
| 6 | `theorem` | [coe_mkHomeomorph_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/coe-mkhomeomorph-symm--fe630c03fa8987b2223c3e0d.md) | 55 | `result-track:fe630c03fa8987b2223c3e0d7bf719b6af994971f5dc260894e7318a02836250` |
| 7 | `theorem` | [isInducing_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/isinducing-mk--71fef3c805bf69bc6c9104a9.md) | 57 | `result-track:71fef3c805bf69bc6c9104a94c408a673b9099eeb47340ec25a5e6018fd015b9` |
| 8 | `theorem` | [isEmbedding_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/isembedding-mk--86b1198a926140e03fed9b35.md) | 58 | `result-track:86b1198a926140e03fed9b358d9223f4d8cf539d3e0d236fb3b89cb98f975bee` |
| 9 | `theorem` | [isOpenEmbedding_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/isopenembedding-mk--ac508781235c4fd129d2afee.md) | 59 | `result-track:ac508781235c4fd129d2afee0210db7e91ebd03861e3a1dc218513f2dd58c677` |
| 10 | `theorem` | [isClosedEmbedding_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/isclosedembedding-mk--5a7eaf44ee1ddba9d41bb282.md) | 60 | `result-track:5a7eaf44ee1ddba9d41bb2825d653360ca5d5206e30bbbea5b5ba819034a2f82` |
| 11 | `theorem` | [isQuotientMap_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/isquotientmap-mk--c90779a7c53dec1574b49e9a.md) | 62 | `result-track:c90779a7c53dec1574b49e9a6b7f5f3e4cd749271804b93287482818a7207b0a` |
| 12 | `theorem` | [isInducing_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/isinducing-mk-symm--74baaadd5e679321fd5bc55e.md) | 72 | `result-track:74baaadd5e679321fd5bc55ec1c403391582e0b32e81c951aec0cfdd673216e1` |
| 13 | `theorem` | [isEmbedding_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/isembedding-mk-symm--d6a81336a7df9a22be58cee8.md) | 73 | `result-track:d6a81336a7df9a22be58cee80c2ecf510c5ba38790910ebe68a326c6db8b5dc2` |
| 14 | `theorem` | [isOpenEmbedding_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/isopenembedding-mk-symm--795406d18fb444ce650ad74d.md) | 82 | `result-track:795406d18fb444ce650ad74de65db2e0753824ea4821ad5965e2c54c13d78518` |
| 15 | `theorem` | [isClosedEmbedding_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/isclosedembedding-mk-symm--6b30eb301a698025da03662c.md) | 85 | `result-track:6b30eb301a698025da03662c5ba5a7b524c19c793ff37b486a797b446935aeb8` |
| 16 | `theorem` | [isQuotientMap_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/isquotientmap-mk-symm--9c2ddb0130feeb7e3914d610.md) | 89 | `result-track:9c2ddb0130feeb7e3914d610e4343ee4329de241426e10b69df82886b0e04ac0` |
| 17 | `instance` | [instT0Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instt0space--6ed059bf97638b94b599829e.md) | 94 | `declaration-track:6ed059bf97638b94b599829ec5e978837860716b781567e93f23810734e280f3` |
| 18 | `instance` | [instT1Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instt1space--0d05401fbdb4994474b255c2.md) | 95 | `declaration-track:0d05401fbdb4994474b255c2e3c104b112cf169e6b983764bfa688da5c17c1d6` |
| 19 | `instance` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instt2space--b59a41b15705d1ea2235412b.md) | 96 | `declaration-track:b59a41b15705d1ea2235412b26742159c3451267573d3fb53a747d696d2f00b4` |
| 20 | `instance` | [instT25Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instt25space--be170dc1d92a5840bd11db64.md) | 97 | `declaration-track:be170dc1d92a5840bd11db645676ac81231c2f3043ab6ed8c4d6aea7082a1e13` |
| 21 | `instance` | [instT3Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instt3space--ad277c29d5f353fffe508990.md) | 98 | `declaration-track:ad277c29d5f353fffe508990d2d6ef7e8b8ed54091d1e34f7eaf349a1caafe34` |
| 22 | `instance` | [instT4Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instt4space--41988e9cebb2542eb540982a.md) | 99 | `declaration-track:41988e9cebb2542eb540982a63771ad107a65418fcc838080f552600d03d8369` |
| 23 | `instance` | [instT5Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instt5space--7147b79be3c36411633aaf30.md) | 100 | `declaration-track:7147b79be3c36411633aaf30532b47c92c4386266c3dfe6b846235c4ecdcaca3` |
| 24 | `instance` | [instR0Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instr0space--589d32bf9d975c99deeabc53.md) | 102 | `declaration-track:589d32bf9d975c99deeabc53352d2229d4fff443c6bb3fca29550528e8facb92` |
| 25 | `instance` | [instR1Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instr1space--c53121666ab3a4d0411f0bee.md) | 103 | `declaration-track:c53121666ab3a4d0411f0beeae1923aebba20250fc3f21da491dc013334b7ee2` |
| 26 | `instance` | [instRegularSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instregularspace--2a9e03a2df277c740ac66c98.md) | 106 | `declaration-track:2a9e03a2df277c740ac66c98ab5ea8ca39e39a6872110a5386b7c14ac3f89531` |
| 27 | `instance` | [instNormalSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instnormalspace--545129d46734b3d3893bcda8.md) | 109 | `declaration-track:545129d46734b3d3893bcda8fe7f0b2602a9bec9487a1788aad4a0e4cb6fbedc` |
| 28 | `instance` | [instCompletelyNormalSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instcompletelynormalspace--6dcba96d9f34ae7833de9654.md) | 112 | `declaration-track:6dcba96d9f34ae7833de9654d131d179a28d5d1268875d5516d15ccf1a5e21ff` |
| 29 | `instance` | [instDiscreteTopology](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instdiscretetopology--bd03c511722037c73e902b72.md) | 116 | `declaration-track:bd03c511722037c73e902b72656a76a42d91eccbf8d1fbf9315f65727b08e4b3` |
| 30 | `instance` | [instSeparableSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instseparablespace--e99c92174dfaa699352345fd.md) | 120 | `declaration-track:e99c92174dfaa699352345fdf856720761a5d96d07fc791e04202eae9d663166` |
| 31 | `instance` | [instFirstCountableTopology](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instfirstcountabletopology--a44079382b42419706068d77.md) | 124 | `declaration-track:a44079382b42419706068d77aa3ba1be4af34b86e9591a55bd298e47a0cdffb6` |
| 32 | `instance` | [instSecondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instsecondcountabletopology--376ffb6baac479bce35cd62a.md) | 128 | `declaration-track:376ffb6baac479bce35cd62aa00637089f43c548962e859395999da055e54d59` |
| 33 | `instance` | [instCompactSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instcompactspace--f4f8cb9f3dea5479ef38bfcd.md) | 132 | `declaration-track:f4f8cb9f3dea5479ef38bfcdca1113244a138ded87a43441fa0d059dea1eeba9` |
| 34 | `instance` | [instLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instlocallycompactspace--c0eff70732ef041dbe921d98.md) | 136 | `declaration-track:c0eff70732ef041dbe921d9817d2fc34bbd23cf1479451e515fe70f5e30e13f3` |
| 35 | `instance` | [instWeaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/instweaklylocallycompactspace--3a62b0ea5c1fef192958a528.md) | 140 | `declaration-track:3a62b0ea5c1fef192958a5288d4afbf11716b3cf49286ebd33fb0fedecb0ec05` |
| 36 | `theorem` | [map_mk_nhds](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/map-mk-nhds--e69888ddcec798256ba9ba0c.md) | 145 | `result-track:e69888ddcec798256ba9ba0ccd7539a5562b44bfc8748f3a4f9d3efaa9841e96` |
| 37 | `theorem` | [map_mk_symm_nhds](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/map-mk-symm-nhds--7fb2def54d4578efd7fa0458.md) | 149 | `result-track:7fb2def54d4578efd7fa0458ecd4d2108afe8dd9415cfe01fdd157dcac72bc1e` |
| 38 | `theorem` | [comap_mk_nhds](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/comap-mk-nhds--eb0f3bf0287f6637598f6b04.md) | 153 | `result-track:eb0f3bf0287f6637598f6b041d9aa9cce5e2c9f7a601be690d90a1eaca74b30f` |
| 39 | `theorem` | [comap_mk.symm_nhds](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a.lean/declarations/comap-mk-symm-nhds--60ae0a8ad041e63212c39ad9.md) | 157 | `result-track:60ae0a8ad041e63212c39ad93fce333353339a3d1db94d97b729e0704cf7f93c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
