# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b74efd06ff43d688fce5bc6956804e169c5e14a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b74efd06ff43d688fce5bc6956804e169c5e14a`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellSources`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellSources.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [directedInterior_ne_zeroCell](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean/declarations/directedinterior-ne-zerocell--df0cfdabcd2ced53840915ba.md) | 30 | `result-track:df0cfdabcd2ced53840915bac55f011d4495b9a26bfe6806fe3ce25dca915b59` |
| 2 | `theorem` | [positiveInterior_ne_zeroCell](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean/declarations/positiveinterior-ne-zerocell--4981ec6850f67304a44024fe.md) | 45 | `result-track:4981ec6850f67304a44024fe3503356bf63fda07f15896e145613cffb648e860` |
| 3 | `theorem` | [positiveMidpoint_ne_zeroCell](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean/declarations/positivemidpoint-ne-zerocell--74a7450378060efb06879563.md) | 55 | `result-track:74a7450378060efb06879563a093d15b381c995834d49fa82a98618555cd361e` |
| 4 | `theorem` | [genusTwo_positiveMidpoint_ne_zeroCell](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean/declarations/genustwo-positivemidpoint-ne-zerocell--ffee9870fc117ccaa3d3d8c5.md) | 62 | `result-track:ffee9870fc117ccaa3d3d8c5503e958cc6c7c4caef1d3e0731017ea74a588f14` |
| 5 | `theorem` | [genusThree_positiveMidpoint_ne_zeroCell](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean/declarations/genusthree-positivemidpoint-ne-zerocell--64c05ba6f239d3682d0b3fcd.md) | 68 | `result-track:64c05ba6f239d3682d0b3fcdcb8e24d217e9ee90a5159057a9cf0a884abaaf1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
