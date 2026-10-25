# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Encoding.Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eac1532077010b24a1ea841582b3f0b02cbb6077",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eac1532077010b24a1ea841582b3f0b02cbb6077`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Num.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encoding--8e015c9701357e5bf61b5cd0.md) | 35 | `declaration-track:8e015c9701357e5bf61b5cd0970e06febec79a6026316c8074e60bc431465095` |
| 2 | `theorem` | [Encoding.encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encoding-encode-injective--c48a1d45ae8e47eb88081604.md) | 45 | `result-track:c48a1d45ae8e47eb88081604c3f5f4101e69d311f249f51b164b4b1f5f0f5163` |
| 3 | `structure` | [FinEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/finencoding--207b04f63ae525735d7e3c26.md) | 50 | `declaration-track:207b04f63ae525735d7e3c26541f8f4b12821c4acb28841ac691ce54ff7d041c` |
| 4 | `instance` | [Γ.fintype](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/fintype--52ab0fab6aebfb2c0d5a27a4.md) | 54 | `declaration-track:52ab0fab6aebfb2c0d5a27a4038c298cb9178b036ec2557073b9914ef6fab7cb` |
| 5 | `inductive` | [Γ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/anonymous--096502fadbb17a16d9ec6ac8.md) | 58 | `declaration-track:096502fadbb17a16d9ec6ac83b53f3f68820a3c41f153249b8abaa0a860f3a33` |
| 6 | `instance` | [inhabitedΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/inhabited--b11efc39b963cc9eb70678b2.md) | 66 | `declaration-track:b11efc39b963cc9eb70678b2fbc0dcea73e359dffebbbe5bab8802f77f259a51` |
| 7 | `def` | [inclusionBoolΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/inclusionbool--2e854c6aee2984f8be773aa9.md) | 70 | `declaration-track:2e854c6aee2984f8be773aa9e8b257273c8ec6fc2f64a7012b28bb80669792f4` |
| 8 | `def` | [sectionΓ'Bool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/section-bool--19fa6428dd4450184aa0111b.md) | 74 | `declaration-track:19fa6428dd4450184aa0111b75eea390a672456f6c7387f65ca6b10e376d50d5` |
| 9 | `theorem` | [sectionΓ'Bool_inclusionBoolΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/section-bool-inclusionbool--f41ea962921e364c2d178f7e.md) | 79 | `result-track:f41ea962921e364c2d178f7ed46bef3534cd2936695d805417e58723bd590c86` |
| 10 | `theorem` | [leftInverse_section_inclusion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/leftinverse-section-inclusion--36b39bee924ae1779c64aa8b.md) | 83 | `result-track:36b39bee924ae1779c64aa8ba63394de80c2eee8b8a9c2d22cd9903ef9f3df22` |
| 11 | `theorem` | [inclusionBoolΓ'_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/inclusionbool-injective--ec0549144d0c9183af207e79.md) | 86 | `result-track:ec0549144d0c9183af207e79984ecf0e30d11a68a786bc04add6797abc7e73b6` |
| 12 | `def` | [encodePosNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encodeposnum--2472803550d211154bf0e3bb.md) | 90 | `declaration-track:2472803550d211154bf0e3bb1f3764b7e31be29848a04ed88e7d164124503e0c` |
| 13 | `def` | [encodeNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encodenum--4e240fc1d556a9d63848faab.md) | 96 | `declaration-track:4e240fc1d556a9d63848faab572787fc6349f64ef3e3f432f0f7d65a3cad261b` |
| 14 | `def` | [encodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encodenat--606eed6f4cf5f37c166332e7.md) | 101 | `declaration-track:606eed6f4cf5f37c166332e7714713f119dffc34b9f45c4d58c7b4948ad90086` |
| 15 | `def` | [decodePosNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/decodeposnum--a2eaa1baf2b4ec760609b036.md) | 105 | `declaration-track:a2eaa1baf2b4ec760609b036d676f03f095ed321a2bd29a4886e4dfe2e6f0eb4` |
| 16 | `def` | [decodeNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/decodenum--6016905200c88762fde61090.md) | 111 | `declaration-track:6016905200c88762fde610905455fa3a214b3259986708ae9e055eee8275501e` |
| 17 | `def` | [decodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/decodenat--42dc9895998bc429782fa09d.md) | 114 | `declaration-track:42dc9895998bc429782fa09d18237da0344d61c70dd56fea39be277512ae5e10` |
| 18 | `theorem` | [encodePosNum_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encodeposnum-nonempty--24046d2006443a927050c270.md) | 116 | `result-track:24046d2006443a927050c270ef6832eafc28a1343c9b89e9a1e29b99a7e83e28` |
| 19 | `theorem` | [decode_encodePosNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/decode-encodeposnum--ee24b53ce3c0eec484786264.md) | 120 | `result-track:ee24b53ce3c0eec484786264f4e876b38987b9889a99584f00d38f159110adad` |
| 20 | `theorem` | [decode_encodeNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/decode-encodenum--8c3acc1db6d332a1e2744dbb.md) | 128 | `result-track:8c3acc1db6d332a1e2744dbbbc1092d5ff0cda08ce305012ad3012aac22b6cd7` |
| 21 | `theorem` | [decode_encodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/decode-encodenat--0562c943390d99aeeb196c5e.md) | 136 | `result-track:0562c943390d99aeeb196c5e283346cf128a86c87de3caee85b665f1e5f0f4f7` |
| 22 | `def` | [encodingNatBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encodingnatbool--cd0ada91708bce142a172f28.md) | 142 | `declaration-track:cd0ada91708bce142a172f288edd736bc1c314937eb53402d99e036e8fd08247` |
| 23 | `def` | [finEncodingNatBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/finencodingnatbool--c687e945c18836ecc3b5f5f2.md) | 149 | `declaration-track:c687e945c18836ecc3b5f5f280af870140d04cc959899d587a1dd445861c7ea5` |
| 24 | `def` | [encodingNatΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encodingnat--aad10d3a6bea8879fd39cd91.md) | 153 | `declaration-track:aad10d3a6bea8879fd39cd91b8837b6cfdb20a86df047b30e7fa6b39accb61d8` |
| 25 | `def` | [finEncodingNatΓ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/finencodingnat--7bb3959a0c652ac6735d8748.md) | 160 | `declaration-track:7bb3959a0c652ac6735d8748acef3af0c433ca2ba84563f81d2be979ea074ff5` |
| 26 | `def` | [unaryEncodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/unaryencodenat--290e4a36ea49d4dc3907ae69.md) | 164 | `declaration-track:290e4a36ea49d4dc3907ae692ffb66ed388f236ba4bb959dea8ef66481105c51` |
| 27 | `def` | [unaryDecodeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/unarydecodenat--0a62326760e18a57f8a5f602.md) | 169 | `declaration-track:0a62326760e18a57f8a5f602e57d8c3eeef2094e97c43720e0ff7ce69b948beb` |
| 28 | `theorem` | [unary_decode_encode_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/unary-decode-encode-nat--5ad047d69222279e81a2638d.md) | 172 | `result-track:5ad047d69222279e81a2638d6557f9321ad33f187b40cc1af0c623c354df71f9` |
| 29 | `def` | [unaryFinEncodingNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/unaryfinencodingnat--ba5042f98002609964755ada.md) | 176 | `declaration-track:ba5042f98002609964755adac2bbfe621f8cff29bc7ff499da28891d6a99b80a` |
| 30 | `def` | [encodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encodebool--c2b0e76f8adb724bb12a243c.md) | 184 | `declaration-track:c2b0e76f8adb724bb12a243c325085a83efc56e9aea524149344df04f5e830c3` |
| 31 | `def` | [decodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/decodebool--12564e33ed17c7280db6f684.md) | 187 | `declaration-track:12564e33ed17c7280db6f6844ecf78f915aedb5d176642fbed352400ad21bb0c` |
| 32 | `theorem` | [decode_encodeBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/decode-encodebool--3cd10f7c4b6d84a313f349e9.md) | 191 | `result-track:3cd10f7c4b6d84a313f349e943ef637cb0c8b571cfda90e44575c23241e1f533` |
| 33 | `def` | [finEncodingBoolBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/finencodingboolbool--1811f8661cbbf1fc2ef23231.md) | 194 | `declaration-track:1811f8661cbbf1fc2ef232314ad2dee5b7ef6e607ccea1283ad9022da0dff151` |
| 34 | `instance` | [inhabitedFinEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/inhabitedfinencoding--b626ff15e0e8308fbf66ae18.md) | 201 | `declaration-track:b626ff15e0e8308fbf66ae183a37d31a66e91eb47909df0c73c4bf26348980bb` |
| 35 | `instance` | [inhabitedEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/inhabitedencoding--edd34f4c71148c103bbc7b85.md) | 204 | `declaration-track:edd34f4c71148c103bbc7b850f27dcdb756b3bcc951957311b6f1c2493c99d6b` |
| 36 | `theorem` | [Encoding.card_le_card_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encoding-card-le-card-list--a5493f32a08efa5638bd36fe.md) | 207 | `result-track:a5493f32a08efa5638bd36fe3ffe005c395bc64661fc73b2e2b721c7e1833a8f` |
| 37 | `theorem` | [Encoding.card_le_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/encoding-card-le-aleph0--1571661efc2752b3d217ffc5.md) | 211 | `result-track:1571661efc2752b3d217ffc526245ef06eefb35deac1e25d1e7b485e53431f98` |
| 38 | `theorem` | [FinEncoding.card_le_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variant0cff326bf0997af2f5dc7699914eb06bb1188130ea89e711a2287f177393c156.lean/declarations/finencoding-card-le-aleph0--f39e9c31e9f5862bc3b98cd2.md) | 216 | `result-track:f39e9c31e9f5862bc3b98cd2d61d9cc78dd091e6685731f4fb1c6ac2144569e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
