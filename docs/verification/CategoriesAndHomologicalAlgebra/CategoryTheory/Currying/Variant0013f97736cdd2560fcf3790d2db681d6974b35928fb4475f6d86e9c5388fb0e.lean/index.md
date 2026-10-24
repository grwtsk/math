# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Currying.Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d531fd061e633d3da1d3e2d1d6b4c9858e180f75",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d531fd061e633d3da1d3e2d1d6b4c9858e180f75`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Products.Bifunctor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean/declarations/uncurry--267476468ce17b36e4f55bbd.md) | 30 | `declaration-track:267476468ce17b36e4f55bbdfae24400efd4c13ff99bea3e4a327aff0dabdf28` |
| 2 | `def` | [curryObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean/declarations/curryobj--6457ff3aba2ef5615e83188f.md) | 52 | `declaration-track:6457ff3aba2ef5615e83188fcd838b96157227df2465dac3d24d59fbab5d6d94` |
| 3 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean/declarations/curry--0176d46b16049741edd30eac.md) | 69 | `declaration-track:0176d46b16049741edd30eac2e5320cb7013e6d0995f6b307e56e7abe8e65f3d` |
| 4 | `def` | [currying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean/declarations/currying--ad82315a0c2792cb77da1527.md) | 86 | `declaration-track:ad82315a0c2792cb77da15271cefcf6c25762e66b0e26bc5feb17261c67847a4` |
| 5 | `def` | [flipIsoCurrySwapUncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean/declarations/flipisocurryswapuncurry--e017b97f6e3680c9399a4578.md) | 96 | `declaration-track:e017b97f6e3680c9399a457856970a868f82448b405d5594e0d8f8aa6af3c463` |
| 6 | `def` | [uncurryObjFlip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean/declarations/uncurryobjflip--82c9a22011273c6890026ee3.md) | 103 | `declaration-track:82c9a22011273c6890026ee3750d24e19a5ae816cf59ed4d03cf99757a97eca5` |
| 7 | `def` | [whiskeringRight₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant0013f97736cdd2560fcf3790d2db681d6974b35928fb4475f6d86e9c5388fb0e.lean/declarations/whiskeringright--229f7d2cd2d2a62afbe27484.md) | 113 | `declaration-track:229f7d2cd2d2a62afbe274841a834e77e820c122c289e449ff05dcaba44a61f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
