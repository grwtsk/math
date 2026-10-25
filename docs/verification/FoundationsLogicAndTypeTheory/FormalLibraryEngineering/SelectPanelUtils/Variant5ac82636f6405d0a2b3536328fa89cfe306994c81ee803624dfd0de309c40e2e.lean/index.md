# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SelectPanelUtils.Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aedc8c0f0f418087cf0b584e8fdd942abb8b5ae",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aedc8c0f0f418087cf0b584e8fdd942abb8b5ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.ExprLens` — import line 11; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.MakeEditLink` — import line 12; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.OfRpcMethod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Widget.SelectInsertParamsClass` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getGoalLocations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean/declarations/getgoallocations--ebd080f363af4f37199d67cc.md) | 32 | `declaration-track:ebd080f363af4f37199d67cce3d3834cc6ccf07c7c336bad3f01eed63d186ce9` |
| 2 | `def` | [insertMetaVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean/declarations/insertmetavar--45af4578044c40a9e1195e49.md) | 40 | `declaration-track:45af4578044c40a9e1195e49c33419f7aed1e10374917224607da9821a57ff9c` |
| 3 | `def` | [String.renameMetaVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean/declarations/string-renamemetavar--650e805b20d26cf1397b01e6.md) | 44 | `declaration-track:650e805b20d26cf1397b01e6cf649027551733f76c7d20573daabf50a49e262b` |
| 4 | `structure` | [SelectInsertParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean/declarations/selectinsertparams--d83defa6e701adaee9185dd4.md) | 53 | `declaration-track:d83defa6e701adaee9185dd4d96fffbc3644092f1267ca44ab2bfc8b4750db6d` |
| 5 | `def` | [mkSelectionPanelRPC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant5ac82636f6405d0a2b3536328fa89cfe306994c81ee803624dfd0de309c40e2e.lean/declarations/mkselectionpanelrpc--a26718eb155c5e0bee643586.md) | 83 | `declaration-track:a26718eb155c5e0bee6435863b60a8496f28be84d8077b834123cf187e8bcede` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
