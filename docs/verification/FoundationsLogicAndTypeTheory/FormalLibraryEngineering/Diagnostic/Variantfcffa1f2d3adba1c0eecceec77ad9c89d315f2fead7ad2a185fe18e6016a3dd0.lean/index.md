# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Diagnostic.Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05cb8a0d102dbb68610315d3345661d41d3503fa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05cb8a0d102dbb68610315d3345661d41d3503fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Types` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Parse` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extractIntervalBoundsForDiag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/declarations/extractintervalboundsfordiag--76cf1e7d1b99b2f0394be2fb.md) | 21 | `declaration-track:76cf1e7d1b99b2f0394be2fb0cecd1974b81535f83323b7c91d92332f3d3e85e` |
| 2 | `def` | [formatGoalContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/declarations/formatgoalcontext--ae015bdba15daf44ce39937f.md) | 27 | `declaration-track:ae015bdba15daf44ce39937f727dc08e50aae52be51b4eba7f62fce0319cd935` |
| 3 | `def` | [countForallsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/declarations/countforallsaux--3e22f38b95644957fb52593a.md) | 31 | `declaration-track:3e22f38b95644957fb52593aad50511b14b0841330434989a865e4b15cb8e23d` |
| 4 | `def` | [findComparisonAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/declarations/findcomparisonaux--5e35cb83d12d9c957828e1ff.md) | 40 | `declaration-track:5e35cb83d12d9c957828e1ff7b9139de116e6eda6b84524ab82cd70c655cafa4` |
| 5 | `def` | [analyzeGoalStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/declarations/analyzegoalstructure--9f605ccb200fa81309ba016a.md) | 54 | `declaration-track:9f605ccb200fa81309ba016a7c77971486929a19f3454171ef10fb1a21d9b10b` |
| 6 | `def` | [suggestNextActions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/declarations/suggestnextactions--a2219bb9aace4089ab99c10d.md) | 65 | `declaration-track:a2219bb9aace4089ab99c10d826a7fe01edc39f842278f652f4c1437e47d090d` |
| 7 | `def` | [mkDiagnosticReport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/declarations/mkdiagnosticreport--d66fe9c02749587fa7bfa5fe.md) | 81 | `declaration-track:d66fe9c02749587fa7bfa5fefb1d6baeea5d71c8f10344c2a99e1c72ac0479bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
