# Verification target: GRWTSK.Topology.GeneralTopology.Michael.Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c501780b484f8bb7f7f33bed382a8a4895d89ba",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c501780b484f8bb7f7f33bed382a8a4895d89ba`.

Source path: `GRWTSK/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.AbsConvex` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuity.Hemicontinuity` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LowerHemicontinuous.hasOpenCGraph_of_add_hasOpenCGraph](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/declarations/lowerhemicontinuous-hasopencgraph-of-add-hasopencgraph--7c1d9a520c30bfa8e3819b2f.md) | 46 | `result-track:7c1d9a520c30bfa8e3819b2feac88086716ac860c306933e8a9ee69f23c6fbf0` |
| 2 | `lemma` | [HasOpenLowerSections.exists_continuous_selection](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/declarations/hasopenlowersections-exists-continuous-selection--e9b0011b95acd595ff362aec.md) | 74 | `result-track:e9b0011b95acd595ff362aec987b887feab10c37aa5b812764166af63319f1ca` |
| 3 | `lemma` | [LowerHemicontinuous.exists_continuous_selection_refine](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/declarations/lowerhemicontinuous-exists-continuous-selection-refine--fda4e0bad8d8c569f90446da.md) | 87 | `result-track:fda4e0bad8d8c569f90446da51d01f3ead4a2393ebd4ba2e68ca117b0e8e319d` |
| 4 | `theorem` | [LowerHemicontinuous.exists_continuous_selection](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/declarations/lowerhemicontinuous-exists-continuous-selection--126a673d25781c10c19e976c.md) | 115 | `result-track:126a673d25781c10c19e976cbdb65d2e92926283ab0abd8bb32a9b92f49260be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
