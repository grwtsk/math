# Verification target: GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d06250307b20e2128de77d7c864657ce4054ee8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d06250307b20e2128de77d7c864657ce4054ee8`.

Source path: `GRWTSK/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition`](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.WeightedSchurBounds`](../../../../mathematics/Analysis/InnerProductSpace/WeightedSchurBounds.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PacketModel](../../../../mathematics/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/declarations/packetmodel--429468fd80cb1bb785b86f3f.md) | 11 | `declaration-track:429468fd80cb1bb785b86f3f3f24081e753e613c96dbcf132ebf1f933e85b241` |
| 2 | `def` | [coefficientBudget](../../../../mathematics/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/declarations/coefficientbudget--4f039e2d9e0fbedc82d5ded6.md) | 24 | `declaration-track:4f039e2d9e0fbedc82d5ded622bcc52b7b41b7fd414db799b35b9f9e00be04fb` |
| 3 | `def` | [SignedPacketReturn](../../../../mathematics/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/declarations/signedpacketreturn--498ad0957ceda1d8430fca9d.md) | 30 | `declaration-track:498ad0957ceda1d8430fca9dfb9ccd78af0be5dcd24213ec2fd86ffb31977657` |
| 4 | `theorem` | [polynomial_packet_budgets_imply_settlement](../../../../mathematics/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/declarations/polynomial-packet-budgets-imply-settlement--c2719a141efb90dd86a4c702.md) | 35 | `result-track:c2719a141efb90dd86a4c70222c749dceaaca71bf172410817da6597a8e7d835` |
| 5 | `theorem` | [packet_route_implies_literal_P04](../../../../mathematics/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/declarations/packet-route-implies-literal-p04--6630aa8787e9fc50c0032a0f.md) | 72 | `result-track:6630aa8787e9fc50c0032a0f46363718e8e9128805cf2630550627d743c3feec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
