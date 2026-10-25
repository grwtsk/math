# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.PartrecCode.Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0e7fdc830d4a5b69d3c0bd89649729c80fe782e",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0e7fdc830d4a5b69d3c0bd89649729c80fe782e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Partrec` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rfind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/rfind--34f75e00c3b7d835835fa310.md) | 48 | `result-track:34f75e00c3b7d835835fa31075a90a8d66c125b22f8e14630be27145dcc379c8` |
| 2 | `inductive` | [Code](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/code--746a4da5972509ac5ba078f5.md) | 73 | `declaration-track:746a4da5972509ac5ba078f513a9a554c426211c4eea4dd6a6b1b47ae59a830b` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/instinhabited--5737f60fde74c58cfc478ac5.md) | 89 | `declaration-track:5737f60fde74c58cfc478ac52040a5cacd008c93ac7e7e983c8a14753f8ff3c1` |
| 4 | `def` | [const](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/const--a4c9c28c044caaea86ba692b.md) | 93 | `declaration-track:a4c9c28c044caaea86ba692bee80c1349dcf6ff95bad23a76fc0851b1c44302a` |
| 5 | `theorem` | [const_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/const-inj--87350884a48e21d0853440c1.md) | 97 | `result-track:87350884a48e21d0853440c191497323fd1fef1805746abe704a8e236e4af59d` |
| 6 | `def` | [id](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/id--e786f0102d4c9fb135e89931.md) | 105 | `declaration-track:e786f0102d4c9fb135e899311126cb948a0ee92780d2c1202e4256a5767b519d` |
| 7 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/curry--0a56ad35a56fbef08e4b0b7b.md) | 110 | `declaration-track:0a56ad35a56fbef08e4b0b7b9c6e75084cc19dff101e48d9887d1e9a25d0e779` |
| 8 | `def` | [encodeCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/encodecode--11f435874a8cad8fbb540945.md) | 114 | `declaration-track:11f435874a8cad8fbb5409452ef4649455caafc563261d85bc4a4e758bbe4a4d` |
| 9 | `def` | [ofNatCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/ofnatcode--1824dba1ff4b02f0663848ad.md) | 127 | `declaration-track:1824dba1ff4b02f0663848ad9844bd73fdaa01f2dc23f4f9e7358a46e3b3806e` |
| 10 | `theorem` | [encode_ofNatCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/encode-ofnatcode--6f1db876c6c2e0da426f400c.md) | 148 | `result-track:6f1db876c6c2e0da426f400c3c791fc5095d1e93e57ac2826e543d82b698abbd` |
| 11 | `instance` | [instDenumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/instdenumerable--564cdce229e4cd8df97346ed.md) | 170 | `declaration-track:564cdce229e4cd8df97346ed3e137c2f7e06a1c4135ce84c0b8f63c8b1152af3` |
| 12 | `theorem` | [encodeCode_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/encodecode-eq--edee391bd070e4021d3cb615.md) | 176 | `result-track:edee391bd070e4021d3cb6158de5ad31f1e853a83da537c6be8c4577449b5284` |
| 13 | `theorem` | [ofNatCode_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/ofnatcode-eq--246ec6365211510bab7bf5d6.md) | 179 | `result-track:246ec6365211510bab7bf5d6896d8d06bd0a9f0155458d3d69abb0c04e76f2dd` |
| 14 | `theorem` | [encode_lt_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/encode-lt-pair--9cbfd6d795e586d97510bbbd.md) | 182 | `result-track:9cbfd6d795e586d97510bbbd5ff66f6e441bc1c29f8fdf163b10b618d15601d1` |
| 15 | `theorem` | [encode_lt_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/encode-lt-comp--60548961a689be432ff6128b.md) | 190 | `result-track:60548961a689be432ff6128b7fed8433369b7368e4465775062c8e2fdd7a22e3` |
| 16 | `theorem` | [encode_lt_prec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/encode-lt-prec--b0c9c663933932d853fa3e62.md) | 195 | `result-track:b0c9c663933932d853fa3e62ff68bd34590a68633126883900b1e5c7a3db6d04` |
| 17 | `theorem` | [encode_lt_rfind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/encode-lt-rfind--b939a7796ff8ba15bff092f3.md) | 200 | `result-track:b939a7796ff8ba15bff092f32388c6733a9360a9680370cfd2c8581598c90029` |
| 18 | `theorem` | [primrec₂_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/primrec-pair--d3b79c69d9ac5d7b8bda9e45.md) | 210 | `result-track:d3b79c69d9ac5d7b8bda9e45a5ff85824536ad29db9a14fa166e78edf0bee7eb` |
| 19 | `theorem` | [primrec₂_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/primrec-comp--17a759e841d3aed48fa92785.md) | 222 | `result-track:17a759e841d3aed48fa92785668e49b7c065ca400163d2e6b2911e9c7ddca954` |
| 20 | `theorem` | [primrec₂_prec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/primrec-prec--0858d14c1a4d0cd8e0056bab.md) | 234 | `result-track:0858d14c1a4d0cd8e0056bab612f82b8211b69f8c8fa2e678b45c07d6ab5ef0d` |
| 21 | `theorem` | [primrec_rfind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/primrec-rfind--83815152e392a8c5b42d4f1e.md) | 246 | `result-track:83815152e392a8c5b42d4f1e3914d17d3e1add55d9c4b81856ec2c7a167f5b3f` |
| 22 | `theorem` | [primrec_recOn'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/primrec-recon--a2ea9a19d32489c1be40d5ff.md) | 256 | `result-track:a2ea9a19d32489c1be40d5ffdac6720319929fecbbeb131815455c5448074f8f` |
| 23 | `theorem` | [primrec_recOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/primrec-recon--b642200e31501c21fc6bd4dd.md) | 340 | `result-track:b642200e31501c21fc6bd4dd58981680576910d3b1054ee5ab5f30dcd990ce5b` |
| 24 | `theorem` | [computable_recOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/computable-recon--c068b71eb7126f32b654c2ab.md) | 370 | `result-track:c068b71eb7126f32b654c2abedfc3b5d2c29f491e3124a102f285ff95ce367cf` |
| 25 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/eval--665e4596ccf2e9f39a34f669.md) | 470 | `declaration-track:665e4596ccf2e9f39a34f669aa03c8c878f5925b3c65de56a5d1a3df47f1fc4e` |
| 26 | `theorem` | [eval_prec_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/eval-prec-zero--9653eb37eb94374531648078.md) | 488 | `result-track:9653eb37eb94374531648078ea426e9588eeb95a4e3caf1204bb2e829129f40e` |
| 27 | `theorem` | [eval_prec_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/eval-prec-succ--6e7a0da9660a4661365033aa.md) | 494 | `result-track:6e7a0da9660a4661365033aa8a2c1d87e55ca0d4f9ffaaf38c8f5e3de670e84f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/instance--f1173c20142456fa52c6f4a7.md) | 500 | `declaration-track:f1173c20142456fa52c6f4a7566e52f71eacc922fbff569072398ca63069cddf` |
| 29 | `theorem` | [eval_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/eval-const--a08f545ca184a03376027d6e.md) | 504 | `result-track:a08f545ca184a03376027d6e564d68fde892338c18ce1283e2a561df1291112b` |
| 30 | `theorem` | [eval_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/eval-id--4cde34d5ff53044cbdef8150.md) | 509 | `result-track:4cde34d5ff53044cbdef8150e7a01b8de650ca074ff22170ad8d9ce83591b018` |
| 31 | `theorem` | [eval_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/eval-curry--b29b898a9aa54df643c49f8d.md) | 512 | `result-track:b29b898a9aa54df643c49f8dbe217ff39357f3450178990b81a420cea58ead5d` |
| 32 | `theorem` | [primrec_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/primrec-const--3b9f4f53278f1c61bf832ffd.md) | 514 | `result-track:3b9f4f53278f1c61bf832ffda58b069fc02337056552d4c9f0840f398899ce50` |
| 33 | `theorem` | [primrec₂_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/primrec-curry--0a40b0d8631f1207bdeed427.md) | 522 | `result-track:0a40b0d8631f1207bdeed427a0ae8bf2b341347d7419745677452c2928903815` |
| 34 | `theorem` | [curry_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/curry-inj--ad98da5cd3dc510689a58cae.md) | 528 | `result-track:ad98da5cd3dc510689a58cae9bab4a5cf88c17f128921e90158f6b795cbf68a7` |
| 35 | `theorem` | [smn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/smn--ea9d062e819abe4744b3593a.md) | 538 | `result-track:ea9d062e819abe4744b3593a856d8e704dbaaa9835df1ef916681bc636e59c31` |
| 36 | `theorem` | [exists_code](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/exists-code--ae851733ab6e65d7c4f48977.md) | 544 | `result-track:ae851733ab6e65d7c4f48977d84c2d0d5ebd7983aab0cb17f061f399104a7680` |
| 37 | `def` | [evaln](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/evaln--3317bf058b649a59826b0025.md) | 579 | `declaration-track:3317bf058b649a59826b00256b8fcceb8e89540f6fdbe60e6429fe7481ddcb3f` |
| 38 | `theorem` | [evaln_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/evaln-bound--c3a6906bc566b097fae5ab46.md) | 615 | `result-track:c3a6906bc566b097fae5ab46286e1946731f02dfedff054511d6b471c709179f` |
| 39 | `theorem` | [evaln_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/evaln-mono--3651eb0d5d9b2230c7d5b092.md) | 622 | `result-track:3651eb0d5d9b2230c7d5b09235972c945383e2b5eb5cc187b45394ac5a52414e` |
| 40 | `theorem` | [evaln_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/evaln-sound--7fc7227393b7bd22c6345560.md) | 660 | `result-track:7fc7227393b7bd22c6345560d8954e4e749a4e62b83204bcbbcc5aa583bd3929` |
| 41 | `theorem` | [evaln_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/evaln-complete--08016ba8923ed39590d000eb.md) | 697 | `result-track:08016ba8923ed39590d000eb1e3faf1511d3265dfd00e6d9128a2bfef6fc86cb` |
| 42 | `def` | [lup](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/lup--ec475211a1d0aa66c08c4ec6.md) | 769 | `declaration-track:ec475211a1d0aa66c08c4ec642d8c7bec12d34c72be82b73467a5a4e93166fb6` |
| 43 | `theorem` | [hlup](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/hlup--6de74c0c621c41f8579c3bfc.md) | 774 | `result-track:6de74c0c621c41f8579c3bfca7e089715ca895ff64554d745c5e81d793533496` |
| 44 | `def` | [G](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/g--4835a850b7216aaf5526f86c.md) | 780 | `declaration-track:4835a850b7216aaf5526f86c618f2079471edbe04ba693e8d39ac3edf6bdb82a` |
| 45 | `theorem` | [hG](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/hg--cb33d1a6acef997bd935bbcf.md) | 811 | `result-track:cb33d1a6acef997bd935bbcf8fdf0f5f95c91781d87e1a14c20e0d708d56e31a` |
| 46 | `theorem` | [evaln_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/evaln-map--57213d74ed12907e7055f879.md) | 913 | `result-track:57213d74ed12907e7055f879c7131cae1fb93eb7480d5d1dc60bf9839be24ff9` |
| 47 | `theorem` | [primrec_evaln](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/primrec-evaln--f6cf94193bc52a3cf79cfece.md) | 924 | `result-track:f6cf94193bc52a3cf79cfece491acabcf7f63329a36eba4d98c93cd43e627bc4` |
| 48 | `theorem` | [eval_eq_rfindOpt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/eval-eq-rfindopt--c0100c79d739cfa7a75b697d.md) | 993 | `result-track:c0100c79d739cfa7a75b697dfd8251c34552267fcb395157e14dfd67e8966da3` |
| 49 | `theorem` | [eval_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/eval-part--e25c21e9e0ad3a103ddf614b.md) | 998 | `result-track:e25c21e9e0ad3a103ddf614bd62bcd1b04a6b114bd1da417e9d419b24184eb19` |
| 50 | `theorem` | [fixed_point](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/fixed-point--e3acd1ee065a96f1cf048531.md) | 1008 | `result-track:e3acd1ee065a96f1cf048531a22f05f2051078e4de350a212988a466f0ca0a79` |
| 51 | `theorem` | [fixed_point₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/fixed-point--906536eed7f8d79346d89067.md) | 1026 | `result-track:906536eed7f8d79346d890678a4c05b70213b0dabd8b0dc7b98cf9590638ff26` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/instance--ead381ec8ea8222cae8ddc67.md) | 1034 | `declaration-track:ead381ec8ea8222cae8ddc67bd215e808558ad9a6cbd5f15e8e1f9fb06627de3` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean/declarations/instance--cd5d2d827bfed1a0d0d654d1.md) | 1039 | `declaration-track:cd5d2d827bfed1a0d0d654d1e7104a493640d8d7d63ead25a709d5b9c287500c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
