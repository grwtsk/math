# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Oplax.Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bb7a47d0b8076f0d6f2cf1ec7ab8778d65fdd01",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bb7a47d0b8076f0d6f2cf1ec7ab8778d65fdd01`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Prelax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.ToApp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OplaxFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean/declarations/oplaxfunctor--e90188c6747968489962f6d9.md) | 59 | `declaration-track:e90188c6747968489962f6d9fd4747dbfb353833023bd76bafb72e8658b63e71` |
| 2 | `lemma` | [mapComp_assoc_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean/declarations/mapcomp-assoc-right--6c98ae06facb1279a0f1fd89.md) | 108 | `result-track:6c98ae06facb1279a0f1fd89929acfe6de29db7ccf85dc616d00eaa8c381c4a8` |
| 3 | `lemma` | [mapComp_assoc_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean/declarations/mapcomp-assoc-left--bb087c23c4e09d0c6cb3edf6.md) | 116 | `result-track:bb087c23c4e09d0c6cb3edf637a502125e1eeb4ca20cf5d4e2853e942fa24f9b` |
| 4 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean/declarations/id--d3ba16e8da548d7f241b45b0.md) | 124 | `declaration-track:d3ba16e8da548d7f241b45b0656499f27641d9b786c9c04886b1a125b69ef0ef` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean/declarations/instance--c294184afc5170b447ab9bf7.md) | 129 | `declaration-track:c294184afc5170b447ab9bf7b7016a0ffebf47a7332bd4c4cb75a02ce557bc58` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean/declarations/comp--0e8734a14f9dd52805896d31.md) | 134 | `declaration-track:0e8734a14f9dd52805896d319d2878dd279f863d4869a1281cede0fc2205eebd` |
| 7 | `structure` | [PseudoCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant9bd838f131661a9440442b69bca99b4107c0915e3808576784fc7f9e43856ff0.lean/declarations/pseudocore--34ac83d711d03d022b1f548c.md) | 165 | `declaration-track:34ac83d711d03d022b1f548c212960f8f586521577e92f9e3582127713575ceb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
