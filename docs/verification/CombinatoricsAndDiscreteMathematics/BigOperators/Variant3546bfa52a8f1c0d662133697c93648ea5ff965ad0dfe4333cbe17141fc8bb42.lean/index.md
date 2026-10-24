# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21edfda03447032d683c48cd8bb24b6aa813d8a5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21edfda03447032d683c48cd8bb24b6aa813d8a5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Option` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Vector` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_bool](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/prod-bool--fec93922999e24cdae727145.md) | 47 | `result-track:fec93922999e24cdae72714571210b6c060758f804a7deea409c14ede167018f` |
| 2 | `theorem` | [card_eq_sum_ones](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-eq-sum-ones--0d1951ba1bbf01b693767ba6.md) | 49 | `result-track:0d1951ba1bbf01b693767ba6e96d605aec5bda0e6bf205a069e60051dc580a96` |
| 3 | `theorem` | [prod_extend_by_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/prod-extend-by-one--522ef92685cfa38524926e5c.md) | 59 | `result-track:522ef92685cfa38524926e5ceb471b8b4d530de4b7b89396413d089e5b14f83b` |
| 4 | `theorem` | [prod_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/prod-eq-one--1b53982225a98bf96ae5217f.md) | 70 | `result-track:1b53982225a98bf96ae5217f2d75b7e44951f5cff8dc8e1ff77a248ce73bbf25` |
| 5 | `theorem` | [prod_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/prod-congr--92d5a9874a075f9b057ab027.md) | 74 | `result-track:92d5a9874a075f9b057ab0270c4392da3aefe26f7bc27c89c1d528c41608570c` |
| 6 | `theorem` | [prod_eq_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/prod-eq-single--73be7d4fbb59e41d58150ba3.md) | 78 | `result-track:73be7d4fbb59e41d58150ba38a9d887cc19bfdfc7551dbebb2d93df11bb427c6` |
| 7 | `theorem` | [prod_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/prod-eq-mul--40b4c3d88e330cd28f970005.md) | 82 | `result-track:40b4c3d88e330cd28f9700051c737d2a6cb2e28466eb99d1d39a38fcf666aaab` |
| 8 | `theorem` | [eq_of_subsingleton_of_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/eq-of-subsingleton-of-prod-eq--f71699bd63aceb01a412a355.md) | 91 | `result-track:f71699bd63aceb01a412a355b29b2fdbd1004738ae9f2bad5270f2443d47cdba` |
| 9 | `theorem` | [Fintype.prod_option](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fintype-prod-option--676560e3b863797d62975b89.md) | 106 | `result-track:676560e3b863797d62975b896fa714ad706c41fbaf083f604b57c924d48be8e8` |
| 10 | `theorem` | [Fintype.prod_eq_mul_prod_subtype_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fintype-prod-eq-mul-prod-subtype-ne--7ac562604d5653bbfc09d376.md) | 110 | `result-track:7ac562604d5653bbfc09d3768446b1d98213967757885b8a263f537faec1a15c` |
| 11 | `lemma` | [Finset.card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/finset-card-pi--6e903175878a7fe7e9f276eb.md) | 122 | `result-track:6e903175878a7fe7e9f276eb349ed42d1f8fe5a7d4fce19c934c0909035c688c` |
| 12 | `lemma` | [card_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-pifinset--4890b6f11bd266d6f7f4f11d.md) | 129 | `result-track:4890b6f11bd266d6f7f4f11d046244b584f17c10e7ccac79d9486eda3a54f121` |
| 13 | `lemma` | [card_piFinset_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-pifinset-const--82c515f632bf06c38ac2c825.md) | 135 | `result-track:82c515f632bf06c38ac2c82567025ec32ca8a5b4cfdfc0e1613b9ed6cf93968f` |
| 14 | `lemma` | [card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-pi--5215c9d299e6c391c4c502a2.md) | 138 | `result-track:5215c9d299e6c391c4c502a2ce203daf789e3ea2acd1045a67e3c00c23d71d7c` |
| 15 | `lemma` | [card_pi_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-pi-const--16febef33bdc2c5a67783cae.md) | 144 | `result-track:16febef33bdc2c5a67783cae4151444d1586159f0d817d89fa5423e5609465e1` |
| 16 | `theorem` | [prod_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/prod-sigma--e649c9467cbb1f5d04e55265.md) | 154 | `result-track:e649c9467cbb1f5d04e552659ca37745538c3c02770fce1e4aaa1d9348fe141e` |
| 17 | `theorem` | [prod_sigma'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/prod-sigma--68dc288ac8bda96f781167ee.md) | 162 | `result-track:68dc288ac8bda96f781167eeddc36ecbef844fff5d8be6e7d96f9fdc93b0af62` |
| 18 | `lemma` | [card_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-sigma--504da52d88164db21c9c710f.md) | 166 | `result-track:504da52d88164db21c9c710f8fd30ecd105c66a30456336ea20ffe86799ce390` |
| 19 | `lemma` | [card_filter_piFinset_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-filter-pifinset-eq-of-mem--ee6a10213767c21039ba8eae.md) | 174 | `result-track:ee6a10213767c21039ba8eae1239395d7e07678e3379858acd0720a6a89280da` |
| 20 | `lemma` | [card_filter_piFinset_const_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-filter-pifinset-const-eq-of-mem--d59e6d8a2a11534a94d9a9ee.md) | 184 | `result-track:d59e6d8a2a11534a94d9a9ee7f940abcb670d6d2ed28dd4103954f7688a27600` |
| 21 | `lemma` | [card_filter_piFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-filter-pifinset-eq--756f3b86ab32f9a2a047c68e.md) | 189 | `result-track:756f3b86ab32f9a2a047c68e27e5ee2936d37b130196c4132aa8b35a2fd787c7` |
| 22 | `lemma` | [card_filter_piFinset_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-filter-pifinset-const--dd59f74a43de9210932e5faf.md) | 195 | `result-track:dd59f74a43de9210932e5faf7fe65139d8f9192bb48d85c88fbfc4460041c2ce` |
| 23 | `theorem` | [Fintype.card_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fintype-card-fun--22fefb9943f8ba6bdfdd8261.md) | 205 | `result-track:22fefb9943f8ba6bdfdd82619f4f9360f86d9e959cf275dcd6bb12070c73c9d6` |
| 24 | `theorem` | [card_vector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/card-vector--fa3fc5f2473560d7b1bc7325.md) | 210 | `result-track:fa3fc5f2473560d7b1bc732565304f7eac30e9bec36c3d5160ab0d98528f9b15` |
| 25 | `theorem` | [Fin.prod_univ_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fin-prod-univ-eq-prod-range--a2377c017bf3229dfefa4d3a.md) | 216 | `result-track:a2377c017bf3229dfefa4d3aebd9233a1a26288c9fa582a803dde2acae1f661d` |
| 26 | `theorem` | [Finset.prod_fin_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/finset-prod-fin-eq-prod-range--6591e4d357dda2085aac7f62.md) | 224 | `result-track:6591e4d357dda2085aac7f62b6d98181602bab73adf0fbce0ec49d2101833769` |
| 27 | `theorem` | [Finset.prod_toFinset_eq_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/finset-prod-tofinset-eq-subtype--2c550cf5766a2adbeaf91283.md) | 231 | `result-track:2c550cf5766a2adbeaf91283e18569c2151e5a5425deb7a5256bdd0189c5b301` |
| 28 | `theorem` | [Fintype.prod_dite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fintype-prod-dite--25ab56346b70a9592c2c9d8d.md) | 236 | `result-track:25ab56346b70a9592c2c9d8d76b468e30f268c3f0abbea0565843bec0a209c9b` |
| 29 | `theorem` | [Fintype.prod_sumElim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fintype-prod-sumelim--308fc7eeedac9699f567e608.md) | 252 | `result-track:308fc7eeedac9699f567e608e5ca3fa5cf6449d46cbe6a63b51c19633ae426be` |
| 30 | `theorem` | [Fintype.prod_sum_type](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fintype-prod-sum-type--00858936d637d6dbc48bce52.md) | 260 | `result-track:00858936d637d6dbc48bce523ee2f3e8714030b29e069888afbbb82773496c3c` |
| 31 | `theorem` | [Fintype.prod_prod_type](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fintype-prod-prod-type--4f237f7ce09e21392e6b8065.md) | 268 | `result-track:4f237f7ce09e21392e6b8065a7d600f2c87358ebcba7136781ebbd757907d94b` |
| 32 | `theorem` | [Fintype.prod_prod_type'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fintype-prod-prod-type--dcb1d0f58702da9a33f31113.md) | 276 | `result-track:dcb1d0f58702da9a33f311139a03cdc7bad89904ac88fa8302d53d7396ca6a66` |
| 33 | `theorem` | [Fintype.prod_prod_type_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fintype-prod-prod-type-right--c14bb3d505981463f01f9122.md) | 281 | `result-track:c14bb3d505981463f01f9122d95fe0446fd0076026eaade782f3f1df1087522c` |
| 34 | `theorem` | [Fintype.prod_prod_type_right'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3546bfa52a8f1c0d662133697c93648ea5ff965ad0dfe4333cbe17141fc8bb42.lean/declarations/fintype-prod-prod-type-right--cd509dc876d6d4ec3b0da0f7.md) | 287 | `result-track:cd509dc876d6d4ec3b0da0f7bca35f549b13ed07e5cc916ed35ae891a5efa2f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
