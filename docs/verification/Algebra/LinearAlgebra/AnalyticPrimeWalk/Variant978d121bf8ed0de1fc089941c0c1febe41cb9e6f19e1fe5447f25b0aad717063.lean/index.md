# Verification target: GRWTSK.Algebra.LinearAlgebra.AnalyticPrimeWalk.Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8d95eceac5a4e7755bba3c675895979527ea8b1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8d95eceac5a4e7755bba3c675895979527ea8b1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeCharacter](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/conductorthreecharacter--1ef33309c8fe83f9ff981e06.md) | 87 | `declaration-track:1ef33309c8fe83f9ff981e066e31cce90e00bbb37f15cf1d4ba74edb9faacf22` |
| 2 | `theorem` | [conductorThreeCharacter_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/conductorthreecharacter-ne-one--bcf1883dcf443d5c543fb002.md) | 92 | `result-track:bcf1883dcf443d5c543fb0026da35c3b457fdc5b6a2080caa7094530152aa680` |
| 3 | `theorem` | [conductorThreeCharacter_isPrimitive](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/conductorthreecharacter-isprimitive--9d6c48e690558d65dd2937b4.md) | 99 | `result-track:9d6c48e690558d65dd2937b40248e7b71dd0e50719a58c5b2210e1ccac7b6933` |
| 4 | `def` | [GRHForConductorThreeCharacter](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/grhforconductorthreecharacter--e8cf6680298fb272b8ddeaf3.md) | 112 | `declaration-track:e8cf6680298fb272b8ddeaf3f0a42cf6dd71694d903e06580ac9ded5d227eaa5` |
| 5 | `def` | [conductorThreePositiveZeroOrdinates](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/conductorthreepositivezeroordinates--a4e9f07d458d4dc70e69a47e.md) | 120 | `declaration-track:a4e9f07d458d4dc70e69a47e6440671c7d5fda53727f9f8eeee692cd8912a5e6` |
| 6 | `def` | [ConductorThreePositiveOrdinatesLI](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/conductorthreepositiveordinatesli--217320130ca9ce8d7485b2a7.md) | 130 | `declaration-track:217320130ca9ce8d7485b2a78fd6cdaa63d9df0bfb78db4ef87b9ffe67eac74d` |
| 7 | `def` | [ConductorThreeGRHAndLI](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/conductorthreegrhandli--e2de7e595ab8fda905d8498c.md) | 138 | `declaration-track:e2de7e595ab8fda905d8498c069743cfe750f20dd1bbbdb65ee6efa02f6ff151` |
| 8 | `structure` | [ResidueSixCounts](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/residuesixcounts--9ba3b2444d1b2634adfb2941.md) | 147 | `declaration-track:9ba3b2444d1b2634adfb2941e92e5e1f5f832729d95cc10fe4bb99dd0e65b2d2` |
| 9 | `def` | [eligibleCount](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/eligiblecount--2a138129558958ee9890da25.md) | 153 | `declaration-track:2a138129558958ee9890da25903599b749d327e0972da5a594bdc0e9180bc2dd` |
| 10 | `def` | [countDifference](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/countdifference--75fb6d0933d1e7804a9f2be8.md) | 159 | `declaration-track:75fb6d0933d1e7804a9f2be8845462fa480b8983dfc5c753c16b78da43bedf82` |
| 11 | `def` | [HasSqrtLogCountDifferenceBound](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/hassqrtlogcountdifferencebound--311a80356eeff10a89b5582b.md) | 166 | `declaration-track:311a80356eeff10a89b5582b45dc4ab51b7984501fdf9a61c256b93373d1dd9e` |
| 12 | `def` | [HasInversePNTReindexBound](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/hasinversepntreindexbound--927cad891963010cd7e71ce3.md) | 176 | `declaration-track:927cad891963010cd7e71ce3be342143c4ed0ef6879986e25b6c9dc9f60ed2bb` |
| 13 | `def` | [logCellWeight](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/logcellweight--5aaa71e5457f7fc69128e0c1.md) | 184 | `declaration-track:5aaa71e5457f7fc69128e0c1e8257bb13f5cb9577b9bbf6486f6fdfebac504d1` |
| 14 | `def` | [negativeLogMass](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/negativelogmass--5e6c5b182b525526b5c1b3e6.md) | 191 | `declaration-track:5e6c5b182b525526b5c1b3e65f28a8e46ff091acf493f8cbbd52755e81c72472` |
| 15 | `def` | [negativeLogDensityAt](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/negativelogdensityat--b2edfb3d1cd0638955cdbb2d.md) | 197 | `declaration-track:b2edfb3d1cd0638955cdbb2dc22c89a3a07da58146e379ee78349b43b126acf9` |
| 16 | `def` | [HasNegativeLogSignDensity](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/hasnegativelogsigndensity--a60fd190b160810d6d680a1f.md) | 205 | `declaration-track:a60fd190b160810d6d680a1f17ac0f79b138a2621fdf66676746c1694942a519` |
| 17 | `structure` | [AnalyticBridgeHypotheses](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/analyticbridgehypotheses--e2c19fd5e32df6b9dd048b4e.md) | 213 | `declaration-track:e2c19fd5e32df6b9dd048b4e6480ab0aa4acad3671f6e69ac2771ec311d45ef7` |
| 18 | `def` | [empiricalWeightAt](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/empiricalweightat--2697f53f27f79a5de47802c2.md) | 248 | `declaration-track:2697f53f27f79a5de47802c2fa5cf4ff710a454babbb3e6c3e70dce5406360c4` |
| 19 | `def` | [errorOperatorAt](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/erroroperatorat--d2ea3f6787ae278835106114.md) | 255 | `declaration-track:d2ea3f6787ae278835106114f818947cac17d5140fe877c8cf10fd7eead3d097` |
| 20 | `theorem` | [centeredWeight_empiricalWeightAt_eq_delta](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/centeredweight-empiricalweightat-eq-delta--55b1e392af49f09848722477.md) | 262 | `result-track:55b1e392af49f098487224777079f8f7c55105852c960f9963636a7f99e19424` |
| 21 | `theorem` | [signedObservable_errorOperatorAt](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/signedobservable-erroroperatorat--5a6b2e0e958e7d1a84a09fc1.md) | 279 | `result-track:5a6b2e0e958e7d1a84a09fc172b1b9426cfd332406f74b12c42065a9c58568b4` |
| 22 | `theorem` | [errorOperatorAt_normSq](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/erroroperatorat-normsq--768ccd6b562688383d22f847.md) | 289 | `result-track:768ccd6b562688383d22f8473f3402c51fa4c9b548d9b419a021bda55e52a57c` |
| 23 | `theorem` | [delta_at_eligibleIndex](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/delta-at-eligibleindex--b5c8673a097774b5a11a825f.md) | 299 | `result-track:b5c8673a097774b5a11a825f64d0ba5f928b03a195af4aa41028ff95da42f997` |
| 24 | `def` | [frobeniusPairing](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/frobeniuspairing--ee10009944b8de6564775f55.md) | 316 | `declaration-track:ee10009944b8de6564775f55b7fe0f1fc28a13bca1e3a18e66c7458c5b104836` |
| 25 | `theorem` | [frobeniusPairing_eq_trace_transpose_mul](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/frobeniuspairing-eq-trace-transpose-mul--5b5959e8b9da1b60d4d01ae0.md) | 323 | `result-track:5b5959e8b9da1b60d4d01ae027068e285e3697d43d181dbc44c1cbb33b8ea109` |
| 26 | `def` | [restrictedGeneratorDifference](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/restrictedgeneratordifference--492384077dad2e26f0815258.md) | 340 | `declaration-track:492384077dad2e26f0815258fb3c476f68b1b14fb56990740909b891d450f69b` |
| 27 | `theorem` | [restrictedGeneratorDifference_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/restrictedgeneratordifference-tomatrix--783c15a061a9a158bb10fb21.md) | 345 | `result-track:783c15a061a9a158bb10fb21afef6128a0522e0ae02c181dbfe7a32c62193641` |
| 28 | `def` | [orientedEndTrace](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/orientedendtrace--9b832bed10dd65d596229691.md) | 359 | `declaration-track:9b832bed10dd65d596229691f41c597d33b99ade5c0d35225fbb6b2b2bb2fde3` |
| 29 | `theorem` | [tracePairing_conj](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/tracepairing-conj--39ad2fd23170c3ad66074dfb.md) | 366 | `result-track:39ad2fd23170c3ad66074dfbacff0db51ad5d8ee348506b2a2ebe22e2d3cb229` |
| 30 | `theorem` | [orientedEndTrace_centeredWeight_generatorDifference](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/orientedendtrace-centeredweight-generatordifference--9cfca89cc3a16cc7f638d776.md) | 380 | `result-track:9cfca89cc3a16cc7f638d77606a99f07b56e2eb57bcc2f1546877c44f444ec56` |
| 31 | `theorem` | [generatorDifference_frobenius_self](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/generatordifference-frobenius-self--c2c1df61f2669e52c260a0f0.md) | 402 | `result-track:c2c1df61f2669e52c260a0f0c9cd3863863e86a1404e63dabeab097df4b62a2e` |
| 32 | `def` | [orientedFrobeniusProbe](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/orientedfrobeniusprobe--35044d416065e9f01f526092.md) | 413 | `declaration-track:35044d416065e9f01f526092d8ea60b11f2fd99c19e268b030cf6d79e9ded937` |
| 33 | `theorem` | [frobeniusPairing_orientedProbe_discrepancy](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/frobeniuspairing-orientedprobe-discrepancy--a815cd103ca475d780e8cae9.md) | 418 | `result-track:a815cd103ca475d780e8cae9dede6d5841be6ca25a20abe8a28c8a7743bc2cbe` |
| 34 | `def` | [oneThirdGeneratorDifferenceProbe](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/onethirdgeneratordifferenceprobe--03e39ecc683256b9d3c0b2b7.md) | 432 | `declaration-track:03e39ecc683256b9d3c0b2b7a46982c9199e852d38b83b0bb5528ec8ce4e4783` |
| 35 | `theorem` | [frobeniusPairing_oneThirdProbe_discrepancy](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/frobeniuspairing-onethirdprobe-discrepancy--146f63fba6265aef40c5ca9a.md) | 438 | `result-track:146f63fba6265aef40c5ca9aa210341bf2c32e64f9fdab8d092609fbec104f79` |
| 36 | `theorem` | [frobeniusPairing_errorOperatorAt](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063.lean/declarations/frobeniuspairing-erroroperatorat--5368711316c399abc7a580c2.md) | 451 | `result-track:5368711316c399abc7a580c21d1bf65b2535791bae1ce40c025da0f598ede0ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
