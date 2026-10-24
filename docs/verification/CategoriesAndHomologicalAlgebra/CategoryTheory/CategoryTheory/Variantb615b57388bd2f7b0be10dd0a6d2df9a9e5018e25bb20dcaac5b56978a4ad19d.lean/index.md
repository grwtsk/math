# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoryTheory.Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c29e5a8192d973f17c54b99f5b032e93823c094e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c29e5a8192d973f17c54b99f5b032e93823c094e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lTensor_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d.lean/declarations/ltensor-shortcomplex-exact--4c6da188fdab68c9cc917cd2.md) | 39 | `result-track:4c6da188fdab68c9cc917cd227202bbf420796ad353b6e4e3e75e5940322f135` |
| 2 | `lemma` | [rTensor_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d.lean/declarations/rtensor-shortcomplex-exact--8b4e4ad4d32de7ac07e24a9c.md) | 44 | `result-track:8b4e4ad4d32de7ac07e24a9c1da95e7e7f56dc4d9df50f7dd25c1892ec41eb9e` |
| 3 | `lemma` | [iff_lTensor_preserves_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d.lean/declarations/iff-ltensor-preserves-shortcomplex-exact--6dae480f31e0ac75b40afa2a.md) | 49 | `result-track:6dae480f31e0ac75b40afa2a3c2acb8d0a44cc03eb2d7c731382cd6899efbf4b` |
| 4 | `lemma` | [iff_rTensor_preserves_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d.lean/declarations/iff-rtensor-preserves-shortcomplex-exact--e2a65827e905fbf19c660dfb.md) | 59 | `result-track:e2a65827e905fbf19c660dfbbc31082271e2ca1c2a47f666190a8e839451b889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
