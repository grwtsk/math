# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abdd26db143765728ce144fffe186119bdb7f0a3",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abdd26db143765728ce144fffe186119bdb7f0a3`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Invertible](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertible--20f8ad45293a233a22eeb0ea.md) | 83 | `declaration-track:20f8ad45293a233a22eeb0ea818785033dea53d0dadc2ef5afeedddde5e3ffbd` |
| 2 | `theorem` | [invOf_mul_self'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-mul-self--af8340f1c39f8f2dd120ca9b.md) | 96 | `result-track:af8340f1c39f8f2dd120ca9b284c3de7620755fc8d40f8e42edc61aa622ead75` |
| 3 | `theorem` | [invOf_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-mul-self--19fbe542c9bb9ba907ccb281.md) | 99 | `result-track:19fbe542c9bb9ba907ccb281e9871365e6f8e2b0126b60e91ee729d4dd50692a` |
| 4 | `theorem` | [mul_invOf_self'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-invof-self--df58a36cf2ba20033b1c778e.md) | 102 | `result-track:df58a36cf2ba20033b1c778eef24fef7e03cf5ab6076ccba1162c55b9b67d535` |
| 5 | `theorem` | [mul_invOf_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-invof-self--ce505e62df7458901817c653.md) | 105 | `result-track:ce505e62df7458901817c653f56a54a789b72a60f0a81e2f855e0e9003c30845` |
| 6 | `theorem` | [invOf_mul_cancel_left'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-mul-cancel-left--1c0229215cbb8d9cffe0a7ca.md) | 108 | `result-track:1c0229215cbb8d9cffe0a7ca3b8ac11ad07f023f0225520c57354375ae89b931` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/example--411147339df0f97c9266a937.md) | 110 | `declaration-track:411147339df0f97c9266a93708fb8c39a7f3d970f130b70a6582cd6e128a6d77` |
| 8 | `theorem` | [invOf_mul_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-mul-cancel-left--2da66743bd86835465e06f37.md) | 112 | `result-track:2da66743bd86835465e06f37f1c441d96218b680d6f83268eb0d9804b0124de9` |
| 9 | `theorem` | [mul_invOf_cancel_left'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-invof-cancel-left--8cd38e51ba87cc425302b242.md) | 116 | `result-track:8cd38e51ba87cc425302b2423137db4bb5a65f358201a10462daf30d4ef866b6` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/example--9c8be60e1ee3972222dcc8d1.md) | 118 | `declaration-track:9c8be60e1ee3972222dcc8d180f604862e3852b317036eb9876db272840ffc01` |
| 11 | `theorem` | [mul_invOf_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-invof-cancel-left--647f3b39b2c7e50f073f0a8d.md) | 120 | `result-track:647f3b39b2c7e50f073f0a8db5e11225bea47c02626ac43674394f0387355a33` |
| 12 | `theorem` | [invOf_mul_cancel_right'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-mul-cancel-right--4b9f810963051d28449681fd.md) | 124 | `result-track:4b9f810963051d28449681fd1892082731b20e119f6d468c4af0e5c9e070af77` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/example--5f618584de318fc93e436e9d.md) | 126 | `declaration-track:5f618584de318fc93e436e9d6a379080ef2a5958c96759cc04fda2a76038a31d` |
| 14 | `theorem` | [invOf_mul_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-mul-cancel-right--bf2336e97c3fd7dafe9c6b44.md) | 128 | `result-track:bf2336e97c3fd7dafe9c6b4451d7ef829c9d6d0d479d30f6a7b22ef86e87f492` |
| 15 | `theorem` | [mul_invOf_cancel_right'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-invof-cancel-right--d16870b32751b41ede4dd6e0.md) | 132 | `result-track:d16870b32751b41ede4dd6e084520f9dee818526b91b7b94c1411a5a92d2d226` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/example--f35489c713725b58b896400f.md) | 134 | `declaration-track:f35489c713725b58b896400f7ac3637a80d9ece0bd6d9a2245749bd4af118060` |
| 17 | `theorem` | [mul_invOf_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-invof-cancel-right--069c6828a0670ca2240dd592.md) | 136 | `result-track:069c6828a0670ca2240dd5921d3be6efb03fa0c677a3dd815453c69efd0e5cd5` |
| 18 | `theorem` | [invOf_eq_right_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-eq-right-inv--216ee58456e6ee123c4d66f3.md) | 139 | `result-track:216ee58456e6ee123c4d66f3859911c0118badf182312c71a8a85d3922e3adcb` |
| 19 | `theorem` | [invOf_eq_left_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-eq-left-inv--e03b9bc1aa724a0b928d4ecc.md) | 142 | `result-track:e03b9bc1aa724a0b928d4eccfd39f1fedc07d804ce6fb649ef743c62eb616806` |
| 20 | `theorem` | [invertible_unique](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertible-unique--1422319ba3a9d2ce11509882.md) | 145 | `result-track:1422319ba3a9d2ce115098824b931b8af5a4b7b9ec74fd63b3d34cb25d09a047` |
| 21 | `instance` | [Invertible.subsingleton](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertible-subsingleton--3fa575d0afceac1774581919.md) | 150 | `declaration-track:3fa575d0afceac1774581919d18802a251e6e74d5e0b816284a980aec489bba4` |
| 22 | `theorem` | [Invertible.congr](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertible-congr--174b3c8c6521830195d9fec0.md) | 157 | `result-track:174b3c8c6521830195d9fec01c3cc842598214e1659138f3f38e4e761a1846da` |
| 23 | `def` | [Invertible.copy'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertible-copy--549e572c11ae916fb8a8e8f4.md) | 161 | `declaration-track:549e572c11ae916fb8a8e8f444636cf4f1c44cbb0455629a6a0ab3c5ad64e303` |
| 24 | `abbrev` | [Invertible.copy](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertible-copy--2221a1c2f5e76b5c66d81c95.md) | 168 | `declaration-track:2221a1c2f5e76b5c66d81c95f156fcb03e12fece7a107624dadd40a50a44ad99` |
| 25 | `def` | [invertibleOfGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertibleofgroup--0f7481c91876974855279745.md) | 173 | `declaration-track:0f7481c91876974855279745e66b42333dac9d0d8c5b480a9223e4c3724f2a59` |
| 26 | `theorem` | [invOf_eq_group_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-eq-group-inv--9082f457ff812f18732494c9.md) | 177 | `result-track:9082f457ff812f18732494c9550597ad161f484d438d955f294a2dbeadcc2efe` |
| 27 | `def` | [invertibleOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertibleone--1267e65003b2f9afd84755f0.md) | 181 | `declaration-track:1267e65003b2f9afd84755f0fb7da238de60d8210a484200386b55fcf8c6dc7e` |
| 28 | `theorem` | [invOf_one'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-one--6f153d5d42b98e51ea643a30.md) | 185 | `result-track:6f153d5d42b98e51ea643a30ac0c48d66ef7552e5289e77110a13c0bac4a9383` |
| 29 | `theorem` | [invOf_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-one--d5e6f28a21775f2b75dd4695.md) | 188 | `result-track:d5e6f28a21775f2b75dd46958340b14fe67733073ea34c544b007fe30aa51f4a` |
| 30 | `instance` | [invertibleInvOf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertibleinvof--ca799368d293e146591f8ae5.md) | 191 | `declaration-track:ca799368d293e146591f8ae5a65b14731722f6af65994dc9f011a28e828e88e7` |
| 31 | `theorem` | [invOf_invOf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-invof--541c47687a19462646ed0192.md) | 195 | `result-track:541c47687a19462646ed019285c7c1bc7e39204b7d41110307e1883202c5296e` |
| 32 | `theorem` | [invOf_inj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-inj--3c8faab402f0fe42c1dfa5cc.md) | 199 | `result-track:3c8faab402f0fe42c1dfa5cc22329ea855fab750fae6fb34cfaba349cc194458` |
| 33 | `def` | [invertibleMul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertiblemul--cd952c9384139e565e023f4d.md) | 203 | `declaration-track:cd952c9384139e565e023f4d1b8d240d74a2a4d2e3ad62c692296db1ad032b04` |
| 34 | `theorem` | [invOf_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-mul--c7db71dd49c547c6319fc320.md) | 207 | `result-track:c7db71dd49c547c6319fc32032bac3dee9be33ad47f256fdd7b096ab3a0d506d` |
| 35 | `abbrev` | [Invertible.mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invertible-mul--7730fe8c84ac78880c5c3627.md) | 212 | `declaration-track:7730fe8c84ac78880c5c3627543abd8c1ffe2aef61a0e52acef86757bc477506` |
| 36 | `theorem` | [mul_left_inj_of_invertible](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-left-inj-of-invertible--b2f447f26a37cb12bd4cdd10.md) | 220 | `result-track:b2f447f26a37cb12bd4cdd102ce6891e7e83fa7b7e5c1a4219c75cf53c025c45` |
| 37 | `theorem` | [mul_right_inj_of_invertible](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-right-inj-of-invertible--c5f30c7feb10774655c892b9.md) | 224 | `result-track:c5f30c7feb10774655c892b91ec50b8adb6e44dfe034b1bf49e317e9d7ca397b` |
| 38 | `theorem` | [invOf_mul_eq_iff_eq_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/invof-mul-eq-iff-eq-mul-left--6bb29e0d623654e3668d3112.md) | 227 | `result-track:6bb29e0d623654e3668d31121a93777a32547dc9de91dee688edff13afbddb3c` |
| 39 | `theorem` | [mul_left_eq_iff_eq_invOf_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-left-eq-iff-eq-invof-mul--0db151c3449c79d240f04cab.md) | 230 | `result-track:0db151c3449c79d240f04cabaa18682e014fc7a1da74e0ee6653b7825ab175f2` |
| 40 | `theorem` | [mul_invOf_eq_iff_eq_mul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-invof-eq-iff-eq-mul-right--c8ddd8ec90a68d8e95d22236.md) | 233 | `result-track:c8ddd8ec90a68d8e95d222368afb943b16e3fe46de5d918acb6da9159098e50b` |
| 41 | `theorem` | [mul_right_eq_iff_eq_mul_invOf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8e2fe2dd9ea8f614d46b70cb10e0fc7f28e11ffc24679fe41ae053623713ca22.lean/declarations/mul-right-eq-iff-eq-mul-invof--92074e23d5ec83c06004722c.md) | 236 | `result-track:92074e23d5ec83c06004722c3475931806bbab3a1eef4b9b0adc30098f9bbaea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
