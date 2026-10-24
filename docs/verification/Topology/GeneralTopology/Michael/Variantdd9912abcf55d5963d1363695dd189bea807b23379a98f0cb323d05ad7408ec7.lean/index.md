# Verification target: GRWTSK.Topology.GeneralTopology.Michael.Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1262ec43952982b016327ced9e147e076026848e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1262ec43952982b016327ced9e147e076026848e`.

Source path: `GRWTSK/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.AbsConvex` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuity.Hemicontinuity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LowerHemicontinuous.hasOpenCGraph_of_add_hasOpenCGraph](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean/declarations/lowerhemicontinuous-hasopencgraph-of-add-hasopencgraph--33e6f19488c8e2396e80e45d.md) | 38 | `result-track:33e6f19488c8e2396e80e45d98b160244d5c45936cb8924df15646630d4a73bf` |
| 2 | `lemma` | [HasOpenLowerSections.exists_continuous_selection](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean/declarations/hasopenlowersections-exists-continuous-selection--c1d16c34e52a74a82829c874.md) | 66 | `result-track:c1d16c34e52a74a82829c87417d8523ba65c9c7fdbc018c1a22a12cfff3b77b3` |
| 3 | `lemma` | [LowerHemicontinuous.exists_continuous_selection_refine](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean/declarations/lowerhemicontinuous-exists-continuous-selection-refine--523a0144ad5410d8383c06d0.md) | 79 | `result-track:523a0144ad5410d8383c06d0a9a4ad99405617a5135fca076b6f6857ecaf228e` |
| 4 | `theorem` | [LowerHemicontinuous.exists_continuous_selection](../../../../../mathematics/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean/declarations/lowerhemicontinuous-exists-continuous-selection--5745f6d5f8b80799c9d1c8aa.md) | 107 | `result-track:5745f6d5f8b80799c9d1c8aa56173037e7953dafa6d9e13ac9dac00719e3d4d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
