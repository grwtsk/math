# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imports.Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9dd61301d4a9b27643bf6e0b11400748fa474c7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9dd61301d4a9b27643bf6e0b11400748fa474c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [importsOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/importsof--46e2ee7c608ea3108ffbaacf.md) | 34 | `declaration-track:46e2ee7c608ea3108ffbaacff9fddea5b8b38214d758075c90e8c8b67c98158d` |
| 2 | `def` | [importGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/importgraph--d3d9f3f5479f4c72793eb7e4.md) | 44 | `declaration-track:d3d9f3f5479f4c72793eb7e441ccf25c0eaf57ca4d998c9c60890fbdb1ba3375` |
| 3 | `def` | [findRedundantImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/findredundantimports--89a790ae49a84b0a77b4333e.md) | 61 | `declaration-track:89a790ae49a84b0a77b4333e404a89f91b4f4637953e745955c8b7a942189615` |
| 4 | `def` | [transitiveClosure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/transitiveclosure--a2403aae1fb952ed6a824e03.md) | 82 | `declaration-track:a2403aae1fb952ed6a824e03915f3341df26439ac8048caaf98924a9d9d9b542` |
| 5 | `def` | [transitiveReduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/transitivereduction--1aa6549ec8e253c5b64c914f.md) | 100 | `declaration-track:1aa6549ec8e253c5b64c914f6057f8ca5a1eb3e4a940dafb7aa8ad95576a096e` |
| 6 | `def` | [dependenciesOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/dependenciesof--ca285064d7b85d86e8a2b4b2.md) | 106 | `declaration-track:ca285064d7b85d86e8a2b4b202742424db1c54972da3fefa88abd12efb03b3c7` |
| 7 | `def` | [redundantImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/redundantimports--28d06a3f291982ecd50fd63b.md) | 121 | `declaration-track:28d06a3f291982ecd50fd63bb4f4d6e9216e3c3883cde8025555afbdf0caa878` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/elab--71ce6d0a2c61885a26d28b1d.md) | 130 | `declaration-track:71ce6d0a2c61885a26d28b1d12b5b86d2d279763e13efae9fb0844a5f11ceb18` |
| 9 | `def` | [Lean.Environment.minimalRequiredModules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/lean-environment-minimalrequiredmodules--47768603a7d1468ac34a687a.md) | 145 | `declaration-track:47768603a7d1468ac34a687a010c5f8d44d0f61dd90a781b459f72b9f2d82f33` |
| 10 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/elab--f777a90fdc414bd473c39ac8.md) | 158 | `declaration-track:f777a90fdc414bd473c39ac8262a5e726bf23e23b9f85d76ed0d6e1e6ea50686` |
| 11 | `def` | [Lean.Name.findHome](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/lean-name-findhome--8bcd4657c85f2374beb5d494.md) | 167 | `declaration-track:8bcd4657c85f2374beb5d4947c4e57e4d6e145e2a86a2b34a0c640a2e41072fe` |
| 12 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant879eb365de5ca67b684efe3406afd24ded83303cc7cf560384ad192a5afa7d26.lean/declarations/elab--10ec2a9eecc96b577873eabc.md) | 185 | `declaration-track:10ec2a9eecc96b577873eabc2f07aac3057dbd8810872d0b6e026867a95e8398` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
