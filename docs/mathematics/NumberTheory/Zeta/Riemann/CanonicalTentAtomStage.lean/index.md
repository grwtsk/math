# GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe19f7cbc7a45ba8cf9e7cba403ed6e9970cc334`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SquarePair](declarations/squarepair--da4f85a5c2e2a09c83c12349.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [squarePairFintype](declarations/squarepairfintype--ab844f2148bdfb71474a6487.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [squarePair_exponent_pos](declarations/squarepair-exponent-pos--0d2162d51ba3a0d2e7f227c0.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [squarePair_prime](declarations/squarepair-prime--7a96df462bc4b1aee272f961.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [pairAtom](declarations/pairatom--f9ea4a27863164b2cb1939d5.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [pairAtom_prime_val](declarations/pairatom-prime-val--98b18d588f1ac85f9da93186.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pairAtom_exponent_val](declarations/pairatom-exponent-val--a2908ce6dc63552728a946cf.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pairAtom_injective](declarations/pairatom-injective--8c2368a14275249886c0e05b.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [pairAtomEmbedding](declarations/pairatomembedding--b78d281a443d472b8a0c7e1b.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [squareStageAtoms](declarations/squarestageatoms--1b8ab36433833b6278f71b3c.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [squareAtomStage](declarations/squareatomstage--1971d0524f5670362048db30.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [pairToWitness](declarations/pairtowitness--b6659fe62c7375c19e847786.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pairToWitness_injective](declarations/pairtowitness-injective--46bd5a0cf5d593e085c908c7.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pairToWitness_surjective](declarations/pairtowitness-surjective--d73b0b8823da96ae8d409a76.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [pairWitnessEquiv](declarations/pairwitnessequiv--83a0757c1209e83a0bac8bf8.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [stageReadout_reindex](declarations/stagereadout-reindex--8df766bc73f696a1fffe7fc7.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [stageEnergy_reindex](declarations/stageenergy-reindex--025d604a4dad93a158fa04a0.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exp_logLocation_pairAtom](declarations/exp-loglocation-pairatom--37a490266fd28d26427f49e6.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [squareLogTest](declarations/squarelogtest--8cf8c211d6614a85179d7f4a.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [squareLogTest_pairAtom](declarations/squarelogtest-pairatom--c0e0595f30b342e02b0844ab.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [pairTentMass](declarations/pairtentmass--c234ac5d8421548e544bf165.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pairTentMass_eq_squareTentMangoldt](declarations/pairtentmass-eq-squaretentmangoldt--34524e404a56df4ef6ef63e4.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pairAtom_tent_sum_eq_pairTentMass](declarations/pairatom-tent-sum-eq-pairtentmass--767f4f5c9060f5e483705db3.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [stageReadout_squareLogTest_eq](declarations/stagereadout-squarelogtest-eq--48da033f5922d9f784b52e9d.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [squareAtomStageAlignment](declarations/squareatomstagealignment--ab5272ff7e433da8fbb767d6.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [squareRootAmplitude](declarations/squarerootamplitude--76aef5ddc2f54ba34e9b20ca.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [squareLogTest_pairAtom_nonneg](declarations/squarelogtest-pairatom-nonneg--84f0379a68ac30e7cea83bc7.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [squareRootAmplitude_sq_pairAtom](declarations/squarerootamplitude-sq-pairatom--eaadd21622467ae62e7c2758.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [stageEnergy_squareRootAmplitude_eq](declarations/stageenergy-squarerootamplitude-eq--4a53185554cf3e59b6dec591.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [squareRoot_quadraticization](declarations/squareroot-quadraticization--f8f3429dbce0b29d32772a35.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
