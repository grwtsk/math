# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedTopology.Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3b1a9fdd00154d2f4f888457cfd1f422743243e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3b1a9fdd00154d2f4f888457cfd1f422743243e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.DenseSubsite.SheafEquiv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/declarations/locallycoverdense--6b1e6732cadecf12d4916c24.md) | 56 | `declaration-track:6b1e6732cadecf12d4916c24d263560dbc17b90899bf033034a0d2a021f3184e` |
| 2 | `theorem` | [pushforward_cover_iff_cover_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/declarations/pushforward-cover-iff-cover-pullback--15c846a6c9602bc8e7840cb5.md) | 62 | `result-track:15c846a6c9602bc8e7840cb55f5f7ff84eae6ad71378b59805a9ef3627866de5` |
| 3 | `def` | [inducedTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/declarations/inducedtopology--c4439ec081d55841459f92da.md) | 76 | `declaration-track:c4439ec081d55841459f92da73c260c910172a124feabccc1b875cbdc5440300` |
| 4 | `lemma` | [mem_inducedTopology_sieves_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/declarations/mem-inducedtopology-sieves-iff--0fb51fb40472524e0dd69839.md) | 110 | `result-track:0fb51fb40472524e0dd69839e9a74204c4f828e0d70c679487cef25b16e73984` |
| 5 | `instance` | [inducedTopology_isCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/declarations/inducedtopology-iscocontinuous--ab05f15de21de88dd9c66432.md) | 115 | `declaration-track:ab05f15de21de88dd9c66432b211c2e16b04b544b6853e11aa564abe2e3a1f96` |
| 6 | `theorem` | [inducedTopology_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/declarations/inducedtopology-coverpreserving--723974bc0fdbc5e62d8a72f4.md) | 119 | `result-track:723974bc0fdbc5e62d8a72f48b610449060001ff075e8acde3c9d824fa5c65c9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/declarations/instance--b84b3c045b7de8aac203624f.md) | 122 | `declaration-track:b84b3c045b7de8aac203624f9c316e6f9970ec8e7658deebef609d98bdd03f3a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/declarations/instance--df714fde15fa1ededea3e1a6.md) | 127 | `declaration-track:df714fde15fa1ededea3e1a69d5f56fbd30d91404d38e81185fa471d3d0bf0a5` |
| 9 | `instance` | [over_forget_locallyCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/declarations/over-forget-locallycoverdense--48fadceebef352e75d577844.md) | 132 | `declaration-track:48fadceebef352e75d577844d41d35d4f6a1532288b9159e2bc069d7a5858dbe` |
| 10 | `def` | [sheafInducedTopologyEquivOfIsCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant0a38bd0e592a31cef96d86caed937c33a84ab94b0de4dd3929ae17383e3dccb5.lean/declarations/sheafinducedtopologyequivofiscoverdense--a21cbb8bfbe8048fae351bcb.md) | 147 | `declaration-track:a21cbb8bfbe8048fae351bcb50f6a116bd8bad414829cc744f6d8d766ea36eca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
