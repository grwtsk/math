# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AgentPool20250705182243.Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc589ffad9ddeb7d1e0b9fdaacddbe941e5152e2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182243/Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182243/Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182243/Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc589ffad9ddeb7d1e0b9fdaacddbe941e5152e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182243/Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182243/Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248.lean.json)

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
| 1 | `structure` | [GptAgent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182243/Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248.lean/declarations/gptagent--a767d69f6a33f9266978900e.md) | 19 | `declaration-track:a767d69f6a33f9266978900ec143dc9b5ea1d795c6326b6c07664eae081afefc` |
| 2 | `structure` | [AgentPool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182243/Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248.lean/declarations/agentpool--4c9f05f0ca7c234a8682a492.md) | 28 | `declaration-track:4c9f05f0ca7c234a8682a4927893d82d2850490df44d187efbafb8a6474ccf74` |
| 3 | `def` | [AgentPool.register](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182243/Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248.lean/declarations/agentpool-register--b3abffc0ca573d6c25c7043c.md) | 38 | `declaration-track:b3abffc0ca573d6c25c7043cdd3c53892d9bae37996c42a70cf332124a24e74f` |
| 4 | `def` | [AgentPool.observeAll](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AgentPool20250705182243/Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248.lean/declarations/agentpool-observeall--13f5a3a26f09741130618205.md) | 46 | `declaration-track:13f5a3a26f097411306182054d4a50743d9fe0b714f4d0751e2baa790c3913de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
