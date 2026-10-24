# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab970a9f07bfd4067ba04735d3299fb5b1f84ab1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab970a9f07bfd4067ba04735d3299fb5b1f84ab1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Cartesian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Presheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Types.tensorProductAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean/declarations/types-tensorproductadjunction--bdaad84f41bb6019593bc41e.md) | 42 | `declaration-track:bdaad84f41bb6019593bc41ed141912aa12083d13e1e13cb614f562563eb3170` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean/declarations/instance--d222443cfe1b38eeca3674a4.md) | 47 | `declaration-track:d222443cfe1b38eeca3674a4854548dd2e0a4926681d275a9ac6b9317dea7a44` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean/declarations/instance--e1e18db995d0ae6b67083cb5.md) | 50 | `declaration-track:e1e18db995d0ae6b67083cb518adbc6859624372d47b86e2350a92a1aac6293f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean/declarations/instance--0d82f4a68d58d75092bb817f.md) | 53 | `declaration-track:0d82f4a68d58d75092bb817ffe60d90456c19c00e1151095d5f76c449c6974ec` |
| 5 | `def` | [cartesianClosedFunctorToTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean/declarations/cartesianclosedfunctortotypes--2aaf118a5699653481d1cb37.md) | 65 | `declaration-track:2aaf118a5699653481d1cb37f7511f90931083dff96ac86c61ce356e4debb4a2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean/declarations/instance--52497a548d2ec83524994e32.md) | 75 | `declaration-track:52497a548d2ec83524994e32f8cd6dab7196300b5c9baba99f392dccc1b15349` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998.lean/declarations/instance--bb29e8458c355c9f6d614042.md) | 80 | `declaration-track:bb29e8458c355c9f6d614042cec66da2d6b44427c690e6c22bee62552e20c7fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
