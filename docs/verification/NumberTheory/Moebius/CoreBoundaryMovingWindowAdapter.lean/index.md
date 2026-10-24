# Verification target: GRWTSK.NumberTheory.Moebius.CoreBoundaryMovingWindowAdapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d72f7ea607fa737e02fa7eabe58d8abd14f4407",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d72f7ea607fa737e02fa7eabe58d8abd14f4407`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreBoundaryMovingWindowBilinear`](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowBilinear.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_range_reverse](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/declarations/sum-range-reverse--f4676b7db4da270e93842659.md) | 20 | `result-track:f4676b7db4da270e93842659dce2d1993a3c8a4da1322cb0ba6afdc2ea7e5803` |
| 2 | `theorem` | [harmonicShortMobiusSum_eq_boundaryMovingWindow](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/declarations/harmonicshortmobiussum-eq-boundarymovingwindow--5fbbc85f7993a7c25261513c.md) | 45 | `result-track:5fbbc85f7993a7c25261513c61f5bb505c485326188c2363cd3883d0ba67b2a3` |
| 3 | `theorem` | [cumulativeBoundaryCorrelation_eq_reverseWindow](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/declarations/cumulativeboundarycorrelation-eq-reversewindow--52c88a96b854bfafa8c91dcd.md) | 61 | `result-track:52c88a96b854bfafa8c91dcdba03279cbda3e561798bcf73a977ac3ec21fd3e2` |
| 4 | `theorem` | [cumulativeBoundaryCorrelation_eq_paddedWindow](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/declarations/cumulativeboundarycorrelation-eq-paddedwindow--8bb33b3ffa80880246d5c775.md) | 102 | `result-track:8bb33b3ffa80880246d5c7753b30b329c95ef3fd25adda8b8bf66fa79c4adc8e` |
| 5 | `theorem` | [boundaryCumulativeCorrelationPacket_eq_movingWindowBilinear](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/declarations/boundarycumulativecorrelationpacket-eq-movingwindowbilinear--1edb763b638b90ca2d339a2a.md) | 129 | `result-track:1edb763b638b90ca2d339a2ac9eb0b24aad4ddb789bdb4be25b828175c625e7b` |
| 6 | `def` | [boundaryMovingWindowBilinearAdapter](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/declarations/boundarymovingwindowbilinearadapter--7ed7036bafbd41e4fb66f16b.md) | 170 | `declaration-track:7ed7036bafbd41e4fb66f16b9bc9f8e9bc29e1831d8d51194c0f9679534f477c` |
| 7 | `theorem` | [coreBoundarySignedPacket_eq_movingWindowBilinear_exact](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/declarations/coreboundarysignedpacket-eq-movingwindowbilinear-exact--b0b2e997d2c893406382fbe6.md) | 176 | `result-track:b0b2e997d2c893406382fbe6eaf5659ce0afb99f4b7cdd41973129b3052ce80c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
