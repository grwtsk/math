# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triangulated.Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9416211610574d325340696a1c2b6864a3a5a126",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9416211610574d325340696a1c2b6864a3a5a126`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.Pretriangulated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Triangulated` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ComposableArrows` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mappingConeCompTriangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/mappingconecomptriangle--5e4b0fd728c3617eb99948c1.md) | 40 | `declaration-track:5e4b0fd728c3617eb99948c13f3183f0d68a65a64404e8d91a8d89ea08c50c9a` |
| 2 | `def` | [mappingConeCompTriangleh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/mappingconecomptriangleh--3263a391af130e2328f8f9b1.md) | 50 | `declaration-track:3263a391af130e2328f8f9b1ebd62158fe54ce74e85a25da6fd227d0c08a6aad` |
| 3 | `lemma` | [mappingConeCompTriangle_mor₃_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/mappingconecomptriangle-mor-naturality--a457da5e9b0664bba16a9ba6.md) | 55 | `result-track:a457da5e9b0664bba16a9ba674e0b6c3bdcc5658b8883d3f3f99c67cb4f2f9c9` |
| 4 | `def` | [hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/hom--13658af29c7f32ffac6d6e63.md) | 75 | `declaration-track:13658af29c7f32ffac6d6e630f74872c5b0e1f9e002a4cb14057a7783d75dbe7` |
| 5 | `def` | [inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/inv--b7a72632a2a4e0ce8190a499.md) | 86 | `declaration-track:b7a72632a2a4e0ce8190a499b573248a208793f519f9c6bb9175b5d5cbc387b9` |
| 6 | `lemma` | [hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/hom-inv-id--42b6ddd7b8cbc15228e33dcc.md) | 94 | `result-track:42b6ddd7b8cbc15228e33dccabe4409d0e33f56943af228da30fd468bc5cce91` |
| 7 | `def` | [homotopyInvHomId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/homotopyinvhomid--27b9d5dd48b1a061c249b29b.md) | 105 | `declaration-track:27b9d5dd48b1a061c249b29b2a065109f962eac134fccc8a75f89a5a73ad68e3` |
| 8 | `def` | [mappingConeCompHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/mappingconecomphomotopyequiv--ccc8bfd83016d391f9ee799a.md) | 134 | `declaration-track:ccc8bfd83016d391f9ee799a1c5b6a3b5936737bac36ad816d145414aeccdb25` |
| 9 | `lemma` | [mappingConeCompHomotopyEquiv_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/mappingconecomphomotopyequiv-hom-inv-id--b3b22cb3b052805ef332130f.md) | 142 | `result-track:b3b22cb3b052805ef332130f58f165c1c35881c27283f0560270780f09c29d39` |
| 10 | `lemma` | [mappingConeCompHomotopyEquiv_comm₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/mappingconecomphomotopyequiv-comm--1f619a305e6425619a7f3df2.md) | 148 | `result-track:1f619a305e6425619a7f3df25cfe2d27608db96c980d73eff1bda7a5d7a134dc` |
| 11 | `lemma` | [mappingConeCompHomotopyEquiv_comm₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/mappingconecomphomotopyequiv-comm--b4bf3bccc802c972dd8d7a7f.md) | 154 | `result-track:b4bf3bccc802c972dd8d7a7fa36f82f509510528d75ea07046f58338170c57e5` |
| 12 | `lemma` | [mappingConeCompTriangleh_comm₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/mappingconecomptriangleh-comm--dc6640c8538b8714f35eb844.md) | 163 | `result-track:dc6640c8538b8714f35eb84438b1a4a5c14dc5aea787ff70aa2062866413f9e6` |
| 13 | `lemma` | [mappingConeCompTriangleh_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/mappingconecomptriangleh-distinguished--5d3f2b767a8d03409848f181.md) | 183 | `result-track:5d3f2b767a8d03409848f18186234d5899849f94f406850c68ff3fbd28906bb5` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/declarations/instance--d52272f997eec9f70755276c.md) | 194 | `declaration-track:d52272f997eec9f70755276c8b43ff17c2de9ec0aaf00a96e0b8fe5ebb084f37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
