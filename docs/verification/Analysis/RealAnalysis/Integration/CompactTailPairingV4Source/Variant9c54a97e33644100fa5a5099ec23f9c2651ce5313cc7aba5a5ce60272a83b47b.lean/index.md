# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompactTailPairingV4Source.Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dc567623d5f5acd70533e58c89d0bb38298d4e2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dc567623d5f5acd70533e58c89d0bb38298d4e2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/declarations/forwardhalfkernel--7f9405d22c88b1a1980004f2.md) | 17 | `declaration-track:7f9405d22c88b1a1980004f2e4f7160da7243ec6bc68be7384106ade0f541163` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/declarations/forwardhalfkernel-continuous--9270db50fab3b0b32bff719a.md) | 22 | `result-track:9270db50fab3b0b32bff719a8c540ead52d2c2fee005974aff9bfc4b32e7e347` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/declarations/forwardhalfkernel-hascompactsupport--e9af56e49dfffebf973282e2.md) | 30 | `result-track:e9af56e49dfffebf973282e2fd794aad0a4d41a3fd91126bb068b478d1544def` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/declarations/forwardhalfkernel-integrable--7c9adc88434830cb7f37dd1b.md) | 52 | `result-track:7c9adc88434830cb7f37dd1b687cd39209b2e6a3f99fbf08e0a5e48ebed38501` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/declarations/sourcecorrelation-eq-plus-shift--c0c4ff47b17672d9b9b33213.md) | 58 | `result-track:c0c4ff47b17672d9b9b33213bc22e56b5f5938cd1145ce561380de0eb6cc9d4e` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/declarations/negativesmoothmoment-eq-forward-integral--da377a52d7df7f800994c9c4.md) | 66 | `result-track:da377a52d7df7f800994c9c4be9397fab3f0f520f862d7654435a43fdb11449b` |
| 7 | `theorem` | [forwardHalfKernel_interval_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/declarations/forwardhalfkernel-interval-eq-tail-pairing--c3d1740deb5a206c391ea8c1.md) | 78 | `result-track:c3d1740deb5a206c391ea8c1bcfe2307a4858a56b9b505f0130fa9dc97ce772f` |
| 8 | `theorem` | [negativeSmoothMoment_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/declarations/negativesmoothmoment-eq-tail-pairing--68f879e7e9539fb5925115ed.md) | 116 | `result-track:68f879e7e9539fb5925115ed0519253be6e86fddd7d0e91aab2c6ae99b3d2b04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
