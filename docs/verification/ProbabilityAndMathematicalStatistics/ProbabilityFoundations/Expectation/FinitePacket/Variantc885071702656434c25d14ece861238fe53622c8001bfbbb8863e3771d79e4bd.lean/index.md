# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FinitePacket.Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e86913298a8d4a2cd73c436fb11426ea9787772",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e86913298a8d4a2cd73c436fb11426ea9787772`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.Simplex` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePacket](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/finitepacket--93360e06be75c4628db7e625.md) | 27 | `declaration-track:93360e06be75c4628db7e6256a5ff4990db208cb03cd9323e85cf65a3a5c7e20` |
| 2 | `def` | [expectation](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/expectation--63c3605ad43472bf9e2260a9.md) | 36 | `declaration-track:63c3605ad43472bf9e2260a9402077b090dee194bd5919fcefafe852cacc6359` |
| 3 | `def` | [spectralExpectation](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectralexpectation--ebc4ae7d69573ecfa326bb21.md) | 41 | `declaration-track:ebc4ae7d69573ecfa326bb215b2f45ef093fa5a4403b52708bc2a0dd0982f551` |
| 4 | `def` | [eventProbability](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/eventprobability--906b2a8b2f90f48d59fc7ade.md) | 46 | `declaration-track:906b2a8b2f90f48d59fc7ade888959e2edd764052e643574f3fd2132377bd1c2` |
| 5 | `def` | [spectralEventProbability](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectraleventprobability--5b338f7a6477c6f13edd25e4.md) | 53 | `declaration-track:5b338f7a6477c6f13edd25e4c8655f4241fe0e1495aef84fecb4365a9b23a719` |
| 6 | `theorem` | [probability_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/probability-nonnegative--7736a6733a87001545899e93.md) | 57 | `result-track:7736a6733a87001545899e934190da9feba75e168700bb4909f76a6c3c3cda14` |
| 7 | `theorem` | [probability_normalized](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/probability-normalized--4481fba4cd248bd665321745.md) | 61 | `result-track:4481fba4cd248bd665321745d61e3fed6d58a2fcdafbc07439e38ab55360b4bf` |
| 8 | `theorem` | [expectation_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/expectation-zero--98ae3ac4dafff05ee526ed78.md) | 66 | `result-track:98ae3ac4dafff05ee526ed782bbdb1f299f8afafd0da094c3803044a7d6e0ce8` |
| 9 | `theorem` | [expectation_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/expectation-one--a3c682a5c41004fb63066689.md) | 71 | `result-track:a3c682a5c41004fb6306668993a12e0b4dd40673d4542fb6dc72304606fb3ee7` |
| 10 | `theorem` | [expectation_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/expectation-add--7ed46211278376c983cea1f5.md) | 75 | `result-track:7ed46211278376c983cea1f50357b08214ee49973648b38dd9a92c5cbca6d02d` |
| 11 | `theorem` | [expectation_smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/expectation-smul--844b41e734dfbd3b1dc87b57.md) | 81 | `result-track:844b41e734dfbd3b1dc87b579bc6f18c35c3b5188e97457ac78e8b86a706792b` |
| 12 | `theorem` | [expectation_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/expectation-nonnegative--b7a2f9cd62b825c2c587e01b.md) | 91 | `result-track:b7a2f9cd62b825c2c587e01bd7dcc0b079b115ce638fb30f17eeb9855f6e7d57` |
| 13 | `theorem` | [spectralExpectation_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectralexpectation-zero--3c99bf4b133f14fb872a1c45.md) | 98 | `result-track:3c99bf4b133f14fb872a1c45f22615371be3a178b7bd102540832c56cb831596` |
| 14 | `theorem` | [spectralExpectation_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectralexpectation-one--062615a15f501b3b4a84139e.md) | 103 | `result-track:062615a15f501b3b4a84139e549033dd1f77e6d05f946b7f302b7ac8d8315111` |
| 15 | `theorem` | [spectralExpectation_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectralexpectation-add--33e63897c73858cc27091c06.md) | 107 | `result-track:33e63897c73858cc27091c068d539baa5355ce67d633452886efe7319a5a8f10` |
| 16 | `theorem` | [spectralExpectation_smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectralexpectation-smul--eb24331d25578251d4757214.md) | 113 | `result-track:eb24331d25578251d47572140ff2279bd56ad9ba4348b09a0fba524fd9090412` |
| 17 | `theorem` | [eventProbability_empty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/eventprobability-empty--8606dcca4205eff64f1e911c.md) | 120 | `result-track:8606dcca4205eff64f1e911c6a56efab25f3c77abbd707784c414f49907b0438` |
| 18 | `theorem` | [eventProbability_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/eventprobability-univ--6b567bc4ac50cd0eb3603521.md) | 126 | `result-track:6b567bc4ac50cd0eb360352151f16aec89a1a32bea6a20901b392b69d5b112a1` |
| 19 | `theorem` | [eventProbability_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/eventprobability-nonnegative--ac366e2d4e1c321b581f2aa2.md) | 131 | `result-track:ac366e2d4e1c321b581f2aa21f6fe40243cf2002a9bdc81aa3d2874a4d4622d9` |
| 20 | `theorem` | [spectralEventProbability_empty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectraleventprobability-empty--822c2c4c1f8ac466f002192a.md) | 138 | `result-track:822c2c4c1f8ac466f002192a320c92903dddd2d797c21e59ce9bb103f6115b8d` |
| 21 | `theorem` | [spectralEventProbability_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectraleventprobability-univ--35b05243d98260487853f9e9.md) | 143 | `result-track:35b05243d98260487853f9e946994233e316af64dde80969ffa495f1332982cc` |
| 22 | `theorem` | [spectralEventProbability_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectraleventprobability-nonnegative--ad753e93460fe3bd8d988508.md) | 147 | `result-track:ad753e93460fe3bd8d988508f377a4f29aefa894ab6565bebc95b354bee4ca52` |
| 23 | `def` | [mix](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/mix--423bf1cfd8dbcf7618f60997.md) | 162 | `declaration-track:423bf1cfd8dbcf7618f609977f6de850c314f48654c32924f5d0436943087638` |
| 24 | `theorem` | [mix_spectralValue](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/mix-spectralvalue--4bebf127d052c34e37858366.md) | 170 | `result-track:4bebf127d052c34e37858366ae4659f450629d6658e7a7dc637cf2b709d70b28` |
| 25 | `theorem` | [mix_probability](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/mix-probability--f12251fdd5e43cc5efb749af.md) | 177 | `result-track:f12251fdd5e43cc5efb749afeabe873be8aa7ca3aeb48d16e06751946147622a` |
| 26 | `theorem` | [mix_probability_normalized](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/mix-probability-normalized--f1442c10cb8072b70d5b1f07.md) | 183 | `result-track:f1442c10cb8072b70d5b1f07861d746c48e1c35b335f1e9fb7ac0aaab1565b35` |
| 27 | `theorem` | [expectation_mix](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/expectation-mix--9936385ca408d3a5b4489265.md) | 189 | `result-track:9936385ca408d3a5b4489265e871dfd562f12d630ba9277cac421692d6594868` |
| 28 | `theorem` | [spectralExpectation_mix](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectralexpectation-mix--c0ce35c0871b958a3bc73d8e.md) | 207 | `result-track:c0ce35c0871b958a3bc73d8e5216068e0810273225755154416fc69dd4bc9aa4` |
| 29 | `theorem` | [spectralEventProbability_mix](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/spectraleventprobability-mix--8703399c02ff938e0db54d1f.md) | 216 | `result-track:8703399c02ff938e0db54d1ff12dc8c00497b7909d7c204fb55080af042c3f3d` |
| 30 | `def` | [fiberEvent](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/fiberevent--1970c6c8fb5c636c5fdf9238.md) | 223 | `declaration-track:1970c6c8fb5c636c5fdf923869d46ae5cd08cb1ffed15feabb3b95febf300e97` |
| 31 | `theorem` | [mem_fiberEvent](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/mem-fiberevent--652abbbe476ddb19839fae29.md) | 229 | `result-track:652abbbe476ddb19839fae293a32b3fc8d04aa182551e5109dc1259cccdc47ea` |
| 32 | `theorem` | [eventProbability_mix](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean/declarations/eventprobability-mix--cd394a78855566531bdfcdf9.md) | 235 | `result-track:cd394a78855566531bdfcdf9ecb4602c6b87b7a0483856ae3ecae1114cc2ecd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
