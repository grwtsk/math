# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ConductorThreeVaughanTypeI.Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3588618c4e8d160963f798921b98c546ae7e8142",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3588618c4e8d160963f798921b98c546ae7e8142`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeCharacterPartialSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/conductorthreecharacterpartialsum--4ef6780dbf44b2088cd5f8fb.md) | 31 | `declaration-track:4ef6780dbf44b2088cd5f8fbdda89dec42ce9ad6fe03d3aaaee785b50f32bead` |
| 2 | `theorem` | [conductorThreeCharacterPartialSum_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/conductorthreecharacterpartialsum-eq--7f5419959c8853d988c3a61f.md) | 36 | `result-track:7f5419959c8853d988c3a61ff25f4ddf300b782c3b206a1cb671d8e9c9dc9d4a` |
| 3 | `theorem` | [conductorThreeCharacterPartialSum_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/conductorthreecharacterpartialsum-nonneg--4de89c9d1d2e9c70d4dba014.md) | 58 | `result-track:4de89c9d1d2e9c70d4dba014ef29c9eb84b71b9262998ba3d47737f5eb49dcac` |
| 4 | `theorem` | [abs_conductorThreeCharacterPartialSum_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-conductorthreecharacterpartialsum-le-one--418f19007a7357332cb392b8.md) | 65 | `result-track:418f19007a7357332cb392b8f8f4db0cd98a8ee08c0fe2b76b3883f5043b9235` |
| 5 | `lemma` | [log_increment_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/log-increment-nonneg--cabf19f62b9dea34cb296931.md) | 70 | `result-track:cabf19f62b9dea34cb296931087b6ad8492e55ddecee0cb48dbb71ffcdf7d0e0` |
| 6 | `lemma` | [sum_log_increment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/sum-log-increment--229406a1a367bce07c4b650f.md) | 80 | `result-track:229406a1a367bce07c4b650f977f2c3a410434106693199b7ad609d5e5fae500` |
| 7 | `def` | [conductorThreeLogWeightedSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/conductorthreelogweightedsum--87ad46d05a2bc074fc96fa3b.md) | 92 | `declaration-track:87ad46d05a2bc074fc96fa3bc21fb52b4c79d91dab091405095a99c5f9ea7c80` |
| 8 | `theorem` | [conductorThreeLogWeightedSum_eq_abel](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/conductorthreelogweightedsum-eq-abel--c79a6bf5b1eee7807d49906f.md) | 98 | `result-track:c79a6bf5b1eee7807d49906fa4f6ca9c2fa26eb9306acd86df58c707dfcd3684` |
| 9 | `theorem` | [abs_conductorThreeLogWeightedSum_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-conductorthreelogweightedsum-le--c14e4b57fc614df87f6a44bd.md) | 115 | `result-track:c14e4b57fc614df87f6a44bd3aedafbeb1504ad6d417011a229a6deac2ddae58` |
| 10 | `lemma` | [abs_conductorThreeIntegerValue_cast_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-conductorthreeintegervalue-cast-le-one--04366878a07da910c498ed1e.md) | 173 | `result-track:04366878a07da910c498ed1e6a867292dd4ece094730971c4617e78a896e8ce0` |
| 11 | `lemma` | [abs_moebius_cast_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-moebius-cast-le-one--67324049deda61cb807ed764.md) | 183 | `result-track:67324049deda61cb807ed7648abcf16ddeed86a2b392bfa41f53b77918511557` |
| 12 | `lemma` | [log_max_one_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/log-max-one-nonneg--a652d11080d795760da5cb79.md) | 187 | `result-track:a652d11080d795760da5cb79ffb1d2464a500d425e5622a14ab8a0081c70fca4` |
| 13 | `lemma` | [log_max_one_mono](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/log-max-one-mono--a9241358b79a2ac777a0bde3.md) | 191 | `result-track:a9241358b79a2ac777a0bde3d90d1299af7e07fb5b378c775de519a9f807ae61` |
| 14 | `lemma` | [abs_vonMangoldt_le_log_max](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-vonmangoldt-le-log-max--c96f12f7b2a888e35aafd219.md) | 198 | `result-track:c96f12f7b2a888e35aafd2194303b0aff561b04cd917095d4f48a74971ad2b33` |
| 15 | `lemma` | [abs_character_mul_vonMangoldt_le_log_max](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-character-mul-vonmangoldt-le-log-max--9408b0c41a09edf32d801193.md) | 214 | `result-track:9408b0c41a09edf32d80119300779447d5ae6edcf0fe3f27650b690f4f6d0327` |
| 16 | `lemma` | [abs_character_mul_moebius_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-character-mul-moebius-le-one--11a91ac97a4382bfca73a829.md) | 230 | `result-track:11a91ac97a4382bfca73a8299ac46df042caf5fc7a542f34e6a6dc7a41e383c6` |
| 17 | `def` | [conductorThreeTypeZeroExpanded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/conductorthreetypezeroexpanded--ad0a57dc33d5133c5b8f1688.md) | 246 | `declaration-track:ad0a57dc33d5133c5b8f1688e175aa7e07f7cdd20d190ad58dfb83b3960e3e8b` |
| 18 | `def` | [conductorThreeTypeI1Expanded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/conductorthreetypei1expanded--bab120d29723d08e9c33f06e.md) | 254 | `declaration-track:bab120d29723d08e9c33f06e2b67f7e38e9b9996f605535d6585ef3c914f984a` |
| 19 | `def` | [conductorThreeTypeI2Expanded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/conductorthreetypei2expanded--43cdf26e0c124671543899c6.md) | 266 | `declaration-track:43cdf26e0c124671543899c6598d31bd8fd00f5abcd70c9535d9adc23a1d8ff7` |
| 20 | `theorem` | [abs_conductorThreeTypeZeroExpanded_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-conductorthreetypezeroexpanded-le--6973d0827cd73815440cfc42.md) | 273 | `result-track:6973d0827cd73815440cfc42ffb9090de787f816139cd18d5910fa421cea7abb` |
| 21 | `theorem` | [abs_conductorThreeTypeI1Expanded_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-conductorthreetypei1expanded-le--e7c473fa894d128e3adbba5b.md) | 295 | `result-track:e7c473fa894d128e3adbba5b4ed05a22a69e1edcda19a72a3c5dfcafb025e8ee` |
| 22 | `theorem` | [abs_conductorThreeTypeI2Expanded_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-conductorthreetypei2expanded-le--7a5dc6691035e870faf6b83e.md) | 379 | `result-track:7a5dc6691035e870faf6b83e6d0919515d5c280bac259ce621d0a0cbc9f15315` |
| 23 | `theorem` | [abs_conductorThreeExpandedTypeI_total_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-conductorthreeexpandedtypei-total-le--ef6f369a74aa10f52962dc7f.md) | 412 | `result-track:ef6f369a74aa10f52962dc7f7e1b8bbd1cd32b54100c759a4edd1e035a959b9a` |
| 24 | `theorem` | [abs_conductorThreeExpandedTypeI_at_vaughanCutoff_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/abs-conductorthreeexpandedtypei-at-vaughancutoff-le--783ae4f44536f884e02b9b5a.md) | 446 | `result-track:783ae4f44536f884e02b9b5a1e0cd04b766fd2826f53d623b74bfb20bab05c43` |
| 25 | `lemma` | [vaughanFourthRootCutoff_sq_le_four_sqrt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/vaughanfourthrootcutoff-sq-le-four-sqrt--082d36c501a96c7bb23286ba.md) | 462 | `result-track:082d36c501a96c7bb23286bafc0618a76508729a6e67d3edb63521033b157251` |
| 26 | `lemma` | [vaughanFourthRootCutoff_add_one_sq_le_sixteen_sqrt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/vaughanfourthrootcutoff-add-one-sq-le-sixteen-sqrt--fa75ef6aefd00878d39d5cb7.md) | 481 | `result-track:fa75ef6aefd00878d39d5cb754648aea2c31d96cdc807dde441b8a5b7fca9420` |
| 27 | `lemma` | [natSqrt_two_mul_le_two_mul_realSqrt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/natsqrt-two-mul-le-two-mul-realsqrt--d11d414616ea1d0900581ebc.md) | 500 | `result-track:d11d414616ea1d0900581ebcd4523e63daca2fef5f35c20d083701084d1fb3d1` |
| 28 | `lemma` | [cast_vaughanCutoff_add_one_sq_le_sqrt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/cast-vaughancutoff-add-one-sq-le-sqrt--78531c2fc9b50459cc91df2c.md) | 513 | `result-track:78531c2fc9b50459cc91df2c0c0977e272083e929f53df297cd24fab78673861` |
| 29 | `lemma` | [vaughanFourthRootCutoff_le_two_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/vaughanfourthrootcutoff-le-two-mul--d16f36aba9a24ea03b505f7d.md) | 529 | `result-track:d16f36aba9a24ea03b505f7de9a179b550a43929f8bb8ecbd120238ec27c6c8b` |
| 30 | `def` | [conductorThreeExpandedTypeIAtScale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/conductorthreeexpandedtypeiatscale--22de9467dbb0e90dddaa042d.md) | 540 | `declaration-track:22de9467dbb0e90dddaa042d3b45c180eb82df5318f40da3fd2a3e5d8f96c7a3` |
| 31 | `theorem` | [uniform_conductorThreeExpandedTypeIAtScale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/uniform-conductorthreeexpandedtypeiatscale--ce168121d3d7e0023a12e77d.md) | 549 | `result-track:ce168121d3d7e0023a12e77dc9f81b739101aa0538dac4984f6ea297c04beabb` |
| 32 | `def` | [conductorThreeConvolutionTypeIPrefix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/conductorthreeconvolutiontypeiprefix--14004391984a6e72d1e2fedf.md) | 672 | `declaration-track:14004391984a6e72d1e2fedfc955b3b01c0ced72265381f493c35d82a5edae0b` |
| 33 | `def` | [ExactConductorThreeTypeIPrefixExpansion](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/exactconductorthreetypeiprefixexpansion--c122db2946927fec6960d9c4.md) | 688 | `declaration-track:c122db2946927fec6960d9c403c0629614f49b975fcaf2252cc8c6b7f90906d5` |
| 34 | `theorem` | [exactTypeIPrefixExpansion_implies_uniform](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/declarations/exacttypeiprefixexpansion-implies-uniform--f9ca1391064995b96120ea67.md) | 697 | `result-track:f9ca1391064995b96120ea6774203b56e93ba465f039719a47a7c6b9f023d49f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
