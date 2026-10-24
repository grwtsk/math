# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedTopology.Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99cada5e7c69777f27136738b841f88bb555e7bb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99cada5e7c69777f27136738b841f88bb555e7bb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.DenseSubsite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocallyCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/declarations/locallycoverdense--9c9ef9e974172451e18ffbc5.md) | 61 | `declaration-track:9c9ef9e974172451e18ffbc52a187e397eed4e04aa5cbf4d7fcb9d82366fcbd8` |
| 2 | `theorem` | [pushforward_cover_iff_cover_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/declarations/pushforward-cover-iff-cover-pullback--49429ce7ba1e1d94146e7645.md) | 69 | `result-track:49429ce7ba1e1d94146e7645ebb33b5770c7c8712e0f9aaef77ec0c7844af30e` |
| 3 | `def` | [inducedTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/declarations/inducedtopology--36dc9980ef2de3690ae6a635.md) | 82 | `declaration-track:36dc9980ef2de3690ae6a6359d6a1aaa95f83be04975ddac4124a051df30b567` |
| 4 | `theorem` | [inducedTopology_coverLifting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/declarations/inducedtopology-coverlifting--f73f24026002dc48016fecd6.md) | 109 | `result-track:f73f24026002dc48016fecd6a6f1e0af8ee80dd0914f9f4e30fefd9700b73f1c` |
| 5 | `theorem` | [inducedTopology_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/declarations/inducedtopology-coverpreserving--0f9377fc718c85aad9bb2a3a.md) | 114 | `result-track:0f9377fc718c85aad9bb2a3a10db01f1e740c0417219853baf31d31b8ffec890` |
| 6 | `theorem` | [CoverDense.locallyCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/declarations/coverdense-locallycoverdense--b277f40dc6ddca794261052a.md) | 120 | `result-track:b277f40dc6ddca794261052ad0174afa279692fc0ad15abc59cabb4826908294` |
| 7 | `abbrev` | [CoverDense.inducedTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/declarations/coverdense-inducedtopology--ecdb4aa8527cef193c826593.md) | 132 | `declaration-track:ecdb4aa8527cef193c826593a331e01fe846fbc3f28d00dedf58ffa5af1b5834` |
| 8 | `theorem` | [over_forget_locallyCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/declarations/over-forget-locallycoverdense--ae0358666f8edd5e205e5d71.md) | 139 | `result-track:ae0358666f8edd5e205e5d71bcebd027993ff8942baae9f834992cdd6249672f` |
| 9 | `def` | [CoverDense.sheafEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/declarations/coverdense-sheafequiv--b9923b470a9b29e2f9f6b45b.md) | 165 | `declaration-track:b9923b470a9b29e2f9f6b45baddbdd3c27e197ea30d117fa9fd97ad0495c8e9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
