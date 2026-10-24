# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e53e00b13ce4f84aa9907bfe01506d3c8c22cc0d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e53e00b13ce4f84aa9907bfe01506d3c8c22cc0d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_wfDvdMonoid_associates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/of-wfdvdmonoid-associates--20bd1b3d7e8aab47aa4ba5cd.md) | 48 | `result-track:20bd1b3d7e8aab47aa4ba5cd406c0e8086b449e293aeaddba6627052f36dece9` |
| 2 | `instance` | [wfDvdMonoid_associates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/wfdvdmonoid-associates--41fb20c3bcaa7a7b9ad07972.md) | 53 | `declaration-track:41fb20c3bcaa7a7b9ad0797296dcdd3d0c32d119e03d03a40411e4e455452479` |
| 3 | `theorem` | [wellFoundedLT_associates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/wellfoundedlt-associates--68b9a8fa3539de14ae7a5a07.md) | 56 | `result-track:68b9a8fa3539de14ae7a5a0745ffc35caefb5c06e4beaa6c6168007f51cbe24a` |
| 4 | `theorem` | [WfDvdMonoid.of_wellFoundedLT_associates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/wfdvdmonoid-of-wellfoundedlt-associates--8e6b518dd57b17d94a58b219.md) | 61 | `result-track:8e6b518dd57b17d94a58b219c05fda99da838cf73dbde86d424492f3b8cf6509` |
| 5 | `theorem` | [WfDvdMonoid.iff_wellFounded_associates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/wfdvdmonoid-iff-wellfounded-associates--aeb5515d7365c016fca941c3.md) | 69 | `result-track:aeb5515d7365c016fca941c32bacd606e9c63dfe6e9017acbc951bdf597e5364` |
| 6 | `instance` | [Associates.ufm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/associates-ufm--63114aefe0f18658073abbe9.md) | 73 | `declaration-track:63114aefe0f18658073abbe9e0a3f1f10557e2372174dc87369d53f0b09e1104` |
| 7 | `theorem` | [prime_factors_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/prime-factors-unique--2e7b2e4b858b52080ff223ab.md) | 80 | `result-track:2e7b2e4b858b52080ff223ab199b169fbe2c4d3d60a5273d5ce4b0b03140e969` |
| 8 | `theorem` | [factors_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/factors-unique--0b972a46f55596f24c702559.md) | 110 | `result-track:0b972a46f55596f24c7025596fc8140eaa93fd2377b7c0f38f01db5bfb42e6d2` |
| 9 | `theorem` | [prime_factors_irreducible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/prime-factors-irreducible--61ebf6700b43e39416a157db.md) | 119 | `result-track:61ebf6700b43e39416a157dba5e81fbcf245b8aee98f3f6d57b3a40daa7aad30` |
| 10 | `theorem` | [irreducible_iff_prime_of_existsUnique_irreducible_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/irreducible-iff-prime-of-existsunique-irreducible-factors--2051dd9ca3cc460b08bc589d.md) | 140 | `result-track:2051dd9ca3cc460b08bc589de07c4ea00fcf924ab5c77f24e17718d9279463d6` |
| 11 | `theorem` | [factors_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/factors-one--f00e136af51b4f2785c9357c.md) | 189 | `result-track:f00e136af51b4f2785c9357cc8ae596509faa3601ca6c9d18e78914a529008c8` |
| 12 | `theorem` | [exists_mem_factors_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/exists-mem-factors-of-dvd--877f5ab6b485df7c2f4d2e1c.md) | 196 | `result-track:877f5ab6b485df7c2f4d2e1c0c7880b5e5df1909024e9429163930760805c942` |
| 13 | `theorem` | [exists_mem_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/exists-mem-factors--4b7980e673fa875a8bb8fafb.md) | 212 | `result-track:4b7980e673fa875a8bb8fafbecce1017779be8a212be766ec3216a3c9713ee0e` |
| 14 | `theorem` | [factors_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/factors-mul--4713031315ec9e41063036c2.md) | 218 | `result-track:4713031315ec9e41063036c23ce61ce902ff9d1ad9846cf9196e9c639ca042b0` |
| 15 | `theorem` | [factors_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/factors-pow--c1f2eeeac1157fba57cacb4c.md) | 228 | `result-track:c1f2eeeac1157fba57cacb4c5da4df9e0dae685a5536277898d73d17cc132fed` |
| 16 | `theorem` | [factors_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/factors-pos--b9e962328d7ad8c78750f0be.md) | 241 | `result-track:b9e962328d7ad8c78750f0be794441dc7048b861a1c9859d6433a0e9cb0a49bc` |
| 17 | `theorem` | [factors_pow_count_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/factors-pow-count-prod--6b3a612316e02485b622c2b6.md) | 253 | `result-track:6b3a612316e02485b622c2b65cc241ef582e39992b9a356a4431bd33862807d4` |
| 18 | `theorem` | [factors_rel_of_associated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/factors-rel-of-associated--c6979ea839711215677058ab.md) | 261 | `result-track:c6979ea839711215677058abdc47b831313016d36f957cd313d3930fe5f763dc` |
| 19 | `theorem` | [unique'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/unique--47487ee3336ef98662c3c817.md) | 278 | `result-track:47487ee3336ef98662c3c817b0b6615102602f519680509ae483694b17a0f9dc` |
| 20 | `theorem` | [prod_le_prod_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/prod-le-prod-iff-le--5900e9b32fe70da23ca46e41.md) | 289 | `result-track:5900e9b32fe70da23ca46e41a394a6e638b64e18f228d06fec1e68ce39997b05` |
| 21 | `theorem` | [WfDvdMonoid.of_exists_prime_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/wfdvdmonoid-of-exists-prime-factors--caff2f1d60997c30bc6ebc4b.md) | 311 | `result-track:caff2f1d60997c30bc6ebc4b7b909542a93f5391f459e18db800c91cb776f523` |
| 22 | `theorem` | [irreducible_iff_prime_of_exists_prime_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/irreducible-iff-prime-of-exists-prime-factors--fa485f5616e4f673bb55ae9c.md) | 350 | `result-track:fa485f5616e4f673bb55ae9c40781cd9fb954d5b6b3a0e87c696f49b28726dc3` |
| 23 | `theorem` | [UniqueFactorizationMonoid.of_exists_prime_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/uniquefactorizationmonoid-of-exists-prime-factors--521690e4f828628b0fc8dcf3.md) | 359 | `result-track:521690e4f828628b0fc8dcf310ddb0cd7b3b98121815b7fd75abe62b51aa832a` |
| 24 | `theorem` | [UniqueFactorizationMonoid.iff_exists_prime_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/uniquefactorizationmonoid-iff-exists-prime-factors--dc95caf6d91f95bd9c60cc7a.md) | 365 | `result-track:dc95caf6d91f95bd9c60cc7af3f0ab31d7ba68a64ba9d163bc92671e55d07f5e` |
| 25 | `theorem` | [MulEquiv.uniqueFactorizationMonoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/mulequiv-uniquefactorizationmonoid--f478be695723561f6b130797.md) | 375 | `result-track:f478be695723561f6b13079782bb42d748e27b3a16754c2186e4b0c131855d5e` |
| 26 | `theorem` | [MulEquiv.uniqueFactorizationMonoid_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/mulequiv-uniquefactorizationmonoid-iff--7a26ff36a38ca6da8858bd38.md) | 393 | `result-track:7a26ff36a38ca6da8858bd383c1d78ad66ce9423679ab407b687d5d85d50fa43` |
| 27 | `theorem` | [of_existsUnique_irreducible_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/of-existsunique-irreducible-factors--91fd685c43f494f5c5c07e97.md) | 401 | `result-track:91fd685c43f494f5c5c07e97e5459f53280033593317f51742a692da94994473` |
| 28 | `theorem` | [isRelPrime_iff_no_prime_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/isrelprime-iff-no-prime-factors--fa62e83cb9e5d10681a54231.md) | 418 | `result-track:fa62e83cb9e5d10681a542315105fef321a041c2ce9d6f3434186a44c2609390` |
| 29 | `theorem` | [dvd_of_dvd_mul_left_of_no_prime_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/dvd-of-dvd-mul-left-of-no-prime-factors--fcf7180548f744061c80dca1.md) | 425 | `result-track:fcf7180548f744061c80dca10657c98a4f551fe099be97f0c4dd32d003efedf2` |
| 30 | `theorem` | [dvd_of_dvd_mul_right_of_no_prime_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/dvd-of-dvd-mul-right-of-no-prime-factors--664c19e45c39d2aa95d36eed.md) | 431 | `result-track:664c19e45c39d2aa95d36eed77a1b98c59d10ec55c4e4ea2dae9d8eca09715ae` |
| 31 | `theorem` | [exists_reduced_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/exists-reduced-factors--0e63259fb382f89bd02aacb1.md) | 437 | `result-track:0e63259fb382f89bd02aacb195ddb1f54f4e82606583c0f7db37a9edd9e648e7` |
| 32 | `theorem` | [exists_reduced_factors'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant2e9df630c2300fe920b41fd017bbe70196e884be80e4ee764431e7bb7c63d34b.lean/declarations/exists-reduced-factors--1c48a6b11bdda481a1b0cf11.md) | 465 | `result-track:1c48a6b11bdda481a1b0cf11be630238a5a48b5dbeaee14529d2057d52a2501f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
