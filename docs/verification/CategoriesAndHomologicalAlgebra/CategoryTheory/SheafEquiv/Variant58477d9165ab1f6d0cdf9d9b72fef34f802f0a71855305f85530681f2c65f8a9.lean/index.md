# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafEquiv.Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf245bb9301a1b44e773a497cf086218d9ab0e68",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf245bb9301a1b44e773a497cf086218d9ab0e68`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.DenseSubsite.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isIso_ranCounit_app_of_isDenseSubsite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean/declarations/isiso-rancounit-app-of-isdensesubsite--519dccee33f4ebb380cbeaa1.md) | 37 | `result-track:519dccee33f4ebb380cbeaa16deeff05ab1fc9c87b5d69c95f1501ede0d935c6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean/declarations/instance--1f806f632c4f0c5a1687c7fe.md) | 100 | `declaration-track:1f806f632c4f0c5a1687c7feb7a549f36d96dbb50ec2fc3f812919686da88a41` |
| 3 | `def` | [sheafEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean/declarations/sheafequiv--a64455a3977c8bfbf04a1601.md) | 119 | `declaration-track:a64455a3977c8bfbf04a160163f51cee36e5c0af6407171d9100ef86b95d36cb` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean/declarations/instance--0e3298dc5a73efd2e60dc936.md) | 122 | `declaration-track:0e3298dc5a73efd2e60dc9366bc82d424fb7a0caf09c8bb16f5286508c02cb14` |
| 5 | `abbrev` | [sheafEquivSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean/declarations/sheafequivsheafificationcompatibility--f14115717548ecb087683415.md) | 130 | `declaration-track:f14115717548ecb0876834157080e2d87d7d33a1b85acfca02a4aeead2843876` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
