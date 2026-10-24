# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SignedSynthesisEnergyBounds.Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d06250307b20e2128de77d7c864657ce4054ee8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SignedSynthesisEnergyBounds/Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SignedSynthesisEnergyBounds/Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SignedSynthesisEnergyBounds/Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d06250307b20e2128de77d7c864657ce4054ee8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SignedSynthesisEnergyBounds/Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SignedSynthesisEnergyBounds/Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition`](../../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.WeightedSchurBounds`](../../../../../mathematics/Analysis/InnerProductSpace/WeightedSchurBounds.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PacketModel](../../../../../mathematics/Analysis/FunctionalAnalysis/SignedSynthesisEnergyBounds/Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4.lean/declarations/packetmodel--1d7fc37b54053217bfe4a4c3.md) | 11 | `declaration-track:1d7fc37b54053217bfe4a4c3c95c9c6d61b071ca8108c79fb5c88eb4543b3b08` |
| 2 | `def` | [coefficientBudget](../../../../../mathematics/Analysis/FunctionalAnalysis/SignedSynthesisEnergyBounds/Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4.lean/declarations/coefficientbudget--521d7b09508ecc439eeadcf6.md) | 24 | `declaration-track:521d7b09508ecc439eeadcf670dbc8d4a6187bb35c812a8713ecea1c101885fa` |
| 3 | `def` | [SignedPacketReturn](../../../../../mathematics/Analysis/FunctionalAnalysis/SignedSynthesisEnergyBounds/Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4.lean/declarations/signedpacketreturn--107b932a759b0f957e320a83.md) | 30 | `declaration-track:107b932a759b0f957e320a836236195f254a8c6a2255e5e6f903a874484c7cec` |
| 4 | `theorem` | [polynomial_packet_budgets_imply_settlement](../../../../../mathematics/Analysis/FunctionalAnalysis/SignedSynthesisEnergyBounds/Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4.lean/declarations/polynomial-packet-budgets-imply-settlement--6565143e30a025102c266c83.md) | 35 | `result-track:6565143e30a025102c266c839ac7454f1f11e56f9fb1c09f60a81f409f1f2fbe` |
| 5 | `theorem` | [packet_route_implies_literal_P04](../../../../../mathematics/Analysis/FunctionalAnalysis/SignedSynthesisEnergyBounds/Variant347db5370a50729ed66a75c0ca5cd2d2519f5c22d9a9ca23e4adf38d4156a7b4.lean/declarations/packet-route-implies-literal-p04--243280ac0cb1f1161c0ceb99.md) | 72 | `result-track:243280ac0cb1f1161c0ceb9991ce440d29b464c9094f529acac8ab7d7d0bc313` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
