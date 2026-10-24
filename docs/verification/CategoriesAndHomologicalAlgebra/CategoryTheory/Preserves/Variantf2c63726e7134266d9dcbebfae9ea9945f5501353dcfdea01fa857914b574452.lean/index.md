# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preserves.Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8683b7ceb10c600abe8882c4d62d35055ddaf63",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8683b7ceb10c600abe8882c4d62d35055ddaf63`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.PreservesInjectiveObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/declarations/functor-preservesinjectiveobjects--496ae3ab894b926e70a9ed63.md) | 26 | `declaration-track:496ae3ab894b926e70a9ed6353cb31d562eb57231605dad573b427bf978462c9` |
| 2 | `instance` | [Functor.injective_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/declarations/functor-injective-obj--b9e117f73a3689fdc68b4520.md) | 31 | `declaration-track:b9e117f73a3689fdc68b4520101a30c7642083b143e323ff2fff3799f1726e2d` |
| 3 | `theorem` | [Functor.injective_obj_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/declarations/functor-injective-obj-of-injective--5d10be20f64eb490e2c7e54e.md) | 36 | `result-track:5d10be20f64eb490e2c7e54ee790efd8568aa9238a3d92fb2ffd5b63607b35fb` |
| 4 | `instance` | [Functor.preservesInjectiveObjects_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/declarations/functor-preservesinjectiveobjects-comp--6b48acd8197ece6feb93932a.md) | 40 | `declaration-track:6b48acd8197ece6feb93932a0e4d2bdde46dc451e62649fa44dc7aeef68eeb45` |
| 5 | `theorem` | [Functor.preservesInjectiveObjects_of_adjunction_of_preservesMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/declarations/functor-preservesinjectiveobjects-of-adjunction-of-preservesmonomorphism--26cb93878c55a9e737b4ec87.md) | 45 | `result-track:26cb93878c55a9e737b4ec8719deb1a5fd178d033db0bead044707bd682dc41a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/declarations/instance--f531ba6091c848aadcb25ac2.md) | 50 | `declaration-track:f531ba6091c848aadcb25ac2a639d6686ceb9468d7a1a1ad773017248d5a778e` |
| 7 | `theorem` | [Functor.preservesMonomorphisms_of_adjunction_of_preservesInjectiveObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/declarations/functor-preservesmonomorphisms-of-adjunction-of-preservesinjectiveobject--25082d088a218aeb57b028ef.md) | 55 | `result-track:25082d088a218aeb57b028efae532adb368b6440127517b8499c0ee0b7b0b3c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
