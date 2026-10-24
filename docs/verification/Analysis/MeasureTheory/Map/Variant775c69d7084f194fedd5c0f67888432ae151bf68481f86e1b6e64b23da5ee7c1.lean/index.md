# Verification target: GRWTSK.Analysis.MeasureTheory.Map.Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "767657b96b1f0b439934e230c9561ca0d343244e",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `767657b96b1f0b439934e230c9561ca0d343244e`.

Source path: `GRWTSK/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean.json)

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
| 1 | `def` | [liftLinear](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/liftlinear--09b362a7e1bca1fc949859f0.md) | 47 | `declaration-track:09b362a7e1bca1fc949859f0c31191b689789836ac5027126e039299c166d676` |
| 2 | `lemma` | [liftLinear_apply₀](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/liftlinear-apply--23427350fab7ad8c6b1d48d1.md) | 58 | `result-track:23427350fab7ad8c6b1d48d18d587db11211c08ea08c88d1aa0f8276ea23aaec` |
| 3 | `theorem` | [liftLinear_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/liftlinear-apply--a2eb8a09a559e9db9be0c108.md) | 63 | `result-track:a2eb8a09a559e9db9be0c1084b921eecc2ccfc58ff3cbca3006f721a257726f5` |
| 4 | `theorem` | [le_liftLinear_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/le-liftlinear-apply--47553f1eaad2f19e7e6c0076.md) | 67 | `result-track:47553f1eaad2f19e7e6c007683f4c8b1a7be9fa073c66f4b412bb4f1db705877` |
| 5 | `def` | [mapₗ](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map--c030527871d067aae449d37c.md) | 75 | `declaration-track:c030527871d067aae449d37c24e07bc32bb8a96f5492285117c3a671a5f42a8e` |
| 6 | `theorem` | [mapₗ_congr](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-congr--df730dfad55a199b0ca5902a.md) | 82 | `result-track:df730dfad55a199b0ca5902aaaf70429e603d64e8bd5364ab9219662009c1ff3` |
| 7 | `lemma` | [nonempty_of_not_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/nonempty-of-not-aemeasurable--837440d7254006d60c223820.md) | 88 | `result-track:837440d7254006d60c223820aba6c8deee0dce954c5322441088520486cec29b` |
| 8 | `theorem` | [mapₗ_mk_apply_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-mk-apply-of-aemeasurable--a75663df9f25bb0b1369b50a.md) | 108 | `result-track:a75663df9f25bb0b1369b50a53d1b7628b2d07424fd87c784c808fa1ae873571` |
| 9 | `theorem` | [mapₗ_apply_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-apply-of-measurable--4897155c3c73555900e5eeb0.md) | 111 | `result-track:4897155c3c73555900e5eeb056c63c28254709385fa9e46db7e4d169e0d89523` |
| 10 | `theorem` | [map_add](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-add--0afb4af92bdbd70a283a1350.md) | 117 | `result-track:0afb4af92bdbd70a283a1350abdefa91a28e2db45cbdf6d699c60660bcd0b381` |
| 11 | `theorem` | [map_zero](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-zero--732ab50f56ec95e69d565765.md) | 121 | `result-track:732ab50f56ec95e69d5657659615f078bd35576a696dc9c289cd428684a3b51e` |
| 12 | `theorem` | [map_of_not_aemeasurable_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-of-not-aemeasurable-of-ne-zero--01507949f4204cdf6f434e8f.md) | 125 | `result-track:01507949f4204cdf6f434e8f867c4ef57600342a9ecbe8525453b8dca9571d50` |
| 13 | `theorem` | [map_congr](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-congr--c589f2dac240d21a7eb29b33.md) | 130 | `result-track:c589f2dac240d21a7eb29b337d41232cd844674bee6d72dedbfaee9329f07c8a` |
| 14 | `theorem` | [map_smul](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-smul--8cd862cb89e0ff356942d27d.md) | 142 | `result-track:8cd862cb89e0ff356942d27de3cf29865212843add7517b818423c41e5821f3b` |
| 15 | `lemma` | [map_apply₀](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-apply--6f3c1b1d05ef9dd1343e0a39.md) | 157 | `result-track:6f3c1b1d05ef9dd1343e0a39a1bd8c08241fd9de09b670b91eb14e7e962f84b7` |
| 16 | `theorem` | [map_apply_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-apply-of-aemeasurable--99164c724f606e023ba4d0a9.md) | 166 | `result-track:99164c724f606e023ba4d0a9c7dd2e9f291d0df90fb9890d039abb2348b2b756` |
| 17 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-apply--e4602c80d88f51f3b12ecaf0.md) | 170 | `result-track:e4602c80d88f51f3b12ecaf06401d7f00ca3bfcefc43d22f63d19278f9d0d294` |
| 18 | `theorem` | [map_toOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-tooutermeasure--9f802b9c1961a63750fe4b76.md) | 174 | `result-track:9f802b9c1961a63750fe4b76814ee8e61d2cecb1e35cf328c3959ef2ad07f261` |
| 19 | `lemma` | [map_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-eq-zero-iff--35c91109feb6dd901dc65f69.md) | 180 | `result-track:35c91109feb6dd901dc65f692442f947b1eedc3327214dc3631304e8cbfe1fe4` |
| 20 | `lemma` | [mapₗ_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-eq-zero-iff--5f4c39c68973c659a1603bfb.md) | 183 | `result-track:5f4c39c68973c659a1603bfb14b136394b6778f9092f0a4d06888503937ff460` |
| 21 | `lemma` | [measure_preimage_of_map_eq_self](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/measure-preimage-of-map-eq-self--2c6e3fbf9740bda6b4cb39d1.md) | 189 | `result-track:2c6e3fbf9740bda6b4cb39d16b9a73bf99559fbffb384f2f80b0c8d21c00aeae` |
| 22 | `lemma` | [map_ne_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-ne-zero-iff--fc8267aff3c0f4fd3ad6632c.md) | 194 | `result-track:fc8267aff3c0f4fd3ad6632c3f27d2836fe2bf6484238c1f14bb7b0caa213ae2` |
| 23 | `lemma` | [mapₗ_ne_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-ne-zero-iff--4ddae668197a19fe6f2225b9.md) | 195 | `result-track:4ddae668197a19fe6f2225b9c2506c7c0eb0b4dbf99b8fd10bbe2c7c62374564` |
| 24 | `theorem` | [map_id](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-id--f7496ce5265d475d6ea5c8c1.md) | 199 | `result-track:f7496ce5265d475d6ea5c8c1328b32564355b4df72aa9ec36118d9e7949e7425` |
| 25 | `theorem` | [map_id'](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-id--fc2e2c281d49a9c5e43d1422.md) | 203 | `result-track:fc2e2c281d49a9c5e43d14229ff2edf71b3451dce73b812c01d26632dc03c515` |
| 26 | `theorem` | [map_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-map--3a3ee227177696bb784f4007.md) | 208 | `result-track:3a3ee227177696bb784f4007e68701da8c5b45dbbfbf39cc24f77597d6b97ebe` |
| 27 | `theorem` | [map_mono](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-mono--a4f579e83cbcc0920c5636de.md) | 213 | `result-track:a4f579e83cbcc0920c5636deba9c804a9a8313eb55295f5a935ea84c706c2a76` |
| 28 | `theorem` | [le_map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/le-map-apply--42fd6bd3edb6ebdc0452d192.md) | 218 | `result-track:42fd6bd3edb6ebdc0452d192f531ad3c503b894c5e462c4d03bcac3a6a45a761` |
| 29 | `theorem` | [le_map_apply_image](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/le-map-apply-image--649e894914a38942c1d79218.md) | 225 | `result-track:649e894914a38942c1d792182ba58c623c47d6133b762f4043b5333f10b88c1c` |
| 30 | `theorem` | [preimage_null_of_map_null](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/preimage-null-of-map-null--bbce0f159d6e10ce35bef0e7.md) | 230 | `result-track:bbce0f159d6e10ce35bef0e76e47f7f93cb4216296f410ec17a366efb6c05a54` |
| 31 | `theorem` | [tendsto_ae_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/tendsto-ae-map--8fa8416a6edba2a47ea98d18.md) | 234 | `result-track:8fa8416a6edba2a47ea98d185f8adfe4bcd520033eba6f02a2aa9707d04d95b6` |
| 32 | `theorem` | [mem_ae_map_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/mem-ae-map-iff--6f577650c676535f0e45aa90.md) | 241 | `result-track:6f577650c676535f0e45aa90f8e9be107b477d23ce605d6b97e12aa813514471` |
| 33 | `theorem` | [mem_ae_of_mem_ae_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/mem-ae-of-mem-ae-map--c552a30935fa55c20cf9b613.md) | 245 | `result-track:c552a30935fa55c20cf9b613ef07863d8a1a81005755adcc3defc6ca2d95dcb3` |
| 34 | `theorem` | [ae_map_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/ae-map-iff--a027f9cb2cb3ac0dd72c10b1.md) | 249 | `result-track:a027f9cb2cb3ac0dd72c10b13cf921ca99843ffa77d97cdad7abcc4b76a1efc3` |
| 35 | `theorem` | [ae_of_ae_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/ae-of-ae-map--2e0e5bb4ae5ddbd8be5e9db2.md) | 253 | `result-track:2e0e5bb4ae5ddbd8be5e9db2643d9fa130fc6edcba69814f6eb09ec0e7bacefe` |
| 36 | `theorem` | [ae_map_mem_range](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/ae-map-mem-range--1629b75a75529ffb1f1b1fb5.md) | 257 | `result-track:1629b75a75529ffb1f1b1fb52788a1b57e7efd5342b743d90229231262e1300b` |
| 37 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-apply--e01def2e2361e50cf2460583.md) | 271 | `result-track:e01def2e2361e50cf246058359780a0c7c55e0763c486f084e2bc5a33eba2e5f` |
| 38 | `theorem` | [map_injective](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-injective--81280878a94d87ff4d44d239.md) | 288 | `result-track:81280878a94d87ff4d44d23971f0b516a03a04284e97990fed37f1a686cda1f8` |
| 39 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-apply--d793f7b97178e06f73de9e25.md) | 306 | `result-track:d793f7b97178e06f73de9e25c397cf4936ef06f007413a6d92dc711793a735c7` |
| 40 | `theorem` | [map_symm_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-symm-map--3040f9ac73ad022431aec2bf.md) | 310 | `result-track:3040f9ac73ad022431aec2bf8da37799b962f9a4adca1e9c5c11748e655262d9` |
| 41 | `theorem` | [map_map_symm](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-map-symm--2ab69beec0523888003002b0.md) | 314 | `result-track:2ab69beec0523888003002b04b614a8abaaaf8d6d6ead4f72a51533990d9e309` |
| 42 | `theorem` | [map_measurableEquiv_injective](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-measurableequiv-injective--0d90bd0662b6449ff2d29fcc.md) | 317 | `result-track:0d90bd0662b6449ff2d29fcc4421aa2a00a0282d6232a91e9ac91de184d2a9e4` |
| 43 | `theorem` | [map_apply_eq_iff_map_symm_apply_eq](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-apply-eq-iff-map-symm-apply-eq--a3c9f54c74c08525bebf46ce.md) | 322 | `result-track:a3c9f54c74c08525bebf46cefa721626fa1e737e75e328ab676e4c220ae97a16` |
| 44 | `theorem` | [map_ae](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/declarations/map-ae--78fd72672ee0c7ab1c3ee0e0.md) | 325 | `result-track:78fd72672ee0c7ab1c3ee0e085a252ca1007ba4f505de63596c1eef260d371ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
