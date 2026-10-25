# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.Invariant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc5d4d9d900727e554bbd70950a65ab6d5dcdc51",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc5d4d9d900727e554bbd70950a65ab6d5dcdc51`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MathematicalState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/mathematicalstate--b927bf4c1f4b6a1a28c4c108.md) | 9 | `declaration-track:b927bf4c1f4b6a1a28c4c10823a5524c7e8058c8001d2bf50c220e8a82ca013d` |
| 2 | `def` | [Invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/invariant--886c024644b0501282995173.md) | 17 | `declaration-track:886c024644b0501282995173158c4980d54e19a16927f1986c987cfe7486ed52` |
| 3 | `structure` | [PreservingTransition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/preservingtransition--684143a41954a74d7d6612cf.md) | 26 | `declaration-track:684143a41954a74d7d6612cf630ec584f3cf5ce7d22bfa01ddf2bb59b48ae6ae` |
| 4 | `inductive` | [Reachable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/reachable--b263225f5a64d041ea8e7d9a.md) | 34 | `declaration-track:b263225f5a64d041ea8e7d9afff9c395893e057bdd764e4cbeaa157c16542614` |
| 5 | `theorem` | [reachable_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/reachable-invariant--ac721d95874384df7438d41f.md) | 38 | `result-track:ac721d95874384df7438d41f75537a0198813f9c504fd7eefdd803fc53499142` |
| 6 | `theorem` | [transition_preserves_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/transition-preserves-invariant--563e343a8b1c68bff3dadba8.md) | 46 | `result-track:563e343a8b1c68bff3dadba8d21cfc59998b75a4dad895530da833b38832299e` |
| 7 | `theorem` | [initial_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/initial-invariant--c944697ca554cd2572659ebd.md) | 57 | `result-track:c944697ca554cd2572659ebd365ae8a2c26b61ee2cfea3129aa6bbc458c92ba0` |
| 8 | `theorem` | [reachable_preserves_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/reachable-preserves-invariant--d460a5e7586de2ac396b70fa.md) | 62 | `result-track:d460a5e7586de2ac396b70fa0bddbe8b88149a7396b80180574b27f7b9f16889` |
| 9 | `structure` | [ObservationTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/observationtransport--5c9212006a3b9e29fd8833fc.md) | 71 | `declaration-track:5c9212006a3b9e29fd8833fc1803be92a740511d00fd4247d63eadbb95d723d4` |
| 10 | `def` | [ObservationTransport.compose](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/observationtransport-compose--476cc73122f08eb1fd0ba064.md) | 77 | `declaration-track:476cc73122f08eb1fd0ba0647bdb08c1a090c521848be5b006bc354501dab25e` |
| 11 | `theorem` | [composition_preserves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/composition-preserves--5bbd0685d4a7f6267ee9ece1.md) | 85 | `result-track:5bbd0685d4a7f6267ee9ece19f92d2d299aeb90f4599260afb74a372e75f0392` |
| 12 | `theorem` | [finite_schur_instance](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/finite-schur-instance--fcf16b0da231dcc3f0fc65ff.md) | 93 | `result-track:fcf16b0da231dcc3f0fc65ffc3f47e8388f914b6413f7c2fac7d2ea62284cfce` |
| 13 | `theorem` | [signed_mixed_instance](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/signed-mixed-instance--2b13b396fc2cb316536bd6e3.md) | 97 | `result-track:2b13b396fc2cb316536bd6e33319700638b2d68cf109c2eae4545c00c8d49aa9` |
| 14 | `theorem` | [mixed_deletion_wrong](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/mixed-deletion-wrong--60a61a21437be3796befcbf3.md) | 100 | `result-track:60a61a21437be3796befcbf3ee2461587487fbc82f6c9a696a4c260939fb6c79` |
| 15 | `theorem` | [signed_negative_instance](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/signed-negative-instance--f8821fb61ad2688dcc5e1c8b.md) | 102 | `result-track:f8821fb61ad2688dcc5e1c8ba6cebe1623cc6a4f5129a0fa0d99e5f20cc3b0af` |
| 16 | `theorem` | [event_instance](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/event-instance--cec6b996add72f1528821d85.md) | 106 | `result-track:cec6b996add72f1528821d8547d3839b1073ae165fcbb32b6df4519d75b1d396` |
| 17 | `theorem` | [omitted_jump_wrong](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/omitted-jump-wrong--bc36dcb0e8dfe22f2dffe85f.md) | 107 | `result-track:bc36dcb0e8dfe22f2dffe85feac6daef10066b181f812ed33809c8912931b60f` |
| 18 | `theorem` | [two_transport_instance](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/Invariant.lean/declarations/two-transport-instance--7863dada7ab09f69ed4677f8.md) | 110 | `result-track:7863dada7ab09f69ed4677f8ce1e608af294a50d90cf83b6d1a3fbea064f3464` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
