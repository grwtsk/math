# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinitePresentation.Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bb204693fcef80d36d0b2fd3eba307da4859dcb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bb204693fcef80d36d0b2fd3eba307da4859dcb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.FilteredColimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Over` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteMultiequalizer` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Presentable.Finite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.EssentialFiniteness` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FinitePresentation` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [RingHom.EssFiniteType.exists_comp_map_eq_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean/declarations/ringhom-essfinitetype-exists-comp-map-eq-of-iscolimit--3f45bc822cb0fcef25cba9e2.md) | 47 | `result-track:3f45bc822cb0fcef25cba9e26599289b5ac233064ffbf2b21dbf49327a5fabd7` |
| 2 | `lemma` | [RingHom.EssFiniteType.exists_eq_comp_ι_app_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean/declarations/ringhom-essfinitetype-exists-eq-comp-app-of-iscolimit--c2521aaebdfdc0789444f405.md) | 81 | `result-track:c2521aaebdfdc0789444f40558d9491b7d85731babee2aca4b26249a7f5cf721` |
| 3 | `lemma` | [preservesColimit_coyoneda_of_finitePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean/declarations/preservescolimit-coyoneda-of-finitepresentation--fc770d8730b2d61c3f60ca40.md) | 142 | `result-track:fc770d8730b2d61c3f60ca40d0ab7494d7f070a12e9ce8f2bc3b42b699436523` |
| 4 | `lemma` | [preservesFilteredColimits_coyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean/declarations/preservesfilteredcolimits-coyoneda--6978b8a9be162900d92ab1bb.md) | 164 | `result-track:6978b8a9be162900d92ab1bb1f6b4c063715b5f734a31fc3796435a286ce400c` |
| 5 | `lemma` | [isFinitelyPresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean/declarations/isfinitelypresentable--ab8e1f89357dc7da2fab5678.md) | 169 | `result-track:ab8e1f89357dc7da2fab5678d06dd5fb826f96f1cc133aaeb5aaa7f054acabd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
