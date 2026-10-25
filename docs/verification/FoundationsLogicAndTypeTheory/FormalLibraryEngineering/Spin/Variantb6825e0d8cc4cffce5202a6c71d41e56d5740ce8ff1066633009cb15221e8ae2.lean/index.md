# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Spin.Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41017f1834d7a6ce33595d6e65ad79c6379b16ad",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41017f1834d7a6ce33595d6e65ad79c6379b16ad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RectSpin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean/declarations/rectspin--fb701c9fa61eebfb0911cca2.md) | 26 | `declaration-track:fb701c9fa61eebfb0911cca22b117c55dc5a58eadb5f1505dbb6c66bd92566a2` |
| 2 | `def` | [render](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean/declarations/render--c39bb149f81dd8c4dfdbcc6b.md) | 35 | `declaration-track:c39bb149f81dd8c4dfdbcc6b6c7820af459be5e5ef78606a1ada92bb57e23138` |
| 3 | `def` | [parse?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean/declarations/parse--360a0b5472a2b629ace6c3db.md) | 41 | `declaration-track:360a0b5472a2b629ace6c3dbd6a6c0bb38db071c8fb7372fa905ba96fc1a5443` |
| 4 | `theorem` | [parse?_render](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean/declarations/parse-render--2cce61b3ae6f0c101d48d455.md) | 48 | `result-track:2cce61b3ae6f0c101d48d4552263475a68f8c2605762770b69d05fd413dd7907` |
| 5 | `theorem` | [render_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean/declarations/render-injective--f9361e4a9a4cb73309db98c8.md) | 53 | `result-track:f9361e4a9a4cb73309db98c8c56511a770478aba52dc1a376b515d7d04e82e72` |
| 6 | `def` | [inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spin/Variantb6825e0d8cc4cffce5202a6c71d41e56d5740ce8ff1066633009cb15221e8ae2.lean/declarations/inverse--079cbf5b32629c2102e11b66.md) | 59 | `declaration-track:079cbf5b32629c2102e11b660f8a67abe62501eb4c86973fad2d88809113493e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
