# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Solid.Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7700f3cba847c9a0030f5bc37bbe1dc2b6497955",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7700f3cba847c9a0030f5bc37bbe1dc2b6497955`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [finFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean/declarations/finfree--ef68b138db312fb440eb70dc.md) | 40 | `declaration-track:ef68b138db312fb440eb70dc4e9bd6cd82970f7711732d8e39a5fcba7bf1cc11` |
| 2 | `abbrev` | [profiniteFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean/declarations/profinitefree--cc7dbf394eb2dac72d3883c3.md) | 44 | `declaration-track:cc7dbf394eb2dac72d3883c3fa87e1f1bec398a7308f4fdccdbaf97a98b880ce` |
| 3 | `def` | [profiniteSolid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean/declarations/profinitesolid--0732b5e369f07619edb4f6c2.md) | 48 | `declaration-track:0732b5e369f07619edb4f6c2e99f782b86f9f024b626d4a9ebb8a538bf143a4b` |
| 4 | `def` | [profiniteSolidCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean/declarations/profinitesolidcounit--420877aa58c4dd9a375ea5d7.md) | 54 | `declaration-track:420877aa58c4dd9a375ea5d7454e9821895dac575f7faa223e9d9571b1f11a43` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean/declarations/instance--709acc58892adb0624df8253.md) | 57 | `declaration-track:709acc58892adb0624df82535c349a41f50bc717701eb8618c651fb196f65fc3` |
| 6 | `def` | [profiniteSolidIsPointwiseRightKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean/declarations/profinitesolidispointwiserightkanextension--933520117b933c64b6d8ac65.md) | 64 | `declaration-track:933520117b933c64b6d8ac655a7dd4e50516d0bf8c39970a2fe317aa71e6c71d` |
| 7 | `def` | [profiniteSolidification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean/declarations/profinitesolidification--85b3006324017980f0d59324.md) | 69 | `declaration-track:85b3006324017980f0d59324702d90982412781063f77bb035d3440b0f229171` |
| 8 | `class` | [CondensedMod.IsSolid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant648a1ebe4b504338631570c44a1342aa52e0a16109cacd6701a967bbc7841d0e.lean/declarations/condensedmod-issolid--27b58c2dc48a54b9e350c03f.md) | 83 | `declaration-track:27b58c2dc48a54b9e350c03f37d7092bba8246aac21bd9a1e2326de7995acb8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
