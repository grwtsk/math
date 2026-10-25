# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointCompatibility.Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3db877e4d8ee41b425062a64b70a1b5cc7d255d5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3db877e4d8ee41b425062a64b70a1b5cc7d255d5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.FixedPointCompatibility` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compatibility_iff_obstruction_vanishes_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean/declarations/compatibility-iff-obstruction-vanishes-if-supplied--6dd2c0b9973b22ae8fa110a1.md) | 27 | `result-track:6dd2c0b9973b22ae8fa110a131049754983ce6ad9bfe73593fc6d72353d6ff1f` |
| 2 | `theorem` | [offcritical_forces_nonzero_obstruction_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean/declarations/offcritical-forces-nonzero-obstruction-if-supplied--b0223b2709fe5efe1857e923.md) | 36 | `result-track:b0223b2709fe5efe1857e923058c993d58cccdc2a0db7e51f52bc9ee5a88c84f` |
| 3 | `theorem` | [compatibility_implies_critical_line_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean/declarations/compatibility-implies-critical-line-if-supplied--fb29f0d4203c77c390b47602.md) | 45 | `result-track:fb29f0d4203c77c390b47602c3793771d1bf36840cfa0bc7fe0c7c98ae47f745` |
| 4 | `theorem` | [compatible_obstruction_vanishes_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean/declarations/compatible-obstruction-vanishes-if-supplied--310d94fd7a9d221d8c407608.md) | 54 | `result-track:310d94fd7a9d221d8c4076085629cdfa71bedf61b404e4ea9a81d834ede2d016` |
| 5 | `theorem` | [compatibility_obstruction_has_index_trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean/declarations/compatibility-obstruction-has-index-trace--e4d42242e65d55b503b40106.md) | 63 | `result-track:e4d42242e65d55b503b40106af9e2f481d55a7da46ecef7162984f0340514d0f` |
| 6 | `theorem` | [compatibility_obstruction_has_spectral_trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantf32cd83993dd6d5c2f5edb98467ad69d8c7b7bab24666928f18f43767fa25a37.lean/declarations/compatibility-obstruction-has-spectral-trace--0795951b593a80fb659690d0.md) | 68 | `result-track:0795951b593a80fb659690d0a5c29c50f64a04aaa112d5765081c1fe943c857b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
