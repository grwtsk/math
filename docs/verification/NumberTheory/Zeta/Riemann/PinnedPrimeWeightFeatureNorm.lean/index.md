# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightFeatureNorm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d0cd42f0377d3f56a23feab36cdf984c86d350e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d0cd42f0377d3f56a23feab36cdf984c86d350e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaFeatureNormBudget`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCoefficientL1](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/primecoefficientl1--26eb0d4f7b1ce68483142e63.md) | 46 | `declaration-track:26eb0d4f7b1ce68483142e636586add9504b07679aa07ec58eca35fcc1964c41` |
| 2 | `theorem` | [thetaPrimeWindow_prime](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/thetaprimewindow-prime--5acdfed1977a1117e4a21c3f.md) | 50 | `result-track:5acdfed1977a1117e4a21c3f94ada4b0d2e855d491cea0850f1f297dc7e881e5` |
| 3 | `theorem` | [thetaPrimeWindow_subset_primesLE_two_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/thetaprimewindow-subset-primesle-two-mul--a2ecb958e35fbcb256f59813.md) | 58 | `result-track:a2ecb958e35fbcb256f598130a8df7e49906a9357aa0e0525396ca03298ea4d0` |
| 4 | `theorem` | [primeCoefficient_eq_log_div](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/primecoefficient-eq-log-div--b3a1066fd710a2a5b24e2bdf.md) | 67 | `result-track:b3a1066fd710a2a5b24e2bdf18c8ee037754286fe094ca8abd0f59467bd9f55d` |
| 5 | `theorem` | [primeCoefficient_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/primecoefficient-nonnegative--0ec7bf995547dbefef997603.md) | 76 | `result-track:0ec7bf995547dbefef9976038f5bbe2825da8cd9587fd5ed268f5640e55b879e` |
| 6 | `theorem` | [primeCoefficientL1_eq_log_div_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/primecoefficientl1-eq-log-div-sum--0e42029f0c050afb96939f4d.md) | 86 | `result-track:0e42029f0c050afb96939f4dbb5a645349fa7d3cc59f234bd72d71ff75099c77` |
| 7 | `theorem` | [thetaPrimeWindow_sum_log_le_theta_two_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/thetaprimewindow-sum-log-le-theta-two-mul--b4420079ffb76c743df995f3.md) | 98 | `result-track:b4420079ffb76c743df995f3c7c8cda5eaaf0120c138e157f49e254c0956ecf6` |
| 8 | `theorem` | [primeCoefficientL1_le_two_log_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/primecoefficientl1-le-two-log-four--dbfdb41586d655ce43d4da4c.md) | 110 | `result-track:dbfdb41586d655ce43d4da4c8424deda46eac2c12fee2c731e0c78d09a3133f2` |
| 9 | `def` | [primeCoefficientL1Budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/primecoefficientl1budget--0cb8a2ce7e05c31d686237ba.md) | 149 | `declaration-track:0cb8a2ce7e05c31d686237ba4e59da26270422d2392995df32330332293880fd` |
| 10 | `theorem` | [primeCoefficientL1Budget_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/primecoefficientl1budget-nonnegative--3bf74140e1bf2bf888ede7d8.md) | 152 | `result-track:3bf74140e1bf2bf888ede7d8edda65c219894e7a428feccbbf44f2b9c48f6da1` |
| 11 | `def` | [pinnedPrimeWeightedAmplitude](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightedamplitude--62f4f20197e0e54c9dddbeb6.md) | 159 | `declaration-track:62f4f20197e0e54c9dddbeb661785d03916d12cdc509d032a0dfca0fd059dedd` |
| 12 | `def` | [pinnedPrimeWeightStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightstage--316eacd308a25300873441ca.md) | 165 | `declaration-track:316eacd308a25300873441ca74958db9516cb28af158199b14b5d4cf2ca4dea7` |
| 13 | `theorem` | [pinnedPrimeWeightStage_leftFeature](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightstage-leftfeature--1438c1c91fe9442c37ee3597.md) | 185 | `result-track:1438c1c91fe9442c37ee3597dcc99f059913631105c71ccf04cbc754789c851c` |
| 14 | `theorem` | [pinnedPrimeWeightStage_rightFeature](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightstage-rightfeature--eb5e1fa9055d37f219d8392d.md) | 193 | `result-track:eb5e1fa9055d37f219d8392d8b7770adbdd0f6a907dee823e0b6dcddd7f29c8a` |
| 15 | `theorem` | [pinnedPrimeWeightStage_response_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightstage-response-eq--b57c0f0ce01a363970a3c347.md) | 201 | `result-track:b57c0f0ce01a363970a3c347dadbdb4072460d9670da1c9844abe50bc9e88162` |
| 16 | `def` | [pinnedPrimeWeightNormCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightnormcertificate--1a256214f9524957bfe76594.md) | 248 | `declaration-track:1a256214f9524957bfe765944cc9488400aebaf06011ad88ae4c9e028b9dbff7` |
| 17 | `theorem` | [pinnedPrimeWeightStage_certifiedFeatureBudget_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightstage-certifiedfeaturebudget-eq--2df12821e5a0ebd1e6343612.md) | 272 | `result-track:2df12821e5a0ebd1e6343612beaaf6a42bd35597827f5dbcde8cc810930ded5d` |
| 18 | `theorem` | [pinnedPrimeWeightStage_certifiedFeatureBudget_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightstage-certifiedfeaturebudget-le--357054e4e1f50afc15ed80e2.md) | 287 | `result-track:357054e4e1f50afc15ed80e216c76654f6b4fc9387666fde4c6d2431f90d587c` |
| 19 | `def` | [PinnedPrimeWeightCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightcriterionat--4b52fb962d6f7c10b292de03.md) | 301 | `declaration-track:4b52fb962d6f7c10b292de039fa1d831017025843a4f334fa6d0805e753d6e15` |
| 20 | `theorem` | [pinnedPrimeWeightCriterion_to_featureNormCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightcriterion-to-featurenormcriterion--1db95eb482eadda82b28afdc.md) | 330 | `result-track:1db95eb482eadda82b28afdc3595ce90527c28a23e02941686cec8a727d7ddac` |
| 21 | `theorem` | [pinnedPrimeWeightCriterion_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightcriterion-to-recurrence--980c1f6fb760d246df1f74de.md) | 386 | `result-track:980c1f6fb760d246df1f74de5dfd626892664689d2b5c617b973711bf887b0e4` |
| 22 | `theorem` | [pinnedPrimeWeightCriterion_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/declarations/pinnedprimeweightcriterion-to-descent--bc0dfe90e4185ca2e572b288.md) | 395 | `result-track:bc0dfe90e4185ca2e572b288ec58fd4b8b577b01112c124c06aa6e7c5df117f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
