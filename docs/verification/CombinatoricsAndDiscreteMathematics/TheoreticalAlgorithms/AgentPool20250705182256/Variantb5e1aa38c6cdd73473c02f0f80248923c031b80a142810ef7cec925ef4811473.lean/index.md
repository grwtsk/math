# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AgentPool20250705182256.Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71e3f94f1bcc7662cfa8b046bd1f62c58bfe9039",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71e3f94f1bcc7662cfa8b046bd1f62c58bfe9039`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `cognition.Agents.CognitiveAgent` — import line 2; external provider; requires a separately pinned dependency.
- `cognition.Agents.FlowProfile` — import line 3; external provider; requires a separately pinned dependency.
- `cognition.Core.UserInputEvent` — import line 4; external provider; requires a separately pinned dependency.
- `cognition.Dialogue.DialogueContext` — import line 5; external provider; requires a separately pinned dependency.
- `cognition.Log.GraffitiEntry` — import line 6; external provider; requires a separately pinned dependency.
- `cognition.Log.GraffitiLog` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GptAgent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean/declarations/gptagent--d527b9bc7bc892530b3ddae7.md) | 19 | `declaration-track:d527b9bc7bc892530b3ddae7e46e5b9d67e0ea56a3994530bb060a009a782771` |
| 2 | `structure` | [AgentPool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean/declarations/agentpool--3d8a11a122113e492157a9a6.md) | 28 | `declaration-track:3d8a11a122113e492157a9a6a6802a7bae65c4311a3f9a24068a588937fa3221` |
| 3 | `def` | [AgentPool.register](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean/declarations/agentpool-register--fa8e83c23c889eff1cf67f50.md) | 38 | `declaration-track:fa8e83c23c889eff1cf67f50c50988cfb4e615440598e20766e0352f048024d4` |
| 4 | `def` | [AgentPool.observeAll](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean/declarations/agentpool-observeall--6f235e8c9666d7afbf981f07.md) | 46 | `declaration-track:6f235e8c9666d7afbf981f07c6d3a0482720780abdf44b152e60215e47fd45f0` |
| 5 | `def` | [AgentPool.brainstorm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean/declarations/agentpool-brainstorm--12cab26f0b3d9b551a821227.md) | 55 | `declaration-track:12cab26f0b3d9b551a8212273de5126982ba81bffa17e25eb47aa6e87c812dfe` |
| 6 | `def` | [AgentPool.evaluateFlow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182256/Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473.lean/declarations/agentpool-evaluateflow--a3bc61731fd959d552d3bbe3.md) | 69 | `declaration-track:a3bc61731fd959d552d3bbe3d1a5558ce3db8c408edb408fc33990b732cd9e89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
