# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Multigoal.Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "010879b9e55d20ec7d13038e813b633621514186",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `010879b9e55d20ec7d13038e813b633621514186`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.style.multiGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/declarations/linter-style-multigoal--a532bc507507f12a32b4c430.md) | 53 | `declaration-track:a532bc507507f12a32b4c430c01866023e2835651d08ea70048a66b489da317b` |
| 2 | `abbrev` | [exclusions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/declarations/exclusions--a86b458efffa542f1521374e.md) | 72 | `declaration-track:a86b458efffa542f1521374e94d7493fcfdceeb9c51ef926d1bc9c409df2eda8` |
| 3 | `abbrev` | [ignoreBranch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/declarations/ignorebranch--e0c99b14f550f27e16ae9b43.md) | 123 | `declaration-track:e0c99b14f550f27e16ae9b4305620fd9ea2919b9d5bb6b86c8a66712e1ff6b93` |
| 4 | `def` | [getManyGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/declarations/getmanygoals--c3281e63eee3b2e9f335dc0f.md) | 147 | `declaration-track:c3281e63eee3b2e9f335dc0f6e963770104086c1253bc88196748cf10e65c0e1` |
| 5 | `def` | [multiGoalLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/declarations/multigoallinter--a33e3fb26cb0250a64687942.md) | 166 | `declaration-track:a33e3fb26cb0250a6468794226f05a3bafeed2d5975f434c4d6da4ac0deab572` |
| 6 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/declarations/initialize--e4a552999a291c071291b40a.md) | 183 | `declaration-track:e4a552999a291c071291b40ab0c259198c09b359a7d54195088b21edf54eb3d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
