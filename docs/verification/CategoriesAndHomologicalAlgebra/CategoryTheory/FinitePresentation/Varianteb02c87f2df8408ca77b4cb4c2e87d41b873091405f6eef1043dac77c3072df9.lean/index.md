# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinitePresentation.Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee788ff6efc3814a146b6a078b80ced6519ccd61",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee788ff6efc3814a146b6a078b80ced6519ccd61`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.FilteredColimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Over` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteMultiequalizer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Presentable.Finite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.EssentialFiniteness` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FinitePresentation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [RingHom.EssFiniteType.exists_comp_map_eq_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9.lean/declarations/ringhom-essfinitetype-exists-comp-map-eq-of-iscolimit--305949e7ee937218d1178385.md) | 39 | `result-track:305949e7ee937218d117838579ce4d06ab4db3023d7fbe75403fd63647efb1f6` |
| 2 | `lemma` | [RingHom.EssFiniteType.exists_eq_comp_ι_app_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9.lean/declarations/ringhom-essfinitetype-exists-eq-comp-app-of-iscolimit--0b70c5637915546a01626279.md) | 73 | `result-track:0b70c5637915546a016262796ec91f91b4d12f1468ad0f137647565c92162e81` |
| 3 | `lemma` | [preservesColimit_coyoneda_of_finitePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9.lean/declarations/preservescolimit-coyoneda-of-finitepresentation--c751cfbd570913cc13f4345c.md) | 134 | `result-track:c751cfbd570913cc13f4345c16440e990309e05d7f2b92a5d0c1411c04b0f066` |
| 4 | `lemma` | [preservesFilteredColimits_coyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9.lean/declarations/preservesfilteredcolimits-coyoneda--6c370ef8920ccc4f0a7346d1.md) | 156 | `result-track:6c370ef8920ccc4f0a7346d15a8b3445b2c433e59f493323411fc5b78f9d6102` |
| 5 | `lemma` | [isFinitelyPresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Varianteb02c87f2df8408ca77b4cb4c2e87d41b873091405f6eef1043dac77c3072df9.lean/declarations/isfinitelypresentable--a920429ccff571ed1b9539bd.md) | 161 | `result-track:a920429ccff571ed1b9539bd389554a25f2c0b1a395a52b4156691f666b73dca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
