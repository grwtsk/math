# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79eb6b631475d941eb80b8b21e673f6a6ffa0702",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79eb6b631475d941eb80b8b21e673f6a6ffa0702`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean.json)

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
| 1 | `def` | [isLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/isleft--6853af72e87ad30c975ecebb.md) | 62 | `declaration-track:6853af72e87ad30c975ecebba73b738a02d93cbfcf0e56bbab540120c8a21d29` |
| 2 | `def` | [isRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/isright--eb04d88e62cdc0cfde7f72a4.md) | 67 | `declaration-track:eb04d88e62cdc0cfde7f72a46beb63f4cf40ab47006b65a20cf4c6bd2e9c453a` |
| 3 | `def` | [getLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/getleft--4cac27c24cb5f3c040ff3d86.md) | 72 | `declaration-track:4cac27c24cb5f3c040ff3d86ae289e24b7737ca5fd98e669c35c070769c6c7b8` |
| 4 | `def` | [getRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/getright--0ad9a5ade921f6c334bcacfd.md) | 76 | `declaration-track:0ad9a5ade921f6c334bcacfd61df5e72f048f04516327647514e76015fc7ee88` |
| 5 | `def` | [getLeft?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/getleft--09670177e72efe84ef94d43c.md) | 80 | `declaration-track:09670177e72efe84ef94d43c276d5b5a9710b33030790056362c26336485fac3` |
| 6 | `def` | [getRight?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/getright--b60296b390ad50b56879bdca.md) | 85 | `declaration-track:b60296b390ad50b56879bdcac8285130fec574ae52d61086a8939ae8ffd7b31e` |
| 7 | `theorem` | [isLeft_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/isleft-inl--db04c4045ac4673f070854a4.md) | 89 | `result-track:db04c4045ac4673f070854a418ca170d808931d23a34e1b8b3e5cf5856d54e66` |
| 8 | `theorem` | [isLeft_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/isleft-inr--aecc3db0f3b814ea879ebdfd.md) | 90 | `result-track:aecc3db0f3b814ea879ebdfd9780bf66a7ac0fb3fddc1b0d2c7b53f927bf26a9` |
| 9 | `theorem` | [isRight_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/isright-inl--a5464de20f8e22d370ea6e14.md) | 91 | `result-track:a5464de20f8e22d370ea6e142cddce6d07f1cc19b153de49d83bbe4bccb6e2a7` |
| 10 | `theorem` | [isRight_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/isright-inr--ec927c774816555201c07e94.md) | 92 | `result-track:ec927c774816555201c07e94b8c0cb904fe1ab00efa9311a678e1ae6fefd7320` |
| 11 | `theorem` | [getLeft_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/getleft-inl--9a0146c4c1d7848144c6e996.md) | 94 | `result-track:9a0146c4c1d7848144c6e9966d8f4e489c73866aa62665e52db2ff23960c80bf` |
| 12 | `theorem` | [getRight_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/getright-inr--81098b8b58fd2ac7ad36801a.md) | 95 | `result-track:81098b8b58fd2ac7ad36801a34247ff32fc86c2702af88db5a08a62235a718bc` |
| 13 | `theorem` | [getLeft?_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/getleft-inl--40947a62af526f76edc6849a.md) | 97 | `result-track:40947a62af526f76edc6849a6c37254c0ae160b31e6b5349d4e6fabe6e57fa47` |
| 14 | `theorem` | [getLeft?_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/getleft-inr--989265a5ab4c61b15a13b8a0.md) | 98 | `result-track:989265a5ab4c61b15a13b8a0971f09ba6f0979eff980887b456e710130422251` |
| 15 | `theorem` | [getRight?_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/getright-inl--0f4aa421fd05f3e34af4e035.md) | 99 | `result-track:0f4aa421fd05f3e34af4e0358fae17c2e73b426ca25a9a99feb6231412e51ae7` |
| 16 | `theorem` | [getRight?_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/getright-inr--e74f924bb58c7a6b3e65cf62.md) | 100 | `result-track:e74f924bb58c7a6b3e65cf62711af28fb2be030ccf018a0840bdd0cd16291153` |
| 17 | `def` | [elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/elim--58016867cdd7498fc2b861bf.md) | 108 | `declaration-track:58016867cdd7498fc2b861bfb47d5ceb693b0299865fee4be4a5593a37edf9f8` |
| 18 | `theorem` | [elim_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/elim-inl--425f2b2648f291e03f9854db.md) | 111 | `result-track:425f2b2648f291e03f9854db9411758a6fa06f1cc7f9f8c7d08f3dfdf9be4a2f` |
| 19 | `theorem` | [elim_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/elim-inr--58c686e9ca316efeef5e6e29.md) | 114 | `result-track:58c686e9ca316efeef5e6e29a8e3c51393097d4568154dd3d9d52ac62a38fda2` |
| 20 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/map--9136eb4a33ae9eac3fcf2a5a.md) | 122 | `declaration-track:9136eb4a33ae9eac3fcf2a5af185a50abb660a5c6ed52bcfac6b6a8326382b90` |
| 21 | `theorem` | [map_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/map-inl--84c88db043c65f571eca29a0.md) | 125 | `result-track:84c88db043c65f571eca29a0b90445c2060596f784582e38bb09afb2fddbc474` |
| 22 | `theorem` | [map_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/map-inr--5965ab8ef85adc288025d300.md) | 127 | `result-track:5965ab8ef85adc288025d3007af0eee77816aad196fd720acb6c10eea3472619` |
| 23 | `def` | [swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/swap--052e3d9dd2c13a274c60a084.md) | 134 | `declaration-track:052e3d9dd2c13a274c60a0846fac5e9961070221f6796477041a3005be36682e` |
| 24 | `theorem` | [swap_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/swap-inl--95f07a0385a29d7d1a7a561f.md) | 136 | `result-track:95f07a0385a29d7d1a7a561f0942264f51a5b66655d18b0476d0aaab268c6bce` |
| 25 | `theorem` | [swap_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/swap-inr--ee23e1adaed314ca3bd12573.md) | 138 | `result-track:ee23e1adaed314ca3bd125731ce9e0c7aebec78a3639c6db5a53f1f8b755ad17` |
| 26 | `inductive` | [LiftRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/liftrel--fbf04bfceb427d346016e130.md) | 144 | `declaration-track:fbf04bfceb427d346016e130ac3fdfdcd757e063f385b9d7b534deac423d39ca` |
| 27 | `theorem` | [liftRel_inl_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/liftrel-inl-inl--bb08ec0381ededb2d903d96d.md) | 150 | `result-track:bb08ec0381ededb2d903d96d5eba3af424c55837409a3e8234e12cbae28c352a` |
| 28 | `theorem` | [not_liftRel_inl_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/not-liftrel-inl-inr--210252b148c34464f1eb88b9.md) | 153 | `result-track:210252b148c34464f1eb88b965a8169390fe55b8f688b0726ee3aab969e38b91` |
| 29 | `theorem` | [not_liftRel_inr_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/not-liftrel-inr-inl--dc816de0c6c8a520a0a653b0.md) | 155 | `result-track:dc816de0c6c8a520a0a653b0be8d851578a64f6acc7cbc926a4adcc5786998ff` |
| 30 | `theorem` | [liftRel_inr_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/liftrel-inr-inr--71d90298b3d944b6f98ada44.md) | 157 | `result-track:71d90298b3d944b6f98ada44926f4df99970eda1c993717e9a27819bd0802f37` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/instance--0713194a7d7961ee51659ee1.md) | 160 | `declaration-track:0713194a7d7961ee51659ee1578793ee1ee6f0dd7bee96ab90a94a5b7d251f6f` |
| 32 | `inductive` | [Lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/lex--3e2eebc77fa76cea1cb76f6c.md) | 174 | `declaration-track:3e2eebc77fa76cea1cb76f6cba0c7f039a62ba976c5af5e106f35f6cca1aabf4` |
| 33 | `theorem` | [lex_inl_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/lex-inl-inl--e18f58dc82dcd570a294b967.md) | 184 | `result-track:e18f58dc82dcd570a294b96773ea2fdf28638597a129e8aeee35aa1d97200420` |
| 34 | `theorem` | [lex_inr_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/lex-inr-inr--11b2d46c10e791cdf857cda5.md) | 187 | `result-track:11b2d46c10e791cdf857cda5a67a3a24439d6bb95ef72c97742f57a43e8859c9` |
| 35 | `theorem` | [lex_inr_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/lex-inr-inl--1ebdd10981ec6e77900ba4a6.md) | 190 | `result-track:1ebdd10981ec6e77900ba4a63e70fe44a097f038a5e50d321e14e4a7eb2704f8` |
| 36 | `instance` | [instDecidableRelSumLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0c7a496bca8390be905a845c427ef78c665424a9efccb3164fe83f3f2adcf614.lean/declarations/instdecidablerelsumlex--3537cf9fbf9296e0a011104c.md) | 192 | `declaration-track:3537cf9fbf9296e0a011104c1e119d42fe8494857e4baa293d7367848b7b2130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
