# Verification target: GRWTSK.Algebra.Order.Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c98c0336347e11facf751562f35c6835ac27b186",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/index.md) · [Full source](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c98c0336347e11facf751562f35c6835ac27b186`.

Source path: `GRWTSK/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_coeff_ne_zero_iff_ne_zero](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/exists-coeff-ne-zero-iff-ne-zero--488b99137116dc5ad8ead4d4.md) | 53 | `result-track:488b99137116dc5ad8ead4d45781e9e28feaa860b148ab9b0da19a3c273bce07` |
| 2 | `def` | [order](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order--11be1ec3c4092fd49a95dcdf.md) | 59 | `declaration-track:11be1ec3c4092fd49a95dcdf70dce7c624cabcd515cfaeee4b52491767a0222d` |
| 3 | `theorem` | [order_zero](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-zero--38eb371cf1ba641102bbc541.md) | 66 | `result-track:38eb371cf1ba641102bbc54174aac46f7a1be02749e9a4402c206acbedbb7797` |
| 4 | `theorem` | [order_finite_iff_ne_zero](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-finite-iff-ne-zero--2cf64f4919175edbd026c773.md) | 69 | `result-track:2cf64f4919175edbd026c7739c54d41639fbbd3e76e5517392556443fce549aa` |
| 5 | `theorem` | [order_eq_top](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-eq-top--77a042969303521152e16841.md) | 75 | `result-track:77a042969303521152e1684174276cf97f01449820b59cfe9b0b4fec763b87ec` |
| 6 | `theorem` | [coe_toNat_order](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/coe-tonat-order--1bf77d7a81e753edf1bb0422.md) | 78 | `result-track:1bf77d7a81e753edf1bb04226559bc9eb0e67dc204cf991d520e4f837370ee0a` |
| 7 | `theorem` | [coeff_order](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/coeff-order--c38d94c2084e3a9c36f5294e.md) | 83 | `result-track:c38d94c2084e3a9c36f5294e5b53054434155d8820afa4564b0d9908f51eb3e7` |
| 8 | `theorem` | [order_le](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-le--619a9fbc5be2a8d38f1a0b0b.md) | 91 | `result-track:619a9fbc5be2a8d38f1a0b0b447523cdadc930d63d5781cf9f3e5d6805d895e3` |
| 9 | `theorem` | [coeff_of_lt_order](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/coeff-of-lt-order--f19343eb9aaf6add772a26f5.md) | 98 | `result-track:f19343eb9aaf6add772a26f54b53f2053e8b0752893eeb079d74f8fc8fb75682` |
| 10 | `theorem` | [coeff_of_lt_order_toNat](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/coeff-of-lt-order-tonat--f6dcf7b3afaf514887b471f1.md) | 102 | `result-track:f6dcf7b3afaf514887b471f157b7d34b69d10a46e67dde6f6f2008f3bc05bbf8` |
| 11 | `theorem` | [nat_le_order](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/nat-le-order--c56ec0c07295387b09105e7b.md) | 110 | `result-track:c56ec0c07295387b09105e7b7ae3c1bf69c94f905b8b3574a6cd6a245b977f23` |
| 12 | `theorem` | [le_order](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/le-order--b380cba6cfdb0cc63025b0fe.md) | 118 | `result-track:b380cba6cfdb0cc63025b0fee01f205ce47ca92ade824a81417e422dd26c099a` |
| 13 | `theorem` | [order_eq_nat](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-eq-nat--3d22a7f0312a0f9239e909bb.md) | 128 | `result-track:3d22a7f0312a0f9239e909bbea784c8e2cecd818faca07f26fbf5a422083bddd` |
| 14 | `theorem` | [order_eq](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-eq--6647295af6253614cc4ce96a.md) | 136 | `result-track:6647295af6253614cc4ce96a9549ba28bf48ecb4782b0e8cdaa7aa3c7009e28d` |
| 15 | `theorem` | [order_eq_order](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-eq-order--ab861dc8a0cf9d5262514fe3.md) | 142 | `result-track:ab861dc8a0cf9d5262514fe302f64aa88272e5b08e394d71a2aaaa053ac4a0e1` |
| 16 | `theorem` | [min_order_le_order_add](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/min-order-le-order-add--ffaa1995c519aa5d785b686d.md) | 154 | `result-track:ffaa1995c519aa5d785b686d657e450f28e7fa0e8650fd14e7de2a9d9a616bde` |
| 17 | `theorem` | [order_add_of_order_ne.aux](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-add-of-order-ne-aux--2d37d2fb794a5ab1d34ec624.md) | 158 | `result-track:2d37d2fb794a5ab1d34ec6248031655b7efecc0fe66ff5979f3dfea6ff07cc74` |
| 18 | `theorem` | [order_add_of_order_ne](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-add-of-order-ne--6452bbd5c60572963156c9e3.md) | 175 | `result-track:6452bbd5c60572963156c9e361c7b51b7761a777b9ceb76d8fccea53c5495d01` |
| 19 | `theorem` | [le_order_map](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/le-order-map--d6fe56024b2673a26613a231.md) | 182 | `result-track:d6fe56024b2673a26613a231965e8c51b1b02b8fe90dae3eee32258a8dd755e3` |
| 20 | `theorem` | [le_order_smul](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/le-order-smul--13c6a429d952661774462564.md) | 186 | `result-track:13c6a429d952661774462564ade0e576c89d1815ee46e73159e8e81349b32167` |
| 21 | `theorem` | [le_order_mul](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/le-order-mul--1730fc984ef056de42a71060.md) | 192 | `result-track:1730fc984ef056de42a7106071d2fb0f7e86601bba295beb646267444c78f573` |
| 22 | `theorem` | [le_order_pow](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/le-order-pow--008bc586fccdf0dc8227f772.md) | 205 | `result-track:008bc586fccdf0dc8227f772547f99de2a7331f1e7258ec30022a164314e0ad1` |
| 23 | `theorem` | [le_order_prod](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/le-order-prod--1a7b79d1abd5d599c889d1d6.md) | 210 | `result-track:1a7b79d1abd5d599c889d1d64d783e164ebda055e7aa14c596a200b98e27a95b` |
| 24 | `theorem` | [one_le_order_iff_constCoeff_eq_zero](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/one-le-order-iff-constcoeff-eq-zero--9df04d29b4c4c66fd528084d.md) | 218 | `result-track:9df04d29b4c4c66fd528084d74bf45c53ac6d5a634d5f9385c1e4e37ecd6d0df` |
| 25 | `theorem` | [order_ne_zero_iff_constCoeff_eq_zero](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-ne-zero-iff-constcoeff-eq-zero--efe774474b8ea61235883782.md) | 230 | `result-track:efe774474b8ea61235883782c260c64a5dc69c6ec1f969946dfd28e61d312a3d` |
| 26 | `theorem` | [le_order_pow_of_constantCoeff_eq_zero](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/le-order-pow-of-constantcoeff-eq-zero--9514ecb967d229f602675567.md) | 234 | `result-track:9514ecb967d229f602675567f4829d3ce585cfc247c8a5865f2dc1e6ce52a7ac` |
| 27 | `theorem` | [order_monomial](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-monomial--12dc34628baeb41b22434d4a.md) | 240 | `result-track:12dc34628baeb41b22434d4ac996f581e777dc7bff2749c833b261f2d2a26ee5` |
| 28 | `theorem` | [order_monomial_of_ne_zero](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-monomial-of-ne-zero--cf4ffb94f5d02b1c904e222f.md) | 253 | `result-track:cf4ffb94f5d02b1c904e222f17f9d3d216a576771f8fd3bc3ec0df63b446ac52` |
| 29 | `theorem` | [coeff_mul_of_lt_order](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/coeff-mul-of-lt-order--18256aee962b062213c29c4d.md) | 259 | `result-track:18256aee962b062213c29c4d54e70e7d5906a186c1bc073dfb3f893b9a64303b` |
| 30 | `theorem` | [coeff_mul_one_sub_of_lt_order](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/coeff-mul-one-sub-of-lt-order--ce08aeb02e40cf0ec605f17f.md) | 270 | `result-track:ce08aeb02e40cf0ec605f17f7391fb8b21c50e0521bd02aa7cb871d345254c84` |
| 31 | `theorem` | [coeff_mul_prod_one_sub_of_lt_order](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/coeff-mul-prod-one-sub-of-lt-order--97ca0dfc73651269e4147c2f.md) | 274 | `result-track:97ca0dfc73651269e4147c2f9b422d9f9b3cb8caf35682771fb51c03c5eede65` |
| 32 | `theorem` | [order_neg](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-neg--e001a565ebe1c5749d609688.md) | 287 | `result-track:e001a565ebe1c5749d609688fbaaedd88176f5e2d11f4ca4025e364372299006` |
| 33 | `def` | [divXPowOrder](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/divxpoworder--8176c655dd13ea69e2e9a538.md) | 294 | `declaration-track:8176c655dd13ea69e2e9a538d835b5799ee02b2a3faafff181d815aaf0522c91` |
| 34 | `lemma` | [coeff_divXPowOrder](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/coeff-divxpoworder--ad421946eee427e2b9957c1d.md) | 298 | `result-track:ad421946eee427e2b9957c1d124593e5520fe8831db49250e202a653509c0e5b` |
| 35 | `lemma` | [divXPowOrder_zero](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/divxpoworder-zero--5d3e88643da523bacbc38da1.md) | 303 | `result-track:5d3e88643da523bacbc38da1e359cded90fbd7a616b65f59f6ec4a3982d5b096` |
| 36 | `lemma` | [constantCoeff_divXPowOrder](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/constantcoeff-divxpoworder--22145c1fd76642225db364ee.md) | 308 | `result-track:22145c1fd76642225db364ee3739b55a8774f53036964068ca70cb861807d6ac` |
| 37 | `lemma` | [constantCoeff_divXPowOrder_eq_zero_iff](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/constantcoeff-divxpoworder-eq-zero-iff--3510f7c7c3a68f7d531c3731.md) | 312 | `result-track:3510f7c7c3a68f7d531c3731a29529e7d3d15d0b734c81fb455791d2ac04d4a6` |
| 38 | `theorem` | [X_pow_order_mul_divXPowOrder](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/x-pow-order-mul-divxpoworder--69e23cffeeae94ff3683dc14.md) | 318 | `result-track:69e23cffeeae94ff3683dc14a8bce10e764d46f9aa38af6998b1085b9af01029` |
| 39 | `theorem` | [X_pow_order_dvd](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/x-pow-order-dvd--bce46953adf08bd0138ff217.md) | 327 | `result-track:bce46953adf08bd0138ff2175462c56bc31779c2a3167d6a54afacc998685918` |
| 40 | `theorem` | [order_eq_emultiplicity_X](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-eq-emultiplicity-x--c5d422d20c93dad1cb91dcfa.md) | 330 | `result-track:c5d422d20c93dad1cb91dcfa2df1a6e59937edd4ae51684bb63914d8895a0258` |
| 41 | `theorem` | [order_one](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-one--418ffe79064be2d36cdbab76.md) | 363 | `result-track:418ffe79064be2d36cdbab768e9fe8b538712166f34eab8af841b78fbe3a52b6` |
| 42 | `theorem` | [order_zero_of_isUnit](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-zero-of-isunit--764663c9af1b08e8f7dccc1f.md) | 367 | `result-track:764663c9af1b08e8f7dccc1f8bbef416ee681fd3f13206eb245093b9b0a268c9` |
| 43 | `theorem` | [order_X](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-x--d699a28e6b02e60e0291b1f5.md) | 378 | `result-track:d699a28e6b02e60e0291b1f5f395c4896ec7efea42467dbff051593355345806` |
| 44 | `theorem` | [order_X_pow](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-x-pow--ca0cbab65355e1b0ee1cf0b2.md) | 383 | `result-track:ca0cbab65355e1b0ee1cf0b210e9e99a92bc9d3de0ccbeed81117cffc334f642` |
| 45 | `theorem` | [divXPowOrder_X](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/divxpoworder-x--322741e5d1fc5dcde7485e11.md) | 389 | `result-track:322741e5d1fc5dcde7485e11d17ec1f2f8aa95af5d4de1284393ec6ededb0484` |
| 46 | `theorem` | [divXPowOrder_one](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/divxpoworder-one--307c1e2a495533bb3cdb1892.md) | 394 | `result-track:307c1e2a495533bb3cdb18927d4479f0cbd051e45399f1a26495c994f3c822a5` |
| 47 | `theorem` | [order_mul](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-mul--9dece6f8bb38344dc28e10d1.md) | 406 | `result-track:9dece6f8bb38344dc28e10d137231cbad8d64d9618ffd69a7cc947acdb1ea53d` |
| 48 | `theorem` | [divXPowOrder_mul](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/divxpoworder-mul--cd7d3cd4083fcbb69e3260b6.md) | 422 | `result-track:cd7d3cd4083fcbb69e3260b6b6e31be13b32ddb58d0372cea7835b62c4211cc6` |
| 49 | `def` | [orderHom](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/orderhom--1d819796ec7bb88d1a72ae65.md) | 442 | `declaration-track:1d819796ec7bb88d1a72ae652458b3f99ce21af1a65dd935af704579d3668975` |
| 50 | `lemma` | [coe_orderHom](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/coe-orderhom--8159cc8bbaeb5b9a14f4e9fa.md) | 448 | `result-track:8159cc8bbaeb5b9a14f4e9fa5aea1519b6a3cd6bec3e8bf3a6bc90bbdd9df664` |
| 51 | `theorem` | [order_pow](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-pow--7daeeaf79654022f60646e6b.md) | 450 | `result-track:7daeeaf79654022f60646e6b1fb1f08629731f89bac1b34512265b7835d42cf7` |
| 52 | `theorem` | [order_prod](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-prod--d74e0d56856a583dfd1f50f6.md) | 453 | `result-track:d74e0d56856a583dfd1f50f635019eaea54e4721b778c9cf27e7eb3c1ef22e1d` |
| 53 | `def` | [divXPowOrderHom](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/divxpoworderhom--9421e661ee5b609ca8dc207e.md) | 458 | `declaration-track:9421e661ee5b609ca8dc207ec7b0a1f657ec56e7e664f137f82ea0724496d2ad` |
| 54 | `lemma` | [coe_divXPowOrderHom](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/coe-divxpoworderhom--86bdb114f6a04fae554849e4.md) | 464 | `result-track:86bdb114f6a04fae554849e416ca9214bf61b7529328f95f22e25c8a4781ed17` |
| 55 | `theorem` | [divXPowOrder_pow](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/divxpoworder-pow--4ac3b65486fef6759ececfc1.md) | 466 | `result-track:4ac3b65486fef6759ececfc1fd7f2498e23293377229f4e6b34d502fb8a0019b` |
| 56 | `theorem` | [divXPowOrder_prod](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/divxpoworder-prod--509a3ee5edc4e36dae25e492.md) | 469 | `result-track:509a3ee5edc4e36dae25e4925fba5cc31bb49bfcaf6847fe963ab7f007de090d` |
| 57 | `theorem` | [order_toSubring](../../../../mathematics/Algebra/Order/Variant5b20bd34eedde0714131cf74ee56cdcbb9b8cf56dbccfd4d467b38d4294a5717.lean/declarations/order-tosubring--7253194e9656e7039fc1820d.md) | 480 | `result-track:7253194e9656e7039fc1820d857f5dc126a45fbe892a3ec9658127f792e0fee5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
