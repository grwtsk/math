# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftingProperties.Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a3df179f793ff51590cfddb022fd3316081b8e6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a3df179f793ff51590cfddb022fd3316081b8e6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.LiftingProperty` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasLiftingProperty_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07.lean/declarations/hasliftingproperty-of-iszero--1227502a2dd4ccc58e111aad.md) | 28 | `result-track:1227502a2dd4ccc58e111aadbb789bb65744fbf46bd19a26957133cc9fa8aed8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07.lean/declarations/instance--fc5796a228195a9083cb2177.md) | 35 | `declaration-track:fc5796a228195a9083cb21775d1ad186ea38a1560f6e75fabab63dc0500a1158` |
| 3 | `lemma` | [injective_iff_rlp_monomorphisms_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07.lean/declarations/injective-iff-rlp-monomorphisms-of-iszero--8d6ec3b7d3e0fd51e519c598.md) | 41 | `result-track:8d6ec3b7d3e0fd51e519c598d1e4c64408c2f12a9519f5d9356dd779d6b87766` |
| 4 | `lemma` | [injective_iff_rlp_monomorphisms_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Variantc7faaa23be091bf0f1830c018a0fb7230a5fdd9d8339e6a211e34b2c5f7c8d07.lean/declarations/injective-iff-rlp-monomorphisms-zero--f54546eac3ac221e4cca7450.md) | 55 | `result-track:f54546eac3ac221e4cca7450ef09eae291d906daf6e24a79ed487eb7d287f721` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
