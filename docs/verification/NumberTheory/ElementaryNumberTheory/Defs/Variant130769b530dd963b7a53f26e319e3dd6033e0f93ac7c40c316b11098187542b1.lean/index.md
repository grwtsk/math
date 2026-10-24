# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Defs.Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97b86d54dd27cc529ba85a2caa5ea7ba876f1f54",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97b86d54dd27cc529ba85a2caa5ea7ba876f1f54`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean.json)

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
| 1 | `def` | [factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization--7e5ff8b27a68a76acfb40e62.md) | 50 | `declaration-track:7e5ff8b27a68a76acfb40e62f581346fb2290c27fdcf98b7e8790605c1db58fc` |
| 2 | `lemma` | [support_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/support-factorization--90ab6a0d9b8176db2be7aa34.md) | 54 | `result-track:90ab6a0d9b8176db2be7aa34751a051e6ca6f39269dfff72f3f90fab0483fc31` |
| 3 | `theorem` | [primeFactorsList_count_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/primefactorslist-count-eq--27a465fe91ebae210fc63f06.md) | 56 | `result-track:27a465fe91ebae210fc63f063079164647a9c315f47d519645b8b0f2e4ef997a` |
| 4 | `theorem` | [factorization_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-def--ca3dfc7f55f97dd64f22cc07.md) | 62 | `result-track:ca3dfc7f55f97dd64f22cc07c8824a4f8427568cfa8aed843f861d9b4bd164a9` |
| 5 | `theorem` | [factorization_le_padicValNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-le-padicvalnat--61da2b4fe4f62d68b6ddc9ff.md) | 75 | `result-track:61da2b4fe4f62d68b6ddc9fffe018dc3e666863f6e9444c68aa7d69e7b9708be` |
| 6 | `theorem` | [factorization_eq_primeFactorsList_multiset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-eq-primefactorslist-multiset--370f27a1d118b14a6e297cbf.md) | 80 | `result-track:370f27a1d118b14a6e297cbfeaa424119079c3a75e3f27c15793c05293369e59` |
| 7 | `theorem` | [Prime.factorization_pos_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/prime-factorization-pos-of-dvd--ba60e6a4102e84fde3ec3e0d.md) | 84 | `result-track:ba60e6a4102e84fde3ec3e0d8b036196213d9936841a719cf6e487b1d11010c2` |
| 8 | `theorem` | [multiplicity_eq_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/multiplicity-eq-factorization--500d5d125f45d77ff08b00f7.md) | 88 | `result-track:500d5d125f45d77ff08b00f78aa868b7bd7cfcefe8a44181e4996bb0e8b62c65` |
| 9 | `theorem` | [prod_factorization_pow_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/prod-factorization-pow-eq-self--16ed764385494f29f9fe5845.md) | 96 | `result-track:16ed764385494f29f9fe5845e9bc94c936aa5acc2509c0a5059700bc741ca7a2` |
| 10 | `theorem` | [eq_of_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/eq-of-factorization-eq--981de1fb09f69fd4cd7f74d8.md) | 104 | `result-track:981de1fb09f69fd4cd7f74d8ffe90ae09095757979c222d81f43e3648d505b17` |
| 11 | `theorem` | [eq_of_factorization_eq'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/eq-of-factorization-eq--620a0d4b2c9c5d0f69032f7a.md) | 109 | `result-track:620a0d4b2c9c5d0f69032f7a895a94cbd7e09a7d205caaff0f1a8d9f6ed8e0be` |
| 12 | `theorem` | [factorization_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-inj--aabe415a6253aa15c9e8a3b6.md) | 115 | `result-track:aabe415a6253aa15c9e8a3b6347efdf4fbd66f219bd8b69481aefb1b282a72aa` |
| 13 | `theorem` | [factorization_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-zero--cff650617bb510b7f41502aa.md) | 119 | `result-track:cff650617bb510b7f41502aade65e4f89645f08829211c4503021b6756ddbd01` |
| 14 | `theorem` | [factorization_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-one--74b01ab4b10df80c14e77be9.md) | 122 | `result-track:74b01ab4b10df80c14e77be97e11f4971207fa9749cd2a5835d3843a6addcbb4` |
| 15 | `theorem` | [factorization_eq_zero_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-eq-zero-iff--6baa69c1e6a47ba5d9f84e8b.md) | 126 | `result-track:6baa69c1e6a47ba5d9f84e8b804d257da4f7e071aff8b8590c5e9e71a1ea6580` |
| 16 | `theorem` | [factorization_eq_zero_of_not_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-eq-zero-of-not-prime--a20249812c8cddc2cfb2e1d7.md) | 131 | `result-track:a20249812c8cddc2cfb2e1d7f8bb6e2dff16a998dd2b4c656455ce97cb3720ba` |
| 17 | `theorem` | [factorization_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-zero-right--ae409d47fc085b3f61561d31.md) | 135 | `result-track:ae409d47fc085b3f61561d31af0671cc278e17566bc05576edead9c7b615f35a` |
| 18 | `theorem` | [factorization_one_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-one-right--ab0dbfc5fa90e3be46e47a73.md) | 139 | `result-track:ab0dbfc5fa90e3be46e47a73143b68586d3a86302078861d9dabd9ea301fa56d` |
| 19 | `theorem` | [factorization_eq_zero_of_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-eq-zero-of-not-dvd--38c34b636dd3c6962ffbfc7d.md) | 142 | `result-track:38c34b636dd3c6962ffbfc7dd40906cae43f351481506c53a03110bed811f5e4` |
| 20 | `theorem` | [factorization_eq_zero_of_remainder](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-eq-zero-of-remainder--b3e35007ecb2decbb428a75a.md) | 145 | `result-track:b3e35007ecb2decbb428a75aaf14eed36c02b699b0a9349c6343d86af418fcc6` |
| 21 | `theorem` | [factorization_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-mul--ccd569c696063b77e7b4ea8f.md) | 154 | `result-track:ccd569c696063b77e7b4ea8fa163ac3bf3582c67427a34f99a16b8a90878b6a8` |
| 22 | `theorem` | [factorization_le_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-le-iff-dvd--f9ef5dd656c105f725293292.md) | 160 | `result-track:f9ef5dd656c105f7252932923656fdaf9d6cfcf2a5f7fa0926272e8342b89849` |
| 23 | `theorem` | [factorization_prod](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-prod--45245392e275b5fff8692f3e.md) | 172 | `result-track:45245392e275b5fff8692f3e885800c9a609e15ad7079a6651bffc79b84cbda7` |
| 24 | `theorem` | [factorization_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-pow--fb8153d331b2d952f8f2a4c5.md) | 183 | `result-track:fb8153d331b2d952f8f2a4c506b3c7bb3aef2fcfdc4af7c58f5a62e0f7eb2b0a` |
| 25 | `theorem` | [isSquare_iff_even_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/issquare-iff-even-factorization--ee28da1fa8741871334c9bc8.md) | 195 | `result-track:ee28da1fa8741871334c9bc825c1baed86c678595034e9d9adec0c601f624b52` |
| 26 | `theorem` | [isSquare_iff_nonneg_even_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/issquare-iff-nonneg-even-factorization--ca348d70511e8bd8bb3a358f.md) | 215 | `result-track:ca348d70511e8bd8bb3a358f810b16cd7d4566e379121fae497f15e2b6f16a4c` |
| 27 | `theorem` | [Prime.factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/prime-factorization--186b8ce1542ada18bc14866f.md) | 234 | `result-track:186b8ce1542ada18bc14866f3847498f2fc7e25cbe9c180fe6729c03a1d9da06` |
| 28 | `theorem` | [Prime.factorization_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/prime-factorization-pow--6c34a0ec89c4d818dcf82951.md) | 240 | `result-track:6c34a0ec89c4d818dcf82951d7a55039aae05b74b19f17cdb47499872ef3d96f` |
| 29 | `theorem` | [pow_succ_factorization_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/pow-succ-factorization-not-dvd--f2a9204c608dc1c4b97268d6.md) | 243 | `result-track:f2a9204c608dc1c4b97268d65d88f43bce5da649302043a205a15d5168d94fc6` |
| 30 | `lemma` | [factorization_minFac_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-minfac-ne-zero--1d0e695a7e3b45666a73aa40.md) | 249 | `result-track:1d0e695a7e3b45666a73aa40e7915ccac3f7e1caa76e83f886518195a28ebccb` |
| 31 | `theorem` | [prod_pow_factorization_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/prod-pow-factorization-eq-self--7d602c034599693f181806e5.md) | 262 | `result-track:7d602c034599693f181806e56d591c629aab7bb57e85552375cdb95d5e24fd63` |
| 32 | `theorem` | [eq_factorization_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/eq-factorization-iff--0af4ee599123cae4411680a8.md) | 268 | `result-track:0af4ee599123cae4411680a84f3caf55d2417e0d083dbb2ed5641abc14a2351e` |
| 33 | `theorem` | [factorization_prod_pow_eq_self_of_le_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-prod-pow-eq-self-of-le-factorization--cd6bb7367007efaa3fe2ded0.md) | 273 | `result-track:cd6bb7367007efaa3fe2ded094e953d318d6eab3d7c965eb8819dea8d8f9dec0` |
| 34 | `theorem` | [prod_pow_dvd_of_le_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/prod-pow-dvd-of-le-factorization--94f1e3e8223bc9525eb6c8f6.md) | 277 | `result-track:94f1e3e8223bc9525eb6c8f6073ba1db6ed5daf537e03f5505a0a216dd0e006a` |
| 35 | `theorem` | [dvd_prod_pow_of_factorization_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/dvd-prod-pow-of-factorization-le--415b46be000dff77582ac0da.md) | 284 | `result-track:415b46be000dff77582ac0daee2dfa3a34c8724a2538ad2148868a22e56f1203` |
| 36 | `theorem` | [dvd_iff_exists_le_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/dvd-iff-exists-le-factorization--4d7e8470999045a3c8f75741.md) | 290 | `result-track:4d7e8470999045a3c8f7574175d9f745c8f2dce89d18cb4e21162f217ae333ad` |
| 37 | `def` | [factorizationEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorizationequiv--14abf9a6dbc28f89684f0f25.md) | 298 | `declaration-track:14abf9a6dbc28f89684f0f25161d195d6b52d30e265bd9ed6aa537623ce84568` |
| 38 | `theorem` | [factorization_mul_apply_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-mul-apply-of-coprime--23569935cd341d7511165293.md) | 309 | `result-track:23569935cd341d7511165293f4d411536c8ad1dfe11bacf7d2d58c8a96540d9f` |
| 39 | `theorem` | [factorization_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorization-mul-of-coprime--ed2cb5e4af68e1c7085c208c.md) | 315 | `result-track:ed2cb5e4af68e1c7085c208ce12219c94330d8d407a726db6a3a068334453988` |
| 40 | `theorem` | [ordProj_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/ordproj-dvd--a27fbd537dfa7b8bb2c5c47c.md) | 332 | `result-track:a27fbd537dfa7b8bb2c5c47c6b66a64d76bd634861593fe6a2ee47a4fe0fe6dc` |
| 41 | `lemma` | [ordProj_dvd_ordProj_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/ordproj-dvd-ordproj-iff-dvd--f068333343c495cb44f94e35.md) | 340 | `result-track:f068333343c495cb44f94e35d4c6723f624ebdb7c1fa7e991b56be47cb3fea70` |
| 42 | `def` | [factorizationLCMLeft](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorizationlcmleft--2f9c3474428f5db9b0debb36.md) | 352 | `declaration-track:2f9c3474428f5db9b0debb3612549d8357e1d485dcb1fb0e3e1c932fc48804ac` |
| 43 | `def` | [factorizationLCMRight](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/declarations/factorizationlcmright--88a6ebd3c7dd132b3cdf17db.md) | 365 | `declaration-track:88a6ebd3c7dd132b3cdf17db780c8985b99f3e8d27a3db35c72366afeb39bf96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
