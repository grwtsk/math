# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssentiallySmall.Variantb2904f7f3374164dc3d8dd9668a101d72a647dc69510b131c561d7d6448baa5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cec0d84e209b0e84a4a3c523d023ac56c6891f83",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantb2904f7f3374164dc3d8dd9668a101d72a647dc69510b131c561d7d6448baa5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantb2904f7f3374164dc3d8dd9668a101d72a647dc69510b131c561d7d6448baa5b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantb2904f7f3374164dc3d8dd9668a101d72a647dc69510b131c561d7d6448baa5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cec0d84e209b0e84a4a3c523d023ac56c6891f83`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantb2904f7f3374164dc3d8dd9668a101d72a647dc69510b131c561d7d6448baa5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantb2904f7f3374164dc3d8dd9668a101d72a647dc69510b131c561d7d6448baa5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentiallySmall` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasLimitsOfShape_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantb2904f7f3374164dc3d8dd9668a101d72a647dc69510b131c561d7d6448baa5b.lean/declarations/haslimitsofshape-of-essentiallysmall--ea338dbca215f449b35dbe9c.md) | 37 | `result-track:ea338dbca215f449b35dbe9c58347bacf4feefecd60ae7c1b87a521456d2681f` |
| 2 | `theorem` | [hasColimitsOfShape_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantb2904f7f3374164dc3d8dd9668a101d72a647dc69510b131c561d7d6448baa5b.lean/declarations/hascolimitsofshape-of-essentiallysmall--cab5b5d8f4f2fe8dd9635f9c.md) | 41 | `result-track:cab5b5d8f4f2fe8dd9635f9c6a9435dec8440e9c310ff93e95a9de0d8ad677d5` |
| 3 | `theorem` | [hasProductsOfShape_of_small](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantb2904f7f3374164dc3d8dd9668a101d72a647dc69510b131c561d7d6448baa5b.lean/declarations/hasproductsofshape-of-small--83117bca4ac0544cca56da2b.md) | 45 | `result-track:83117bca4ac0544cca56da2b88d6bb918539769ab289513f59eab89d030822d9` |
| 4 | `theorem` | [hasCoproductsOfShape_of_small](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantb2904f7f3374164dc3d8dd9668a101d72a647dc69510b131c561d7d6448baa5b.lean/declarations/hascoproductsofshape-of-small--afe1ba591c276923bc5a5315.md) | 49 | `result-track:afe1ba591c276923bc5a5315619f76bd65a0f7e78adb085868e4bfadc983b5b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
