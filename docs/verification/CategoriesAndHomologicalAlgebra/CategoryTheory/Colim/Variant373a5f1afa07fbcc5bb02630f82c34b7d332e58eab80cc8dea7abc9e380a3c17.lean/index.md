# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colim.Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cedfdb4131fd9b773fd5bd46049a97459a83de28",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cedfdb4131fd9b773fd5bd46049a97459a83de28`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean.json)

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
| 1 | `lemma` | [colim.map_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/declarations/colim-map-mono--2a8e81d3623c049ed8e98f15.md) | 42 | `result-track:2a8e81d3623c049ed8e98f1523d3114bd4a77748d70d5b2ca1cfd62b195aa357` |
| 2 | `lemma` | [colim.map_epi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/declarations/colim-map-epi--6c88d30010e56e6940e3d18d.md) | 62 | `result-track:6c88d30010e56e6940e3d18d70ed10106e8c55a7b577f11e5e3f2ca1ddf2db53` |
| 3 | `lemma` | [IsColimit.mono_ι_app_of_isFiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/declarations/iscolimit-mono-app-of-isfiltered--e34ce280b840e4105f9f0f1c.md) | 77 | `result-track:e34ce280b840e4105f9f0f1c00237a9e2bd8b4720b07abc6b9ec96cc98974a38` |
| 4 | `def` | [colim.mapShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/declarations/colim-mapshortcomplex--382ebc58cf08de85c394f74e.md) | 107 | `declaration-track:382ebc58cf08de85c394f74efac5e2118816b96be0830deba4819920312ffdff` |
| 5 | `lemma` | [colim.exact_mapShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/declarations/colim-exact-mapshortcomplex--0caa6f523c4d3cc5a21c799b.md) | 121 | `result-track:0caa6f523c4d3cc5a21c799bdcf30dc78b5f8ebafcf66c8fcedf1d8d6c5f89ea` |
| 6 | `instance` | [isStableUnderColimitsOfShape_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/declarations/isstableundercolimitsofshape-monomorphisms--e820b0caf43721b8a2ef86ac.md) | 149 | `declaration-track:e820b0caf43721b8a2ef86ac5840a291f389e497dd5e5db0f3dcb2ae28ceff7f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/declarations/instance--b4a266c13bf36ffc1e3bd229.md) | 157 | `declaration-track:b4a266c13bf36ffc1e3bd2290b63f98d775c199709d8e4f9c05d69a5639ee78e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/declarations/instance--6f0c2c5e174d283aacb23b0e.md) | 160 | `declaration-track:6f0c2c5e174d283aacb23b0e93541db0f3cd7ea330355d57998fd60d1efcc29e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
