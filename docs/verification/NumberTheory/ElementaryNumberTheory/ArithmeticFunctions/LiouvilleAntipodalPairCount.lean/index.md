# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleAntipodalPairCount

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8a3e4dc67c47ba68cc588cb5d61ab5e41c6c6c3",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8a3e4dc67c47ba68cc588cb5d61ab5e41c6c6c3`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleDyadicSignedPairing`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.FiniteAntipodalWalshExpansion`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteAntipodalWalshExpansion.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAntipodalPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/isantipodalpair--93671f78c97f3149ca9960c0.md) | 31 | `declaration-track:93671f78c97f3149ca9960c0e11d6fd9ed57b7f436501c7ed827b758d5db53df` |
| 2 | `def` | [antipodalPairCount](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodalpaircount--a9930916bb1237a83f091346.md) | 37 | `declaration-track:a9930916bb1237a83f0913464c7e2534e5db25a6fd986f78f4cfb8af36f24337` |
| 3 | `theorem` | [antipodalPairCount_empty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodalpaircount-empty--a821dcdb79e47663894049b6.md) | 42 | `result-track:a821dcdb79e47663894049b6880d7ad376c4d9e75b590b64e2d7b6a5d9427897` |
| 4 | `theorem` | [antipodal_factor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodal-factor--09d1c69e9529e4932af31348.md) | 49 | `result-track:09d1c69e9529e4932af313488c71aa3b6068318b024af6d60778dc05e2f3a2c4` |
| 5 | `theorem` | [antipodal_character_product](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodal-character-product--b6de2cd420c202fafbdca542.md) | 57 | `result-track:b6de2cd420c202fafbdca54227c95b780faf1bf4865c822a9a9c31d74acfb90b` |
| 6 | `theorem` | [antipodal_character_product_rat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodal-character-product-rat--26cf1d07331703e785e9adc0.md) | 81 | `result-track:26cf1d07331703e785e9adc0fd757c696e28b5fcef5e7262d8f33c25cd23162b` |
| 7 | `theorem` | [antipodal_character_powerset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodal-character-powerset--b1928acbad19c79803c34d69.md) | 92 | `result-track:b1928acbad19c79803c34d6947788ae248947c6d72ebecc6e02dfbda29b6d102` |
| 8 | `theorem` | [antipodal_product_pair_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodal-product-pair-sum--78d6a75dd659b356b5d83f10.md) | 109 | `result-track:78d6a75dd659b356b5d83f10ea525e380cb7665eff94ea5a9e8e69d9f671eaa8` |
| 9 | `theorem` | [sum_powerset_product_commute](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/sum-powerset-product-commute--bd1e1a0aa4d1b6ae832b8adc.md) | 127 | `result-track:bd1e1a0aa4d1b6ae832b8adc42633b4385760a9430e81ea0f02b0c85591ee241` |
| 10 | `theorem` | [sum_powerset_empty_and_nonempty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/sum-powerset-empty-and-nonempty--d797d6b9d63cc1461bfe7b09.md) | 139 | `result-track:d797d6b9d63cc1461bfe7b09948b8fc82079eaa047f504ed9f9ffebcd01e29e0` |
| 11 | `theorem` | [sum_root_pair_factor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/sum-root-pair-factor--4444e485af0ab912e9532297.md) | 151 | `result-track:4444e485af0ab912e9532297676cc6bcd25245d275ea6d9df0dc2607e50ba68f` |
| 12 | `theorem` | [normalized_root_pair_factor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/normalized-root-pair-factor--cfb641efd02b10d0128a077d.md) | 167 | `result-track:cfb641efd02b10d0128a077d707c0bbeb10958b2e56932be5cb9e3157e97eec8` |
| 13 | `theorem` | [antipodal_subset_product_factor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodal-subset-product-factor--3d531d1ddbb653b3deb6717f.md) | 179 | `result-track:3d531d1ddbb653b3deb6717f2ba15238efa798654b48aba14f2844ce66632a8c` |
| 14 | `theorem` | [antipodal_subset_normalized_factor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodal-subset-normalized-factor--c19388cb1ee1c2bf16f9e6d3.md) | 194 | `result-track:c19388cb1ee1c2bf16f9e6d300cae9cc7a9d1276af7489c46417f0cc56e4c61b` |
| 15 | `def` | [shiftSubtypeEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubtypeequiv--47d6284c07f32192a3a66960.md) | 217 | `declaration-track:47d6284c07f32192a3a6696008c021354a63554e4d905941faeca253da5775ee` |
| 16 | `def` | [shiftSubsetValues](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubsetvalues--67050fc210aeca4b659c8259.md) | 224 | `declaration-track:67050fc210aeca4b659c8259c92915164dca37a68e15033dab12945d7fc9bd9d` |
| 17 | `theorem` | [shiftSubsetValues_subset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubsetvalues-subset--eab44b487ae0f638d5eceb9d.md) | 229 | `result-track:eab44b487ae0f638d5eceb9db0cfc4c1d7f32ce46e1dc414f0157883d093905f` |
| 18 | `theorem` | [shiftSubsetValues_mem_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubsetvalues-mem-iff--96331f476964de25f87e7d63.md) | 238 | `result-track:96331f476964de25f87e7d63e1a23fa2dc5624f85d7e74e4aa9bc37a77414e59` |
| 19 | `theorem` | [shiftSubsetValues_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubsetvalues-card--e0bd9374644bcae945c5f45e.md) | 252 | `result-track:e0bd9374644bcae945c5f45e25368249aa5d50950c642f4771dd840615b18e6d` |
| 20 | `def` | [shiftSubsetOfValues](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubsetofvalues--2d1877b74d95be360ea51d28.md) | 260 | `declaration-track:2d1877b74d95be360ea51d282dcb331d5bbfeb41f197c72dcbca26caa84ea30e` |
| 21 | `theorem` | [shiftSubsetOfValues_values](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubsetofvalues-values--78b4bad643a7caa577caeebe.md) | 266 | `result-track:78b4bad643a7caa577caeebeac507ef1fb5ecbe96d434d50292dc4911a9a82e5` |
| 22 | `theorem` | [shiftSubsetValues_ofValues](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubsetvalues-ofvalues--d7a06102f4c11223af743a68.md) | 274 | `result-track:d7a06102f4c11223af743a68786d488cb91e4ff79905ec10646501d2bd42f37a` |
| 23 | `def` | [shiftPowersetEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftpowersetequiv--8593583aca13b1a3fab37297.md) | 290 | `declaration-track:8593583aca13b1a3fab37297e1f461f4c27ca54c00c51aa36e18945393862f70` |
| 24 | `theorem` | [shiftSubsetValues_prod](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubsetvalues-prod--9dcfb61d4ec8fd166ed4a669.md) | 307 | `result-track:9dcfb61d4ec8fd166ed4a669442606e72ecb4a03da512bf1c9025cdb9d31311e` |
| 25 | `theorem` | [sum_powerset_eq_subtype_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/sum-powerset-eq-subtype-sum--94c37d2b9ef41ddff704d4c1.md) | 321 | `result-track:94c37d2b9ef41ddff704d4c1bcf576c66b59ed5d936b6d3c33992e495cddf0c9` |
| 26 | `theorem` | [antipodalPairCount_le_square](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodalpaircount-le-square--a9b17386babac6a0032bad7d.md) | 339 | `result-track:a9b17386babac6a0032bad7d31cfe2184f02493c4792090f413ea0de31a85a7f` |
| 27 | `theorem` | [antipodalPairCount_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodalpaircount-zero--be3c1ae1c4ddfba1148aa3ce.md) | 352 | `result-track:be3c1ae1c4ddfba1148aa3ce35c8cd7bd63339acbb953687677ac6e053271bd3` |
| 28 | `theorem` | [antipodalPairFrequency_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/antipodalpairfrequency-bounds--63df7fecb2812512500adef7.md) | 359 | `result-track:63df7fecb2812512500adef7a727e58c9ab068af680b070660a14a4d77ebf696` |
| 29 | `theorem` | [subtype_character_sum_empty_split](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/subtype-character-sum-empty-split--8cc19221f7fad5fa55922ada.md) | 373 | `result-track:8cc19221f7fad5fa55922adae39d6292a2943f947ba35b07180e11bf429d7a70` |
| 30 | `theorem` | [empty_character_root_pair_normalization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/empty-character-root-pair-normalization--23ea3aafbd4532df4531861a.md) | 388 | `result-track:23ea3aafbd4532df4531861a435c63d387d03011b9e587075b6ce564a1089fdb` |
| 31 | `theorem` | [normalized_antipodal_product_eq_frequency](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/normalized-antipodal-product-eq-frequency--b94394a8d9519c1f53944c05.md) | 401 | `result-track:b94394a8d9519c1f53944c05038138eb583d963dd2123989570a20e9fb8e1f00` |
| 32 | `theorem` | [normalized_powerset_pair_sum_commute](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/normalized-powerset-pair-sum-commute--fdbb1788546d6472bc5cb2bd.md) | 415 | `result-track:fdbb1788546d6472bc5cb2bd87b677b1c2b120d7ff6cc4455d2fa59d73992339` |
| 33 | `theorem` | [normalized_antipodal_character_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/normalized-antipodal-character-term--d76a7fba10ed31883fa3c53d.md) | 427 | `result-track:d76a7fba10ed31883fa3c53d6185a09888c60f0326b38fa5500b25dcde0a7145` |
| 34 | `theorem` | [normalized_powerset_character_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/normalized-powerset-character-sum--1bec4364bdc7cd7c48a330c9.md) | 455 | `result-track:1bec4364bdc7cd7c48a330c9a6eb1addfd85daa4399ef94a8f9f608fb0df7854` |
| 35 | `theorem` | [shiftSubsetValues_sourceMean](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubsetvalues-sourcemean--53d17c26d800310e031d0d8a.md) | 468 | `result-track:53d17c26d800310e031d0d8aa0d328eb17eca7670c5d18b8cdb034f82cc6b307` |
| 36 | `theorem` | [shiftSubsetValues_residualMean](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/shiftsubsetvalues-residualmean--160ee6dd13065f9173fc3ed2.md) | 485 | `result-track:160ee6dd13065f9173fc3ed2e65e1104650035c260f3501d1f2f366338f35752` |
| 37 | `theorem` | [normalized_subtype_character_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/normalized-subtype-character-term--d8c34bee4276f5aba209264e.md) | 502 | `result-track:d8c34bee4276f5aba209264ef4ae1f9e08767e3eb6b749a2c402fc455955547d` |
| 38 | `theorem` | [normalized_nonempty_subtype_characters_eq_mixed](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/normalized-nonempty-subtype-characters-eq-mixed--dcb50027df560f319a2d33ff.md) | 520 | `result-track:dcb50027df560f319a2d33ff6d4bafbd5deb2b0a6ade62ae4e8541b94c3106d7` |
| 39 | `theorem` | [normalized_full_subtype_characters_eq_one_add_mixed](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/normalized-full-subtype-characters-eq-one-add-mixed--4e94c05bef1756a81e186539.md) | 539 | `result-track:4e94c05bef1756a81e1865396952486c77bc053ca1771171a7295f5110c273af` |
| 40 | `theorem` | [normalized_full_powerset_eq_subtype_characters](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/normalized-full-powerset-eq-subtype-characters--2482f54917a84f0051f0746e.md) | 563 | `result-track:2482f54917a84f0051f0746eac5505ed567243733929e888733d0a963a7ccff9` |
| 41 | `theorem` | [dyadicSignedMixedEnergy_eq_antipodal_count](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/dyadicsignedmixedenergy-eq-antipodal-count--9c294ef2229f6bbdda741de1.md) | 592 | `result-track:9c294ef2229f6bbdda741de100299e8a5cc510421063786558fd9ef803bf7cf2` |
| 42 | `theorem` | [canonicalOddLiftEnergy_eq_antipodal_count](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/canonicaloddliftenergy-eq-antipodal-count--08edc108b57d19491cf4f3ca.md) | 627 | `result-track:08edc108b57d19491cf4f3ca29a98f07033130ac133b269dcae661515977a737` |
| 43 | `theorem` | [canonicalOddLiftEnergy_antipodal_lower_bound](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/canonicaloddliftenergy-antipodal-lower-bound--a42b81bc259b8dd3483a0ae9.md) | 642 | `result-track:a42b81bc259b8dd3483a0ae9e2ba7d0012f4e9d6eb97a76c9b5260dc0e151bca` |
| 44 | `theorem` | [canonicalOddLiftEnergy_le_iff_antipodal_budget](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/canonicaloddliftenergy-le-iff-antipodal-budget--0d4dca140145d77e3a630963.md) | 658 | `result-track:0d4dca140145d77e3a6309639b738f8b7618a34890f0a3ec35217d8dc226c2e7` |
| 45 | `theorem` | [canonicalOddLiftEnergy_le_of_antipodal_margin](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/canonicaloddliftenergy-le-of-antipodal-margin--0e9a11a9db37dd1b08db606c.md) | 673 | `result-track:0e9a11a9db37dd1b08db606ca15e428c3eb287e7692119981a99cb81b4da2756` |
| 46 | `theorem` | [canonicalOddLiftCyclicTV_le_of_antipodal_margin](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/declarations/canonicaloddliftcyclictv-le-of-antipodal-margin--a96a27b3c95ece0041bd6316.md) | 687 | `result-track:a96a27b3c95ece0041bd63169171b4875a3b7eccfb22ad6e0956618dc7df0905` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
