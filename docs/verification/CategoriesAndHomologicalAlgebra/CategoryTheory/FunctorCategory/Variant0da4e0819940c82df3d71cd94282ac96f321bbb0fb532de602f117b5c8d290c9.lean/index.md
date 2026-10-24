# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11c3f59c5baa694561128de851e4f2a80722a963",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11c3f59c5baa694561128de851e4f2a80722a963`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Retract` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.TransfiniteComposition` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/declarations/instance--6c16c431aa5768dbfe67ce6d.md) | 33 | `declaration-track:6c16c431aa5768dbfe67ce6db47b873def00d330077f97c16db7257d0bae55b3` |
| 2 | `instance` | [IsStableUnderLimitsOfShape.functorCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/declarations/isstableunderlimitsofshape-functorcategory--23ecaa5a15b219227eeb7f41.md) | 40 | `declaration-track:23ecaa5a15b219227eeb7f41ac9104edb73c527f1489611b25e1615e24bdf1a7` |
| 3 | `instance` | [IsStableUnderColimitsOfShape.functorCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/declarations/isstableundercolimitsofshape-functorcategory--d874b35721c62bd5f3d6a989.md) | 50 | `declaration-track:d874b35721c62bd5f3d6a9893908973ae0af14f3834e3c67919c694fd328f678` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/declarations/instance--ca64e14fb06b104465ccebae.md) | 60 | `declaration-track:ca64e14fb06b104465ccebae7a2710457c84d0d788287e1e8ee4af78765eab50` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/declarations/instance--510e8701ce462cbf6417fc6a.md) | 65 | `declaration-track:510e8701ce462cbf6417fc6a8e33cee3ad169abc6e6d0dc2cf2acd150bac7185` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/declarations/instance--82f0d83ae1529cbcc89860a6.md) | 70 | `declaration-track:82f0d83ae1529cbcc89860a6e51dced320fb9c6bb15a7d920360ce72f8488709` |
| 7 | `lemma` | [functorCategory_isomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/declarations/functorcategory-isomorphisms--500151e760541bd34ae0a294.md) | 81 | `result-track:500151e760541bd34ae0a294e405652ffc48bca3b9719dbf523ee9b4a08991c3` |
| 8 | `lemma` | [functorCategory_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/declarations/functorcategory-monomorphisms--7f14371dbbf9e9feff350fa8.md) | 86 | `result-track:7f14371dbbf9e9feff350fa87c78d1cc32bc5b8fee0f400d87367c1184be1201` |
| 9 | `lemma` | [functorCategory_epimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/declarations/functorcategory-epimorphisms--9c8a731615315b1641673d8f.md) | 91 | `result-track:9c8a731615315b1641673d8f47bbe98b5bc7858f03b60c7e42261a411bd12c34` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0da4e0819940c82df3d71cd94282ac96f321bbb0fb532de602f117b5c8d290c9.lean/declarations/instance--eee01c4845738b4b77451290.md) | 96 | `declaration-track:eee01c4845738b4b774512900d79d56bc23ebfa85b09087269dfdf73de93ad18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
