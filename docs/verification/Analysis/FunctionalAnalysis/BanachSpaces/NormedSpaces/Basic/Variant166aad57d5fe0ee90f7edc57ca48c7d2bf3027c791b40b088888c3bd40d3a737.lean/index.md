# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Basic.Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0490c6f9fbdbffb626a9e2b8622ffbc1c9e0251e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0490c6f9fbdbffb626a9e2b8622ffbc1c9e0251e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NormedOrderedAddGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean/declarations/normedorderedaddgroup--ff001cfa76115d91465d96d9.md) | 28 | `declaration-track:ff001cfa76115d91465d96d94a9beace42b987de2592c78d16acc7e1fc66d32c` |
| 2 | `structure` | [NormedOrderedGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean/declarations/normedorderedgroup--b506d39355f8c10eb3858758.md) | 41 | `declaration-track:b506d39355f8c10eb3858758cfc909affef427ea43c0edfe740439e0c4c84745` |
| 3 | `structure` | [NormedLinearOrderedAddGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean/declarations/normedlinearorderedaddgroup--320145b57305781492d596ef.md) | 52 | `declaration-track:320145b57305781492d596ef21a3e32985d5ee9c7f758a0a80204b02ff6a0a81` |
| 4 | `structure` | [NormedLinearOrderedGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean/declarations/normedlinearorderedgroup--bd903fd05725e41cc0b9af28.md) | 65 | `declaration-track:bd903fd05725e41cc0b9af2801ab8b3ec0620d549d138bcf85d717a33d514a69` |
| 5 | `structure` | [NormedLinearOrderedField](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant166aad57d5fe0ee90f7edc57ca48c7d2bf3027c791b40b088888c3bd40d3a737.lean/declarations/normedlinearorderedfield--0acd59c539edf3566e7858c8.md) | 76 | `declaration-track:0acd59c539edf3566e7858c820fa788769bf914223f7bc7d6c04995c7bd94894` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
