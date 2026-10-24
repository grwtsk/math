# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triangle.Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2618748d4f27989b91ad5f1276fa55bb51248e3d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2618748d4f27989b91ad5f1276fa55bb51248e3d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Opposite.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean/declarations/functor--2d3993d869a5cc6993c86cc4.md) | 37 | `declaration-track:2d3993d869a5cc6993c86cc4c26466abec5b03e45ade9aec3d5aeed9a37893f0` |
| 2 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean/declarations/inverse--ccf1a31d7be0f9ae85669b4c.md) | 56 | `declaration-track:ccf1a31d7be0f9ae85669b4c8dd4e43f3c7ed51c37da4a112ae0d3f25cc47a75` |
| 3 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean/declarations/unitiso--bf9124a78579871e5c363b6e.md) | 74 | `declaration-track:bf9124a78579871e5c363b6e180b00c3d613ea59f56125c10a7b22fa4b0197c1` |
| 4 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean/declarations/counitiso--650d1d5f3608f07fe4bc5412.md) | 84 | `declaration-track:650d1d5f3608f07fe4bc5412c20923d7d44f3d0d3006ad4cb934eca705918ae1` |
| 5 | `def` | [triangleOpEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean/declarations/triangleopequivalence--657de31fec2b0df22698aea7.md) | 103 | `declaration-track:657de31fec2b0df22698aea7f84d2eab8ee2e5525a8a9f721e4a99bdd4b5841b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
