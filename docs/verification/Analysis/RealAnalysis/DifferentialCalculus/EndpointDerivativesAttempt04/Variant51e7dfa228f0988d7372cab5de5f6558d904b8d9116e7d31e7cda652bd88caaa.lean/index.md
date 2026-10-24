# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivativesAttempt04.Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6903e7266dace44e4fb35cf18a1b7bfa0c6e1e21",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6903e7266dace44e4fb35cf18a1b7bfa0c6e1e21`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `EndpointExpansion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFirstPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpointfirstpolynomial--cfa069021e2f05bca564fb2e.md) | 18 | `declaration-track:cfa069021e2f05bca564fb2eaea04ad600e24364ad931350acb618990910fd50` |
| 2 | `def` | [endpointSecondPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpointsecondpolynomial--7c847e2bb6f99ae447b677e3.md) | 47 | `declaration-track:7c847e2bb6f99ae447b677e3023eb99e6ca0c267a29e38024ad3d058ab7a1657` |
| 3 | `def` | [endpointFullSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpointfullslope--b9c1f4008cfea89117e577b4.md) | 76 | `declaration-track:b9c1f4008cfea89117e577b434ca12eb524c554bf4df92bbc7e008c8080e01af` |
| 4 | `def` | [endpointFullCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpointfullcurvature--4459f2e6a5eb2198129620a5.md) | 79 | `declaration-track:4459f2e6a5eb2198129620a565d5ff0b14c448d0687e1a1c3993d4f2d5cce033` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpointfullpolynomial-contdiff--bd8f8c54a7a1356858ed1fd6.md) | 82 | `result-track:bd8f8c54a7a1356858ed1fd680b14c8bf644da1bb51280cbef353cc9927b3ee5` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpointfirstpolynomial-contdiff--ceea250100efdb0c098e9076.md) | 86 | `result-track:ceea250100efdb0c098e907633b772f47f8bcdd3c52bf0c020d4e0338cad74f6` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpoint-full-deriv--dd57ea3539a4705307820a47.md) | 90 | `result-track:dd57ea3539a4705307820a4757e316b84479f5655c91431dd7fed31848b99b65` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpoint-first-deriv--73c833310ed5fb3ff4fca270.md) | 96 | `result-track:73c833310ed5fb3ff4fca27086ad52ad9a14aba8ca387022b7b831bec35eec33` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpoint-full-hasderivat--f6e6cf864cc865da0b00e04b.md) | 102 | `result-track:f6e6cf864cc865da0b00e04bc76d47080e104449ec628be3390b9d6d8953cb7c` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpoint-first-hasderivat--38cd09f7f32f2b6c1ed066fd.md) | 107 | `result-track:38cd09f7f32f2b6c1ed066fd5e71291ebd027a60814df11ee2ed52b2c2225b8d` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpoint-slope-zero--f7e73916032a714bc913e640.md) | 112 | `result-track:f7e73916032a714bc913e64068e817483ec0378070f73a31ccfcb6b4042e8685` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpoint-curvature-zero--b3cc984a3235317c17f4d532.md) | 116 | `result-track:b3cc984a3235317c17f4d532c1a93862bfb59ec019d51a0feac4422b50c8c0c6` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpoint-slope-continuous--8b9c7c00a70668aaac41e259.md) | 122 | `result-track:8b9c7c00a70668aaac41e25938d6bdd4a55af660f635dc696d85f83d134739e4` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpoint-curvature-continuous--2375bab404c36d5da6f514bd.md) | 126 | `result-track:2375bab404c36d5da6f514bd45ab33e9e7d02c6e39e6002d57fc66615eb549ac` |
| 15 | `theorem` | [endpoint_slope_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpoint-slope-uniform-remainder--d605aa25dd33278d484e06ae.md) | 132 | `result-track:d605aa25dd33278d484e06aeda0a2b572f2603f0453441e78af100f0bc7524eb` |
| 16 | `theorem` | [endpoint_curvature_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/endpoint-curvature-uniform-remainder--c206566b94c4869b228eb09e.md) | 145 | `result-track:c206566b94c4869b228eb09e2f4c4f749b5a6d225353298078c88131dd4a8067` |
| 17 | `theorem` | [actual_endpoint_model_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/actual-endpoint-model-eventuallyeq--51be986e50fba4b04f843669.md) | 160 | `result-track:51be986e50fba4b04f8436696e3b53f07477d1eedaae848049f53dca0b78d422` |
| 18 | `theorem` | [actual_endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/actual-endpoint-first-hasderivat--d246cd282827c40fbe511fb6.md) | 176 | `result-track:d246cd282827c40fbe511fb66dc64a0542888fd38208fabab8a7e0c747876b3d` |
| 19 | `theorem` | [actual_endpoint_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variant51e7dfa228f0988d7372cab5de5f6558d904b8d9116e7d31e7cda652bd88caaa.lean/declarations/actual-endpoint-second-hasderivat--c51954783221ce7fc87414cf.md) | 191 | `result-track:c51954783221ce7fc87414cfe6582a161146a254acb5b183af564797ec4a08a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
