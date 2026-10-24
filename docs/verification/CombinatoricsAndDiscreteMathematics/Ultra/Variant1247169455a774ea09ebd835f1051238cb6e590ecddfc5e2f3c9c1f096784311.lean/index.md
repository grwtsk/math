# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Ultra.Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0179ac3dfa5b91bec32d6b5fa4a0af2107e48e2a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0179ac3dfa5b91bec32d6b5fa4a0af2107e48e2a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Uniform` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Ultra.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.LiminfLimsup` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_mul_le_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-mul-le-max--3b796cb4ac09084a3b027e02.md) | 51 | `result-track:3b796cb4ac09084a3b027e020a7b1941da426cd2f8e6c8539c20397d6d386933` |
| 2 | `lemma` | [isUltrametricDist_of_forall_norm_mul_le_max_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/isultrametricdist-of-forall-norm-mul-le-max-norm--b3941fef34dda6e2038e9ef8.md) | 57 | `result-track:b3941fef34dda6e2038e9ef871d0f76a4c2e2d1298548dfee84c668397b5bc6b` |
| 3 | `lemma` | [isUltrametricDist_of_isNonarchimedean_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/isultrametricdist-of-isnonarchimedean-norm--d9dc63c3348c9c6730ae6db3.md) | 62 | `result-track:d9dc63c3348c9c6730ae6db38c04ecf7602c0ae4fd2c73041b2d4043d2e2893c` |
| 4 | `lemma` | [isNonarchimedean_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/isnonarchimedean-norm--23b470a00f87c2c30a297b3e.md) | 66 | `result-track:23b470a00f87c2c30a297b3e08a2eaf233ab1285c29b566da7db8e57b068c76c` |
| 5 | `lemma` | [isUltrametricDist_iff_isNonarchimedean_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/isultrametricdist-iff-isnonarchimedean-norm--5b80bb818edae4c95501c1a4.md) | 73 | `result-track:5b80bb818edae4c95501c1a4845155f3575ebb76857d114cc0ea449b55357ef5` |
| 6 | `lemma` | [nnnorm_mul_le_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/nnnorm-mul-le-max--155d3e7c0abecaeb66f04573.md) | 78 | `result-track:155d3e7c0abecaeb66f045732b5475ca4b0123a6e03b6acb7ba1c6d4f82b96b4` |
| 7 | `lemma` | [isUltrametricDist_of_forall_nnnorm_mul_le_max_nnnorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/isultrametricdist-of-forall-nnnorm-mul-le-max-nnnorm--8cdba7d640523d6f7468ab85.md) | 83 | `result-track:8cdba7d640523d6f7468ab8577f5be9655bf14c7ee6479428d1ad0e0d1537732` |
| 8 | `lemma` | [isUltrametricDist_of_isNonarchimedean_nnnorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/isultrametricdist-of-isnonarchimedean-nnnorm--6c515b4f366bd3d72ea7ad62.md) | 87 | `result-track:6c515b4f366bd3d72ea7ad62fb5e64a996e8b0780c52882b189f00d65552b5d6` |
| 9 | `lemma` | [isNonarchimedean_nnnorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/isnonarchimedean-nnnorm--4085238340f19a3153698754.md) | 91 | `result-track:4085238340f19a31536987545240af2b93e0205ab2f4635d2a449aea7741d0a5` |
| 10 | `lemma` | [isUltrametricDist_iff_isNonarchimedean_nnnorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/isultrametricdist-iff-isnonarchimedean-nnnorm--08d9792fb374ea70817d1c29.md) | 98 | `result-track:08d9792fb374ea70817d1c29e00d08ff977499b7f990195bbafc0d0618ca1a97` |
| 11 | `lemma` | [norm_mul_eq_max_of_norm_ne_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-mul-eq-max-of-norm-ne-norm--5ebbc5f985977af96e47ed74.md) | 104 | `result-track:5ebbc5f985977af96e47ed740717f1773d2f1ad35cd1efc66687359000671a7f` |
| 12 | `lemma` | [norm_eq_of_mul_norm_lt_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-eq-of-mul-norm-lt-max--9e4777e8ddbb12b125d2909b.md) | 110 | `result-track:9e4777e8ddbb12b125d2909bbcfb75d875a2e825cecc8f75f5fd7cd5178987f4` |
| 13 | `lemma` | [nnnorm_mul_eq_max_of_nnnorm_ne_nnnorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/nnnorm-mul-eq-max-of-nnnorm-ne-nnnorm--1c1c5d1d9480c66f04efc4fe.md) | 116 | `result-track:1c1c5d1d9480c66f04efc4fed4ef492670bf40e7cb0d30bdab7ed87ea0c890a6` |
| 14 | `lemma` | [nnnorm_eq_of_mul_nnnorm_lt_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/nnnorm-eq-of-mul-nnnorm-lt-max--2912acb003ca73d08e2dcbc7.md) | 122 | `result-track:2912acb003ca73d08e2dcbc7881593308ef59bcb2e5f15eb52367d15dcfca102` |
| 15 | `lemma` | [norm_div_eq_max_of_norm_div_ne_norm_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-div-eq-max-of-norm-div-ne-norm-div--8fffe0b5c0f13ab38f08707c.md) | 128 | `result-track:8fffe0b5c0f13ab38f08707c77033fe81f86eb066f2d84acdf54d60f41574abc` |
| 16 | `lemma` | [nnnorm_div_eq_max_of_nnnorm_div_ne_nnnorm_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/nnnorm-div-eq-max-of-nnnorm-div-ne-nnnorm-div--3a2663b4c5f002962f7c8b5a.md) | 134 | `result-track:3a2663b4c5f002962f7c8b5a577fe241d118542e2cfbedb9db7bd335b934e6d5` |
| 17 | `lemma` | [nnnorm_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/nnnorm-pow-le--83f616cb4055a28ea7f0439a.md) | 140 | `result-track:83f616cb4055a28ea7f0439abd5e0d5bcbdc9a61b069dea2bd5a76d9dc5b4435` |
| 18 | `lemma` | [norm_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-pow-le--ff77ba5de2bb1decd466eb10.md) | 147 | `result-track:ff77ba5de2bb1decd466eb10b93ffc52179bc7b1e24b2735ced0fb98e9f2e5ad` |
| 19 | `lemma` | [nnnorm_zpow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/nnnorm-zpow-le--e80993c65e14405c031c7cf4.md) | 152 | `result-track:e80993c65e14405c031c7cf43446ea0cd8e38f211447ff9375dc3989943fb155` |
| 20 | `lemma` | [norm_zpow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-zpow-le--be842818144b4c9a10de8664.md) | 158 | `result-track:be842818144b4c9a10de866494d750ff7da7a83a33a878f6a6af80542d067c65` |
| 21 | `def` | [ball_openSubgroup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/ball-opensubgroup--a80ab332e803da77b64fa2d3.md) | 170 | `declaration-track:a80ab332e803da77b64fa2d3f7e1ede0213c829c28949f9775e1ad5996a95796` |
| 22 | `def` | [closedBall_openSubgroup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/closedball-opensubgroup--60a2be732c514bc75d3df20a.md) | 184 | `declaration-track:60a2be732c514bc75d3df20a648f6e70469abf0059aa09ee12457693cf9fcdbc` |
| 23 | `instance` | [nonarchimedeanGroup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/nonarchimedeangroup--f09f0ddb6150c84282496383.md) | 205 | `declaration-track:f09f0ddb6150c842824963830294fe63446f9d966381a96e88f8d3f0a8c26f90` |
| 24 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormMulLeMax.Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.Finset.Nonempty.norm_prod_le_sup'_norm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-normmullemax-variantb719--d8182ceecd0e689104d85ac0.md) | 216 | `result-track:d8182ceecd0e689104d85ac037ba08f7a1fd2138cc040290efa02ccd7e14f8ab` |
| 25 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormMulLeMax.Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.Finset.nnnorm_prod_le_sup_nnnorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-normmullemax-variantb719--328a0123900046436a154ac0.md) | 232 | `result-track:328a0123900046436a154ac0d8991e3221579a2a10f0039556ac2b16ef592ea8` |
| 26 | `lemma` | [nnnorm_prod_le_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/nnnorm-prod-le-of-forall-le--effab959835b4570d1f119f7.md) | 245 | `result-track:effab959835b4570d1f119f7ec02162c970920c4294200bf16e13b9521fc93ce` |
| 27 | `lemma` | [norm_prod_le_of_forall_le_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-prod-le-of-forall-le-of-nonempty--cfa7058d3b49a5c8202489db.md) | 255 | `result-track:cfa7058d3b49a5c8202489db9d0ef44a4e284a2f21fa98ff3915339e3735235f` |
| 28 | `lemma` | [norm_prod_le_of_forall_le_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-prod-le-of-forall-le-of-nonneg--afd2639d7a6d611165f1754a.md) | 265 | `result-track:afd2639d7a6d611165f1754a7ad6af7bc583878d10610d170215d5af1e8a17bb` |
| 29 | `theorem` | [exists_norm_finset_prod_le_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/exists-norm-finset-prod-le-of-nonempty--d05107a9a146766105f4934f.md) | 276 | `result-track:d05107a9a146766105f4934f0f00381f57b1d35684fa4637f040cbfb8317b4fb` |
| 30 | `theorem` | [exists_norm_finset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/exists-norm-finset-prod-le--a269694f9270a72417615c15.md) | 287 | `result-track:a269694f9270a72417615c15a06ddb1a834698247de34c11d293ddf9ff3541f8` |
| 31 | `theorem` | [exists_norm_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/exists-norm-multiset-prod-le--c578c2401a21136ab52037c2.md) | 299 | `result-track:c578c2401a21136ab52037c2669fbb0d48bd6231b370f9ff7819013f87fe8d97` |
| 32 | `lemma` | [norm_tprod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-tprod-le--ca4941de915bdd020648390a.md) | 319 | `result-track:ca4941de915bdd020648390a5760f522b4f55b3255346ea15d167b04d10802ea` |
| 33 | `lemma` | [nnnorm_tprod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/nnnorm-tprod-le--bb51332d830cfc915c696551.md) | 337 | `result-track:bb51332d830cfc915c696551c9f0099b5a7e7702a9759eb76f2f06777ef5df54` |
| 34 | `lemma` | [norm_tprod_le_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-tprod-le-of-forall-le--ac0f209868c07c7a0a518e3f.md) | 341 | `result-track:ac0f209868c07c7a0a518e3fcd8908d8b11bc2945d9f96f169076d026547a8ed` |
| 35 | `lemma` | [norm_tprod_le_of_forall_le_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/norm-tprod-le-of-forall-le-of-nonneg--84c8460f0e5777daa1ea130d.md) | 346 | `result-track:84c8460f0e5777daa1ea130d086b69a031fca578ff5a729a3d29dd2a03071e9e` |
| 36 | `lemma` | [nnnorm_tprod_le_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/declarations/nnnorm-tprod-le-of-forall-le--e1ba050a7cf45fd5269fc139.md) | 353 | `result-track:e1ba050a7cf45fd5269fc1393101ea3b95256defdc0e0da91afe6f42247fa2d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
