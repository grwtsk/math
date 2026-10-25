# Verification target: GRWTSK.Logic.ProofEvidence.EnergyInterfaceEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a036db9aeea5c468f75be9694c867b782dc206f6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/ProofEvidence/EnergyInterfaceEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a036db9aeea5c468f75be9694c867b782dc206f6`.

Source path: `GRWTSK/Logic/ProofEvidence/EnergyInterfaceEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/ProofEvidence/EnergyInterfaceEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition`](../../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds`](../../../../../mathematics/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identityDecomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/declarations/identitydecomposition--b88b2ea724d90fdc482fc8f7.md) | 17 | `declaration-track:b88b2ea724d90fdc482fc8f7740562ccabb7cbe2926e12316ffc0ddb8879c284` |
| 2 | `theorem` | [identity_signed_settlement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/declarations/identity-signed-settlement--d09d335c04632ea301154979.md) | 26 | `result-track:d09d335c04632ea301154979a78682ff4178114a5eae9d3dbb7bf44c1d889590` |
| 3 | `theorem` | [identity_tail_polynomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/declarations/identity-tail-polynomial--82250422574bdb82452defcf.md) | 30 | `result-track:82250422574bdb82452defcfb0cb7aba667702aedeaa01f14ee9883ba0c01d91` |
| 4 | `theorem` | [literal_P04_implies_transform_route](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/declarations/literal-p04-implies-transform-route--8cf1e82d2435117b4d3f0acd.md) | 38 | `result-track:8cf1e82d2435117b4d3f0acd2c1da431e47ac0f32e901f3e86cc9af1d6ddffb7` |
| 5 | `theorem` | [transform_route_iff_literal_P04](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/declarations/transform-route-iff-literal-p04--6a7395021048b43ac649167b.md) | 50 | `result-track:6a7395021048b43ac649167bd2db1fd3966c6210f073f771d2b316446df600b6` |
| 6 | `def` | [emptyPacketModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/declarations/emptypacketmodel--3fa490713bee68d73ec34752.md) | 55 | `declaration-track:3fa490713bee68d73ec34752cb6140e2e069935c6aca1d058995457cbd90644c` |
| 7 | `theorem` | [empty_packet_signed_return](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/declarations/empty-packet-signed-return--ec90bac9064403a3349c04f0.md) | 67 | `result-track:ec90bac9064403a3349c04f02b319919723086e6edc1147afe27046341063be7` |
| 8 | `theorem` | [empty_packet_error_budget_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/declarations/empty-packet-error-budget-iff--3bf97127aaea8aa4b149c507.md) | 72 | `result-track:3bf97127aaea8aa4b149c50760a900b8ed910664ebe3ab30c50cca4a286d5c43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
