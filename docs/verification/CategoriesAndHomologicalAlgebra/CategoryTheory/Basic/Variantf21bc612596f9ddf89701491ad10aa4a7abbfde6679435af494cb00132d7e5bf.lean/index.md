# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantf21bc612596f9ddf89701491ad10aa4a7abbfde6679435af494cb00132d7e5bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f909aed7a2bb75ebffbc95dd92402b3b10e024ba",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf21bc612596f9ddf89701491ad10aa4a7abbfde6679435af494cb00132d7e5bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf21bc612596f9ddf89701491ad10aa4a7abbfde6679435af494cb00132d7e5bf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf21bc612596f9ddf89701491ad10aa4a7abbfde6679435af494cb00132d7e5bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f909aed7a2bb75ebffbc95dd92402b3b10e024ba`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf21bc612596f9ddf89701491ad10aa4a7abbfde6679435af494cb00132d7e5bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf21bc612596f9ddf89701491ad10aa4a7abbfde6679435af494cb00132d7e5bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Projective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ExactFunctor` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [preservesHomology_preadditiveCoyonedaObj_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf21bc612596f9ddf89701491ad10aa4a7abbfde6679435af494cb00132d7e5bf.lean/declarations/preserveshomology-preadditivecoyonedaobj-of-projective--8869b5c5e2993a87181a8cf0.md) | 37 | `declaration-track:8869b5c5e2993a87181a8cf08f1e253be6926a52ef34e82985b4bda9ff9754b5` |
| 2 | `instance` | [preservesFiniteColimits_preadditiveCoyonedaObj_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf21bc612596f9ddf89701491ad10aa4a7abbfde6679435af494cb00132d7e5bf.lean/declarations/preservesfinitecolimits-preadditivecoyonedaobj-of-projective--c49978aef4a390c080d55439.md) | 44 | `declaration-track:c49978aef4a390c080d55439e59bb739912aac851644896b0eca72b2f8fc135c` |
| 3 | `theorem` | [projective_of_preservesFiniteColimits_preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf21bc612596f9ddf89701491ad10aa4a7abbfde6679435af494cb00132d7e5bf.lean/declarations/projective-of-preservesfinitecolimits-preadditivecoyonedaobj--08b5c066d1e9e458348dd355.md) | 50 | `result-track:08b5c066d1e9e458348dd35575949e0b39295e262d284fb7267f861e4cde6e10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
