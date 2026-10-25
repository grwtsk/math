# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residue.Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4c804b32a7f3666b80df90052a6ffab1996c2c9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4c804b32a7f3666b80df90052a6ffab1996c2c9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Residue3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/declarations/residue3--f7c9f6ae2ba8b82ea489c9d8.md) | 23 | `declaration-track:f7c9f6ae2ba8b82ea489c9d84be10a869b9eaade40a865ec82909cc095c5ad9b` |
| 2 | `def` | [Residue3.reflect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/declarations/residue3-reflect--abc4a18ffd26d6605d0b0d61.md) | 29 | `declaration-track:abc4a18ffd26d6605d0b0d61ce07dcb03d6ae09eeff3d7ab3ceb6bbdad917e21` |
| 3 | `def` | [Residue3.Safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/declarations/residue3-safe--cbefefaa189d90b52ded2449.md) | 35 | `declaration-track:cbefefaa189d90b52ded24496c80ebff695c5c950fd42add3ddd80fd0c089e33` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/declarations/instance--3efd32cf6b927fd7bd198e9d.md) | 41 | `declaration-track:3efd32cf6b927fd7bd198e9dd1a8fff23a9fc2fcb4e59924ccc22974caaf4042` |
| 5 | `def` | [Residue3.value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/declarations/residue3-value--6a5a513fb867178ad2f3a99d.md) | 47 | `declaration-track:6a5a513fb867178ad2f3a99d6bac8a6b441ea3d56dcccba7ad9a3fc9ea98972f` |
| 6 | `theorem` | [residue3_reflect_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/declarations/residue3-reflect-involutive--22d7979b9bf164e648591cba.md) | 53 | `result-track:22d7979b9bf164e648591cbac646695632045f92356897fd7c005bde23daef2a` |
| 7 | `theorem` | [residue3_reflect_preserves_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/declarations/residue3-reflect-preserves-safe--2acc704b2a8231179a563988.md) | 59 | `result-track:2acc704b2a8231179a563988edf096b60303f208c887150be78b7b02400edcf9` |
| 8 | `theorem` | [residue3_zero_fixed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/declarations/residue3-zero-fixed--f931e041e5a2a591457f8ff1.md) | 67 | `result-track:f931e041e5a2a591457f8ff117c7e465073faaed07d540eff5949b14aeca9967` |
| 9 | `theorem` | [residue3_safe_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/declarations/residue3-safe-ne-zero--493c0204f684db29981139a5.md) | 72 | `result-track:493c0204f684db29981139a56f405ee682328782dcf868b563987f8a617545a3` |
| 10 | `theorem` | [residue3_reflect_value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Varianta10ce1b74a9fb8d65028df328438c4c25b691cc3b9d8af5021054e9e7ccc7128.lean/declarations/residue3-reflect-value--89c42980ac7a8b11700e1a39.md) | 80 | `result-track:89c42980ac7a8b11700e1a397faf0ae2c58359e127e1c2ffd2b3c5f757324938` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
