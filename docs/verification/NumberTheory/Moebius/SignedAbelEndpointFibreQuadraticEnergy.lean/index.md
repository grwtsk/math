# Verification target: GRWTSK.NumberTheory.Moebius.SignedAbelEndpointFibreQuadraticEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "841c6083ed45756773d82c3b0d410a700ecd153b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `841c6083ed45756773d82c3b0d410a700ecd153b`.

Source path: `GRWTSK/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SignedAbelActiveTailQuadraticEnergy`](../../../../mathematics/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedAbelActiveTailPairSet](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/signedabelactivetailpairset--68c32289a943ab93c215453e.md) | 44 | `declaration-track:68c32289a943ab93c215453e3a6f63053ba22b93d87b93baec43622be8c114b2` |
| 2 | `def` | [signedAbelEndpointFibrePairSet](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/signedabelendpointfibrepairset--f14baee56ca004c92ef1dd3d.md) | 52 | `declaration-track:f14baee56ca004c92ef1dd3ddec10868f15364ae3de3229ade573c38610230fa` |
| 3 | `def` | [signedAbelActivePairToEndpoint](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/signedabelactivepairtoendpoint--cf67b272e36872448553756e.md) | 58 | `declaration-track:cf67b272e36872448553756ea6198e9137d3927a3fb904dfabd002b963328810` |
| 4 | `def` | [signedAbelEndpointToActivePair](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/signedabelendpointtoactivepair--f2d5ce693baa47c990e426d4.md) | 62 | `declaration-track:f2d5ce693baa47c990e426d4ce6f892831d8ce89764197092ed3dbaef7443216` |
| 5 | `theorem` | [signedAbelActivePairToEndpoint_mem](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/signedabelactivepairtoendpoint-mem--bf568cbb6a8b2a3234f7a7ec.md) | 65 | `result-track:bf568cbb6a8b2a3234f7a7ec16e5f9e7d2e044149664352e6b54158bea26081b` |
| 6 | `theorem` | [signedAbelEndpointToActivePair_mem](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/signedabelendpointtoactivepair-mem--cfd2e4f6f4bca3617e8cd348.md) | 80 | `result-track:cfd2e4f6f4bca3617e8cd348bf31f49bb2f1c4689bc1f120e93c9d76fb00dd27` |
| 7 | `theorem` | [signedAbelEndpointToActivePair_leftInverse](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/signedabelendpointtoactivepair-leftinverse--2d5b74022278ac3ec7d5aaba.md) | 97 | `result-track:2d5b74022278ac3ec7d5aaba86c842d36b56955d746efc26591647d75526d0f2` |
| 8 | `theorem` | [signedAbelActivePairToEndpoint_rightInverse](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/signedabelactivepairtoendpoint-rightinverse--93182644cc623100a11d13f6.md) | 110 | `result-track:93182644cc623100a11d13f68cf95cf36d69fa9a928f911c5b59b880f3276adb` |
| 9 | `theorem` | [sum_signedAbelActivePairs_eq_endpointFibres](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/sum-signedabelactivepairs-eq-endpointfibres--11876fd0fb2c9744fd559279.md) | 125 | `result-track:11876fd0fb2c9744fd559279505af6169dbb2381743fe7c595e5cc3ad962f610` |
| 10 | `theorem` | [signedAbelActivePairTerm_eq_endpointTerm](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/signedabelactivepairterm-eq-endpointterm--decdd16fd24b5086a642c8c4.md) | 153 | `result-track:decdd16fd24b5086a642c8c4b65d5b86b676cbd68cef05b5d6d6a042129e5126` |
| 11 | `theorem` | [weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_activePairSum](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/weightedmertenssignedabelactivetailquadraticenergy-eq-activepairsum--25b7a2346d8eea223ef56eea.md) | 182 | `result-track:25b7a2346d8eea223ef56eea8267c3835b3214e16c5c52fe9fe94988e4990e12` |
| 12 | `def` | [mertensTwoPointEndpointFibreQuadraticEnergy](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/mertenstwopointendpointfibrequadraticenergy--fee4e8b58c6e4e4c3f9f4b58.md) | 201 | `declaration-track:fee4e8b58c6e4e4c3f9f4b5875680ea9fd167daf40e6f806773e7c3b841fb339` |
| 13 | `def` | [weightedMertensSignedAbelEndpointFibreQuadraticEnergy](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/weightedmertenssignedabelendpointfibrequadraticenergy--d4cada7847a573b9f0e8e7e2.md) | 207 | `declaration-track:d4cada7847a573b9f0e8e7e20b5322ad38f5ce698d6865a6e4b3592ec5d00444` |
| 14 | `theorem` | [sum_Ico_one_Y_indicator_lt](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/sum-ico-one-y-indicator-lt--15eec1dfad2ec1c0002b58de.md) | 214 | `result-track:15eec1dfad2ec1c0002b58deb6ec510b38e907341bb63bb337802d30946d2bd8` |
| 15 | `theorem` | [sum_signedAbelEndpointPairs_eq_endpointFibreEnergy](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/sum-signedabelendpointpairs-eq-endpointfibreenergy--a42ca2dd4e8536ef42b4855b.md) | 229 | `result-track:a42ca2dd4e8536ef42b4855b156ab63d71b509e6b25e8e2bdd839e24cbe4fa7a` |
| 16 | `theorem` | [weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/weightedmertenssignedabelactivetailquadraticenergy-eq-endpointfibres--a774dbd3447d37400be2f53f.md) | 270 | `result-track:a774dbd3447d37400be2f53f9040e55afcf0a506850c251ce3dcfbe5bcb6475b` |
| 17 | `theorem` | [weightedMertensSignedAbelEndpointFibreQuadraticEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/weightedmertenssignedabelendpointfibrequadraticenergy-nonneg--d9f7744eca22012a042576eb.md) | 306 | `result-track:d9f7744eca22012a042576ebf8a7253b17a505497eac8898c3dfa81b3095c43e` |
| 18 | `def` | [SubpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/subpolynomialdyadicsignedabelendpointfibrequadraticenergy--078d7f7663b1bb82a191bdd1.md) | 313 | `declaration-track:078d7f7663b1bb82a191bdd190e11ce5216b9e23ad1ff4f82e91da3de072204c` |
| 19 | `theorem` | [subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy_iff_activeTail](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/subpolynomialdyadicsignedabelendpointfibrequadraticenergy-iff-activetail--13e228f3932872590925d99b.md) | 320 | `result-track:13e228f3932872590925d99ba79bbbe78395f1792d64133af85bd9d45f1ca766` |
| 20 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy](../../../../mathematics/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/declarations/riemannhypothesis-of-subpolynomialdyadicsignedabelendpointfibrequadratic--e7e4d1556e27b4fe7696fab1.md) | 338 | `result-track:e7e4d1556e27b4fe7696fab1faa6295a532c11233127eb617adaef93170e5f82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
