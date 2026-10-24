# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preserves.Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35605683ea7f8669a00afdff76e130eed4585360",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35605683ea7f8669a00afdff76e130eed4585360`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.EqualizerSheafCondition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isTerminal_of_isSheafFor_empty_presieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/declarations/isterminal-of-issheaffor-empty-presieve--f7789b7fc56e120885cca45b.md) | 51 | `declaration-track:f7789b7fc56e120885cca45b4180b5e773ab63dc505778f3a70cb2498150ad6a` |
| 2 | `lemma` | [preservesTerminal_of_isSheaf_for_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/declarations/preservesterminal-of-issheaf-for-empty--99142bec2ee15952f6615537.md) | 61 | `result-track:99142bec2ee15952f661553731894b1eca9f4c572910646738c7415591ec274d` |
| 3 | `theorem` | [piComparison_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/declarations/picomparison-fac--ca5618b63a9d561e5a2c4734.md) | 78 | `result-track:ca5618b63a9d561e5a2c4734d8d871fb1f0de6e07cf7277e309b9e92105fb3d9` |
| 4 | `theorem` | [isSheafFor_of_preservesProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/declarations/issheaffor-of-preservesproduct--de50c8f631ff56ecc54b0de5.md) | 98 | `result-track:de50c8f631ff56ecc54b0de5b9dda5237eb5f354a4780a14bba862f7ee54d585` |
| 5 | `theorem` | [firstMap_eq_secondMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/declarations/firstmap-eq-secondmap--9e748dcbaf21fdf10cf76479.md) | 119 | `result-track:9e748dcbaf21fdf10cf76479566176a366c2901f51f1602587d059fb337c0ebd` |
| 6 | `lemma` | [preservesProduct_of_isSheafFor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/declarations/preservesproduct-of-issheaffor--d2a9e254b17855acdc48003a.md) | 139 | `result-track:d2a9e254b17855acdc48003a8063e9c077f9127264750fd015198738d826a02a` |
| 7 | `theorem` | [isSheafFor_iff_preservesProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantdeb9845528df09542b03e5b18df7c47100b2c6b37082bb135d800288ca7f2206.lean/declarations/issheaffor-iff-preservesproduct--626ce7f36a6ea3169154c620.md) | 151 | `result-track:626ce7f36a6ea3169154c620a2a6b1c73bf78d8c48b630644b4ec78b3ff3da0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
