# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Encoding.Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba8f6f5ce099a8624b7bc223fb429627a65dc74f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba8f6f5ce099a8624b7bc223fb429627a65dc74f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Num.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encoding--d2f16e57cf67002df8e2f417.md) | 43 | `declaration-track:d2f16e57cf67002df8e2f41768fdc8ec127d6136d3486549dabdc0a48182ad33` |
| 2 | `theorem` | [Encoding.encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encoding-encode-injective--225ceb1393caf2cf3c249a15.md) | 53 | `result-track:225ceb1393caf2cf3c249a15cd8298e24e51058c452ed040b05eb5416cd07ef7` |
| 3 | `structure` | [FinEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/finencoding--04a041d2556ba8572285e360.md) | 58 | `declaration-track:04a041d2556ba8572285e3600b89d4480787b5eeb2840b44aa6f8e973b84e6f0` |
| 4 | `instance` | [Γ.fintype](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/fintype--01be4acacd11c44e94e4dd59.md) | 62 | `declaration-track:01be4acacd11c44e94e4dd5925d3f02c765af2a695a1df1d016aba37289a058e` |
| 5 | `inductive` | [Γ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/anonymous--0c39f926c721160cfde85e87.md) | 66 | `declaration-track:0c39f926c721160cfde85e87582b9f02c4395ce43d297dd5f26734c13abbc68a` |
| 6 | `instance` | [inhabitedΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/inhabited--91a94e8480ca85a3f4aab562.md) | 74 | `declaration-track:91a94e8480ca85a3f4aab5626a7ef02ed4aec68c88965f60006d4203692a0b72` |
| 7 | `def` | [inclusionBoolΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/inclusionbool--ba413c4eaaca04599091c3e0.md) | 78 | `declaration-track:ba413c4eaaca04599091c3e0135addbbcf0323bfd1f7e879ff592ce05fe0fc05` |
| 8 | `def` | [sectionΓ'Bool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/section-bool--185505a500c47477147d762b.md) | 82 | `declaration-track:185505a500c47477147d762bfbb294e68cc8d14ddf4366a64859b112981fe28f` |
| 9 | `theorem` | [sectionΓ'Bool_inclusionBoolΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/section-bool-inclusionbool--1057fee20466e4509e7ab7d3.md) | 87 | `result-track:1057fee20466e4509e7ab7d31416bde5a00f34816edb011f7a8f77627bc76a83` |
| 10 | `theorem` | [leftInverse_section_inclusion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/leftinverse-section-inclusion--8324537c090a5c689b3dd2c4.md) | 91 | `result-track:8324537c090a5c689b3dd2c4837d181caaf2948c5822e0b10d0535f0514b53aa` |
| 11 | `theorem` | [inclusionBoolΓ'_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/inclusionbool-injective--1774f24425e9e4359cd75ed2.md) | 94 | `result-track:1774f24425e9e4359cd75ed29de12c0c7ab9c828ce99bcf3ce06a645454d7ddc` |
| 12 | `def` | [encodePosNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encodeposnum--4e0f96e9a700924fb0c87c72.md) | 98 | `declaration-track:4e0f96e9a700924fb0c87c72ca47b503c2b1a4cd7afc3fe2ed8963bc61adbd81` |
| 13 | `def` | [encodeNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encodenum--bbce7f06c3ec0ec920aeb585.md) | 104 | `declaration-track:bbce7f06c3ec0ec920aeb585bbcd8eacf71e8b847210c6e6422d9875073c86dc` |
| 14 | `def` | [encodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encodenat--8cb4fc1d4e89105c16b057e1.md) | 109 | `declaration-track:8cb4fc1d4e89105c16b057e1a007738c27564e5f7e600ab47a4b958bae024db1` |
| 15 | `def` | [decodePosNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/decodeposnum--492bc6062b446fbef599e9d8.md) | 113 | `declaration-track:492bc6062b446fbef599e9d8ac85a274af3a52e1de89972fd5f4e94e582a7316` |
| 16 | `def` | [decodeNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/decodenum--dac183672da559bcf130f6b9.md) | 119 | `declaration-track:dac183672da559bcf130f6b902231bf7d04c76b7f7d736f42779f0f48ca4d41a` |
| 17 | `def` | [decodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/decodenat--c319fad38aaec41d3d9bb392.md) | 122 | `declaration-track:c319fad38aaec41d3d9bb392de0cf5e5e7b1cfb7f96e154b23a25d8ae101f3b8` |
| 18 | `theorem` | [encodePosNum_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encodeposnum-nonempty--04342e16230ed2429cb70a2b.md) | 124 | `result-track:04342e16230ed2429cb70a2b8b33b40421e472629b8528794ac9cc6a3893cff2` |
| 19 | `theorem` | [decode_encodePosNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/decode-encodeposnum--71ef11ac861303eab009bf93.md) | 128 | `result-track:71ef11ac861303eab009bf9320a041fb779ce37d6ac21368ddfcdc6d41b2321f` |
| 20 | `theorem` | [decode_encodeNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/decode-encodenum--86fe89e14c8eac42020c88cf.md) | 136 | `result-track:86fe89e14c8eac42020c88cf63fcd3f459c5cf2e336abb0bcd608fd94092339a` |
| 21 | `theorem` | [decode_encodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/decode-encodenat--da249392eaf52a001b552188.md) | 144 | `result-track:da249392eaf52a001b552188d0e2055e5794b278a994a63e6793d0106ddf86f6` |
| 22 | `def` | [encodingNatBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encodingnatbool--744b937430f90829313eda80.md) | 150 | `declaration-track:744b937430f90829313eda8089fe71dffbd8569ca0d67d2f66ea90c5fbae9b8a` |
| 23 | `def` | [finEncodingNatBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/finencodingnatbool--6c3e207e762d3d703bb35f9d.md) | 157 | `declaration-track:6c3e207e762d3d703bb35f9dfbe21483a73ef56ed4f2d7f1861257fafa0a54da` |
| 24 | `def` | [encodingNatΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encodingnat--eb109ffe037df5564c895449.md) | 161 | `declaration-track:eb109ffe037df5564c8954494108a05799cdbfeccb4050f0ad4ba37212006147` |
| 25 | `def` | [finEncodingNatΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/finencodingnat--6824fbf670a4c94d485fa440.md) | 168 | `declaration-track:6824fbf670a4c94d485fa44077529aa17e73356872292f4f20328fde563669cc` |
| 26 | `def` | [unaryEncodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/unaryencodenat--deb41a49644a53bbf116e225.md) | 172 | `declaration-track:deb41a49644a53bbf116e225e1d10d96b2696dc5cba7cbf8f45336385a878879` |
| 27 | `def` | [unaryDecodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/unarydecodenat--2e5599a3a94828cb63d97cf7.md) | 177 | `declaration-track:2e5599a3a94828cb63d97cf785da74ead85cf208e8ee7a0d358412acb58a7886` |
| 28 | `theorem` | [unary_decode_encode_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/unary-decode-encode-nat--71ca5aef0cafcd2deaaf69ad.md) | 180 | `result-track:71ca5aef0cafcd2deaaf69ad385bbaaf4b5a9ff7ee7a31dbd19b44adc6d5ff53` |
| 29 | `def` | [unaryFinEncodingNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/unaryfinencodingnat--3c3d20e27ab3c0592008d7f7.md) | 184 | `declaration-track:3c3d20e27ab3c0592008d7f77cbccf0f0afeb6f513b8ec44035ea2ee822ab9b2` |
| 30 | `def` | [encodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encodebool--8ea9d930954bb268c713b83c.md) | 192 | `declaration-track:8ea9d930954bb268c713b83cd56769de58468c1b2ce3bda6e903919ddc7829b5` |
| 31 | `def` | [decodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/decodebool--10ab104deda0a713e4cae4c7.md) | 195 | `declaration-track:10ab104deda0a713e4cae4c7e76a4f7179d6253649e8072ae615e60902cd3b79` |
| 32 | `theorem` | [decode_encodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/decode-encodebool--2017965469ccbdaf5c7b309b.md) | 199 | `result-track:2017965469ccbdaf5c7b309b31418064f2559edbdfcbc959026c8f1a4c1a37c8` |
| 33 | `def` | [finEncodingBoolBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/finencodingboolbool--c3493967ad20b6ee5df7b1eb.md) | 202 | `declaration-track:c3493967ad20b6ee5df7b1eb203be9cb1a70ad5e6f3b48a19feb18772d86aa09` |
| 34 | `instance` | [inhabitedFinEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/inhabitedfinencoding--852478c4e730a5bb65a1ac6a.md) | 209 | `declaration-track:852478c4e730a5bb65a1ac6a203d8734926415ff5848bacf951ad3a0ddcc4a35` |
| 35 | `instance` | [inhabitedEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/inhabitedencoding--3ada2b205afe98f85f20a4df.md) | 212 | `declaration-track:3ada2b205afe98f85f20a4df33e4fc1bde39e9a6450b2fb475e1ff3bd3c32669` |
| 36 | `theorem` | [Encoding.card_le_card_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encoding-card-le-card-list--97aaa8d7d1dc6595c725b728.md) | 215 | `result-track:97aaa8d7d1dc6595c725b728d9cccb9282da2c9e37f35ae5fc271765def19b74` |
| 37 | `theorem` | [Encoding.card_le_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/encoding-card-le-aleph0--11bd8a1f29620ad0e1e7190e.md) | 219 | `result-track:11bd8a1f29620ad0e1e7190e117833bfdf97b5c5639ad122c5af419001d81ed6` |
| 38 | `theorem` | [FinEncoding.card_le_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean/declarations/finencoding-card-le-aleph0--c1c617d656dc2055212a4b73.md) | 224 | `result-track:c1c617d656dc2055212a4b734d5aebc887fa32adb5e753c0ed8a142d868830e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
