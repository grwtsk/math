# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colim.Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7e3c89bcbb1571e47ccdf571b4534b44d476c1e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7e3c89bcbb1571e47ccdf571b4534b44d476c1e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [colim.map_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/declarations/colim-map-mono--2f5d43b3681f47ee9561e38e.md) | 50 | `result-track:2f5d43b3681f47ee9561e38e13aa531703fcae61053d9b7dd0b1cb1bdbc9ec5e` |
| 2 | `lemma` | [colim.map_epi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/declarations/colim-map-epi--cb37f1e4c15585df191062da.md) | 70 | `result-track:cb37f1e4c15585df191062daea00d5a350edc1c259cf7978ecbbb6e1d61e74f1` |
| 3 | `lemma` | [IsColimit.mono_ι_app_of_isFiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/declarations/iscolimit-mono-app-of-isfiltered--0849a23d5d7c50e060bf7089.md) | 85 | `result-track:0849a23d5d7c50e060bf7089c396011dcf377053172b4af27e2ece2fc4113b78` |
| 4 | `def` | [colim.mapShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/declarations/colim-mapshortcomplex--54c7f8bc62be5a84225f9041.md) | 115 | `declaration-track:54c7f8bc62be5a84225f904135cedba8dd4f503ed96b65f1d0375e393045b7e1` |
| 5 | `lemma` | [colim.exact_mapShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/declarations/colim-exact-mapshortcomplex--500e4ee67c665c00c2ea59b7.md) | 129 | `result-track:500e4ee67c665c00c2ea59b720fcfcd7a4c3a03063cc32bb8d9fdda6285ea11b` |
| 6 | `instance` | [isStableUnderColimitsOfShape_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/declarations/isstableundercolimitsofshape-monomorphisms--a91b4a4d18307dda6b46a936.md) | 157 | `declaration-track:a91b4a4d18307dda6b46a93631f2211c57ecb64f4c158827bd5d16daffc05fed` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/declarations/instance--820832a8ad7dbd2da93babbe.md) | 165 | `declaration-track:820832a8ad7dbd2da93babbe47591c252813f173678a269e57c555d5b3d29620` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/declarations/instance--eb955ac88df7b647b53ad337.md) | 168 | `declaration-track:eb955ac88df7b647b53ad337ed237f5f7d30056e721c737c8a7bcc6f70180a02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
