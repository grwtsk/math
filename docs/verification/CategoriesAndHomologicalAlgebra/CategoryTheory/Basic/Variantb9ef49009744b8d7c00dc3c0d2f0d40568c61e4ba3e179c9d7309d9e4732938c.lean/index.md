# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5df5121b4d04fd98b16976f0a4b741c134bd8d67",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5df5121b4d04fd98b16976f0a4b741c134bd8d67`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Injective` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ExactFunctor` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [preservesHomology_preadditiveYonedaObj_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c.lean/declarations/preserveshomology-preadditiveyonedaobj-of-injective--38a734543ecdcbc352d3bd85.md) | 31 | `declaration-track:38a734543ecdcbc352d3bd852275850c8b4eb3fd70385607403242be6ca3259b` |
| 2 | `instance` | [preservesFiniteColimits_preadditiveYonedaObj_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c.lean/declarations/preservesfinitecolimits-preadditiveyonedaobj-of-injective--f12a407a3a4d86bdd3ada4a5.md) | 37 | `declaration-track:f12a407a3a4d86bdd3ada4a537ebdb59c7804eaece24605855faa91c87022bd2` |
| 3 | `theorem` | [injective_of_preservesFiniteColimits_preadditiveYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c.lean/declarations/injective-of-preservesfinitecolimits-preadditiveyonedaobj--496fb1823cd1b361ed57ecfb.md) | 42 | `result-track:496fb1823cd1b361ed57ecfb9189c0bfdeeaf523d00d1a1791ee85ac78a40e85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
