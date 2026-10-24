# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AttachCells.Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98c597bfc5b61a5b3290fa411d391fcb6e345738",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98c597bfc5b61a5b3290fa411d391fcb6e345738`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AttachCells](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/declarations/attachcells--b628193a2cb65500a7704018.md) | 50 | `declaration-track:b628193a2cb65500a77040180f13d9242bb33c2fc71d707a70eae5351a9c4068` |
| 2 | `lemma` | [pushouts_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/declarations/pushouts-coproducts--a2bff03f17e1ad35afac55ae.md) | 82 | `result-track:a2bff03f17e1ad35afac55ae0c22c0ad9c9b5b64364054c7935a157914f609a1` |
| 3 | `def` | [cell](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/declarations/cell--02be8eeefb5bb7d59de6e73d.md) | 91 | `declaration-track:02be8eeefb5bb7d59de6e73d6e917e62045718ed9b9f867bda166dbbfb68583a` |
| 4 | `lemma` | [cell_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/declarations/cell-def--9a708625e669bf60443c819d.md) | 94 | `result-track:9a708625e669bf60443c819d1f399f19d22a8000ef9bcf39b20b7ea480c07d7a` |
| 5 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/declarations/hom-ext--66cd81bcae277e670d724e03.md) | 96 | `result-track:66cd81bcae277e670d724e03a89074ea1af10f1310c7ee2ee3b879a2455dbf0c` |
| 6 | `def` | [ofArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/declarations/ofarrowiso--abf37d29ae09baea1f5c79ea.md) | 107 | `declaration-track:abf37d29ae09baea1f5c79ea9f58bc64bdcec7a84221ec2fcf04bdb9a36cf958` |
| 7 | `def` | [reindex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/declarations/reindex--96c89e5897b9a560f1c4677f.md) | 125 | `declaration-track:96c89e5897b9a560f1c4677f216983f86e724bec9ed4162cd7650af171fc11fb` |
| 8 | `def` | [reindexCellTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/declarations/reindexcelltypes--475000674f4d57fa27fbdaf9.md) | 147 | `declaration-track:475000674f4d57fa27fbdaf9160dc74dacaefaf85ba8047cdaadcbee0ea9d646` |
| 9 | `lemma` | [nonempty_attachCells_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/declarations/nonempty-attachcells-iff--a62cd22f4958e31ac6fc38d7.md) | 178 | `result-track:a62cd22f4958e31ac6fc38d757ccbf2d937c0a4b390c92c00d0f43c62fffe9f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
