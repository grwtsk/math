# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfHasFiniteProducts.Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43d6e918ce39a3383491b2775ab4c7f1c8a8a182",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43d6e918ce39a3383491b2775ab4c7f1c8a8a182`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidalOfHasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/monoidalofhasfiniteproducts--228efbc57fd9ce0f85ec169c.md) | 56 | `declaration-track:228efbc57fd9ce0f85ec169cf4cd4cf7ae4eec644dac804f92c9730aa1e710e2` |
| 2 | `theorem` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/tensorobj--bc36f14253043d4482894085.md) | 80 | `result-track:bc36f14253043d4482894085cbf800059fc722fe48a5d8f9da69bca7fa9c8174` |
| 3 | `theorem` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/tensorhom--0bf48ac4c06b9d77cf3ed1e2.md) | 85 | `result-track:0bf48ac4c06b9d77cf3ed1e234f7824ec1a5f99661da26975bc06f31cc7e0ced` |
| 4 | `theorem` | [leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/leftunitor-hom--77e0aad1b19fd8a0c7520f94.md) | 90 | `result-track:77e0aad1b19fd8a0c7520f949371ab98585580d60f0d26f484712cc2551f4461` |
| 5 | `theorem` | [leftUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/leftunitor-inv--b24c76b906e0adf064c040e2.md) | 95 | `result-track:b24c76b906e0adf064c040e2e47e6b1be1bc73f82c8c949ef239b8149c404f17` |
| 6 | `theorem` | [rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/rightunitor-hom--aa90e1a2e5d181b8e5a9533d.md) | 100 | `result-track:aa90e1a2e5d181b8e5a9533de9e6927ba7808c55c813019187349bf91a092381` |
| 7 | `theorem` | [rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/rightunitor-inv--0270f45d8e0248e4b62af5bc.md) | 105 | `result-track:0270f45d8e0248e4b62af5bcf25cf7c22b3558b0504b2e3904c53d27550ef86f` |
| 8 | `theorem` | [associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/associator-hom--98451a95a50939719ff7cca2.md) | 112 | `result-track:98451a95a50939719ff7cca2dd14c6ce2a5d033081b7ae366ed030268820f083` |
| 9 | `theorem` | [associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/associator-inv--5aea0dabe69e6bc49f5d0d19.md) | 119 | `result-track:5aea0dabe69e6bc49f5d0d19496111ed960b02f41f6d3175830b6e2ed0f204d4` |
| 10 | `def` | [symmetricOfHasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/symmetricofhasfiniteproducts--31401f927744ee9fd4452aec.md) | 135 | `declaration-track:31401f927744ee9fd4452aec00eb1f237f61859e3de0dcb630bf50bc668618f7` |
| 11 | `def` | [monoidalOfHasFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/monoidalofhasfinitecoproducts--e36b7687eac4c247904bc890.md) | 148 | `declaration-track:e36b7687eac4c247904bc89071d29ba20c28f0a9d37e39ea8f91154edb7b08e3` |
| 12 | `theorem` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/tensorobj--d339d8bc86ceb00bd9969e6d.md) | 172 | `result-track:d339d8bc86ceb00bd9969e6dc3f9452d028a47e198e2b2ec189acfc6556bf340` |
| 13 | `theorem` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/tensorhom--f7ff62ca6bb049442503ef98.md) | 177 | `result-track:f7ff62ca6bb049442503ef984e382600a7cd30b761ef30f4de21ab07753c60e3` |
| 14 | `theorem` | [leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/leftunitor-hom--01e25e56501fe70df744f29a.md) | 182 | `result-track:01e25e56501fe70df744f29a99c2d3e95960f150a7d54a204bd6e3933e4142b4` |
| 15 | `theorem` | [rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/rightunitor-hom--beb18baadc14d724960b1b09.md) | 187 | `result-track:beb18baadc14d724960b1b09fad3b138f52be7367979d723cbf64001b605fcf5` |
| 16 | `theorem` | [leftUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/leftunitor-inv--14ef715eae77c05e544bcd92.md) | 192 | `result-track:14ef715eae77c05e544bcd9276eacecb94cd8d8da17db634bf405ba6c3adc783` |
| 17 | `theorem` | [rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/rightunitor-inv--59f6a15376bfb85fb72e248e.md) | 197 | `result-track:59f6a15376bfb85fb72e248e760289ff9968cf0cf0e8b31e8a6b907abab52695` |
| 18 | `theorem` | [associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/associator-hom--ac3a491c114c75be23e2ff42.md) | 204 | `result-track:ac3a491c114c75be23e2ff426465745fcaf0ac9e3d1b1ee3c237e211c9829851` |
| 19 | `theorem` | [associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/associator-inv--bf8fd2f1ebc411357bdb3174.md) | 210 | `result-track:bf8fd2f1ebc411357bdb317421b33f84047fd2cbb97aa4bc7ed69e0c04d6d691` |
| 20 | `def` | [symmetricOfHasFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantdfdce92d334d243b64529f6ead93346c480c3de22208237b65fa2c005fe63d77.lean/declarations/symmetricofhasfinitecoproducts--9296e865f712f29a33052044.md) | 226 | `declaration-track:9296e865f712f29a3305204459c0331a4541ca13dfff3c6cee217b6bbc0ed9b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
