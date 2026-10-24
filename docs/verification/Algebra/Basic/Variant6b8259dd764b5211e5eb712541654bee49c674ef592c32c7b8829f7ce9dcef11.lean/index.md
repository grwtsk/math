# Verification target: GRWTSK.Algebra.Basic.Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8761a5b8bb2ae0d902d8507d3cfdadbe191717a",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8761a5b8bb2ae0d902d8507d3cfdadbe191717a`.

Source path: `GRWTSK/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Invertible` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Synonym` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/add-div--5a3b9794690e54da4fa17fa2.md) | 34 | `result-track:5a3b9794690e54da4fa17fa24960ce0d25f36056886b1930413b8ea5f28f7e86` |
| 2 | `theorem` | [div_add_div_same](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-add-div-same--23e7618b6e6323afc528e210.md) | 37 | `result-track:23e7618b6e6323afc528e210bebc531d0437bd9dd8025fbe697af7498df3935d` |
| 3 | `theorem` | [same_add_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/same-add-div--1646f4be80ff813f37e3230e.md) | 40 | `result-track:1646f4be80ff813f37e3230e1fe05089dfa507a6427b7e934f3e732174321361` |
| 4 | `theorem` | [div_add_same](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-add-same--eac6ad5d6e2e4bd1a377a81d.md) | 42 | `result-track:eac6ad5d6e2e4bd1a377a81d49f540f5316529dbf435d1edc0f2518cbaf09d38` |
| 5 | `theorem` | [one_add_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/one-add-div--b142dc7884e90c5e2360055f.md) | 44 | `result-track:b142dc7884e90c5e2360055f04058ec1bf5c50613883ea5aa0353660212090b0` |
| 6 | `theorem` | [div_add_one](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-add-one--03e883c86dbcb666d70e5607.md) | 47 | `result-track:03e883c86dbcb666d70e5607b6ab84beb3348856920b39abc47b1cc413b5a224` |
| 7 | `theorem` | [inv_add_inv'](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/inv-add-inv--61c2c7188c1115f2d4bc4531.md) | 51 | `result-track:61c2c7188c1115f2d4bc4531e656c79b879128e8c0260e81dea36d08b3c90f75` |
| 8 | `theorem` | [one_div_mul_add_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/one-div-mul-add-mul-one-div-eq-one-div-add-one-div--bda76cb174ca9457244cf73f.md) | 55 | `result-track:bda76cb174ca9457244cf73f911a216f04fe3dd284d15a1c61a74bb575d6e847` |
| 9 | `theorem` | [add_div_eq_mul_add_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/add-div-eq-mul-add-div--49028d2c04e46d16082cda0d.md) | 59 | `result-track:49028d2c04e46d16082cda0dfa2a54ce8d980f104992f558b894dc86f804e722` |
| 10 | `theorem` | [add_div'](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/add-div--9ab4ddc6cec73cd96d0911c5.md) | 63 | `result-track:9ab4ddc6cec73cd96d0911c53f283cb82d81b5c2d0993e6c69dcb53ed66c2fd4` |
| 11 | `theorem` | [div_add'](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-add--5421d80f3f9eff70135a6643.md) | 67 | `result-track:5421d80f3f9eff70135a6643e758486cc5f472bf60633287aa6bfb0220f35ab6` |
| 12 | `theorem` | [Commute.div_add_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/commute-div-add-div--66da7b0bd12ed8bc9852a7d0.md) | 70 | `result-track:66da7b0bd12ed8bc9852a7d06f567ef81f01b9b8e73f0692a0b2c800ff7014d0` |
| 13 | `theorem` | [Commute.one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/commute-one-div-add-one-div--8707ed88ee537d0a3392c2bb.md) | 74 | `result-track:8707ed88ee537d0a3392c2bbd51f463294a7f707b27f36040c1e5f1023c62bd7` |
| 14 | `theorem` | [Commute.inv_add_inv](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/commute-inv-add-inv--47923f17b09422969e8f4431.md) | 78 | `result-track:47923f17b09422969e8f44314da5f56f27d35825e64a5e4ed092a2f4d34e1e8c` |
| 15 | `lemma` | [add_self_div_two](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/add-self-div-two--1ed4cbce8976fafd6206ed2d.md) | 84 | `result-track:1ed4cbce8976fafd6206ed2df0f6d617dc30ae7e789eac33eaa10da76ce412c8` |
| 16 | `lemma` | [add_halves](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/add-halves--79e0f4342f075dbf2637af8f.md) | 87 | `result-track:79e0f4342f075dbf2637af8f333dd44ea1647abb8b9b1eb5f249cf222fd12939` |
| 17 | `theorem` | [div_neg_self](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-neg-self--6f0ad7e339240addd30587e9.md) | 96 | `result-track:6f0ad7e339240addd30587e920f335fb75baf977b498acb3b165d3116961b689` |
| 18 | `theorem` | [neg_div_self](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/neg-div-self--8ece33648e77c19f5b7a1f92.md) | 99 | `result-track:8ece33648e77c19f5b7a1f929016b1624e68abeb4ed47e18c24e19faa41c8369` |
| 19 | `theorem` | [div_sub_div_same](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-sub-div-same--8691b4b0288b5554575a2f0b.md) | 101 | `result-track:8691b4b0288b5554575a2f0b39feb5d6e172f426e9bbe312c39dbb242022b2fd` |
| 20 | `theorem` | [same_sub_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/same-sub-div--e48ea3c153a058a70c9d8bff.md) | 104 | `result-track:e48ea3c153a058a70c9d8bfff3b40dca07d14472a6a2c0241af4e4c287adce50` |
| 21 | `theorem` | [one_sub_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/one-sub-div--c64f4b6d74bac1a547354428.md) | 107 | `result-track:c64f4b6d74bac1a547354428ce57b037ad45253739be34c6f44fc565ffa112aa` |
| 22 | `theorem` | [div_sub_same](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-sub-same--648ee11fcd656699906dbf17.md) | 110 | `result-track:648ee11fcd656699906dbf1749714516658b47f3c84f8ccd2d47343e10ecc907` |
| 23 | `theorem` | [div_sub_one](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-sub-one--afa917559e86fd047cfef852.md) | 113 | `result-track:afa917559e86fd047cfef852de4313650ebc0c409e3405f0209d758be62475ce` |
| 24 | `theorem` | [sub_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/sub-div--a1cb16900119756c3db022bf.md) | 116 | `result-track:a1cb16900119756c3db022bf0af41b9c6f1e18d2d9d70b27a7224f6dee76edc1` |
| 25 | `theorem` | [inv_sub_inv'](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/inv-sub-inv--91f11c4df1cc565cf105a9e1.md) | 120 | `result-track:91f11c4df1cc565cf105a9e12090e4ee344694ee235554b493bc57ce8b3e38c9` |
| 26 | `theorem` | [one_div_mul_sub_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/one-div-mul-sub-mul-one-div-eq-one-div-add-one-div--85e5eabfae38bc10fd45557a.md) | 123 | `result-track:85e5eabfae38bc10fd45557a8604fa4b7baadafd9306df6c7c5f127189a604ac` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instance--8d1a7815334e24a5af03e22f.md) | 128 | `declaration-track:8d1a7815334e24a5af03e22ff4e85f4abccfd5a8cdc827b0f3d051e177b7e338` |
| 28 | `theorem` | [Commute.div_sub_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/commute-div-sub-div--6d751bcfa76238f2948527c8.md) | 131 | `result-track:6d751bcfa76238f2948527c83f1b2bad0b30e5cd1dc5014c018df4cf257e97bd` |
| 29 | `theorem` | [Commute.inv_sub_inv](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/commute-inv-sub-inv--afb96d1b2894c5f19951373c.md) | 135 | `result-track:afb96d1b2894c5f19951373cc0a7f974dff066a515bdff7c1434a59f96305b14` |
| 30 | `lemma` | [sub_half](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/sub-half--40d7e1eb489f26846e2ca0ad.md) | 141 | `result-track:40d7e1eb489f26846e2ca0ad6f0a7cb5b0418a953a643d8b98b39590d4a1aac8` |
| 31 | `lemma` | [half_sub](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/half-sub--957eaab2d82ee4a2167cd6d7.md) | 142 | `result-track:957eaab2d82ee4a2167cd6d7cae7945f0399b54e3af6926c42d75f49b072db15` |
| 32 | `theorem` | [div_add_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-add-div--336724fae8e406a87a17b988.md) | 150 | `result-track:336724fae8e406a87a17b988a099e70ebbb39fc68ec6519ed44a0e1b3b88becd` |
| 33 | `theorem` | [one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/one-div-add-one-div--b8411aa5df5c707c9b212b79.md) | 154 | `result-track:b8411aa5df5c707c9b212b79466569db988c69d3b64bd5bb3f75786afd6403f9` |
| 34 | `theorem` | [inv_add_inv](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/inv-add-inv--69904d04eae3160a218e4892.md) | 157 | `result-track:69904d04eae3160a218e489276613368b3b1ed3e08d9cac8affe3af7e67c6d39` |
| 35 | `theorem` | [div_sub_div](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-sub-div--7eb628d0f77a7642b4627901.md) | 169 | `result-track:7eb628d0f77a7642b46279010401a413bfe53a0dbfcb12a26f02e8c04f924ea8` |
| 36 | `theorem` | [inv_sub_inv](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/inv-sub-inv--72a9fd6784123a0d58baf10c.md) | 173 | `result-track:72a9fd6784123a0d58baf10c42c397b4a0458f11c00a44926a0ebb22454e9358` |
| 37 | `theorem` | [sub_div'](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/sub-div--7c5ace56cff325e0a6579e45.md) | 177 | `result-track:7c5ace56cff325e0a6579e45dca5428df59c4c7684b95092cfba16009af6c7b2` |
| 38 | `theorem` | [div_sub'](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/div-sub--3a692d4133737e2ba69a98cc.md) | 181 | `result-track:3a692d4133737e2ba69a98cc3fbb89a897c3fb98e7a3347735444a62b57f3f3a` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instance--a22648f85e7cdf1313b5b431.md) | 185 | `declaration-track:a22648f85e7cdf1313b5b43110acdcfd4493f2587f951bb6421a78f0b23e99cf` |
| 40 | `abbrev` | [DivisionRing.ofIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/divisionring-ofisunitoreqzero--d3b9eba235c2f05eccb42345.md) | 196 | `declaration-track:d3b9eba235c2f05eccb42345eec6fb167229aa17a8431d8f80d5e052bcbf31dd` |
| 41 | `abbrev` | [Field.ofIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/field-ofisunitoreqzero--87306d95a5d696ea3a44768d.md) | 207 | `declaration-track:87306d95a5d696ea3a44768d3e78a9adfd11a2899f679cb91c803ed18120d10e` |
| 42 | `abbrev` | [divisionSemiring](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/divisionsemiring--2135bf631b3a236f9941bf61.md) | 221 | `declaration-track:2135bf631b3a236f9941bf6180f03f3c02548e33c6ab3728ca9c116011df5a3d` |
| 43 | `abbrev` | [divisionRing](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/divisionring--d41369584dbf6fc9e9f4b510.md) | 235 | `declaration-track:d41369584dbf6fc9e9f4b510141936f34322fc4344a38c55c0cb35f057f94176` |
| 44 | `abbrev` | [semifield](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/semifield--596367997425a2b5a89bd5d0.md) | 253 | `declaration-track:596367997425a2b5a89bd5d0d12798082ff528cb7e772a62358655aa76484066` |
| 45 | `abbrev` | [field](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/field--38a6d384b3dff89d888ec262.md) | 265 | `declaration-track:38a6d384b3dff89d888ec2624260c752c330e5502dc060024d27a27a8d6f3632` |
| 46 | `instance` | [instRatCast](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instratcast--01c9d5e99eb4fc55e32cfacd.md) | 285 | `declaration-track:01c9d5e99eb4fc55e32cfacd90360b8214096c5c5a8c914d98e4ff2562612c55` |
| 47 | `instance` | [instDivisionSemiring](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instdivisionsemiring--ce21bc6f52a7b53ace2ee4a7.md) | 286 | `declaration-track:ce21bc6f52a7b53ace2ee4a72d9a777dd6061b0c6a36f871d2fc128c7496e009` |
| 48 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instdivisionring--31dcfa23ec86a8d9f04a07b5.md) | 287 | `declaration-track:31dcfa23ec86a8d9f04a07b564dcc09a00a6cc6ca056187337fd1b6d0eb5aced` |
| 49 | `instance` | [instSemifield](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instsemifield--637f3f8d8745ca00750745b7.md) | 288 | `declaration-track:637f3f8d8745ca00750745b7c36090a446879f3e2229702b6cb0e0a07de197de` |
| 50 | `instance` | [instField](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instfield--eaf2d276ba1c32acab44a441.md) | 289 | `declaration-track:eaf2d276ba1c32acab44a44130fec6c7ce79b75eb6130b5ef0ae1ed3a98c90a2` |
| 51 | `lemma` | [toDual_ratCast](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/todual-ratcast--7d3fcf0dc6a6f4150159810a.md) | 293 | `result-track:7d3fcf0dc6a6f4150159810a846244e27ef8d83a30a86ae401d153de74795a89` |
| 52 | `lemma` | [ofDual_ratCast](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/ofdual-ratcast--cf5d9c44103778918ee1b2c5.md) | 295 | `result-track:cf5d9c44103778918ee1b2c5596d014347f66bdc335aaf287ceb933a171b15ef` |
| 53 | `instance` | [instRatCast](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instratcast--b2b6a6343571a7067ef57259.md) | 301 | `declaration-track:b2b6a6343571a7067ef572594d2d2ce6884815a4200e08eb2e6fdd89fa91a1b6` |
| 54 | `instance` | [instDivisionSemiring](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instdivisionsemiring--a35b6bb2f24827fcba7326c3.md) | 302 | `declaration-track:a35b6bb2f24827fcba7326c39f992b8a19b917f15fa77b8c33b3536b33ab2396` |
| 55 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instdivisionring--1f6839a9e6ed5082b2fb9206.md) | 303 | `declaration-track:1f6839a9e6ed5082b2fb92065272e8d5c76b09c7a48fc329ea5fb0fd68671cef` |
| 56 | `instance` | [instSemifield](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instsemifield--113e78f6d8a704a432a7e7e0.md) | 304 | `declaration-track:113e78f6d8a704a432a7e7e09a8bfe2cd457225cb6951b99cdf0525ade0a178a` |
| 57 | `instance` | [instField](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/instfield--ddf8c31b4d2fefcd28112349.md) | 305 | `declaration-track:ddf8c31b4d2fefcd281123490d211dc49c17f843600fb902bbae4499502949fc` |
| 58 | `lemma` | [toLex_ratCast](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/tolex-ratcast--8a68616b62a13a8f55c890e5.md) | 309 | `result-track:8a68616b62a13a8f55c890e50497e038bee98842b1b2d814df30615e70803d78` |
| 59 | `lemma` | [ofLex_ratCast](../../../../mathematics/Algebra/Basic/Variant6b8259dd764b5211e5eb712541654bee49c674ef592c32c7b8829f7ce9dcef11.lean/declarations/oflex-ratcast--4456fa8b1d6755d1d769b33e.md) | 311 | `result-track:4456fa8b1d6755d1d769b33ea88100331a31d14d3c29be97cb9264dfd2d768bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
