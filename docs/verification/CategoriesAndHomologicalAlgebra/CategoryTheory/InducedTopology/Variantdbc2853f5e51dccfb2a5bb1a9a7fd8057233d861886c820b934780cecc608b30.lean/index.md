# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedTopology.Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28534b95a6405580874186bc8120a92520d409a4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28534b95a6405580874186bc8120a92520d409a4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.DenseSubsite.SheafEquiv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/declarations/locallycoverdense--9a716f2cfe7456e095b10ad8.md) | 48 | `declaration-track:9a716f2cfe7456e095b10ad82eb3344a74a2134e841b32f835e65ccd54f5ec2c` |
| 2 | `theorem` | [pushforward_cover_iff_cover_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/declarations/pushforward-cover-iff-cover-pullback--afe67bccfdf3c048b13cf61a.md) | 54 | `result-track:afe67bccfdf3c048b13cf61af146127a81c148670a94fd4d61bed074ba79b81a` |
| 3 | `def` | [inducedTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/declarations/inducedtopology--583f39a27f4bb847b03fa4e4.md) | 68 | `declaration-track:583f39a27f4bb847b03fa4e455030d4a4359b5a15e0318731722d78793b749cd` |
| 4 | `lemma` | [mem_inducedTopology_sieves_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/declarations/mem-inducedtopology-sieves-iff--b9b481ef32af6130d638e3ee.md) | 102 | `result-track:b9b481ef32af6130d638e3ee581485ce1b849fbc26f5892754916a8fc1fb97e5` |
| 5 | `instance` | [inducedTopology_isCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/declarations/inducedtopology-iscocontinuous--65a69ff62aa92a6a3bc8b6c6.md) | 107 | `declaration-track:65a69ff62aa92a6a3bc8b6c6b50985952bbc5cc35c8af04d18b9d8327c574d90` |
| 6 | `theorem` | [inducedTopology_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/declarations/inducedtopology-coverpreserving--678c633408bc479411503477.md) | 111 | `result-track:678c633408bc47941150347726020d2d66ac0f626dd42beabe8531f7d64301f1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/declarations/instance--d5de31c36315f99ea878c381.md) | 114 | `declaration-track:d5de31c36315f99ea878c3819e7ca0921908fa6964a478cb59e6b7dbc620a068` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/declarations/instance--35602ae483b30e44ceb74aca.md) | 119 | `declaration-track:35602ae483b30e44ceb74aca78e5da0310838df039011c3305ccf185f53c5b38` |
| 9 | `instance` | [over_forget_locallyCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/declarations/over-forget-locallycoverdense--1811ce47bf5dbd516dd6f2ae.md) | 124 | `declaration-track:1811ce47bf5dbd516dd6f2ae54b4561657bb37af58bb7c4795d2060fe2dd3e00` |
| 10 | `def` | [sheafInducedTopologyEquivOfIsCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variantdbc2853f5e51dccfb2a5bb1a9a7fd8057233d861886c820b934780cecc608b30.lean/declarations/sheafinducedtopologyequivofiscoverdense--b158fee9138d34d8d32f08b0.md) | 139 | `declaration-track:b158fee9138d34d8d32f08b03732c8be95143b12259d39c6607bba5662464c95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
