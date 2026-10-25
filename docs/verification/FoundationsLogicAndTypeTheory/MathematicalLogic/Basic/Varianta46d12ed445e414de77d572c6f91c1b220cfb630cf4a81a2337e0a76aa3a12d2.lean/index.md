# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15b3375ff0df90c69ac361cf1919ca9ccf60b9e1",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15b3375ff0df90c69ac361cf1919ca9ccf60b9e1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Finsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniqueMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/uniquemul--190db5356f4b6127a77fda65.md) | 63 | `declaration-track:190db5356f4b6127a77fda65979e437fa6cf22db5eae7d2226f867f1aae7176c` |
| 2 | `theorem` | [of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-subsingleton--8b384d8ce300e62c6499674e.md) | 71 | `result-track:8b384d8ce300e62c6499674e88353a52a77934b5974e8fdf5a3fc53fc2bfe05e` |
| 3 | `theorem` | [of_card_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-card-le-one--58a5f1388b8deaf27e8b6ee0.md) | 75 | `result-track:58a5f1388b8deaf27e8b6ee0d0512248cf607b9234e5cc91d977d1de834b8e5c` |
| 4 | `theorem` | [mt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/mt--2efc43c7443d5d1117a50b4d.md) | 82 | `result-track:2efc43c7443d5d1117a50b4d50845acc8c6d7d021ca1729d02860a42021aebfa` |
| 5 | `theorem` | [subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/subsingleton--40d1c351bd6f08a1095bb2a9.md) | 88 | `result-track:40d1c351bd6f08a1095bb2a9db9534d4c993be63361723ba67512fb978ba02dd` |
| 6 | `theorem` | [set_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/set-subsingleton--38cd8630daf4b6b12ae8fd42.md) | 96 | `result-track:38cd8630daf4b6b12ae8fd42e43be91cbfd1ba1932be765197cbfff262b96225` |
| 7 | `theorem` | [iff_existsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/iff-existsunique--72695fdfdb4c6c0cd4409baf.md) | 105 | `result-track:72695fdfdb4c6c0cd4409baf8fb893ef3a08eddfd53cb8ee28b3f095e782923a` |
| 8 | `theorem` | [iff_card_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/iff-card-le-one--64c70a1ae2b0a88a35931582.md) | 116 | `result-track:64c70a1ae2b0a88a35931582c4fcadec086e368be8c6b43eef58d044730c9825` |
| 9 | `theorem` | [exists_iff_exists_existsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/exists-iff-exists-existsunique--45a45a47033532562fb10cc0.md) | 127 | `result-track:45a45a47033532562fb10cc0f49a3289145a85e1393ac4e70e46a60acb4b4b1f` |
| 10 | `theorem` | [mulHom_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/mulhom-preimage--e33cd732557d18634cd229ec.md) | 138 | `result-track:e33cd732557d18634cd229ecc137948297608763519a2112d534512b986e3e9d` |
| 11 | `theorem` | [of_mulHom_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-mulhom-image--1b9d66bdaf6e453c654b345c.md) | 145 | `result-track:1b9d66bdaf6e453c654b345c31a18ec8eb51970999d1af0d3ba0da8cbcd40949` |
| 12 | `theorem` | [mulHom_image_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/mulhom-image-iff--4dd68690938af37230d5bf74.md) | 158 | `result-track:4dd68690938af37230d5bf7404a160179841fb480fc9bb83c32415096a0561e0` |
| 13 | `theorem` | [mulHom_map_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/mulhom-map-iff--d2b3425d791c7f24b32fd4bc.md) | 173 | `result-track:d2b3425d791c7f24b32fd4bc95f8700bc2a6e7eb62664d2d15da47c908e95fb7` |
| 14 | `theorem` | [of_mulOpposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-mulopposite--f895f844ddee214112ec7761.md) | 181 | `result-track:f895f844ddee214112ec77616d318008db1c04327fff07e8b96369eddcac7704` |
| 15 | `theorem` | [to_mulOpposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/to-mulopposite--82d61fa18e1e75fe7f407fc0.md) | 187 | `result-track:82d61fa18e1e75fe7f407fc0ecaaf3dbab5c4281e67a547dc59bef7a9d2af3fa` |
| 16 | `theorem` | [iff_mulOpposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/iff-mulopposite--2d24bbd897fad669dd8754ca.md) | 192 | `result-track:2d24bbd897fad669dd8754cadd39aef27db915343ff0f3930d06929431a3c713` |
| 17 | `theorem` | [of_image_filter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-image-filter--2988cbeb30fccc4af0fda438.md) | 201 | `result-track:2988cbeb30fccc4af0fda438218cbfa25ef28e6cd6c57e0d9a491bcbc122c9d2` |
| 18 | `class` | [UniqueSums](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/uniquesums--7f39d2a6ffdec48bcc3bf2f6.md) | 216 | `declaration-track:7f39d2a6ffdec48bcc3bf2f6d4b404be3ae09a6b32065034e29fc563580431a9` |
| 19 | `class` | [UniqueProds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/uniqueprods--a4dc458077855e076c368a95.md) | 225 | `declaration-track:a4dc458077855e076c368a95247bd8b2e0095c08f0b4657918765e6aab65dfc7` |
| 20 | `class` | [TwoUniqueSums](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/twouniquesums--7b7361205df8092f0aec06cd.md) | 236 | `declaration-track:7b7361205df8092f0aec06cdba9fd0b773253a768abb1a9466683d05565762a2` |
| 21 | `class` | [TwoUniqueProds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/twouniqueprods--55dcd70d40e43b1d537e16ee.md) | 245 | `declaration-track:55dcd70d40e43b1d537e16ee2f5d41374c7d83a9e913c6daf1e583cad917694b` |
| 22 | `lemma` | [uniqueMul_of_twoUniqueMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/uniquemul-of-twouniquemul--d5f08460e0454f47ad83aa40.md) | 254 | `result-track:d5f08460e0454f47ad83aa40f73f8388a277ac61e61a94a86b39292296c98ce0` |
| 23 | `instance` | [TwoUniqueProds.toUniqueProds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/twouniqueprods-touniqueprods--ab94d6519ec341af2a047843.md) | 265 | `declaration-track:ab94d6519ec341af2a047843d92a4d13b6c6e5e49896c839d7f88ca1b4654899` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--ec56cac01ccb29a517d22d9d.md) | 271 | `declaration-track:ec56cac01ccb29a517d22d9d4119bbbdbb46ef590fb0693e1375547b45461c9f` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--cce0d5baf674f21001ae00d5.md) | 274 | `declaration-track:cce0d5baf674f21001ae00d502d1a52d349bf39175778db0dc8896adf969c04f` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--5fa2b8bc27b83cdf859a6210.md) | 281 | `declaration-track:5fa2b8bc27b83cdf859a6210a771c211c7036bbbc03ae5b8a41c6f3e572365a0` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--a4959ef3773445ac25a98694.md) | 284 | `declaration-track:a4959ef3773445ac25a986946018a5b4d728e9e03c5608afd538efeb6302fc51` |
| 28 | `abbrev` | [I](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/i--73e04afc9616f522b90dd5a7.md) | 292 | `declaration-track:73e04afc9616f522b90dd5a7889dff4bfc0d2d10e8e699d45e3e8c4c6b1dbc93` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--9bedeeb215c3002e8e0f7ba6.md) | 293 | `declaration-track:9bedeeb215c3002e8e0f7ba6c9b9240be79e872758e70cdfeead33ad9615b1cb` |
| 30 | `def` | [Prod.upMulHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/prod-upmulhom--1d42815a439c5f1983709a37.md) | 294 | `declaration-track:1d42815a439c5f1983709a378010708af24367632ce4e7dd84a53417b06f1462` |
| 31 | `def` | [downMulHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/downmulhom--1245a8dc09ab23ee86e83c29.md) | 296 | `declaration-track:1245a8dc09ab23ee86e83c29de0fc63ffde86320304cba64adbf37f87f173c1c` |
| 32 | `theorem` | [of_mulHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-mulhom--7ff5786ba4429146015515b1.md) | 304 | `result-track:7ff5786ba4429146015515b1ed7551aec00116e324edc7e93e08707048f3824c` |
| 33 | `theorem` | [of_injective_mulHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-injective-mulhom--8968a470784e435be6176244.md) | 315 | `result-track:8968a470784e435be6176244ab2d1f329e540a0e1646dcb895f2c09d0ee75374` |
| 34 | `theorem` | [_root_.MulEquiv.uniqueProds_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/root-mulequiv-uniqueprods-iff--1c878cb6e5e6779291829b64.md) | 320 | `result-track:1c878cb6e5e6779291829b64c9de63c2de9744eb3a0c8071d515bdd9dd3bf4d3` |
| 35 | `theorem` | [of_mulOpposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-mulopposite--ef6113ca99e404ae3d2333d3.md) | 325 | `result-track:ef6113ca99e404ae3d2333d355f5586e9c6eaaf4713801d4d6379804bb9231e3` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--7329fc6cb345176d50024d1c.md) | 331 | `declaration-track:7329fc6cb345176d50024d1cda72be5879c34fe149e0739a69094f2cb770bf31` |
| 37 | `theorem` | [toIsLeftCancelMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/toisleftcancelmul--ef3a37499497fd171d207a42.md) | 334 | `result-track:ef3a37499497fd171d207a42b64f2d70582ac644be6fd5ac464931c90d571609` |
| 38 | `theorem` | [toIsCancelMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/toiscancelmul--cbe43425fce8f37d2a5c8d77.md) | 346 | `result-track:cbe43425fce8f37d2a5c8d779ebd9267edf84a1600c18be91135b2c36635316e` |
| 39 | `theorem` | [of_same](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-same--137da2d40a229ae5841e618f.md) | 358 | `result-track:137da2d40a229ae5841e618f65507d3701d431c2b57e3f5a1bb1796b2c24929b` |
| 40 | `theorem` | [toTwoUniqueProds_of_group](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/totwouniqueprods-of-group--f6aa352e4833cd341e54c9b5.md) | 375 | `result-track:f6aa352e4833cd341e54c9b50433b2fa87cae8f2ba4ebb8f8279bcc0d7ff4a6b` |
| 41 | `instance` | [instForall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instforall--2c153c2b47bcd9a73c0e536c.md) | 426 | `declaration-track:2c153c2b47bcd9a73c0e536cf003ebb232e10e892d755b2c1c16c791c922ef4e` |
| 42 | `instance` | [_root_.Prod.instUniqueProds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/root-prod-instuniqueprods--26845926d204ed93d0f249ba.md) | 450 | `declaration-track:26845926d204ed93d0f249ba4653d0150acc4b26cb4c23f66e8901332606e159` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--20c7b45cedcb054256b2b06a.md) | 461 | `declaration-track:20c7b45cedcb054256b2b06a5602682618ee89860b61419b7117e06a18bf1fba` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--16fa5d53cdd335bc4f596528.md) | 466 | `declaration-track:16fa5d53cdd335bc4f5965282359ab3fdeafa83a96cf6fe2739f5459b26ef90b` |
| 45 | `theorem` | [of_mulHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-mulhom--5ed604b788c4ff26bd1c35f5.md) | 474 | `result-track:5ed604b788c4ff26bd1c35f5a60978c4a498815d9be469a17a1f1656b6825505` |
| 46 | `theorem` | [of_injective_mulHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-injective-mulhom--5fbc69c51705cc84d07b17c0.md) | 495 | `result-track:5fbc69c51705cc84d07b17c0ceaa2badd98bd1301ef4a80e577bc95478bdd33f` |
| 47 | `theorem` | [_root_.MulEquiv.twoUniqueProds_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/root-mulequiv-twouniqueprods-iff--29f1fca8f1fdb24e9856bcfc.md) | 501 | `result-track:29f1fca8f1fdb24e9856bcfc4d1137b5ff7f74d350e7344a379e96abe37a4dee` |
| 48 | `instance` | [instForall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instforall--b7836818bc9c84a46144ae49.md) | 505 | `declaration-track:b7836818bc9c84a46144ae49ed4a29983bd6c86f850e156ab4810ac7bfc2213e` |
| 49 | `instance` | [_root_.Prod.instTwoUniqueProds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/root-prod-insttwouniqueprods--6323d938d2474cc97d76099c.md) | 542 | `declaration-track:6323d938d2474cc97d76099ca9b6b07dedca19117b2bcaf9d120846d4c4c960e` |
| 50 | `theorem` | [of_mulOpposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/of-mulopposite--fcd31b0738ee9328f4cc1bfd.md) | 553 | `result-track:fcd31b0738ee9328f4cc1bfd7f88c06d541eeb951524d34e3404c760ac8ec9ba` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--56d3f9dc15e9185eebd05e66.md) | 566 | `declaration-track:56d3f9dc15e9185eebd05e66bc856fcb057ab906e3a0f6e40ee7aeaaabcd18c3` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--ae63504f59cfe59eab92986b.md) | 575 | `declaration-track:ae63504f59cfe59eab92986b11ae525bf62fe7eef7c978e2fe46c9beae00ac58` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--8bbbca8f8921562d6bd22e86.md) | 609 | `declaration-track:8bbbca8f8921562d6bd22e8609528034386e492eaf0352c03b15ada57625cde0` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--8ec031f51062839e5c3e9353.md) | 619 | `declaration-track:8ec031f51062839e5c3e9353eab6ebf75a26d924f032d008f3842535d8d02109` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/declarations/instance--baa2c1eecdd2d82e51240e96.md) | 624 | `declaration-track:baa2c1eecdd2d82e51240e96897e47490bd0467e64fea1d5ecb34ad9c2923a2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
