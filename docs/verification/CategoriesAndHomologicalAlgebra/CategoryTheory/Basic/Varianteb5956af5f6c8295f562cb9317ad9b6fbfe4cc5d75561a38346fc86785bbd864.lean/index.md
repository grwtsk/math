# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffd6e9255df18793ef9edba9a4b103405265ff50",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffd6e9255df18793ef9edba9a4b103405265ff50`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.RelativeCellComplex.AttachCells` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.TransfiniteComposition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RelativeCellComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean/declarations/relativecellcomplex--d211ca6d18c29e5fc2c9cc25.md) | 52 | `declaration-track:d211ca6d18c29e5fc2c9cc2580c2ceac798a5892bd89b10f5580a7f704fa1b30` |
| 2 | `structure` | [Cells](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean/declarations/cells--7bf724e5259dad9cb61fbf50.md) | 64 | `declaration-track:7bf724e5259dad9cb61fbf500fa63540c1d78b0516b9740ec6234f5c34bd4335` |
| 3 | `def` | [Cells.i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean/declarations/cells-i--8286dbfc7f236ef0e8e4fee0.md) | 74 | `declaration-track:8286dbfc7f236ef0e8e4fee0a6e19cd6d0748e4d3c2aeaf3246a64f1c4463954` |
| 4 | `def` | [Cells.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean/declarations/cells--d2c4f30b68d8239ed41c53dc.md) | 78 | `declaration-track:d2c4f30b68d8239ed41c53dc47c13f2151c42ae9445db0c084faaf6a3c69cc10` |
| 5 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean/declarations/hom-ext--4e9c503be6ea825fd27456e1.md) | 81 | `result-track:4e9c503be6ea825fd27456e178a8a6251f528213188e186ea90d89d154db484f` |
| 6 | `def` | [transfiniteCompositionOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteb5956af5f6c8295f562cb9317ad9b6fbfe4cc5d75561a38346fc86785bbd864.lean/declarations/transfinitecompositionofshape--4e4b86bf890d5e09e809a50d.md) | 104 | `declaration-track:4e4b86bf890d5e09e809a50d8af3c8ce4ef1e07d5a774ae42c8922938e7e0a72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
