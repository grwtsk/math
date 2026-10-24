# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ShortExact.Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "140d3b80fdc3b90e81363f353554a4c67fc22d8e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `140d3b80fdc3b90e81363f353554a4c67fc22d8e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.HomologicalFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.ShiftSequence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologySequenceLemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Refinements` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [homologySequenceδ_quotient_mapTriangle_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/declarations/homologysequence-quotient-maptriangle-obj--9e2e749c0104bdbdfed43c6d.md) | 41 | `result-track:9e2e749c0104bdbdfed43c6dd07d6ce7c4648a1c7e5a509fb3a32c3d4db46f19` |
| 2 | `def` | [descShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/declarations/descshortcomplex--d185b710fb0812eee4ad75a9.md) | 56 | `declaration-track:d185b710fb0812eee4ad75a956b36f281bb49b9a4aca3c3c4463ca8fb46b7313` |
| 3 | `lemma` | [inr_descShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/declarations/inr-descshortcomplex--96bec8c5d8767f70574fcd7f.md) | 59 | `result-track:96bec8c5d8767f70574fcd7f0874a0669ecd0e0ef4fa2dddcfc3d4fb64d8e752` |
| 4 | `lemma` | [inr_f_descShortComplex_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/declarations/inr-f-descshortcomplex-f--26b6859c7dcb336c6ef91165.md) | 63 | `result-track:26b6859c7dcb336c6ef91165d0fe437af5e85053dcef7a02894e6b0e945ad207` |
| 5 | `lemma` | [inl_v_descShortComplex_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/declarations/inl-v-descshortcomplex-f--5983ba46eef89ada6eb97895.md) | 67 | `result-track:5983ba46eef89ada6eb97895abe514bc4a584b1414bf892ccd76356301f9dfa4` |
| 6 | `lemma` | [homologySequenceδ_triangleh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/declarations/homologysequence-triangleh--78224033ca889fb7c8cf79fa.md) | 73 | `result-track:78224033ca889fb7c8cf79fae5ac7db00c1604c041539e19eb6bfa75a9292682` |
| 7 | `lemma` | [quasiIso_descShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/declarations/quasiiso-descshortcomplex--654ae2ce46aab53ca62feac2.md) | 124 | `result-track:654ae2ce46aab53ca62feac2b5c33337a6a5f9b4e45e8ecbf2be07c4767a67af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
