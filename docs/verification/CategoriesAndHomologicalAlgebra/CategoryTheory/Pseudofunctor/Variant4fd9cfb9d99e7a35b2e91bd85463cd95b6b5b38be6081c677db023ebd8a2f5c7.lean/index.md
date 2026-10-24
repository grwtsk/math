# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudofunctor.Variant4fd9cfb9d99e7a35b2e91bd85463cd95b6b5b38be6081c677db023ebd8a2f5c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac40e8f67ddff18b16701f9a83e4c7f2b9ed23fe",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant4fd9cfb9d99e7a35b2e91bd85463cd95b6b5b38be6081c677db023ebd8a2f5c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant4fd9cfb9d99e7a35b2e91bd85463cd95b6b5b38be6081c677db023ebd8a2f5c7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant4fd9cfb9d99e7a35b2e91bd85463cd95b6b5b38be6081c677db023ebd8a2f5c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac40e8f67ddff18b16701f9a83e4c7f2b9ed23fe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant4fd9cfb9d99e7a35b2e91bd85463cd95b6b5b38be6081c677db023ebd8a2f5c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant4fd9cfb9d99e7a35b2e91bd85463cd95b6b5b38be6081c677db023ebd8a2f5c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Functor.LocallyDiscrete` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CommRingCat.moduleCatRestrictScalarsPseudofunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant4fd9cfb9d99e7a35b2e91bd85463cd95b6b5b38be6081c677db023ebd8a2f5c7.lean/declarations/commringcat-modulecatrestrictscalarspseudofunctor--9aed6e2dcb1732c25840a443.md) | 42 | `declaration-track:9aed6e2dcb1732c25840a4431d51c749f10311f70fc50911d876c6b52ddf9583` |
| 2 | `def` | [RingCat.moduleCatRestrictScalarsPseudofunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant4fd9cfb9d99e7a35b2e91bd85463cd95b6b5b38be6081c677db023ebd8a2f5c7.lean/declarations/ringcat-modulecatrestrictscalarspseudofunctor--e271544213563d68ce1dfc23.md) | 53 | `declaration-track:e271544213563d68ce1dfc237b9dccc7b1bcb8ecc331e0bbf45003eba3015cca` |
| 3 | `def` | [CommRingCat.moduleCatExtendScalarsPseudofunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant4fd9cfb9d99e7a35b2e91bd85463cd95b6b5b38be6081c677db023ebd8a2f5c7.lean/declarations/commringcat-modulecatextendscalarspseudofunctor--5a3a7def24c78a3f20628a96.md) | 65 | `declaration-track:5a3a7def24c78a3f20628a96011141a21538f8b5fe9b7c50a30a2c4a89233691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
