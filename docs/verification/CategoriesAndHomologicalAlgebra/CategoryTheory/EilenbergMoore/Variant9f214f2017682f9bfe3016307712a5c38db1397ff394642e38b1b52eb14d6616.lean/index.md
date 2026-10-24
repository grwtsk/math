# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EilenbergMoore.Variant9f214f2017682f9bfe3016307712a5c38db1397ff394642e38b1b52eb14d6616

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7b5a94fd832410376df4aac79198cd909e3bc80",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant9f214f2017682f9bfe3016307712a5c38db1397ff394642e38b1b52eb14d6616.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant9f214f2017682f9bfe3016307712a5c38db1397ff394642e38b1b52eb14d6616.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant9f214f2017682f9bfe3016307712a5c38db1397ff394642e38b1b52eb14d6616.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7b5a94fd832410376df4aac79198cd909e3bc80`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant9f214f2017682f9bfe3016307712a5c38db1397ff394642e38b1b52eb14d6616.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant9f214f2017682f9bfe3016307712a5c38db1397ff394642e38b1b52eb14d6616.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Monad.algebraPreadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant9f214f2017682f9bfe3016307712a5c38db1397ff394642e38b1b52eb14d6616.lean/declarations/monad-algebrapreadditive--40757b1f7a719a9378f125c1.md) | 38 | `declaration-track:40757b1f7a719a9378f125c1d13fa12503d7d527b085a98f4ade0fd3625300e2` |
| 2 | `instance` | [Monad.forget_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant9f214f2017682f9bfe3016307712a5c38db1397ff394642e38b1b52eb14d6616.lean/declarations/monad-forget-additive--64b93feffbe22a3511126d14.md) | 112 | `declaration-track:64b93feffbe22a3511126d147ec21c148381dfd635e7d4200652bb11429d730b` |
| 3 | `instance` | [Comonad.coalgebraPreadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant9f214f2017682f9bfe3016307712a5c38db1397ff394642e38b1b52eb14d6616.lean/declarations/comonad-coalgebrapreadditive--f59dfd1be28ebfa9d684d6f1.md) | 118 | `declaration-track:f59dfd1be28ebfa9d684d6f1cb657c222bf9b367afcbd9c2dcb7e5a780fc74ee` |
| 4 | `instance` | [Comonad.forget_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant9f214f2017682f9bfe3016307712a5c38db1397ff394642e38b1b52eb14d6616.lean/declarations/comonad-forget-additive--0a45b36d91f526551bf8d3dd.md) | 192 | `declaration-track:0a45b36d91f526551bf8d3dde0436efdecbfa4f68a11d91147d15a88c5932f58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
