# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triangulated.Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffe8e0cda9da0e637a9d64231e42882f3d2f81dc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffe8e0cda9da0e637a9d64231e42882f3d2f81dc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Pretriangulated` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Octahedron](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/declarations/octahedron--f8b558c463c679c12f1016f6.md) | 37 | `declaration-track:f8b558c463c679c12f1016f651207ca96ac1242cce94826967d7666c9e74c0a1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/declarations/instance--8540beb834dca7917eba1b9f.md) | 54 | `declaration-track:8540beb834dca7917eba1b9f06a1ffffdeae1aaac13320d776671f464a40777d` |
| 3 | `def` | [triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/declarations/triangle--ff7636a610bd3a39c6bf31c9.md) | 74 | `declaration-track:ff7636a610bd3a39c6bf31c9841d3ccf03d18472d288515558eb6a2586006fc6` |
| 4 | `def` | [triangleMorphism₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/declarations/trianglemorphism--bfa0e839ddea41e8d5b0b0a2.md) | 79 | `declaration-track:bfa0e839ddea41e8d5b0b0a2817a62759190eb57606321f8d8fde146906b1951` |
| 5 | `def` | [triangleMorphism₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/declarations/trianglemorphism--2888bacb633d829510cf189c.md) | 93 | `declaration-track:2888bacb633d829510cf189c5282b5842b1bce6c9c3986d75aa2ae585ee009b9` |
| 6 | `def` | [ofIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/declarations/ofiso--d4598fe7cf17ed872864497f.md) | 109 | `declaration-track:d4598fe7cf17ed872864497f7755387e52e85b1b97422156ce0b479cc9e9b8cc` |
| 7 | `class` | [IsTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/declarations/istriangulated--721c551e43168f17a3d5e34e.md) | 167 | `declaration-track:721c551e43168f17a3d5e34e80894983e3ec883c8ddbbfd840df399a7fd39034` |
| 8 | `def` | [someOctahedron'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/declarations/someoctahedron--8f8f0ba5687fb3489a3920cc.md) | 188 | `declaration-track:8f8f0ba5687fb3489a3920cc53d6a75635ca038b8931a5d04a3fb19af4b8758b` |
| 9 | `def` | [someOctahedron](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/declarations/someoctahedron--9659813149e87d6033541dab.md) | 192 | `declaration-track:9659813149e87d6033541dabef061337bbb130ea516ab23210baf23d0485a1c6` |
| 10 | `lemma` | [IsTriangulated.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantd46cfb4cdc82cd3431992d8b316c5d0f51f7ea1cd3dc03a64f1fabd85479aba0.lean/declarations/istriangulated-mk--a3f2fc56b897ebbfafe4f2d7.md) | 207 | `result-track:a3f2fc56b897ebbfafe4f2d775583b07d01893764ff9bbbdcf63c67a87c27c70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
