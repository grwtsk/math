# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee6cbc4969b3160be45b205b710dee3aa722b452",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee6cbc4969b3160be45b205b710dee3aa722b452`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-rpow-attop--5bdffe6ccfc6cb1a64b651ec.md) | 35 | `result-track:5bdffe6ccfc6cb1a64b651ec7981855ea754b54bdfa413a03e8e5fd345c24ca5` |
| 2 | `theorem` | [tendsto_rpow_neg_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-rpow-neg-attop--93b6f1feedfa4dd7f3922233.md) | 49 | `result-track:93b6f1feedfa4dd7f3922233d13f128b064a7e92c6f073cf60dd76b8bc8ed3c5` |
| 3 | `lemma` | [tendsto_rpow_atTop_of_base_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-rpow-attop-of-base-lt-one--c89c1a61e8388736de0b2832.md) | 55 | `result-track:c89c1a61e8388736de0b283246401d0a096380ddd349575e2a8ffc12892195c8` |
| 4 | `lemma` | [tendsto_rpow_atTop_of_base_gt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-rpow-attop-of-base-gt-one--90aa7c0f48e545422069fbec.md) | 81 | `result-track:90aa7c0f48e545422069fbecda4f51e9d7aa32259dcf6f5b6383c0ac8e2bc4ba` |
| 5 | `lemma` | [tendsto_rpow_atBot_of_base_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-rpow-atbot-of-base-lt-one--d9598f78e4ded7bc96ab5c52.md) | 88 | `result-track:d9598f78e4ded7bc96ab5c52e115f0f9294fbc4583c07da23075d433d16fab25` |
| 6 | `lemma` | [tendsto_rpow_atBot_of_base_gt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-rpow-atbot-of-base-gt-one--f6c2e4c53ee6a58201a6bfc5.md) | 95 | `result-track:f6c2e4c53ee6a58201a6bfc55310c26f0c32b7918b76462976ca8a1375811d75` |
| 7 | `theorem` | [tendsto_rpow_div_mul_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-rpow-div-mul-add--aac2c101257c2f26ef20e0b8.md) | 104 | `result-track:aac2c101257c2f26ef20e0b8db933e9c033f66e405cc856ada16cf3208bbd110` |
| 8 | `theorem` | [tendsto_rpow_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-rpow-div--0246db6969df6b6b76f4c3a0.md) | 122 | `result-track:0246db6969df6b6b76f4c3a0468bdf2a91de7a7f15a29a1b1a2bb50819f0ea4c` |
| 9 | `theorem` | [tendsto_rpow_neg_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-rpow-neg-div--fddc0706ab92b8496eb06643.md) | 130 | `result-track:fddc0706ab92b8496eb0664363b008899907d517384151d93912c0437d770655` |
| 10 | `theorem` | [tendsto_exp_div_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-exp-div-rpow-attop--fece95d8dbb5d7b762e16cb0.md) | 138 | `result-track:fece95d8dbb5d7b762e16cb01a188628c717130130adac3686d87fc3e8f9f0d8` |
| 11 | `theorem` | [tendsto_exp_mul_div_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-exp-mul-div-rpow-attop--dd243bb2418e8e475923870d.md) | 147 | `result-track:dd243bb2418e8e475923870da33ccc1ac34eeea3a3d927438028f12eaddb619a` |
| 12 | `theorem` | [tendsto_rpow_mul_exp_neg_mul_atTop_nhds_0](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-rpow-mul-exp-neg-mul-attop-nhds-0--d11cbbe97eccb28213cc0b88.md) | 156 | `result-track:d11cbbe97eccb28213cc0b8892d1a641974463b64d62eac6c7af8a74c4434496` |
| 13 | `theorem` | [NNReal.tendsto_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/nnreal-tendsto-rpow-attop--ea2f5b20177aa4df4afb571e.md) | 162 | `result-track:ea2f5b20177aa4df4afb571efabf29c63146e96afd741431ef557d47d5dfcbf0` |
| 14 | `theorem` | [ENNReal.tendsto_rpow_at_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/ennreal-tendsto-rpow-at-top--ec8d4c63d728605f5e88c1fa.md) | 172 | `result-track:ec8d4c63d728605f5e88c1fab0b3538cd6c4132817789ca9d734eba24b4a4d97` |
| 15 | `theorem` | [isTheta_exp_arg_mul_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/istheta-exp-arg-mul-im--d192f15240a4d274bb75f6d4.md) | 205 | `result-track:d192f15240a4d274bb75f6d4f6ad0fa4f578cd05442720eacaa09078444fff4c` |
| 16 | `theorem` | [isBigO_cpow_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/isbigo-cpow-rpow--6c69900416f5bee5385d7d13.md) | 215 | `result-track:6c69900416f5bee5385d7d136007cf059bfdada9312443e99ad8f79ca5e29207` |
| 17 | `theorem` | [isTheta_cpow_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/istheta-cpow-rpow--e583173b9a9aa9693106d591.md) | 228 | `result-track:e583173b9a9aa9693106d5911dc58aa3ed6b8aeed8e93c942e0e29dacb1e4348` |
| 18 | `theorem` | [isTheta_cpow_const_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/istheta-cpow-const-rpow--f91b99a59c8025428da84aac.md) | 242 | `result-track:f91b99a59c8025428da84aac9ac066ad1b501ec73fafc34cff3295afef4df606` |
| 19 | `theorem` | [IsBigOWith.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/isbigowith-rpow--6e0be4b5bdc709e27b824fa8.md) | 264 | `result-track:6e0be4b5bdc709e27b824fa81241264d2183fb0522e396d7771116a4a26ac361` |
| 20 | `theorem` | [IsBigO.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/isbigo-rpow--cf8452ce4e0610f126326d89.md) | 274 | `result-track:cf8452ce4e0610f126326d890669e9ba8df03e04fe494b65eefabf4a4ce40fd5` |
| 21 | `theorem` | [IsLittleO.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/islittleo-rpow--f20743a53c59252b0bafb77d.md) | 280 | `result-track:f20743a53c59252b0bafb77de1509338e3c2f68bcfaae6934b9fe6058c44d787` |
| 22 | `theorem` | [isLittleO_rpow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/islittleo-rpow-exp-pos-mul-attop--7a6626ecef19543d661eb78a.md) | 293 | `result-track:7a6626ecef19543d661eb78a04fa2c2d60493c87eb7b6cb8e54a33c5fdcf729b` |
| 23 | `theorem` | [isLittleO_zpow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/islittleo-zpow-exp-pos-mul-attop--5f3cacd5c9897445943d0062.md) | 301 | `result-track:5f3cacd5c9897445943d00621715b007bf7b11ac7b185c34a2f75ba2f0ccedf1` |
| 24 | `theorem` | [isLittleO_pow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/islittleo-pow-exp-pos-mul-attop--5eab49ba60e5a8f399810464.md) | 307 | `result-track:5eab49ba60e5a8f3998104641590a851f3726c9ab96ef6e9d5a38960c9afc95d` |
| 25 | `theorem` | [isLittleO_rpow_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/islittleo-rpow-exp-attop--a3cac5b6de6cbd9505251a69.md) | 313 | `result-track:a3cac5b6de6cbd9505251a6912f947aeb9dd3231e046f5003024085602376686` |
| 26 | `theorem` | [isLittleO_exp_neg_mul_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/islittleo-exp-neg-mul-rpow-attop--917acba9fbb6ef7fb927f139.md) | 318 | `result-track:917acba9fbb6ef7fb927f1399dabca0e99b16001d7a35e7645b5a8c1a14dd575` |
| 27 | `theorem` | [isLittleO_log_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/islittleo-log-rpow-attop--b81b305824757cd3a06c0ba9.md) | 330 | `result-track:b81b305824757cd3a06c0ba9878e9d63260888ebfa930ae44bddd0c5e8302a6e` |
| 28 | `theorem` | [isLittleO_log_rpow_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/islittleo-log-rpow-rpow-attop--418f23647fd1e97ee7e79e0e.md) | 338 | `result-track:418f23647fd1e97ee7e79e0e723921abfe6504fa32f222682062cb40820d1fab` |
| 29 | `theorem` | [isLittleO_abs_log_rpow_rpow_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/islittleo-abs-log-rpow-rpow-nhds-zero--97d19885006d34cbfd66f381.md) | 357 | `result-track:97d19885006d34cbfd66f3811d542b98ae1fc159d80f06bffedf929837cb2311` |
| 30 | `theorem` | [isLittleO_log_rpow_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/islittleo-log-rpow-nhds-zero--e879766cc294a306b8d844fd.md) | 366 | `result-track:e879766cc294a306b8d844fdf6b30f971ab5b433725cecda44ec4390633bacaf` |
| 31 | `theorem` | [tendsto_log_div_rpow_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-log-div-rpow-nhds-zero--3ba4c68ad02e3d3dc69a583b.md) | 373 | `result-track:3ba4c68ad02e3d3dc69a583b1e1123e014bdbb46bd8c3779649362efb78f407e` |
| 32 | `theorem` | [tendsto_log_mul_rpow_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/declarations/tendsto-log-mul-rpow-nhds-zero--53b700b340fc1f9e8c99f047.md) | 378 | `result-track:53b700b340fc1f9e8c99f047357ba636124fdf802c7b1a6953d1b4bf06a2e7c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
