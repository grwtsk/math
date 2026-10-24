# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PoleContourHomotopy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "badd0e8cd69ae8a99e5cfa6247ee077be02cca46",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `badd0e8cd69ae8a99e5cfa6247ee077be02cca46`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.PolygonFreeHomotopy`](../../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleContourTube`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vertices](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/declarations/vertices--36b95f6fb4735844a8daa73a.md) | 28 | `declaration-track:36b95f6fb4735844a8daa73a72c6f221492636f055924a01fc2c2cb7e5061cc6` |
| 2 | `def` | [sourceLoop](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/declarations/sourceloop--b8115ee5eb7dc5e5fc67eceb.md) | 30 | `declaration-track:b8115ee5eb7dc5e5fc67eceb37faab3fdf8656a118c4067c41d9a396c46a577c` |
| 3 | `def` | [imageLoop](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/declarations/imageloop--2b0e2afb011de272a438b346.md) | 34 | `declaration-track:2b0e2afb011de272a438b346bd1f17365e494bda936ecbad9ae56c30d7abbdca` |
| 4 | `theorem` | [checked_cells](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/declarations/checked-cells--233e40ae7e1fd5f93cee0e32.md) | 38 | `result-track:233e40ae7e1fd5f93cee0e322290b622ae9ad937dff08e512f8d3d0ec2fe3bf2` |
| 5 | `theorem` | [domain_range](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/declarations/domain-range--7744a6227b26da457e47ab2c.md) | 45 | `result-track:7744a6227b26da457e47ab2c2f548ebcfb221bb28c5519eef86f89a0e4feae29` |
| 6 | `def` | [freeHomotopy](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/declarations/freehomotopy--740262f6c3823ad1e57e8bc2.md) | 53 | `declaration-track:740262f6c3823ad1e57e8bc27f452673a9fde1ec1d65f46a2eb61d8244903a21` |
| 7 | `theorem` | [source_endpoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/declarations/source-endpoint--8c051a67756e015045f5b9f1.md) | 64 | `result-track:8c051a67756e015045f5b9f19a99b67c8ecce0f81950d99bf64547df72b41e89` |
| 8 | `theorem` | [image_endpoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/declarations/image-endpoint--ddedcfaac73ca1b4b3b05525.md) | 69 | `result-track:ddedcfaac73ca1b4b3b05525fe7233759698c35cc8c7878d95ef0c11d2c8653d` |
| 9 | `def` | [puncturedHomotopy](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/declarations/puncturedhomotopy--03ac9d5d5a9ae9ceb82f4f45.md) | 74 | `declaration-track:03ac9d5d5a9ae9ceb82f4f45f1a0e88be0ab52ff16d9f718bf88c3952a0ba580` |
| 10 | `theorem` | [basepoint_formula](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/declarations/basepoint-formula--e5102e90ad1d5ab8f0c5dd38.md) | 84 | `result-track:e5102e90ad1d5ab8f0c5dd38dcbb9638f2af9e89b1fbbb80d7c5b549feb0e130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
