# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Coeff.Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2811dc15d07a0421e15261ea448ffe22acbad367",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2811dc15d07a0421e15261ea448ffe22acbad367`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean.json)

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
| 1 | `theorem` | [coeff_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-add--98a284444983e46d2708c9f1.md) | 41 | `result-track:98a284444983e46d2708c9f17d29af3e636bc835084a82fb09100ac2273d4593` |
| 2 | `theorem` | [coeff_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-smul--1240c91891724ebe3a0f28c0.md) | 48 | `result-track:1240c91891724ebe3a0f28c02d45e4892caac2932b67fc1c0e8f32e53aa8e7bd` |
| 3 | `theorem` | [support_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/support-smul--61cf34b9668e463e59ff337e.md) | 52 | `result-track:61cf34b9668e463e59ff337e5d58cd201b4a30531136a3689ca6dc5fe0537aee` |
| 4 | `theorem` | [card_support_mul_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/card-support-mul-le--701ab1d5d90bbf0ac125d96b.md) | 60 | `result-track:701ab1d5d90bbf0ac125d96b7362d26e81449b281f507ba6136de9cd5b2b9336` |
| 5 | `def` | [lsum](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/lsum--57fd1fa2e758d61b3e627656.md) | 69 | `declaration-track:57fd1fa2e758d61b3e627656a5cbf928b64132d101cb51ed6b6d6ba8b3045a7c` |
| 6 | `def` | [lcoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/lcoeff--613adb86a3f95b87d7b7ad86.md) | 79 | `declaration-track:613adb86a3f95b87d7b7ad86309e7d1ece34bd60533ce1e007e0cabcc23b0082` |
| 7 | `theorem` | [lcoeff_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/lcoeff-apply--cb1ca348e226bcd99edbd94c.md) | 85 | `result-track:cb1ca348e226bcd99edbd94c0f66a6f1c809f1a0eebc2954cd466adf8015c78d` |
| 8 | `theorem` | [finsetSum_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/finsetsum-coeff--cd1252e412ed80f0f5602587.md) | 89 | `result-track:cd1252e412ed80f0f5602587efd47fa490e453f48764985b8f9e44f8d39fdbb9` |
| 9 | `lemma` | [coeff_list_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-list-sum--488d3fa69c7ddf8ef513a6e1.md) | 95 | `result-track:488d3fa69c7ddf8ef513a6e1432e8732dbc7bc0de905dc941076728e01823ec2` |
| 10 | `lemma` | [coeff_list_sum_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-list-sum-map--07264fb5eb4300eb26ba0907.md) | 99 | `result-track:07264fb5eb4300eb26ba0907a618ac9bc2e815fd6de6a7047aba3ae92b340812` |
| 11 | `theorem` | [coeff_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-sum--e762d195e49820823e12d03f.md) | 104 | `result-track:e762d195e49820823e12d03fd42710be8e4e0df93521cbd892f08bd2f403df15` |
| 12 | `theorem` | [coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul--6a114ff6886bf78de1be7a7e.md) | 111 | `result-track:6a114ff6886bf78de1be7a7e2ceafd2701f43c76df5ba9175a204761b594db04` |
| 13 | `theorem` | [mul_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/mul-coeff-zero--b1f2adac645ce246e098e44d.md) | 118 | `result-track:b1f2adac645ce246e098e44d7ea026cb19dedceb61bd7ba65249910e0cd73836` |
| 14 | `theorem` | [mul_coeff_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/mul-coeff-one--0f684cd34da40bf473895bb4.md) | 121 | `result-track:0f684cd34da40bf473895bb4df1fcdbc65214caa154bdd5c0574c3ef849ff381` |
| 15 | `def` | [constantCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/constantcoeff--d0ab52b2e0516810e3a7a897.md) | 129 | `declaration-track:d0ab52b2e0516810e3a7a8979ed9be4cc0d245f9b54306d1ba6a5117d527c97d` |
| 16 | `lemma` | [constantCoeff_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/constantcoeff-surjective--29bc7e5f007ac04197541926.md) | 136 | `result-track:29bc7e5f007ac04197541926b718a8de8b2df6fba59f071e0e6f2abd6573e971` |
| 17 | `theorem` | [isUnit_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/isunit-c--d4d8f7ccf8c5ef4e5ff0653d.md) | 139 | `result-track:d4d8f7ccf8c5ef4e5ff0653d89103ffd8803b69f9a8b0c635f08a89652b6efff` |
| 18 | `theorem` | [coeff_mul_X_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul-x-zero--cea94f0b6108d0205e9a7446.md) | 142 | `result-track:cea94f0b6108d0205e9a7446126821d22a7dade7c663b98ac16c08ff0b5acd0f` |
| 19 | `theorem` | [coeff_X_mul_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-x-mul-zero--2b0ec576921e41dfa3b62456.md) | 144 | `result-track:2b0ec576921e41dfa3b62456bf9a768938420f84dd262ffad8d7a760e1f95f53` |
| 20 | `theorem` | [coeff_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-c-mul-x-pow--d8869fdd9d2cbb53bf5aeb88.md) | 146 | `result-track:d8869fdd9d2cbb53bf5aeb88a786c31fbfc756a4aecdfc9553477d1b8d8d327c` |
| 21 | `theorem` | [coeff_C_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-c-mul-x--b76f88a4deabab6a0e02490d.md) | 151 | `result-track:b76f88a4deabab6a0e02490dfbad82e33e9b863515df352efafe392d85481327` |
| 22 | `theorem` | [coeff_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-c-mul--03c9da13e81141cb96138491.md) | 155 | `result-track:03c9da13e81141cb9613849143a42ae4fdd443fb0385cc769b9b16617f4cff0a` |
| 23 | `theorem` | [C_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/c-mul--0616cc82bb6965e944290b8a.md) | 160 | `result-track:0616cc82bb6965e944290b8a0b59ab3e2ff58facb15e6b9748abaec5e864af29` |
| 24 | `theorem` | [coeff_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul-c--22b66a4a8c5ea12095adb91e.md) | 165 | `result-track:22b66a4a8c5ea12095adb91e8f6e9e675c504ff8ae5f715cb56ea23c405314dc` |
| 25 | `lemma` | [coeff_mul_natCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul-natcast--e96bd41aa28375d731493add.md) | 170 | `result-track:e96bd41aa28375d731493add0541cb7fda7a4581a3c288290ea1b8ce8e768012` |
| 26 | `lemma` | [coeff_natCast_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-natcast-mul--ad7dfc9e53364819fd43e16d.md) | 173 | `result-track:ad7dfc9e53364819fd43e16d3bd268bc28769cdbcc2073e0b927afd542523707` |
| 27 | `lemma` | [coeff_mul_ofNat](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul-ofnat--8233b59e3a2fb29523dcffe0.md) | 176 | `result-track:8233b59e3a2fb29523dcffe07686c800a467997856dd2bf707bb40d5786b76f4` |
| 28 | `lemma` | [coeff_ofNat_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-ofnat-mul--bb926c87109e1bd08cd97313.md) | 179 | `result-track:bb926c87109e1bd08cd97313954bd1ee9513c11875eced761488d70731738035` |
| 29 | `lemma` | [coeff_mul_intCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul-intcast--dd711016f547fba79eab8d32.md) | 182 | `result-track:dd711016f547fba79eab8d323b8b36d7b5a05394bc25410910a009c269a50c94` |
| 30 | `lemma` | [coeff_intCast_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-intcast-mul--b1a8e26f76db0d28869ff1f3.md) | 185 | `result-track:b1a8e26f76db0d28869ff1f3d522371fe44fae6ffdcd9ce0c354a464a2e7a5c7` |
| 31 | `theorem` | [coeff_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-x-pow--dd1958b0e18ca4051335aecc.md) | 189 | `result-track:dd1958b0e18ca4051335aeccf410896a3ef5aeae46eb3487b39d8927de897f87` |
| 32 | `theorem` | [coeff_X_pow_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-x-pow-self--5e8850f1812abca2c3d89569.md) | 192 | `result-track:5e8850f1812abca2c3d895692f4f52a09ba705625b6ce0108952a338593438c5` |
| 33 | `theorem` | [support_binomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/support-binomial--31c3449a1fd26959fef18977.md) | 198 | `result-track:31c3449a1fd26959fef18977d245a18d16fe581132eccdeefa6c3bc5427f6d1e` |
| 34 | `theorem` | [support_trinomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/support-trinomial--99014077d186cfe81a139c52.md) | 205 | `result-track:99014077d186cfe81a139c52db62340502d41d1bb8f4cef8bb40f4fac032d06c` |
| 35 | `theorem` | [card_support_binomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/card-support-binomial--55d65540084d83c86cc250e2.md) | 215 | `result-track:55d65540084d83c86cc250e28bf15be4c3b97409aa8954edc0790f84a0c8c001` |
| 36 | `theorem` | [card_support_trinomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/card-support-trinomial--c216ed3230a078314e51e878.md) | 219 | `result-track:c216ed3230a078314e51e878238af80ac04f30d736cc90ffb3e09f8074f5257a` |
| 37 | `theorem` | [coeff_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul-x-pow--c741d4c92d8b381ffeca165d.md) | 229 | `result-track:c741d4c92d8b381ffeca165d345532f506f09755eac2f74ccfe339d66d8407ad` |
| 38 | `theorem` | [coeff_X_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-x-pow-mul--6538ff45c808b938067cc361.md) | 238 | `result-track:6538ff45c808b938067cc361129e01b9e9e76e6c8217fefedf35ba9bdfadefeb` |
| 39 | `theorem` | [coeff_mul_X_pow'](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul-x-pow--9fdb2339bf132df616738f98.md) | 242 | `result-track:9fdb2339bf132df616738f98e1c093cbf1c249ec80dbfae2a2d2142ab9c0b1e7` |
| 40 | `theorem` | [coeff_X_pow_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-x-pow-mul--a074b6425658824e29d8da94.md) | 250 | `result-track:a074b6425658824e29d8da942a77b939f74caedd6018a2e52f2bab0fd9d40a01` |
| 41 | `theorem` | [coeff_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul-x--e12f5f5ff55230595f69e84a.md) | 255 | `result-track:e12f5f5ff55230595f69e84a41842ddad53916bd32c4ef844a54050a6ccd98f8` |
| 42 | `theorem` | [coeff_X_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-x-mul--b1fe4d73a8433f00085408cc.md) | 259 | `result-track:b1fe4d73a8433f00085408cc5de20c8fbe0c360a586250d12daf3af5999227fe` |
| 43 | `theorem` | [coeff_mul_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul-monomial--88957216f4490782d08c8f54.md) | 262 | `result-track:88957216f4490782d08c8f54b94472b3c0b308b3b79ff0d7bfad92e0e66c914c` |
| 44 | `theorem` | [coeff_monomial_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-monomial-mul--7d2d89075c6d5f2e9ef6a44c.md) | 266 | `result-track:7d2d89075c6d5f2e9ef6a44cf32828102ffdc7790e5f9eba8b526bed3cefdef2` |
| 45 | `theorem` | [coeff_mul_monomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-mul-monomial-zero--60c03aa90256b764bbe52e34.md) | 271 | `result-track:60c03aa90256b764bbe52e34366a69d39e2826799de44124dfbda15a1d571a58` |
| 46 | `theorem` | [coeff_monomial_zero_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-monomial-zero-mul--da0c55950e632e4c08c6b883.md) | 276 | `result-track:da0c55950e632e4c08c6b883825b24e64c14a085fc043822e217acf5e83a59dc` |
| 47 | `theorem` | [mul_X_pow_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/mul-x-pow-eq-zero--103bd80a8e13064670880320.md) | 280 | `result-track:103bd80a8e13064670880320146865d3b84155e32634df3caab0660760086a41` |
| 48 | `theorem` | [isRegular_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/isregular-x-pow--91d8b6251cfc125ab67e5134.md) | 283 | `result-track:91d8b6251cfc125ab67e5134d32a19b7d726554471b8b811fbe37f364189227d` |
| 49 | `theorem` | [isRegular_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/isregular-x--3485996bf9bc5ae3801f39c2.md) | 290 | `result-track:3485996bf9bc5ae3801f39c21e3eaa5405c0d85ca36d565c5d8956aee9ddd75e` |
| 50 | `theorem` | [coeff_X_add_C_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-x-add-c-pow--222025533127566464ad1b9d.md) | 292 | `result-track:222025533127566464ad1b9dff98bc25d9ae9de99794359ee984b97162c3b012` |
| 51 | `theorem` | [coeff_X_add_one_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-x-add-one-pow--9b690b4a5978d71992aad2fe.md) | 303 | `result-track:9b690b4a5978d71992aad2fed2063c42d3d9778447f48f52064291d925df1fa6` |
| 52 | `theorem` | [coeff_one_add_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/coeff-one-add-x-pow--f5841e7f3297dab83ea8bd17.md) | 306 | `result-track:f5841e7f3297dab83ea8bd17df5624e74bcae3b56b8d0a3a972e0f7a247626d2` |
| 53 | `theorem` | [one_add_X_pow_sub_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/one-add-x-pow-sub-x-pow--e72645f224882d7c9f0804d8.md) | 309 | `result-track:e72645f224882d7c9f0804d83012c60be161083a5470bbc76983f2ccc03d80d6` |
| 54 | `theorem` | [C_dvd_iff_dvd_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/c-dvd-iff-dvd-coeff--daccaee41d1edd9deef2c62a.md) | 315 | `result-track:daccaee41d1edd9deef2c62af56b92ad7d161faf28af12a60b550845f76f759d` |
| 55 | `theorem` | [smul_eq_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/smul-eq-c-mul--91aeaa7bffbc03f14d9e4089.md) | 334 | `result-track:91aeaa7bffbc03f14d9e40891dc160f91e5f4d1c7e894ae4115f7e5dc59e0d0d` |
| 56 | `theorem` | [update_eq_add_sub_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/update-eq-add-sub-coeff--e38741c18dfdfbbe68161e01.md) | 336 | `result-track:e38741c18dfdfbbe68161e0138328548623e53ad54bf7f88c473594d0f37e6a8` |
| 57 | `theorem` | [natCast_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/natcast-coeff-zero--2dc149de437f3e9d5eaf53a4.md) | 346 | `result-track:2dc149de437f3e9d5eaf53a40609e6ac1651b3d42a05b25af8ba485316ff13b3` |
| 58 | `theorem` | [natCast_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/natcast-inj--74240180f9f3b812670213aa.md) | 350 | `result-track:74240180f9f3b812670213aa1f50e2a46137078fa18228f7d924f8251673a530` |
| 59 | `theorem` | [intCast_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/intcast-coeff-zero--5e6625f79f28377d907e931e.md) | 360 | `result-track:5e6625f79f28377d907e931e7dbeea4f00b5e711a4230cd472bea3ca36f32f00` |
| 60 | `theorem` | [intCast_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/intcast-inj--3c620f006f5ec7b0f723ce9c.md) | 364 | `result-track:3c620f006f5ec7b0f723ce9cd76247471fe5099ccffbea168f014590e80d8eae` |
| 61 | `instance` | [charZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/charzero--6616a8f843c46c9d9d814890.md) | 374 | `declaration-track:6616a8f843c46c9d9d81489024d3c5087b8903ec21e5b3d0504bc8e79eb41a0b` |
| 62 | `instance` | [charP](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/declarations/charp--37e93fc259e3f1411ce67fba.md) | 376 | `declaration-track:37e93fc259e3f1411ce67fba2cec95a5542c4b3a53d8d96da73339b8bfcc83cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
