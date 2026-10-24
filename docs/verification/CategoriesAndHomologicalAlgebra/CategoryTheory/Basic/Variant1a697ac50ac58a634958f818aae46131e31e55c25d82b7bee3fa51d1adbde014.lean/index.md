# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3213c4c1040cef0940bf9fb0b314b0c8ad5cd9bf",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3213c4c1040cef0940bf9fb0b314b0c8ad5cd9bf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MoritaEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/moritaequivalence--886fa14c34a98205fbc02ffa.md) | 63 | `declaration-track:886fa14c34a98205fbc02ffabb750c544d53ef1757eb9fc4ea82079f6daa1159` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/instance--d269052bec3c7963e128f658.md) | 74 | `declaration-track:d269052bec3c7963e128f6581e2d4b38e774517f13861a27ea9567b2d75f1631` |
| 3 | `def` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/refl--e2d2ddbdfa3cd181b9216312.md) | 81 | `declaration-track:e2d2ddbdfa3cd181b9216312ff86c5f0aa645fe8a84bb7a31e5c3958f1a115a8` |
| 4 | `def` | [symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/symm--f40cdc759a7fdde82c9b7b70.md) | 89 | `declaration-track:f40cdc759a7fdde82c9b7b700cac853c77c907b045988cb87b383c6643bbf9e7` |
| 5 | `def` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/trans--48d61663266ae8e24d231e41.md) | 105 | `declaration-track:48d61663266ae8e24d231e410d6529539024441f0f9a869bc9b39e31c49fdebb` |
| 6 | `def` | [ofAlgEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/ofalgequiv--86c0880e3c675fd435d38bb2.md) | 116 | `declaration-track:86c0880e3c675fd435d38bb2ea47cc3319bf32db386eb3b57009c304ab0c332a` |
| 7 | `structure` | [IsMoritaEquivalent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/ismoritaequivalent--125e26a0223bf87dabfb6421.md) | 128 | `declaration-track:125e26a0223bf87dabfb6421dab7c593086516ee45f12664053cbbff27fd5436` |
| 8 | `lemma` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/refl--8e5501422a05a79b56f2b6d3.md) | 135 | `result-track:8e5501422a05a79b56f2b6d3865825725e733bd985ff8fdc9882e784888abc8b` |
| 9 | `lemma` | [symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/symm--c3d04205487611d29973434f.md) | 138 | `result-track:c3d04205487611d29973434f1656050f7e5bd18e66e981d2e0ac9fb8d5150b81` |
| 10 | `lemma` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/trans--d57971f4d831e0fa18c7f6f6.md) | 142 | `result-track:d57971f4d831e0fa18c7f6f6d3b448b29fabe2cb0cfe1a05ec597dd21c5d0554` |
| 11 | `lemma` | [of_algEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/declarations/of-algequiv--2a38dcc8b368504f06353f2d.md) | 147 | `result-track:2a38dcc8b368504f06353f2d4e656baa578fb7676b278824760716414f00266b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
