# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpH.Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8beacfc459998e040689ba7bb59463c2c8a9379d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8beacfc459998e040689ba7bb59463c2c8a9379d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Contradiction` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/state--b93ec0f2640a7301a29eec8a.md) | 24 | `declaration-track:b93ec0f2640a7301a29eec8a6cc3b6ab7907316752eebaab67bb554f86860fec` |
| 2 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/m--3975440acfbc45a5b2aa5d0a.md) | 30 | `declaration-track:3975440acfbc45a5b2aa5d0a0ba667daff78d893fee6801e9ad05807dbe48954` |
| 3 | `def` | [applySubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/applysubst--a42578e9a4c5682c48afe50a.md) | 36 | `declaration-track:a42578e9a4c5682c48afe50a8e3b728dfd5b7ef0be91fde4620afa9b72bec4aa` |
| 4 | `def` | [substRHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/substrhs--48bf3535c39e0ae2ddfd2d81.md) | 45 | `declaration-track:48bf3535c39e0ae2ddfd2d81f8669a8fc6dabd716ca364c73d5dca58ecc81023` |
| 5 | `def` | [isDone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/isdone--9c5bfa1e8cec381c450a703b.md) | 55 | `declaration-track:9c5bfa1e8cec381c450a703bac215493c4255dd7b9080421a2d33f20c1271d82` |
| 6 | `def` | [contradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/contradiction--fe6b3277f31bdec60beab17d.md) | 59 | `declaration-track:fe6b3277f31bdec60beab17d309476c544008939263176b2fbd0b5e98690655d` |
| 7 | `def` | [trySubstVarsAndContradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/trysubstvarsandcontradiction--7b8bc45bca90c728b574181f.md) | 66 | `declaration-track:7b8bc45bca90c728b574181fbe078cd9330b8fa14c27d3e8248d9715aa460dc0` |
| 8 | `def` | [processNextEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/processnexteq--f86811e21925bd5f0409c443.md) | 77 | `declaration-track:f86811e21925bd5f0409c4434f82cd7bbe0a578c6f5039eb3c8071448af8cd79` |
| 9 | `def` | [go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/go--4ecf4cd03e1044b7402da26d.md) | 113 | `declaration-track:4ecf4cd03e1044b7402da26dac500489ad969aa9c5c5f8afd35482fd8b4eda37` |
| 10 | `def` | [simpH](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/simph--a47e6380ea6e02eb963d421a.md) | 129 | `declaration-track:a47e6380ea6e02eb963d421a320326a683a4248c7320cae3e131d141a4b60b2d` |
| 11 | `def` | [simpH?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/declarations/simph--52ff4dca8754fe90617234c3.md) | 155 | `declaration-track:52ff4dca8754fe90617234c3b21f2f2b40621002a12901103d31f768ad8f11a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
