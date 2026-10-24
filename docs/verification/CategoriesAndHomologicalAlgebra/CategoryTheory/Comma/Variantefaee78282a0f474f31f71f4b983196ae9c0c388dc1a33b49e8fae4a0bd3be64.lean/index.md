# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4147a489b5b31c7090aeabefeb3e710be8fcf29d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4147a489b5b31c7090aeabefeb3e710be8fcf29d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftAdjointOfStructuredArrowInitialsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/leftadjointofstructuredarrowinitialsaux--faac81cf004b1acbf269d58a.md) | 44 | `declaration-track:faac81cf004b1acbf269d58a8a524daa05c68a7787f933a832df01863d9c3463` |
| 2 | `def` | [leftAdjointOfStructuredArrowInitials](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/leftadjointofstructuredarrowinitials--42543178571a018185f30884.md) | 63 | `declaration-track:42543178571a018185f308841e1fd938b9d4ff5551195425145e64782734da2b` |
| 3 | `def` | [adjunctionOfStructuredArrowInitials](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/adjunctionofstructuredarrowinitials--fe19fca09b8a4d4dfc72957a.md) | 70 | `declaration-track:fe19fca09b8a4d4dfc72957af87885c4c37184dd60035b9ffa32275ad74c324d` |
| 4 | `lemma` | [isRightAdjointOfStructuredArrowInitials](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/isrightadjointofstructuredarrowinitials--a26e7442ca16f17cc330532b.md) | 74 | `result-track:a26e7442ca16f17cc330532b235a800ad35bd4aa548e83d181a0d9b7aa01c071` |
| 5 | `def` | [rightAdjointOfCostructuredArrowTerminalsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/rightadjointofcostructuredarrowterminalsaux--f89711b1442dc6bc845b5950.md) | 88 | `declaration-track:f89711b1442dc6bc845b5950e399136e60dbb03cdbca344a4bb31716cf642456` |
| 6 | `def` | [rightAdjointOfCostructuredArrowTerminals](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/rightadjointofcostructuredarrowterminals--bc94ec248b2d67e3ed1896d1.md) | 106 | `declaration-track:bc94ec248b2d67e3ed1896d118cad0d96f81d5b827bc10a0b3049b7057077f39` |
| 7 | `def` | [adjunctionOfCostructuredArrowTerminals](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/adjunctionofcostructuredarrowterminals--6b4bc84cb417bf24feae3730.md) | 115 | `declaration-track:6b4bc84cb417bf24feae37301e6f5358a32c72454fe2ee66246772634a064da3` |
| 8 | `lemma` | [isLeftAdjoint_of_costructuredArrowTerminals](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/isleftadjoint-of-costructuredarrowterminals--163bb745076aa44b4d1c54ea.md) | 119 | `result-track:163bb745076aa44b4d1c54ea6e76b1b71fe5af3ac22eb3f97f04b2c815bd2555` |
| 9 | `def` | [mkInitialOfLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/mkinitialofleftadjoint--f55a5c8dfee0f5bbd079d722.md) | 133 | `declaration-track:f55a5c8dfee0f5bbd079d722b45368de9e93fd1508b58df7443d660d6511f8ad` |
| 10 | `def` | [mkTerminalOfRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/mkterminalofrightadjoint--8c6c518c5c3bd86da5ce1b97.md) | 142 | `declaration-track:8c6c518c5c3bd86da5ce1b972d9184f1266f65370d53f317a030ca77da78592d` |
| 11 | `theorem` | [isRightAdjoint_iff_hasInitial_structuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/isrightadjoint-iff-hasinitial-structuredarrow--ce92c9fe81b4c98def079e60.md) | 151 | `result-track:ce92c9fe81b4c98def079e607d320ea07e72c9b5798fe1d575335402a80de46d` |
| 12 | `theorem` | [isLeftAdjoint_iff_hasTerminal_costructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantefaee78282a0f474f31f71f4b983196ae9c0c388dc1a33b49e8fae4a0bd3be64.lean/declarations/isleftadjoint-iff-hasterminal-costructuredarrow--587ef3f2214b98161b306ea2.md) | 156 | `result-track:587ef3f2214b98161b306ea240dbb182cba30155cb73fc1fc558f3b25f197ed6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
