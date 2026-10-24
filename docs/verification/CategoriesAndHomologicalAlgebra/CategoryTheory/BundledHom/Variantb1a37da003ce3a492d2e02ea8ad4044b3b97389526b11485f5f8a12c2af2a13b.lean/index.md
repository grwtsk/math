# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BundledHom.Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e11132d51ad19236ce7d0c9bab04474801e231f4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e11132d51ad19236ce7d0c9bab04474801e231f4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Bundled` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BundledHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/declarations/bundledhom--f20f5dcc8b2d346e2b4f2159.md) | 28 | `declaration-track:f20f5dcc8b2d346e2b4f215918cf4ebf85692939350ed7aaafc3b2023a1001ab` |
| 2 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/declarations/category--fd93da8625871593b3db5bc8.md) | 60 | `declaration-track:fd93da8625871593b3db5bc84135ef311262e98e5758d83a87d7ca3824214003` |
| 3 | `instance` | [hasForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/declarations/hasforget--5933efa0c6cd584745705a30.md) | 69 | `declaration-track:5933efa0c6cd584745705a3062973a6fcd0284d3b947b556e7df6f47a5b5e931` |
| 4 | `def` | [mkHasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/declarations/mkhasforget--8c70b41e083edc7ffa70f37b.md) | 88 | `declaration-track:8c70b41e083edc7ffa70f37beeb3001b76e0ca6e6ccb2baf8551b7226e99ed09` |
| 5 | `abbrev` | [MapHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/declarations/maphom--f5f6531909652f932105e452.md) | 106 | `declaration-track:f5f6531909652f932105e45295be7681b01191df5f1a4551951c076d6e47387d` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/declarations/map--f08488734fa7fea42baa01eb.md) | 114 | `declaration-track:f08488734fa7fea42baa01ebbcc9e651e7a83239666ba4cd5743bf6e80e875a5` |
| 7 | `class` | [ParentProjection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/declarations/parentprojection--41a98cdce1cc9893b260770a.md) | 129 | `declaration-track:41a98cdce1cc9893b260770a8af16e55acdad7ba8502ca2f06d35b0c48e682f0` |
| 8 | `instance` | [bundledHomOfParentProjection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/declarations/bundledhomofparentprojection--448e7aeaf5b8b2c0b319a22a.md) | 135 | `declaration-track:448e7aeaf5b8b2c0b319a22a9f88b54f602b9da5964a6a78f802033a197bf579` |
| 9 | `instance` | [forget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/declarations/forget--f1a658856dab5f7fc600b4c1.md) | 139 | `declaration-track:f1a658856dab5f7fc600b4c1e83d80952c19cda7b75b6f09a2f478813958efb5` |
| 10 | `instance` | [forget₂_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/declarations/forget-full--384f0f28255fc8cd4a741d93.md) | 145 | `declaration-track:384f0f28255fc8cd4a741d930e9cd1b180a707c473144c21207a0775f8339fa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
