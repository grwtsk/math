# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b55287f0d6ed73fbc6e970e1e56e2b6ddca4756f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b55287f0d6ed73fbc6e970e1e56e2b6ddca4756f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [_root_.Cardinal.mk_mul_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/root-cardinal-mk-mul-le--3dfac5cb844ca5a7e0638ede.md) | 25 | `result-track:3dfac5cb844ca5a7e0638ede5f6a3812da457f4802767e7a4e1f7ecee98d2241` |
| 2 | `lemma` | [natCard_mul_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/natcard-mul-le--01eb828b4b8d868baeb97ca0.md) | 31 | `result-track:01eb828b4b8d868baeb97ca013177d248d61b6cc14fc163748bdc1f7ec660325` |
| 3 | `lemma` | [_root_.Cardinal.mk_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/root-cardinal-mk-inv--db92f2cfa48e4e44b716ee80.md) | 44 | `result-track:db92f2cfa48e4e44b716ee806152f7404c5a3bf2d4bc07281e56bf41d412a661` |
| 4 | `lemma` | [natCard_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/natcard-inv--9d0ce74b23a4cd53a94c8d0f.md) | 48 | `result-track:9d0ce74b23a4cd53a94c8d0f0fe27788ee2de306d731b6afcd1ed59b6208c4a0` |
| 5 | `lemma` | [encard_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/encard-inv--c9ca74827e6daf2488ff7520.md) | 52 | `result-track:c9ca74827e6daf2488ff7520f470960ffff95eed7701a2f17a8d0349b7664dd7` |
| 6 | `lemma` | [ncard_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/ncard-inv--09a2ccb26845edc91f02f8b0.md) | 56 | `result-track:09a2ccb26845edc91f02f8b063d2bcb653a90a88f84e799eb8638b42eedba250` |
| 7 | `lemma` | [_root_.Cardinal.mk_div_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/root-cardinal-mk-div-le--00d14085d978ae531a0bf024.md) | 64 | `result-track:00d14085d978ae531a0bf024f560a7cc70f3fc7c96bcb9eff3e6adb8f4be6e4d` |
| 8 | `lemma` | [natCard_div_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/natcard-div-le--225fd482957a2184a64725c1.md) | 73 | `result-track:225fd482957a2184a64725c11af727a585311ff77e636edeb8371568f4223286` |
| 9 | `lemma` | [_root_.Cardinal.mk_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/root-cardinal-mk-smul-set--2d890bf34f5689e834b9bf86.md) | 79 | `result-track:2d890bf34f5689e834b9bf8607948c1adb082881211f8df09200d8955a34268f` |
| 10 | `lemma` | [natCard_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/natcard-smul-set--6b868b6c27d7d4d64e35ffff.md) | 83 | `result-track:6b868b6c27d7d4d64e35fffffdbe368a64f85054bb665e047d75448918e20669` |
| 11 | `lemma` | [encard_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/encard-smul-set--15bf9e9bfe25fcbf64fb180c.md) | 87 | `result-track:15bf9e9bfe25fcbf64fb180c8b4660cdb26692aa5e12d681c4e667aba00c436e` |
| 12 | `lemma` | [ncard_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant99d4499af6a2a23fde2277e5ba6c6ef0e169355e8b67c461c31bf2d291d852f7.lean/declarations/ncard-smul-set--2de5aa6027f1ffd39f3245f0.md) | 91 | `result-track:2de5aa6027f1ffd39f3245f0ce507eaee5270c87948f88334632fd0bbdfdf561` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
