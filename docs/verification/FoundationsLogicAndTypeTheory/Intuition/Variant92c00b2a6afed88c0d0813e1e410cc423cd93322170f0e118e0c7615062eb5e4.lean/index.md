# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Intuition.Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "690c4ac33dac712fda7aec2ba5a960554b814d5e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `690c4ac33dac712fda7aec2ba5a960554b814d5e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PriorityFeature](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean/declarations/priorityfeature--1ab8a5b77571cae1f54a74fa.md) | 21 | `declaration-track:1ab8a5b77571cae1f54a74fa5f112f3b77dc7873e8db623e7525e34543f7d530` |
| 2 | `structure` | [IntuitionPriority](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean/declarations/intuitionpriority--4eb0d63c2a129cba75001685.md) | 33 | `declaration-track:4eb0d63c2a129cba75001685959de329f28345f02a376bb77ff3cbc713f66eb9` |
| 3 | `structure` | [IntuitionKernel](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean/declarations/intuitionkernel--3dc7e25bdd07635abbbded1a.md) | 51 | `declaration-track:3dc7e25bdd07635abbbded1ad232f786420e753e5fca25fb28e7f8a0d650f0ba` |
| 4 | `inductive` | [AttemptOutcome](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean/declarations/attemptoutcome--3b1bffa542b5f192c130d6b4.md) | 61 | `declaration-track:3b1bffa542b5f192c130d6b4cb1a2457b6c1df1281a55fccf227e481cf859598` |
| 5 | `structure` | [IntuitionAttempt](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean/declarations/intuitionattempt--0457646b50942e04174a1731.md) | 75 | `declaration-track:0457646b50942e04174a1731e3c13553749198f111dc61e9be653244f850112d` |
| 6 | `theorem` | [intuition_replay](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean/declarations/intuition-replay--f36ed78f4941a891f3636781.md) | 89 | `result-track:f36ed78f4941a891f3636781ae443980ade73de015642a959959b1e003df6bca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
