# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Encoding.Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a46e02d2a0032cd7024f30e5c97291c64e4d43e0",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a46e02d2a0032cd7024f30e5c97291c64e4d43e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean.json)

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
| 1 | `def` | [listEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/listencode--664ae8b24a2ab4c52f95d35c.md) | 56 | `declaration-track:664ae8b24a2ab4c52f95d35c400f480ffafd2876594ab1d6a355cb358781ea58` |
| 2 | `def` | [listDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/listdecode--f6aeed9e4bc0f469c1ff0d32.md) | 62 | `declaration-track:f6aeed9e4bc0f469c1ff0d32d99d86f33a1f2b4b387771d84ae2eaecd2d1685a` |
| 3 | `theorem` | [listDecode_encode_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/listdecode-encode-list--af755bf995200cefeb235201.md) | 70 | `result-track:af755bf995200cefeb23520174dab0c757273163c9a66d853e53b9d64cdbf6ae` |
| 4 | `def` | [encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/encoding--0ac529c42b217b6bb50f9ebb.md) | 96 | `declaration-track:0ac529c42b217b6bb50f9ebb0da45c562c16caf126c777c878f0b67ce95af5eb` |
| 5 | `theorem` | [listEncode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/listencode-injective--586894f258ad7b72930421c1.md) | 105 | `result-track:586894f258ad7b72930421c11fd76f55c159d6505c664864a799430c10647a5e` |
| 6 | `theorem` | [card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/card-le--be9b92af0fadf8e840ce31d1.md) | 109 | `result-track:be9b92af0fadf8e840ce31d12b94d0540157ef8a2541463c4c02f4e7f9ad4e19` |
| 7 | `theorem` | [card_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/card-sigma--dbc695c5efea87a77bc95a57.md) | 112 | `result-track:dbc695c5efea87a77bc95a57240d5c9b967e5e9525936e5d84dd58f0f295c031` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/instance--e225e28cdccb376efe7768d0.md) | 143 | `declaration-track:e225e28cdccb376efe7768d0bf34f48ecbe74721ecdd71963b90435e15f4f8e9` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/instance--7e5b4d385e31dbebaa424b80.md) | 149 | `declaration-track:7e5b4d385e31dbebaa424b80f79f42f9bb22df6d97726a5068ec5ebf931abb09` |
| 10 | `instance` | [small](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/small--5fd95cf2d1ac0b65511f8768.md) | 154 | `declaration-track:5fd95cf2d1ac0b65511f87681128b829a842b73a6ee2034be1ddb5a41ca78b91` |
| 11 | `def` | [listEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/listencode--dff1b2e12f408f58e799e268.md) | 162 | `declaration-track:dff1b2e12f408f58e799e26806531f7eb21de1ce2518027f64bd108829401ae1` |
| 12 | `def` | [sigmaAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/sigmaall--c7ac292383429fbf46bd8278.md) | 173 | `declaration-track:c7ac292383429fbf46bd8278382fd89f9e1ec99d3ec9e49864bd004abadbf593` |
| 13 | `lemma` | [sigmaAll_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/sigmaall-apply--d21e8880b1ed078e7caa54eb.md) | 179 | `result-track:d21e8880b1ed078e7caa54ebd00bfed99822bc1085a04adb8ca562bc94251a76` |
| 14 | `def` | [sigmaImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/sigmaimp--bb73b9714d92ae98249bec93.md) | 184 | `declaration-track:bb73b9714d92ae98249bec935bc7c0210a8f84e159f18795f1f56ff517b4e292` |
| 15 | `lemma` | [sigmaImp_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/sigmaimp-apply--17b175a5035c31ca58e306fa.md) | 189 | `result-track:17b175a5035c31ca58e306fad08277b133385a3ff92c4e1222e37b4d30f73592` |
| 16 | `def` | [listDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/listdecode--7e83a7452b25e0b91f2150a4.md) | 194 | `declaration-track:7e83a7452b25e0b91f2150a474a3222bcf38d29d4c7e1a478ab4d1b93f5f8548` |
| 17 | `theorem` | [listDecode_encode_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/listdecode-encode-list--47c4cb2a03b9d3c4bf952ad8.md) | 215 | `result-track:47c4cb2a03b9d3c4bf952ad89ded7d77eff7944ac1e9d190b9167c7d86eab338` |
| 18 | `def` | [encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/encoding--d5faaeb9870f570ba8ca80ea.md) | 277 | `declaration-track:d5faaeb9870f570ba8ca80eaded7075b67d6096abf43c6c9af8206a1c63d441d` |
| 19 | `theorem` | [listEncode_sigma_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/listencode-sigma-injective--cd780365e702df685baefaf6.md) | 287 | `result-track:cd780365e702df685baefaf61515cf975aed90bc4ecfd245998bc3673e6ec5db` |
| 20 | `theorem` | [card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/card-le--adfb028b1fd32e6cf7cf3837.md) | 291 | `result-track:adfb028b1fd32e6cf7cf3837979129b515458a98eb5e52e3989daa35c7d09580` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/instance--9fa2cf85b0055c1466179b88.md) | 305 | `declaration-track:9fa2cf85b0055c1466179b885dce813c30e2b7919d8ac35745cc20ed6092b8a0` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/instance--e288ba81ebf80caca584b32c.md) | 310 | `declaration-track:e288ba81ebf80caca584b32cee65c69ee26213ea24bb10fb14e0d99cccccd651` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/instance--8608575756d8d5b7a0dc6ddb.md) | 317 | `declaration-track:8608575756d8d5b7a0dc6ddbdd9e522f096794a04ee76df979e09a4bd6728eb8` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/declarations/instance--a6876b97ffae517d0b718a59.md) | 322 | `declaration-track:a6876b97ffae517d0b718a59e80c5f93649355abf5798a87245b5d29aa81f8b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
