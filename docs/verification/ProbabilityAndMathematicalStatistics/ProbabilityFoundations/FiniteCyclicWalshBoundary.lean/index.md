# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicWalshBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e91de8ff32abb730324269fe9a7b23cff6a783d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e91de8ff32abb730324269fe9a7b23cff6a783d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshBoundaryTriangle`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Order.Interval.Finset.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicMaxOffset](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/declarations/cyclicmaxoffset--fa5f41aed0024bad171b72f1.md) | 39 | `declaration-track:fa5f41aed0024bad171b72f18a3045467f11fae665065f0ed7b9fe37ec63f798` |
| 2 | `theorem` | [offset_le_cyclicMaxOffset](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/declarations/offset-le-cyclicmaxoffset--5060f62d8b284af13543f168.md) | 43 | `result-track:5060f62d8b284af13543f1685d3c0d4d64c02293c98db8b88f635e8e84f4b4ee` |
| 3 | `def` | [ordinaryShiftWord](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/declarations/ordinaryshiftword--c90e946dfbedfd9ff3cdb370.md) | 49 | `declaration-track:c90e946dfbedfd9ff3cdb370db47e1ea310daec599b8ca21ab3dfe90b31d2840` |
| 4 | `def` | [cyclicShiftWord](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/declarations/cyclicshiftword--f94b63c8a0bc0eb2b6207e57.md) | 56 | `declaration-track:f94b63c8a0bc0eb2b6207e57cd77fae423138bc073dcde20f4a1c9259d4fd3d4` |
| 5 | `def` | [cyclicWrapCollar](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/declarations/cyclicwrapcollar--48038f25c7bdad24e40ae8c5.md) | 62 | `declaration-track:48038f25c7bdad24e40ae8c5f53740568bf8e8d23fa90176dbefbe69a4c50231` |
| 6 | `theorem` | [cyclicWrapCollar_subset_range](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/declarations/cyclicwrapcollar-subset-range--9757151df462e5cd7c72756d.md) | 67 | `result-track:9757151df462e5cd7c72756df1af90ed1584b76b67bd080d6e45c55db9905ee0` |
| 7 | `theorem` | [cyclicWrapCollar_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/declarations/cyclicwrapcollar-card--fbff962ae741c1222ddb53cf.md) | 75 | `result-track:fbff962ae741c1222ddb53cf8accc74690f90ffca2d06a19cf92078fad9d1b8a` |
| 8 | `theorem` | [ordinary_eq_cyclic_off_collar](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/declarations/ordinary-eq-cyclic-off-collar--eaf9b59c72d3d5bfffd181c2.md) | 86 | `result-track:eaf9b59c72d3d5bfffd181c2d67652f5fd7038690df5af937e91073d031c4b10` |
| 9 | `theorem` | [empty_offsets_zero_collar](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/declarations/empty-offsets-zero-collar--761984f9f9e6fb37c8f2b22a.md) | 107 | `result-track:761984f9f9e6fb37c8f2b22a9191b5820c233774067a155409b3c5b7a736a8c1` |
| 10 | `theorem` | [cyclicWalshTV_bound](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/declarations/cyclicwalshtv-bound--90dcdc583e3062688cd2d79f.md) | 122 | `result-track:90dcdc583e3062688cd2d79f2ae14302735d66608c151acc83c59d5acc67a9c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
