# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "272556eb3ae07bfdf78b85b84fb98e02043967c6",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `272556eb3ae07bfdf78b85b84fb98e02043967c6`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean.json)

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
| 1 | `structure` | [Monomial](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/monomial--8a606da78744a076ca049ff8.md) | 44 | `declaration-track:8a606da78744a076ca049ff8ed0fdcc87766a1e0ee7313c87290a81a05288839` |
| 2 | `def` | [toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun--daccb2048daca0cb4aa0ba92.md) | 53 | `declaration-track:daccb2048daca0cb4aa0ba92d35c9ea93c2f77c1559124a447723e7d3149caa0` |
| 3 | `def` | [toLogFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tologfun--78fc190ec0252eb35ae66a80.md) | 58 | `declaration-track:78fc190ec0252eb35ae66a8064cb577421e0fc5f62280983ba8713096ef2c03a` |
| 4 | `theorem` | [toFun_nil](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-nil--efca88daf7828299bb8260dc.md) | 62 | `result-track:efca88daf7828299bb8260dc5ea4c0fec40c017b445d7dbc75a54fa5b597522a` |
| 5 | `theorem` | [toFun_nil_basis](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-nil-basis--c7d721ce7e45f49a86ce8eae.md) | 67 | `result-track:c7d721ce7e45f49a86ce8eae8d472b85227c7bfd7a4e48a8664e503ea073e641` |
| 6 | `theorem` | [toFun_cons](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-cons--a1f8bc063dc722894b7496fa.md) | 72 | `result-track:a1f8bc063dc722894b7496fa33eee521d5ed598b016e2be041ad49345f5fd56d` |
| 7 | `theorem` | [toLogFun_nil](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tologfun-nil--6b55b821e53cd24d7eb2afbd.md) | 79 | `result-track:6b55b821e53cd24d7eb2afbdcf43164fc8eb03aa3e8cc12dc06ca80288f2ef9f` |
| 8 | `theorem` | [toLogFun_nil_basis](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tologfun-nil-basis--aea549a70b780a36b0490010.md) | 84 | `result-track:aea549a70b780a36b0490010e8b762207600b66f3a41292e51284ed560c26330` |
| 9 | `theorem` | [toLogFun_cons](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tologfun-cons--7b4d0d4374b9225bc02f6792.md) | 89 | `result-track:7b4d0d4374b9225bc02f679260320c1b65f89f02c88acc865a4b1cb36620525b` |
| 10 | `def` | [mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/mul--fa8422467580e4f411828748.md) | 96 | `declaration-track:fa8422467580e4f4118287486d4a896456f01954a936d8e26080f1a2821656ae` |
| 11 | `def` | [inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/inv--73f0ea63d807648c969a23ad.md) | 100 | `declaration-track:73f0ea63d807648c969a23ad4dc2af1b072ef79f5f820e2641a2e956a9763f88` |
| 12 | `theorem` | [mul_length](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/mul-length--60a99b70e4a4bd870ee891d5.md) | 103 | `result-track:60a99b70e4a4bd870ee891d516188fbee98149fa4f2d2b825b2f4d6de2d759bc` |
| 13 | `theorem` | [inv_length](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/inv-length--a3533b1ff68dc7b429f027e7.md) | 108 | `result-track:a3533b1ff68dc7b429f027e7754707d28d83c16cac630595b0ed9928086de632` |
| 14 | `theorem` | [mul_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/mul-tofun--4124bc0d490d7e4280538a9b.md) | 112 | `result-track:4124bc0d490d7e4280538a9bf3638c643748fd62c91ce0863cffcaeede91bbd6` |
| 15 | `theorem` | [inv_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/inv-tofun--ef7543fe7befa852b43dd3b5.md) | 136 | `result-track:ef7543fe7befa852b43dd3b5385517ad199bea37259a6dda2825e0aa7d4d97c6` |
| 16 | `theorem` | [majorized_tail_toFun_head](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/majorized-tail-tofun-head--2ce9e447cc77c3049c2a8ac1.md) | 151 | `result-track:2ce9e447cc77c3049c2a8ac1f83ec821efc60d61c78a8a1611a63b7ce337fa4d` |
| 17 | `theorem` | [toFun_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-pos--93e62212a49017f69984b6cd.md) | 171 | `result-track:93e62212a49017f69984b6cd64d183d58c39cfd71173c526c5d4cd6e2333e291` |
| 18 | `theorem` | [toFun_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-ne-zero--9ff819a6f450322c16146dba.md) | 186 | `result-track:9ff819a6f450322c16146dba2a70b5a61aabe7f9c9e7331f80e91357c64bd74d` |
| 19 | `theorem` | [zeros_append_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/zeros-append-tofun--1088b21f961e8542d787bbb6.md) | 190 | `result-track:1088b21f961e8542d787bbb630144296484abb69440b8fa85983e21ba09d86d6` |
| 20 | `theorem` | [log_toFun_eq_toLogFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/log-tofun-eq-tologfun--c7f02bd2834db9f2cdeabe3e.md) | 196 | `result-track:c7f02bd2834db9f2cdeabe3ed1b0be0d0c1b7252e3b627383e2ecb38cdf43b2b` |
| 21 | `theorem` | [toLogFun_isEquivalent_of_nonzero_head](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tologfun-isequivalent-of-nonzero-head--c6de021bbf8075d1535be0a4.md) | 215 | `result-track:c6de021bbf8075d1535be0a44f81bf6d723e8143d6dc12a96c5f58a06940db91` |
| 22 | `theorem` | [toFun_tendsto_top_of_head_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-tendsto-top-of-head-pos--d5a6290eb1b744dff1dca6f1.md) | 238 | `result-track:d5a6290eb1b744dff1dca6f101afc107a00e9cd9509a3995829ee25340697658` |
| 23 | `theorem` | [toFun_tendsto_zero_of_head_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-tendsto-zero-of-head-neg--d577c6297890a9b9e97c677e.md) | 259 | `result-track:d577c6297890a9b9e97c677eaacbedf2234b38d0265457d1d7771b643daf07c6` |
| 24 | `theorem` | [toFun_tendsto_top_of_firstNonzeroIsPos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-tendsto-top-of-firstnonzeroispos--48e9f7c7365f3fdab98ec496.md) | 281 | `result-track:48e9f7c7365f3fdab98ec496c4033ca92e8911ff43d4e9390c890d81e1b19a98` |
| 25 | `theorem` | [toFun_tendsto_zero_of_firstNonzeroIsNeg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-tendsto-zero-of-firstnonzeroisneg--ec5f1477d2dc6223b28f73ea.md) | 300 | `result-track:ec5f1477d2dc6223b28f73ea786851bfeb82a497061dc7058fb48ad6648bad0a` |
| 26 | `theorem` | [toFun_tendsto_one_of_allZero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-tendsto-one-of-allzero--6ecf383a1e58f816ddef4c5a.md) | 319 | `result-track:6ecf383a1e58f816ddef4c5a98b080faade3f41a62e707480a55edf4abc138e2` |
| 27 | `lemma` | [isLittleO_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/islittleo-of-lt--07de1e514295dc91624b3341.md) | 338 | `result-track:07de1e514295dc91624b3341c4916ee5a17040256e1a36b090069099e376d6b9` |
| 28 | `def` | [toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun--ef985a6d5191443969fc3a08.md) | 379 | `declaration-track:ef985a6d5191443969fc3a08bb01d17ca56359504e5f2a87e4e278e3a5e69d9e` |
| 29 | `theorem` | [nil_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/nil-tofun--fbe1c8ba9072d66fce5bdf9f.md) | 383 | `result-track:fbe1c8ba9072d66fce5bdf9f82e050f3f6bb301e5195107f19da178b2bab85b9` |
| 30 | `theorem` | [cons_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/cons-tofun--8491be46cab97e00db274d74.md) | 389 | `result-track:8491be46cab97e00db274d74bb70c319383d31c238684f01e924b0379983a9ce` |
| 31 | `theorem` | [zero_coef_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/zero-coef-tofun--b6421d79133ce096199eb7e4.md) | 397 | `result-track:b6421d79133ce096199eb7e41a98d0d8486f8375d4880969d6b6e58ded416b27` |
| 32 | `theorem` | [zero_coef_toFun'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/zero-coef-tofun--19e5a2abb42349b378d5b931.md) | 402 | `result-track:19e5a2abb42349b378d5b9311be9f85bb175cece8c6e62a7d959d4dd09abb2ae` |
| 33 | `def` | [neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/neg--c1434ddc8a47c3ad6389b82e.md) | 406 | `declaration-track:c1434ddc8a47c3ad6389b82e5cba5bc953c4b2533f33374d94a57f5614aa88cc` |
| 34 | `def` | [mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/mul--4f119a958386a296aac30e42.md) | 410 | `declaration-track:4f119a958386a296aac30e42520e462ab55c6bfa331b1bfea954ba1ffb5f85d7` |
| 35 | `def` | [smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/smul--22a2ee17ef84517084c41005.md) | 414 | `declaration-track:22a2ee17ef84517084c41005b28a4e41908118150402b42a541b5f98d3955fd6` |
| 36 | `def` | [inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/inv--4287e7099ab39b8c69ca0bf6.md) | 418 | `declaration-track:4287e7099ab39b8c69ca0bf60796397e7159ea568c0e01f65d46d682905eee0b` |
| 37 | `theorem` | [neg_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/neg-tofun--1868b42c84e0a32fd315fd66.md) | 424 | `result-track:1868b42c84e0a32fd315fd66e27cc43f3118c8b12db6fe3303bf696f2de9a95f` |
| 38 | `theorem` | [mul_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/mul-tofun--c53f88ba49fdb05982a8dab3.md) | 429 | `result-track:c53f88ba49fdb05982a8dab3e72e430be382a504804fc838a67145d28e01c058` |
| 39 | `theorem` | [smul_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/smul-tofun--f1713debdb9f23c219eb00b9.md) | 438 | `result-track:f1713debdb9f23c219eb00b9855be73ac6116784b955c29bc49e4c9e9ac751b4` |
| 40 | `theorem` | [inv_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/inv-tofun--f1d8868c1d164ee0793728d9.md) | 444 | `result-track:f1d8868c1d164ee0793728d9b48ff059f989a8e665ee430d3497227bd9f1796a` |
| 41 | `theorem` | [inv_length](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/inv-length--268126b4377126ec279fbfa7.md) | 453 | `result-track:268126b4377126ec279fbfa7c0b0a0be8a04789b9467ce8f0b67251a8878c533` |
| 42 | `theorem` | [toFun_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-pos--44c94d1c8c7cc1d08b078a31.md) | 458 | `result-track:44c94d1c8c7cc1d08b078a31e9b1bbddedfdeb964a165a9a04021b366e956c05` |
| 43 | `theorem` | [zeros_append_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/zeros-append-tofun--8a8d50ea2c4c815a6bfce225.md) | 467 | `result-track:8a8d50ea2c4c815a6bfce225539fa983274347413454f2160fb5e50c3f270a31` |
| 44 | `theorem` | [tendsto_zero_of_coef_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tendsto-zero-of-coef-zero--a8b477b273f1a97130065371.md) | 473 | `result-track:a8b477b273f1a9713006537152bdd4c13eac8aa67231f8a3b3d1992697a99c52` |
| 45 | `theorem` | [toFun_tendsto_zero_of_firstNonzeroIsNeg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-tendsto-zero-of-firstnonzeroisneg--ae6a50745a646b417d3f8456.md) | 481 | `result-track:ae6a50745a646b417d3f84569fe9b2c320bd957df072d538e762a08d34bc2768` |
| 46 | `theorem` | [toFun_tendsto_top_of_firstNonzeroIsPos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-tendsto-top-of-firstnonzeroispos--1f8c4eb54290ae27389e1782.md) | 494 | `result-track:1f8c4eb54290ae27389e1782f116100938f4933cc1d4d47dfb77315a54236b13` |
| 47 | `theorem` | [toFun_tendsto_bot_of_firstNonzeroIsPos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-tendsto-bot-of-firstnonzeroispos--f2bd8a1f66f5f9bd3905c4b9.md) | 507 | `result-track:f2bd8a1f66f5f9bd3905c4b9003509b249b6cbd667e00939541e05e2515d6006` |
| 48 | `theorem` | [toFun_tendsto_const_of_allZero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/tofun-tendsto-const-of-allzero--709df8814616299d36900ed1.md) | 520 | `result-track:709df8814616299d36900ed1d7a7388a688f0df461a6dffdaf90d01902466a3e` |
| 49 | `theorem` | [majorized_tail_toFun_head](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/majorized-tail-tofun-head--9413585ea6eeffa903b03e36.md) | 530 | `result-track:9413585ea6eeffa903b03e36aa23e6bd20c34c8da3e6b0cc2fd01a7af579fbdf` |
| 50 | `lemma` | [isLittleO_of_lt_exps](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/islittleo-of-lt-exps--fe7c179bea9ec2645c49136a.md) | 536 | `result-track:fe7c179bea9ec2645c49136a6982c5cb81ddad60098dfab72c197c2c976413fe` |
| 51 | `theorem` | [isLittleO_of_lt_exps_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/islittleo-of-lt-exps-left--b8fcb3075c82d2ef559c45db.md) | 551 | `result-track:b8fcb3075c82d2ef559c45db7f492d124307a2f66a156761dfe131bfe8256070` |
| 52 | `theorem` | [isLittleO_of_lt_exps_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/declarations/islittleo-of-lt-exps-right--29253f0d462d24c95a0a677f.md) | 565 | `result-track:29253f0d462d24c95a0a677f275a9f694f57ba9efcc084be177e46265ce6ca41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
