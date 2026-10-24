# Verification target: GRWTSK.Interfaces.PortFiberIndexedCoverDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b8c52d2dcafea28baa00fa5dda96ba44402ce76",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberIndexedCoverDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/index.md) · [Full source](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b8c52d2dcafea28baa00fa5dda96ba44402ce76`.

Source path: `GRWTSK/Interfaces/PortFiberIndexedCoverDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberIndexedCoverDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberOpenCoverDescent`](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberOpenCoverDescent.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.AnalyticAffineIndexedGluing`](../../../../mathematics/Geometry/AlgebraicGeometry/AnalyticAffineIndexedGluing.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AddedIndex](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/declarations/addedindex--f74cc1a3f55723a53f7ff54e.md) | 24 | `declaration-track:f74cc1a3f55723a53f7ff54e835cdf578ce9595fab3ad2da054cac97810a5563` |
| 2 | `def` | [AddedClaim](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/declarations/addedclaim--e871a7fed999e1477a327f24.md) | 34 | `declaration-track:e871a7fed999e1477a327f2496d6eb8432fed4e198019f05922b270b230e1f91` |
| 3 | `theorem` | [addedClaim_proof](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/declarations/addedclaim-proof--460ef86f06811aedadba026d.md) | 68 | `result-track:460ef86f06811aedadba026d6babfeeaee890238d4fa9cd29d4b9800d8cdb948` |
| 4 | `def` | [portfolio](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/declarations/portfolio--4c7f1912af8da0b4b1c9dada.md) | 90 | `declaration-track:4c7f1912af8da0b4b1c9dada7a485f365eb4b308c71c47c4f9bfd529c1bda61c` |
| 5 | `def` | [architecture](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/declarations/architecture--498d86070464f6622ada4216.md) | 94 | `declaration-track:498d86070464f6622ada4216690b2a82f26e0fcadc3f1c197bff1c8f76963aef` |
| 6 | `theorem` | [original_branch_unchanged](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/declarations/original-branch-unchanged--3746ad01c0c55688bf51a3b6.md) | 98 | `result-track:3746ad01c0c55688bf51a3b639979c1ae4b5a25d9ba9f9fad6a1882274c505e1` |
| 7 | `theorem` | [new_branch_proved](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/declarations/new-branch-proved--b83417472f388679a72a5b3d.md) | 107 | `result-track:b83417472f388679a72a5b3d6df8029f4e3fc888cabc1fb3f3a8275b0f5e53bd` |
| 8 | `theorem` | [target_unchanged](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/declarations/target-unchanged--4dfb0b6e514363a1a3662804.md) | 112 | `result-track:4dfb0b6e514363a1a36628049d9b33ecf48f4166f0d80e60eb008d2998e69451` |
| 9 | `theorem` | [retarget_preserves_new](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/declarations/retarget-preserves-new--eb00dd483c713a63ccc83504.md) | 117 | `result-track:eb00dd483c713a63ccc83504ef1d4f6e4c1b764b46988540c5e5eac1c6092476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
