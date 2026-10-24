# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47f9f3e5e1d10b20ce507a5282d68a2a9ea5b16f",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47f9f3e5e1d10b20ce507a5282d68a2a9ea5b16f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Multiset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-neg--bda716d549011b476a66f0f0.md) | 37 | `result-track:bda716d549011b476a66f0f0b8038ab2b263c871664e9a61b7120abbea5736ea` |
| 2 | `lemma` | [natCast_card_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/natcast-card-filter--82c52cfae3897d1c3b154761.md) | 43 | `result-track:82c52cfae3897d1c3b154761bc9ab8b2cec2392bf4754eb8830b4ad0dfb09d29` |
| 3 | `lemma` | [sum_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-boole--8ccef2f82fe68b40f9376ecb.md) | 47 | `result-track:8ccef2f82fe68b40f9376ecbefd3d8c9fb726714482e83ed73e239436dc664b8` |
| 4 | `lemma` | [sum_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-mul--5779a825eed7136119175892.md) | 56 | `result-track:5779a825eed71361191758929d4a48488bc131aecb3769ce8531a7605c644d34` |
| 5 | `lemma` | [mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/mul-sum--51c47302e7e347b61b4b5dd6.md) | 59 | `result-track:51c47302e7e347b61b4b5dd66112bfe3bfb5472ce29587d54986ecc63aca24b7` |
| 6 | `lemma` | [sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-mul-sum--e02962dd38d78b0ca0899e62.md) | 62 | `result-track:e02962dd38d78b0ca0899e626ba4fbdb6d5d5c20c5b1b7c97d0879dc3046b9d4` |
| 7 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdNeg.Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.Fintype.sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodneg-variant4230d51ee--7f0f41bc8e1eea3b583d611e.md) | 66 | `result-track:7f0f41bc8e1eea3b583d611e99994d05b63837b2f82e2205661d32b5fac8b058` |
| 8 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdNeg.Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.Commute.sum_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodneg-variant4230d51ee--97764cd8ff36a3732b588c78.md) | 70 | `result-track:97764cd8ff36a3732b588c78f4d94b4a14165066c9732106a3a14ee879ca976f` |
| 9 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdNeg.Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.Commute.sum_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodneg-variant4230d51ee--1e7c068782fa17b71dac4e3e.md) | 76 | `result-track:1e7c068782fa17b71dac4e3e251426c08ac784af2d9d4da9922507e623070bd4` |
| 10 | `lemma` | [sum_range_succ_mul_sum_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-range-succ-mul-sum-range-succ--6842eb0b55134a842911d62a.md) | 80 | `result-track:6842eb0b55134a842911d62a5a526948f3f14950ac0073789b47c855629933a3` |
| 11 | `lemma` | [dvd_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/dvd-sum--fb89898f07eddfb48d5e35db.md) | 91 | `result-track:fb89898f07eddfb48d5e35db9355da642ab3995505322bea4a62eaaa35bada54` |
| 12 | `lemma` | [sum_mul_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-mul-boole--9f574618cb088189057148f2.md) | 99 | `result-track:9f574618cb088189057148f21535b0fe6cf3af92261701fbea3ba92e66f84ebe` |
| 13 | `lemma` | [sum_boole_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-boole-mul--02556e9d390463c4b1f06efd.md) | 102 | `result-track:02556e9d390463c4b1f06efd40367af815f97901f7c6cc5932e61a18aaa6fd90` |
| 14 | `theorem` | [prod_add_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-add-prod-eq--71b45d3609cf63e913f6e4c8.md) | 112 | `result-track:71b45d3609cf63e913f6e4c809bacaeffab6420ff1479d954e009c30578554a5` |
| 15 | `lemma` | [prod_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-sum--188ee89dc0bcc7ea7bbe3c8b.md) | 124 | `result-track:188ee89dc0bcc7ea7bbe3c8bc16b83045d5ebdad92ab52f01e10cfcd0c5aa0ff` |
| 16 | `lemma` | [prod_univ_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-univ-sum--71427e66ee2192e4d642bc81.md) | 157 | `result-track:71427e66ee2192e4d642bc816f4cedddfb10b7e99a621d72f9b32e4c20e39420` |
| 17 | `lemma` | [sum_prod_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-prod-pifinset--5cbece77b5b89bf5bd457705.md) | 161 | `result-track:5cbece77b5b89bf5bd457705c962f0ffa07e6d018536efafc3a2741ff08d0092` |
| 18 | `lemma` | [sum_pow'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-pow--de7c2eb5cf1dded29f775d8f.md) | 165 | `result-track:de7c2eb5cf1dded29f775d8ff03046f7e248119f5521e6ef018171c7c6a077db` |
| 19 | `theorem` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-add--04608997ce5f5282ecb575df.md) | 171 | `result-track:04608997ce5f5282ecb575df8908b9751a4270bdcfbd28f3e11bf469da4db046` |
| 20 | `theorem` | [prod_one_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-one-add--afae5159b7d5fa5d31aaaeb4.md) | 196 | `result-track:afae5159b7d5fa5d31aaaeb40f49d6124a15edec95a331a8508d0477c6a2cc26` |
| 21 | `theorem` | [prod_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-add-one--68373583e2bd60bbd429d58a.md) | 200 | `result-track:68373583e2bd60bbd429d58a931e7364be112d697c76cfdbb1fe96961cbdd4ac` |
| 22 | `theorem` | [prod_add_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-add-ordered--6201d2252d1943d177b31eda.md) | 205 | `result-track:6201d2252d1943d177b31eda7e791ef0b99bdaa2fb478067dcac84af276accfe` |
| 23 | `theorem` | [sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-pow-mul-eq-add-pow--8e403b0c514b695fd1ad7ffb.md) | 228 | `result-track:8e403b0c514b695fd1ad7ffb04d3ad7f8d4307bac5a12fc959a0e96d65b067fa` |
| 24 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdNeg.Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.Fintype.sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodneg-variant4230d51ee--10ea034f63cb547056a17c05.md) | 239 | `result-track:10ea034f63cb547056a17c0542ea08b0bd83cd034519e94f7c3fbeb575a4d2ad` |
| 25 | `theorem` | [prod_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-natcast--00bd60c0726db9835bf3778b.md) | 244 | `result-track:00bd60c0726db9835bf3778b268e90e87b20988e4ccbbd4e1aa50ae23698f26c` |
| 26 | `lemma` | [prod_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-sub--c6307ce63067ac00c000807b.md) | 254 | `result-track:c6307ce63067ac00c000807bb76adc032f02d61d142452c3292a27545f355f4f` |
| 27 | `lemma` | [prod_sub_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-sub-ordered--0a1e99fd829a683f08a38112.md) | 259 | `result-track:0a1e99fd829a683f08a381123a0c26697770b6d97f99a7387c3297cbc403c451` |
| 28 | `theorem` | [prod_one_sub_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-one-sub-ordered--06c9c611e7601ef50e41859b.md) | 269 | `result-track:06c9c611e7601ef50e41859b51c92a44968695357bb31856fea39b8d42c7920e` |
| 29 | `theorem` | [prod_range_natCast_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-range-natcast-sub--562c6b057ca44d1f98932b26.md) | 274 | `result-track:562c6b057ca44d1f98932b26e39b8f1ecbb3310bf7eb46f67caa10030b1113e5` |
| 30 | `lemma` | [sum_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-pow--3c8e82b51df01fa588ac121a.md) | 290 | `result-track:3c8e82b51df01fa588ac121ae40b0651493a48bf18398d481c4f683188a5d285` |
| 31 | `lemma` | [prod_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-sum--09240eb5606e9bff1f7da238.md) | 296 | `result-track:09240eb5606e9bff1f7da238fcb1bc0221192111f2615c24b7fc6dd21903c53c` |
| 32 | `lemma` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/prod-add--ec8cbe8a66fa1250a092abee.md) | 299 | `result-track:ec8cbe8a66fa1250a092abee94e7689fe587bac1fc53861ec6ef672e4d504673` |
| 33 | `lemma` | [sum_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-div--4b54ba502444016192a11396.md) | 307 | `result-track:4b54ba502444016192a113960c732ad9a7174ddbfe05d1e9f26a9ec2b6c0e0cf` |
| 34 | `lemma` | [cast_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-list-sum--3a53eda785a48661cf8fdbe8.md) | 315 | `result-track:3a53eda785a48661cf8fdbe81657835f5029bf073abe12c9781ecc28793669d4` |
| 35 | `lemma` | [cast_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-list-prod--88f47e43d9a164f67d46abe5.md) | 319 | `result-track:88f47e43d9a164f67d46abe5e835fe7e94ea4534aa78158efd45b46dd3104f0a` |
| 36 | `lemma` | [cast_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-multiset-sum--6632b83e8616447e5d764009.md) | 323 | `result-track:6632b83e8616447e5d764009075860252e5d120f827dc1c064b2360ac36223aa` |
| 37 | `lemma` | [cast_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-multiset-prod--a036e9b4ee585eeab6a492a5.md) | 328 | `result-track:a036e9b4ee585eeab6a492a55c476773307672bdfe49ecd91104e3ad844c1766` |
| 38 | `lemma` | [cast_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-sum--7213287d09b7aa41c21a5dff.md) | 332 | `result-track:7213287d09b7aa41c21a5dff12464fa28acbf364ebfd0d6dee2ae39a3cce16f6` |
| 39 | `lemma` | [cast_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-prod--ce32b3226205b5dfc851c846.md) | 337 | `result-track:ce32b3226205b5dfc851c846520fd8cb1f4f3189f2171f44fd64aac7f2511d3e` |
| 40 | `lemma` | [sum_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/sum-div--ac8ee9de1394f366f5a6fa72.md) | 346 | `result-track:ac8ee9de1394f366f5a6fa72e7868f8471fb86e46195ecf9b93ae8534aa7ca5a` |
| 41 | `lemma` | [cast_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-list-sum--808f4be75d1d146e28f1f590.md) | 354 | `result-track:808f4be75d1d146e28f1f590a2845bbea57461800d26331e0550c3e04d3dc867` |
| 42 | `lemma` | [cast_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-list-prod--399dacc2f6b2aec3a6b34fb7.md) | 358 | `result-track:399dacc2f6b2aec3a6b34fb7dcd1767465ce7d6853dfdceabf374bef223857d0` |
| 43 | `lemma` | [cast_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-multiset-sum--a6f166790c90afa53dbb724b.md) | 362 | `result-track:a6f166790c90afa53dbb724bd8a65dd5acb1ae88e3f429e06370078bd95603a7` |
| 44 | `lemma` | [cast_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-multiset-prod--9855e704e6f3c968a011f27f.md) | 367 | `result-track:9855e704e6f3c968a011f27f19440eea02024063320ef4dee9a35cc4d61252a2` |
| 45 | `lemma` | [cast_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-sum--894340a2224c9868d3b3e732.md) | 372 | `result-track:894340a2224c9868d3b3e7327fc623181e650c20b3f38a4dc0c36dad0b231680` |
| 46 | `lemma` | [cast_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantea2d70504eb38072df84f67f9de8cfa77703390abd3714f97943acd7ca5e49dd.lean/declarations/cast-prod--68f37ec825d92201d4a72169.md) | 377 | `result-track:68f37ec825d92201d4a721699d19e494cf852fe6a044568d2fdf4c27237c020f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
