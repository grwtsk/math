# Verification target: GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96dd3204b2110a0083062a780f7647b403012ef7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96dd3204b2110a0083062a780f7647b403012ef7`.

Source path: `GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare`](../../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMertensSquareWeight](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertenssquareweight--7d09b33f9260a74ef59b36fc.md) | 26 | `declaration-track:7d09b33f9260a74ef59b36fc8a0832b959696e6edf7928232c466dc2904334cb` |
| 2 | `def` | [weightedMertensTail](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertenstail--0e0bbb2460915956ac460a5c.md) | 30 | `declaration-track:0e0bbb2460915956ac460a5c1f57af4981e013ef817a400feb27e5a5308959c9` |
| 3 | `def` | [mertensSquareIncrement](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/mertenssquareincrement--80a89671d1a3784168ee1748.md) | 34 | `declaration-track:80a89671d1a3784168ee17484668d25664d139ac21f8df901aeb452d4afb9bc1` |
| 4 | `theorem` | [mertensSquareIncrement_eq_sub](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/mertenssquareincrement-eq-sub--b3562fc2063992e3c7654aac.md) | 38 | `result-track:b3562fc2063992e3c7654aacc33a075fa80f7007e8d955f2b84391189f3216d2` |
| 5 | `theorem` | [sum_mertensSquareIncrement](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/sum-mertenssquareincrement--27a3168c4646eca28123a4e8.md) | 44 | `result-track:27a3168c4646eca28123a4e8f1b82a6ae3e9f60a9e3f2b387e510fff8901a519` |
| 6 | `theorem` | [weightedMertensTail_succ](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertenstail-succ--9681374a7df08108522518c3.md) | 53 | `result-track:9681374a7df08108522518c35b9fe82760315c3c32c3a79c08cda6523476317b` |
| 7 | `theorem` | [weightedMertensTail_self](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertenstail-self--36a9840b2595b974e4d99321.md) | 59 | `result-track:36a9840b2595b974e4d99321a3e48521c28561707642f4502e5234f4dcf968f6` |
| 8 | `def` | [weightedMertensSquarePartial](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertenssquarepartial--0a2563e346d6eb9cde7194d9.md) | 65 | `declaration-track:0a2563e346d6eb9cde7194d90e4fe9fa1030cf27dac6bfcf76c06e3e61ac93d6` |
| 9 | `def` | [weightedMertensIncrementTail](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertensincrementtail--c541408c1590d5bdfa92da05.md) | 70 | `declaration-track:c541408c1590d5bdfa92da05b2a5bebcbc465d23eb2a3bbc0ec23f2c3edfa253` |
| 10 | `theorem` | [weightedMertensIncrementTail_succ](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertensincrementtail-succ--ac879bcf61a798f91e456dba.md) | 74 | `result-track:ac879bcf61a798f91e456dba303050fa611166a3666d3e297e0cd8d60e883067` |
| 11 | `theorem` | [weightedMertensSquarePartial_eq_incrementTail](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertenssquarepartial-eq-incrementtail--17be3a4d24bc1f857aff133f.md) | 103 | `result-track:17be3a4d24bc1f857aff133f30ba7059296759d041172c701f3dd5bade193b3e` |
| 12 | `def` | [weightedMertensCorrelation](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertenscorrelation--11c16e2aed29f6c6b3b99b0b.md) | 115 | `declaration-track:11c16e2aed29f6c6b3b99b0b99b361737c9e7aeef3c924ea9c4b641a22bf7b89` |
| 13 | `def` | [weightedMertensDiagonal](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertensdiagonal--530ddd205b9917e9cc7c294e.md) | 121 | `declaration-track:530ddd205b9917e9cc7c294e4cde4741f4befa42e5ebbb3059c4cfceca962c39` |
| 14 | `theorem` | [weightedMertensSquarePartial_eq_correlation_add_diagonal](../../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/declarations/weightedmertenssquarepartial-eq-correlation-add-diagonal--8b0fc85502cfcf15bdcb323b.md) | 126 | `result-track:8b0fc85502cfcf15bdcb323bc7cd23e2912001617fdcac471b12d0cdcade747e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
