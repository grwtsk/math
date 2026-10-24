# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AgentPool20250705182256.Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28b8338755e3edc69c1483c6d33afb8a84d7345d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28b8338755e3edc69c1483c6d33afb8a84d7345d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `cognition.Agents.CognitiveAgent` — import line 7; external provider; requires a separately pinned dependency.
- `cognition.Agents.FlowProfile` — import line 8; external provider; requires a separately pinned dependency.
- `cognition.Core.UserInputEvent` — import line 9; external provider; requires a separately pinned dependency.
- `cognition.Dialogue.DialogueContext` — import line 10; external provider; requires a separately pinned dependency.
- `cognition.Log.GraffitiEntry` — import line 11; external provider; requires a separately pinned dependency.
- `cognition.Log.GraffitiLog` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GptAgent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean/declarations/gptagent--c30f415b2fc1699dc9b1d413.md) | 27 | `declaration-track:c30f415b2fc1699dc9b1d41370911034e676675b4bbfe36c13318b00524a1284` |
| 2 | `structure` | [AgentPool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean/declarations/agentpool--08acb6edcfd5340ac0f53387.md) | 36 | `declaration-track:08acb6edcfd5340ac0f533878a67217180aa2019825d92511edf95eceaac7059` |
| 3 | `def` | [AgentPool.register](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean/declarations/agentpool-register--f125c5c166d5a4a22471cfa4.md) | 46 | `declaration-track:f125c5c166d5a4a22471cfa4161ac723d1d21064bea205928c82d4b1d2468e4d` |
| 4 | `def` | [AgentPool.observeAll](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean/declarations/agentpool-observeall--9fbaeb87ffc6907646aaef59.md) | 54 | `declaration-track:9fbaeb87ffc6907646aaef591d2736a3f7be74c4da76255ac4d08902fd891e5e` |
| 5 | `def` | [AgentPool.brainstorm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean/declarations/agentpool-brainstorm--3c8ec1a693d1ee3c22ebca76.md) | 63 | `declaration-track:3c8ec1a693d1ee3c22ebca76bb6c0c2c58d746a16addaac50c5f9bd7c5274b45` |
| 6 | `def` | [AgentPool.evaluateFlow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variant113a3456974cc610a29e3c2f68b3d21058b818e477c027cc690576567eeb81b7.lean/declarations/agentpool-evaluateflow--5289e54f50ccb4f844c6e18c.md) | 77 | `declaration-track:5289e54f50ccb4f844c6e18cd4e131239dd30afc4d79adce0d23b83e8f71aec6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
