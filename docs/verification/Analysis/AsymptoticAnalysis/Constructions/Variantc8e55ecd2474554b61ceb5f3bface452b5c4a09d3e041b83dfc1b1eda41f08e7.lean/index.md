# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Constructions.Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06085734f73fdfbc85c22b70b2d812d357153a11",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06085734f73fdfbc85c22b70b2d812d357153a11`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasProd_pi_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hasprod-pi-single--b73d9439c249f76301c21d70.md) | 34 | `result-track:b73d9439c249f76301c21d7022d564d9178e0299bf6cdb61d8e5c12b0204cd7c` |
| 2 | `theorem` | [tprod_pi_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/tprod-pi-single--04046b11aeafbb8365110b61.md) | 39 | `result-track:04046b11aeafbb8365110b610b2d2a12d8564129d8e5e627e45a98f073ba1921` |
| 3 | `lemma` | [tprod_setProd_singleton_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/tprod-setprod-singleton-left--6deb358bfcedd964309d2b33.md) | 45 | `result-track:6deb358bfcedd964309d2b339cc756cf166f29485c7ca1647a4b5810bac57c98` |
| 4 | `lemma` | [tprod_setProd_singleton_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/tprod-setprod-singleton-right--c7bcc650f5b48150ff962a96.md) | 50 | `result-track:c7bcc650f5b48150ff962a96bd4619c99d57af2da71c7acea038d96e3eee2ca5` |
| 5 | `theorem` | [Multipliable.prod_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-prod-symm--5fd2866d997f2915dd72f7e7.md) | 55 | `result-track:5fd2866d997f2915dd72f7e7a6cabdfcf3f34cb85db92115400b27447269c19e` |
| 6 | `theorem` | [HasProd.prodMk](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hasprod-prodmk--b46a1372aff16e70c587a3ec.md) | 66 | `result-track:b46a1372aff16e70c587a3ece1ad331432064fedf1b4e368547e9b76a661296c` |
| 7 | `lemma` | [HasProd.sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hasprod-sum--42d706dd35a10b31b1729471.md) | 85 | `result-track:42d706dd35a10b31b1729471054e325ba0346963b904fbdc8803d0017c435ccd` |
| 8 | `lemma` | [Multipliable.tprod_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-tprod-sum--7e6b9629877c8e8041e53a59.md) | 97 | `result-track:7e6b9629877c8e8041e53a592dc5aa584c4405643b5c45fb9dea0a2d184ef0b5` |
| 9 | `lemma` | [Multipliable.sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-sum--63264f202453a737a521be97.md) | 107 | `result-track:63264f202453a737a521be971d50e0697d247c6c871284a9efb1f4a852a308fe` |
| 10 | `theorem` | [HasProd.sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hasprod-sigma--04f764ce649931bad166a858.md) | 119 | `result-track:04f764ce649931bad166a8584f719e369d92fbe5acd0daf772cc580003a96155` |
| 11 | `theorem` | [HasProd.prod_fiberwise](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hasprod-prod-fiberwise--61cc50271c8d3801c44b2d6b.md) | 142 | `result-track:61cc50271c8d3801c44b2d6b1c5d85b9b8388de19072e23f78ee507702aef157` |
| 12 | `theorem` | [Multipliable.sigma'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-sigma--c41aff4127546122dd639c35.md) | 147 | `result-track:c41aff4127546122dd639c35e3f8dbb2f03a7d05c16ab7ec77eab569717c5a4e` |
| 13 | `theorem` | [HasProd.sigma_of_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hasprod-sigma-of-hasprod--3559cb8200e6f133a3dd86ca.md) | 158 | `result-track:3559cb8200e6f133a3dd86cad85c28e405df293499267035467bf62337241432` |
| 14 | `theorem` | [Multipliable.tprod_sigma'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-tprod-sigma--83c59c54ce608e0d4a0ff79c.md) | 163 | `result-track:83c59c54ce608e0d4a0ff79cb9624b0ce2671dd1a7f09a70483bfd9a0f0814ff` |
| 15 | `theorem` | [Multipliable.tprod_prod'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-tprod-prod--37ff2515b9f88df46acbebb3.md) | 173 | `result-track:37ff2515b9f88df46acbebb3354eb011cd3b8241fa7b46cc5ec1ab9bb3e3bde8` |
| 16 | `theorem` | [Multipliable.tprod_prod_uncurry](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-tprod-prod-uncurry--e7b4ffd5b81ce5c292a2ec0c.md) | 183 | `result-track:e7b4ffd5b81ce5c292a2ec0c8e95844efcdc2bbb8ae587b9fbc54c47a25a6810` |
| 17 | `theorem` | [Multipliable.tprod_comm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-tprod-comm--ba1928a85c1e4c8961d010b1.md) | 194 | `result-track:ba1928a85c1e4c8961d010b17d6bb1bf5bce9c8a1a3c6b8e2c952331edab975a` |
| 18 | `theorem` | [HasProd.of_sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hasprod-of-sigma--e1f13c5c023a94e11a0cc3d6.md) | 214 | `result-track:e1f13c5c023a94e11a0cc3d6a86cdc261919ef7b9581fc708ec544ac405416a9` |
| 19 | `theorem` | [Multipliable.sigma_factor](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-sigma-factor--4caf49d45e06bcad59bdc584.md) | 243 | `result-track:4caf49d45e06bcad59bdc584ae0cdf1879c464c768ad27ef4d3d6ca4fca8aed2` |
| 20 | `theorem` | [Multipliable.sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-sigma--438746cc97e9275b0a82e64d.md) | 249 | `result-track:438746cc97e9275b0a82e64d5b55291d581aba429f16ecb8367899e4639e7fca` |
| 21 | `theorem` | [Multipliable.prod_factor](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-prod-factor--4b90dc2e27ef8ac6437ec52f.md) | 254 | `result-track:4b90dc2e27ef8ac6437ec52f68e977e48dfd64642a622e9cdf54151d0a1bb808` |
| 22 | `lemma` | [Multipliable.prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-prod--fe5d056a7ac72b432d57e534.md) | 259 | `result-track:fe5d056a7ac72b432d57e5346c86ee0f9a8f6a6eb3239f4f5e8fdd9abcf347ed` |
| 23 | `lemma` | [HasProd.tprod_fiberwise](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hasprod-tprod-fiberwise--c6f9594add8bb808432a2e1c.md) | 264 | `result-track:c6f9594add8bb808432a2e1cb19888030384fa50f3423bde05da4976c71f181b` |
| 24 | `theorem` | [Multipliable.tprod_sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-tprod-sigma--3849074f78662b9a4686557c.md) | 274 | `result-track:3849074f78662b9a4686557c98da94f296534c19d022ef5af2f1373181a654e5` |
| 25 | `theorem` | [Multipliable.tprod_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-tprod-prod--80297638f3b219b759d90c03.md) | 283 | `result-track:80297638f3b219b759d90c035d7b8f2237676ad46af5a929ae5b8e64f7a96aed` |
| 26 | `theorem` | [Multipliable.tprod_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/multipliable-tprod-comm--ca8ba218df24e8c82301f978.md) | 292 | `result-track:ca8ba218df24e8c82301f97830bdcec89ba648ab1f2fa8dd20c66c88fe5ce489` |
| 27 | `theorem` | [Pi.hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/pi-hasprod--938a6c7942632b6e4dd89918.md) | 309 | `result-track:938a6c7942632b6e4dd89918eae47a6a784fe96641deafb71cb21c25315be2cb` |
| 28 | `theorem` | [Pi.multipliable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/pi-multipliable--f86433717477cfa53aa449ba.md) | 314 | `result-track:f86433717477cfa53aa449ba3e851d5cea9ace7a0c509d679cc147f998873290` |
| 29 | `theorem` | [tprod_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/tprod-apply--cbf12d4c0928c4cbb82648df.md) | 318 | `result-track:cbf12d4c0928c4cbb82648df3cf4b9a5fdadde1d93668e4af4f04a6cab7ab99f` |
| 30 | `theorem` | [HasSum.op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hassum-op--4d87e9ab417ada39677856e3.md) | 333 | `result-track:4d87e9ab417ada39677856e3e86e4034f17626ac8380416dd5673af51fbcef80` |
| 31 | `theorem` | [Summable.op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/summable-op--72d0315c1a30c72922b84a21.md) | 336 | `result-track:72d0315c1a30c72922b84a2167a3cf8f5ac5bf301099da2db770366eebe92eb9` |
| 32 | `theorem` | [HasSum.unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hassum-unop--4cae3c9182ef953522366ad7.md) | 339 | `result-track:4cae3c9182ef953522366ad7081f38689b8e369bc9b995219dc5967650ac2e2d` |
| 33 | `theorem` | [Summable.unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/summable-unop--29810ca89da73939ef174667.md) | 343 | `result-track:29810ca89da73939ef17466712450303318d5b84823530c814083c0173a4006a` |
| 34 | `theorem` | [hasSum_op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hassum-op--bd3663fa4272be774488e5da.md) | 347 | `result-track:bd3663fa4272be774488e5dacbaf3b54dd1adf3be0da9276dbd79b076fa6a990` |
| 35 | `theorem` | [hasSum_unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hassum-unop--3bd528ebbc4e646e0a841a02.md) | 351 | `result-track:3bd528ebbc4e646e0a841a028d9f933b1e913c9b9c2978442990363a74aa2eaf` |
| 36 | `theorem` | [summable_op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/summable-op--cb92dcf0c28c5c59e4a25b36.md) | 356 | `result-track:cb92dcf0c28c5c59e4a25b365d473b3cf43c5f8a4c49e9f8fe0e8012fb3dbf19` |
| 37 | `theorem` | [summable_unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/summable-unop--09daa50c0c10fc0a33e1d5ff.md) | 359 | `result-track:09daa50c0c10fc0a33e1d5ff3167709ec636f878dcf1a179199d6addf506fb7b` |
| 38 | `theorem` | [tsum_op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/tsum-op--957fc52cd0439083e04f7ef9.md) | 362 | `result-track:957fc52cd0439083e04f7ef93c92ac17349c09921bc8c35a78ecf17f6519fc70` |
| 39 | `theorem` | [tsum_unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/tsum-unop--9294079b8d2d916956f10b6c.md) | 369 | `result-track:9294079b8d2d916956f10b6c067be88b30cdfa1154eb5aa0261d12b177f32195` |
| 40 | `theorem` | [HasSum.star](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/hassum-star--aad26a9cf103b5ed07fe422b.md) | 382 | `result-track:aad26a9cf103b5ed07fe422b93254dc0f15418598f5bb853de8dd5f598c21288` |
| 41 | `theorem` | [Summable.star](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/summable-star--fc034eee380cf5d03b1c6c80.md) | 385 | `result-track:fc034eee380cf5d03b1c6c8055cdf62bc5c87593813ab926ef70521f952ccf68` |
| 42 | `theorem` | [Summable.ofStar](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/summable-ofstar--319efd44237ddba445ec0114.md) | 388 | `result-track:319efd44237ddba445ec0114fe0726782350123e614c9251272fe099de56f0ce` |
| 43 | `theorem` | [summable_star_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/summable-star-iff--3e0d756ce6c28d4a50009a4d.md) | 392 | `result-track:3e0d756ce6c28d4a50009a4dfffd32877fcefd14df481f1ed39b1f150bd6c706` |
| 44 | `theorem` | [summable_star_iff'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/summable-star-iff--0a8564a8f7adebaac6da4fc1.md) | 396 | `result-track:0a8564a8f7adebaac6da4fc1d49003cad95887e480aae621fcbd0ff6a0bcaa80` |
| 45 | `theorem` | [tsum_star](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/declarations/tsum-star--72219f2327d2c885066d1fb5.md) | 399 | `result-track:72219f2327d2c885066d1fb55034d58ade0f2184f95ce8a8cef77a8778a9e35a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
