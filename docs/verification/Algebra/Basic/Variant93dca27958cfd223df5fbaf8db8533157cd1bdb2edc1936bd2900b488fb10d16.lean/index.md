# Verification target: GRWTSK.Algebra.Basic.Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60fa34ccd11e1cebdab4022a4370d80cb18f807b",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60fa34ccd11e1cebdab4022a4370d80cb18f807b`.

Source path: `GRWTSK/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean.json)

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
| 1 | `class` | [IsRankOneDiscrete](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/isrankonediscrete--7bea7cbe1f211b04cd62965d.md) | 84 | `declaration-track:7bea7cbe1f211b04cd62965dcc1feb9f7ea86f40358d0e54e061063ca8c20f8c` |
| 2 | `lemma` | [exists_generator_lt_one](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/exists-generator-lt-one--b93c74ee8b2fa6a20bcec2b0.md) | 91 | `result-track:b93c74ee8b2fa6a20bcec2b0ce1c1b3d57edd09c489644c9fd0735f93ccd7ff1` |
| 3 | `def` | [generator](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator--b89d62958bd847f3144cf8e2.md) | 96 | `declaration-track:b89d62958bd847f3144cf8e2648827ff46638d4e7252c2b541d8eabee3978dca` |
| 4 | `lemma` | [generator_zpowers_eq_valueGroup](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-zpowers-eq-valuegroup--77f09379f52661a96405ba1b.md) | 98 | `result-track:77f09379f52661a96405ba1bdb7269feece24ec7d2d7c1a74ab634a6bffb507d` |
| 5 | `lemma` | [generator_mem_valueGroup](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-mem-valuegroup--dcf62db7aab9abb41853d0ac.md) | 102 | `result-track:dcf62db7aab9abb41853d0acd8e62aaf54bec5306fd51b73f7e333727636c3bc` |
| 6 | `lemma` | [generator_lt_one](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-lt-one--bde4852620286243d0e53bac.md) | 107 | `result-track:bde4852620286243d0e53bac7face0018e5c08709f901ed353405a49ee902102` |
| 7 | `lemma` | [generator_ne_one](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-ne-one--10eb10a06a133a3e341ff1ae.md) | 110 | `result-track:10eb10a06a133a3e341ff1ae3db1ef31ca71501af923eec18fc5d3d59b554384` |
| 8 | `lemma` | [generator_zpowers_eq_range](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-zpowers-eq-range--472210372696254edf2eb8bb.md) | 113 | `result-track:472210372696254edf2eb8bbef82f1d2ba2c7e414054049be783341e458dfc42` |
| 9 | `lemma` | [generator_mem_range](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-mem-range--87d746148a220aa25980be7e.md) | 117 | `result-track:87d746148a220aa25980be7ebdae1d5c836ab7ef2c7f05aa166e8c6a09bbe46c` |
| 10 | `lemma` | [generator_ne_zero](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-ne-zero--eb6a915c5073751cb4137996.md) | 123 | `result-track:eb6a915c5073751cb4137996017544dd6f79c73c85870c1ef28fec26524e1412` |
| 11 | `def` | [generator'](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator--18cf8cea2895a080d9d1f97c.md) | 127 | `declaration-track:18cf8cea2895a080d9d1f97c998f3dbc3e2c230984d8b4ecb1c1d2647f4e1554` |
| 12 | `lemma` | [embedding_generator'](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/embedding-generator--f89859dbe2f2141bc76b9a48.md) | 130 | `result-track:f89859dbe2f2141bc76b9a48ee203ab05f4793716ea4e8e088a7be8045948ea8` |
| 13 | `lemma` | [generator'_zpowers_eq_top](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-zpowers-eq-top--e13f301af8e6a4b77e921960.md) | 133 | `result-track:e13f301af8e6a4b77e9219600ebc8fc8125eb302c994db0531282cc7ab12f8d0` |
| 14 | `lemma` | [generator'_lt_one](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-lt-one--49193cc3039ce6727cd9467a.md) | 138 | `result-track:49193cc3039ce6727cd9467a681e39a12ce3544620a9d80959cf08157b68253f` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/instance--c15e7b584294f37702054818.md) | 141 | `declaration-track:c15e7b584294f37702054818534b329aa6939516741255fbaf9c2cb640549bf4` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/instance--45f8ecbcf4a6a58e9a191e0e.md) | 145 | `declaration-track:45f8ecbcf4a6a58e9a191e0e3c6b32ebae258985aa959a7e3ef98eff6554b88e` |
| 17 | `lemma` | [valueGroup_genLTOne_eq_generator](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/valuegroup-genltone-eq-generator--a1132a938db8449e900eb593.md) | 157 | `result-track:a1132a938db8449e900eb5932c788206667687b7274214d906a52b37b626af04` |
| 18 | `theorem` | [generator_eq_exp_neg_one_of_mem_range](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-eq-exp-neg-one-of-mem-range--f66ecb0e0c4632d8b9ddaa36.md) | 170 | `result-track:f66ecb0e0c4632d8b9ddaa3645e49c766eb32a6303454101ca1d330995227aac` |
| 19 | `lemma` | [generator_eq_exp_neg_one_of_surjective](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-eq-exp-neg-one-of-surjective--e6f2cb7b33496e7137cef126.md) | 189 | `result-track:e6f2cb7b33496e7137cef1264d22873c2ce0b768788cfe348702e24c54ed7093` |
| 20 | `lemma` | [generator_eq_neg_exp_one_of_surjective](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/generator-eq-neg-exp-one-of-surjective--7b8b9d849cde6997b49761d7.md) | 194 | `result-track:7b8b9d849cde6997b49761d7a6f84d6debc1092542db525aa4049384994b94ce` |
| 21 | `def` | [IsUniformizer](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/isuniformizer--8b798377e03f4e9d28941011.md) | 207 | `declaration-track:8b798377e03f4e9d289410111cd768a49ea1b3101f3359be6649f51f763a5076` |
| 22 | `theorem` | [iff](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/iff--e34b3b8edddb3c5a14ca5fd7.md) | 213 | `result-track:e34b3b8edddb3c5a14ca5fd76fe26dfac52866bcf1103ea58f7f0fce47a623cb` |
| 23 | `theorem` | [ne_zero](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/ne-zero--ffb04662b530dcb1670793fa.md) | 215 | `result-track:ffb04662b530dcb1670793fa7ecf41f038758f1b5287838f986c3c6409bf78d9` |
| 24 | `lemma` | [val](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/val--be0cc0b764002384f645f57d.md) | 221 | `result-track:be0cc0b764002384f645f57dd53c8c3feb32f84625bad9c6b9009837e4f84788` |
| 25 | `lemma` | [val_lt_one](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/val-lt-one--e1d006b43acc0405cb609008.md) | 223 | `result-track:e1d006b43acc0405cb609008cfdd7b7e46e764c410e527508a01fc5b22bcc36f` |
| 26 | `lemma` | [val_ne_zero](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/val-ne-zero--6caaf93ce12959bf9b3f7462.md) | 225 | `result-track:6caaf93ce12959bf9b3f746282b89e8333b3de0203e80b470797f79209b846b2` |
| 27 | `theorem` | [val_pos](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/val-pos--193ec806aff549f179e9d587.md) | 230 | `result-track:193ec806aff549f179e9d5878c9b29208b96cc56de19240e63ad5a73829d79ad` |
| 28 | `lemma` | [zpowers_eq_valueGroup](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/zpowers-eq-valuegroup--204c7b74cb9f9e913be0455e.md) | 233 | `result-track:204c7b74cb9f9e913be0455e396d4c6f3efc0bad6c50300d55f9336e897a744f` |
| 29 | `structure` | [Uniformizer](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/uniformizer--e1956bab0830b8414c0036d4.md) | 246 | `declaration-track:e1956bab0830b8414c0036d43bb821b11258eae0dc39c09045a9227b9b8ef1da` |
| 30 | `def` | [mk'](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/mk--7092c92cf680722f4a2a0b4e.md) | 254 | `declaration-track:7092c92cf680722f4a2a0b4e6c299f6977508047eb6a20395d182b6698f1ee9f` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/instance--107a60393529a307e7df2015.md) | 259 | `declaration-track:107a60393529a307e7df20156dff0ca7340068fa3a3c742ce3b47da0cc126965` |
| 32 | `theorem` | [ne_zero](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/ne-zero--bece43eae46da797678b6f72.md) | 261 | `result-track:bece43eae46da797678b6f72fb24f564f19e35bca76f73d7744ab664d81cf5c4` |
| 33 | `theorem` | [IsUniformizer.not_isUnit](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/isuniformizer-not-isunit--d3e4e5686b6abb0c1a4c9170.md) | 273 | `result-track:d3e4e5686b6abb0c1a4c917053b90200ac6dbb779fe0a7177453e02a04ea1495` |
| 34 | `instance` | [IsRankOneDiscrete.mk'](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/isrankonediscrete-mk--7e02941c0ce9011ec003b621.md) | 283 | `declaration-track:7e02941c0ce9011ec003b621627d977205a64f0b2712dce420f4ef31fe7a3a81` |
| 35 | `theorem` | [exists_isUniformizer_of_isCyclic_of_nontrivial](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/exists-isuniformizer-of-iscyclic-of-nontrivial--26a6e9e38466e1db1931807d.md) | 304 | `result-track:26a6e9e38466e1db1931807dccfe994e3a9b1c8f029b8a0b1bd09772eec0f403` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/instance--14079b58bc64e653e1001f81.md) | 316 | `declaration-track:14079b58bc64e653e1001f81f0e05f2bbe105e364ff6827f53d1c1a6f8ec2bdf` |
| 37 | `theorem` | [IsUniformizer.of_associated](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/isuniformizer-of-associated--339564d89ca41b4ed49469e7.md) | 329 | `result-track:339564d89ca41b4ed49469e7bc95c61266f611f05a4d67dea277e17a8a8be38b` |
| 38 | `theorem` | [associated_of_isUniformizer](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/associated-of-isuniformizer--cf55c02b656ccc01471c0f2a.md) | 336 | `result-track:cf55c02b656ccc01471c0f2abd219807d451ab97ade1e3dea4b106af8c9bbcf9` |
| 39 | `theorem` | [exists_pow_Uniformizer](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/exists-pow-uniformizer--03e7c228a53dba37982365b4.md) | 345 | `result-track:03e7c228a53dba37982365b44ec99e4fafda5962ab6c5b06558491a331bea2f2` |
| 40 | `theorem` | [Uniformizer.is_generator](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/uniformizer-is-generator--e2b42f046811095e32ec68bf.md) | 378 | `result-track:e2b42f046811095e32ec68bf4a2520d13eb44c944d708c311a712dda0c90dd84` |
| 41 | `theorem` | [IsUniformizer.is_generator](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/isuniformizer-is-generator--fe53fe8b7e24a2a34b63d372.md) | 395 | `result-track:fe53fe8b7e24a2a34b63d372fab12f135cec78f6895aeb5b8d08206bceda82ee` |
| 42 | `theorem` | [pow_Uniformizer_is_pow_generator](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/pow-uniformizer-is-pow-generator--6c0d90dd68b0565c87c71f1b.md) | 399 | `result-track:6c0d90dd68b0565c87c71f1b75a11204b942a4f518eeff45e0fe7a639ea61ff2` |
| 43 | `theorem` | [valuationSubring_not_isField](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/valuationsubring-not-isfield--657a00ecc502a19fa90ed420.md) | 407 | `result-track:657a00ecc502a19fa90ed4207041d2900490c78525ecf7a21d25476ff6124df4` |
| 44 | `theorem` | [isUniformizer_of_maximalIdeal_eq_span](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/isuniformizer-of-maximalideal-eq-span--920ea15bc9909fb34c67247d.md) | 417 | `result-track:920ea15bc9909fb34c67247d789ca706880fc31d451e2bbe1d878669b9aaf7f6` |
| 45 | `theorem` | [ideal_isPrincipal](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/ideal-isprincipal--b0cdf10a9e1b96cb869b7427.md) | 430 | `result-track:b0cdf10a9e1b96cb869b74273713471898ce5e96b6ab13cc06db82f9263dcf32` |
| 46 | `theorem` | [valuationSubring_isPrincipalIdealRing](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/valuationsubring-isprincipalidealring--c65eeadcfb86ecac2e33558f.md) | 452 | `result-track:c65eeadcfb86ecac2e33558fb48365a532d3f993b02dcbcd8d8b0080932ce597` |
| 47 | `instance` | [valuationSubring_isDiscreteValuationRing](../../../../mathematics/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/declarations/valuationsubring-isdiscretevaluationring--c313f8f2f37a17bcad713b53.md) | 457 | `declaration-track:c313f8f2f37a17bcad713b53f5e8290c9659784a7f65103baca214d7be80d955` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
