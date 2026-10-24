# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashMap.Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "641a81b5759c759d3e67556a4334d69065ff9116",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `641a81b5759c759d3e67556a4334d69065ff9116`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Align` — import line 15; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap` — import line 16; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [keys](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de.lean/declarations/keys--2e48dbaca4c451b055532356.md) | 40 | `declaration-track:2e48dbaca4c451b055532356fc4f109f0362d0d4f7b3104e102c84c9c8e0a2a5` |
| 2 | `def` | [values](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de.lean/declarations/values--2cec1506ef2b0d60e8c3ed29.md) | 44 | `declaration-track:2cec1506ef2b0d60e8c3ed29aa828bbeb3e571741d0a8adb43c3d9df2bf3869f` |
| 3 | `def` | [consVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de.lean/declarations/consval--3f97e20666c8678cde9494d9.md) | 48 | `declaration-track:3f97e20666c8678cde9494d9e9a2879acbc94cad72a57b3809a9b035327ac2ec` |
| 4 | `def` | [insertList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variantf95d453a5b8272fccb4a212a238e82e31e10f916d21922f185e5d8b242a331de.lean/declarations/insertlist--f6b8ad93f8cc467d8b7fd447.md) | 58 | `declaration-track:f6b8ad93f8cc467d8b7fd447e71e72c340b3433d20339677917134c8eff07f39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
