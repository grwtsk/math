# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d145d2def7727f7d64cbc07b5388879eaae87f35",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d145d2def7727f7d64cbc07b5388879eaae87f35`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeOuterPairs`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [radialStep_to_outerConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/declarations/radialstep-to-outerconnected--605b4596e12aecb27fa0f683.md) | 37 | `result-track:605b4596e12aecb27fa0f68374bf5169152bceb1d27d0d8b13794e86fd038924` |
| 2 | `theorem` | [radialConnected_to_outerConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/declarations/radialconnected-to-outerconnected--f597bd1807552bd1cdebcc6f.md) | 86 | `result-track:f597bd1807552bd1cdebcc6f18bae303c6158fb1b85d8b167eaf202d89b873dd` |
| 3 | `theorem` | [coneToFilled_eq_implies_outerConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/declarations/conetofilled-eq-implies-outerconnected--22190a63cde0d1b5ce14c71b.md) | 99 | `result-track:22190a63cde0d1b5ce14c71b9b08cb4ab48de2cac96ab923031a5fd8384cb6ac` |
| 4 | `theorem` | [coneToFilled_eq_iff_outerConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/declarations/conetofilled-eq-iff-outerconnected--548cde3b1a582606dd2ca4e4.md) | 111 | `result-track:548cde3b1a582606dd2ca4e491b90e917c0ac96acc9149a25e0af40d2fb6a3dc` |
| 5 | `theorem` | [outerPairedConeToFilled_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/declarations/outerpairedconetofilled-injective--8127dc31a4689e9aa9bbf8d4.md) | 120 | `result-track:8127dc31a4689e9aa9bbf8d430f1be66b66fac7dd6d32037b25dd1fa53f9c244` |
| 6 | `theorem` | [outerPairedConeToFilled_bijective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/declarations/outerpairedconetofilled-bijective--be13406ac3687efbf87fcdd6.md) | 133 | `result-track:be13406ac3687efbf87fcdd6fe10da9a776558327c1bbd80fb1aac89c3cabcce` |
| 7 | `theorem` | [outerPairedConeToFilled_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/declarations/outerpairedconetofilled-continuous--ca17fda749bbcd87ae2fe5f8.md) | 140 | `result-track:ca17fda749bbcd87ae2fe5f802e6735e4accb01fbbfed2f14e0fc1dd6729c3e2` |
| 8 | `def` | [outerPairedConeHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/declarations/outerpairedconehomeomorph--dd81e0ad11cbf70101ba1848.md) | 149 | `declaration-track:dd81e0ad11cbf70101ba18487f101a63a4ef6d80cf6fda9a4a6322818e19a6f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
