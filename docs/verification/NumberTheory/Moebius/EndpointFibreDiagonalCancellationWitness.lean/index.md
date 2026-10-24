# Verification target: GRWTSK.NumberTheory.Moebius.EndpointFibreDiagonalCancellationWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "405364f32af7a8cc02408418276e88e6998168ad",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `405364f32af7a8cc02408418276e88e6998168ad`.

Source path: `GRWTSK/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EndpointFibreFourMobiusCollisions`](../../../../mathematics/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [moebiusReal_one_for_diagonal_cancellation_witness](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/moebiusreal-one-for-diagonal-cancellation-witness--e63a8e184ebc4d7b25174f26.md) | 47 | `result-track:e63a8e184ebc4d7b25174f26fc842bbef8adbe1c3a56d481623d9faf35f1161d` |
| 2 | `theorem` | [moebiusReal_two_for_diagonal_cancellation_witness](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/moebiusreal-two-for-diagonal-cancellation-witness--a04d27f0a8529960c517dcc7.md) | 54 | `result-track:a04d27f0a8529960c517dcc765c6903527aa99cf409305e499db2e0a92d98662` |
| 3 | `theorem` | [moebiusReal_three_for_diagonal_cancellation_witness](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/moebiusreal-three-for-diagonal-cancellation-witness--ab9b35a2554d84b62dafc3fa.md) | 61 | `result-track:ab9b35a2554d84b62dafc3faa054e6a07f445b8c726124a4f9571314c3b15edd` |
| 4 | `theorem` | [mertensEndpointFibreDiagonalEnergy_two](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/mertensendpointfibrediagonalenergy-two--ccb59c804b41b0c57cc66757.md) | 68 | `result-track:ccb59c804b41b0c57cc66757141d76b676a17140a3c404f64c7a2d62689ce53b` |
| 5 | `theorem` | [mertensEndpointFibreDiagonalEnergy_three](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/mertensendpointfibrediagonalenergy-three--ad1c587367e13871fffd74fc.md) | 75 | `result-track:ad1c587367e13871fffd74fc7d44510cf25ec824c92088735f546a17e6ebf95b` |
| 6 | `theorem` | [mertensEndpointFibreCrossCollisionEnergy_two](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/mertensendpointfibrecrosscollisionenergy-two--764bb41872587056d912c1a7.md) | 84 | `result-track:764bb41872587056d912c1a798505e58174997d47385f2f3488e6a0164be48c3` |
| 7 | `theorem` | [mertensEndpointFibreCrossCollisionEnergy_three](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/mertensendpointfibrecrosscollisionenergy-three--a5f5939267320c9567687df8.md) | 91 | `result-track:a5f5939267320c9567687df8b191e8fc0947a813f90500b2181aae6679f83937` |
| 8 | `theorem` | [mertensEndpointFibreFourDistinctCorrelation_two](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/mertensendpointfibrefourdistinctcorrelation-two--aed0e14620e0616bc08b3fb7.md) | 100 | `result-track:aed0e14620e0616bc08b3fb7a18eac9d7d6ebe8f8bf0481ffb86f7efb6ab9796` |
| 9 | `theorem` | [mertensEndpointFibreFourDistinctCorrelation_three](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/mertensendpointfibrefourdistinctcorrelation-three--aecff992dcfe9da85863a1e2.md) | 107 | `result-track:aecff992dcfe9da85863a1e2741da2a5b0dbd2437aec4692cfe71efde2b2a8a1` |
| 10 | `theorem` | [mertensTwoPointEndpointFibreQuadraticEnergy_three](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/mertenstwopointendpointfibrequadraticenergy-three--96c4ba26b9265764329cf106.md) | 115 | `result-track:96c4ba26b9265764329cf106964723e8b425be1f200103190b53eb50be70eda2` |
| 11 | `theorem` | [endpointFibre_diagonal_not_le_at_three](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/endpointfibre-diagonal-not-le-at-three--32dcdf3e1e3ee8a7d890b29d.md) | 125 | `result-track:32dcdf3e1e3ee8a7d890b29d8c2093cbecc13fbadfe72073c6e1d359f1fe71bf` |
| 12 | `def` | [EndpointFibreDiagonalLowerBoundProposal](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/endpointfibrediagonallowerboundproposal--7796f3b2b85f9333d8c1b6eb.md) | 133 | `declaration-track:7796f3b2b85f9333d8c1b6eb087a698bae365942ad9944b4c293c7e77515496d` |
| 13 | `theorem` | [not_endpointFibreDiagonalLowerBoundProposal](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/not-endpointfibrediagonallowerboundproposal--43750138e4bab9e29b06e106.md) | 140 | `result-track:43750138e4bab9e29b06e106f3c6741866b333cc7410d4b3d98ebdf67c644fb4` |
| 14 | `theorem` | [weightedMertensEndpointDiagonalEnergy_one](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/weightedmertensendpointdiagonalenergy-one--06431d861fe1c9451a961de4.md) | 146 | `result-track:06431d861fe1c9451a961de493afe07f8b74ff30748348608bc93b9e7476e04a` |
| 15 | `theorem` | [weightedMertensEndpointCrossCollisionEnergy_one](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/weightedmertensendpointcrosscollisionenergy-one--6cf4c6e7b600205df3154158.md) | 153 | `result-track:6cf4c6e7b600205df31541583fda9da69ac6a72a4aed13623b1020ea05ab6560` |
| 16 | `theorem` | [weightedMertensEndpointFourDistinctCorrelation_one](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/weightedmertensendpointfourdistinctcorrelation-one--9b2e1bdea595e0d9131f251b.md) | 160 | `result-track:9b2e1bdea595e0d9131f251be9686d5281fa6258f60ffc17a1c6c38fe7d2e2b7` |
| 17 | `theorem` | [weightedMertensSignedAbelEndpointFibreQuadraticEnergy_one](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/weightedmertenssignedabelendpointfibrequadraticenergy-one--cdb68b5128f51fd42e21f78e.md) | 168 | `result-track:cdb68b5128f51fd42e21f78e4958056862406f9d6665ba6e0bef6774d1874159` |
| 18 | `theorem` | [weightedEndpoint_diagonal_not_le_at_one](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/weightedendpoint-diagonal-not-le-at-one--259866fa64e7a01b0abea628.md) | 178 | `result-track:259866fa64e7a01b0abea628f8b874b40bbf2d5b2290250d7be85770e416af06` |
| 19 | `def` | [WeightedEndpointDiagonalLowerBoundProposal](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/weightedendpointdiagonallowerboundproposal--53b65aafbd364a927159ea50.md) | 187 | `declaration-track:53b65aafbd364a927159ea5018a3c4a6f490cd6f8036fa75de9c182b859402f7` |
| 20 | `theorem` | [not_weightedEndpointDiagonalLowerBoundProposal](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/not-weightedendpointdiagonallowerboundproposal--6ca9da685e333e1e2ffc8e16.md) | 193 | `result-track:6ca9da685e333e1e2ffc8e16a017a08e6a6cb5ddde1d7e0bb9b9fdfb16657e19` |
| 21 | `def` | [DiagonalLowerBoundRefutedAtScope](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/diagonallowerboundrefutedatscope--9ba102f57fbb3b942be187ea.md) | 200 | `declaration-track:9ba102f57fbb3b942be187eabc49f6665cd677317f86fb65c5560db945ac122e` |
| 22 | `theorem` | [diagonalLowerBoundRefutedAtScope](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/declarations/diagonallowerboundrefutedatscope--f72bee624b736f5d1e626558.md) | 203 | `result-track:f72bee624b736f5d1e626558ef1cf18b98ba30063b47c48c8f016753673b7901` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
