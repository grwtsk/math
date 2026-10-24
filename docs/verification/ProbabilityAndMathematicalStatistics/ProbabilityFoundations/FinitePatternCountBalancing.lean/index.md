# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternCountBalancing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a304d369abbf8930526cc25633965886fadc9b0b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a304d369abbf8930526cc25633965886fadc9b0b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshParseval`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [consecutive_integer_product_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/consecutive-integer-product-nonneg--bcec6c66ef818a10c8194773.md) | 24 | `result-track:bcec6c66ef818a10c819477313b92401d44a835d5b4f8f506b7cda8d13c60f31` |
| 2 | `theorem` | [count_relative_consecutive_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/count-relative-consecutive-nonneg--4328842a59d2d1bc1d0b9923.md) | 36 | `result-track:4328842a59d2d1bc1d0b99236137b779690a63691f0c9b269e16b2ead711ade2` |
| 3 | `theorem` | [finite_count_square_balancing](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/finite-count-square-balancing--036110b4c8aaa8a8711774cd.md) | 43 | `result-track:036110b4c8aaa8a8711774cdffebfa46ee48e58b56c3d050121cb61d1015bad2` |
| 4 | `theorem` | [finite_count_square_div_mod_floor](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/finite-count-square-div-mod-floor--9522002df5a9b9fdfb799e15.md) | 79 | `result-track:9522002df5a9b9fdfb799e156e883129a799e735eebba0c84b32d1f5bc2d7329` |
| 5 | `theorem` | [finite_count_square_parseval_floor](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/finite-count-square-parseval-floor--703d5c3c3055200577913665.md) | 120 | `result-track:703d5c3c30552005779136651ca9e30e467c8fc1cf93989273f0147b916d6bab` |
| 6 | `theorem` | [finite_count_square_rational_floor](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/finite-count-square-rational-floor--bd6e4cbf9ba0ac774a12e759.md) | 155 | `result-track:bd6e4cbf9ba0ac774a12e759ddfc6c959e60ae774d5ad6e47c317e8f5ce4c649` |
| 7 | `def` | [fullPatternNatCount](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/fullpatternnatcount--8caaed4bc6ec37836e2e22b0.md) | 174 | `declaration-track:8caaed4bc6ec37836e2e22b086d99d551e400a6d9b8334286814c194eb5882a7` |
| 8 | `theorem` | [fullPatternNatCount_total](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/fullpatternnatcount-total--286594eb7470cc9697455d61.md) | 181 | `result-track:286594eb7470cc9697455d614f69caea39b5af98b3a40627753b45411af47fd8` |
| 9 | `theorem` | [patternCountOn_eq_natCount](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/patterncounton-eq-natcount--a971b1712a8eee1a0a36cd7f.md) | 205 | `result-track:a971b1712a8eee1a0a36cd7f558895321f55a3d111cb64c49bf69a53e7108c34` |
| 10 | `theorem` | [empiricalPattern_eq_natCount_div](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/empiricalpattern-eq-natcount-div--2f3fcfdf17de221b07876f0a.md) | 218 | `result-track:2f3fcfdf17de221b07876f0a07e33f7fb5d35e23b86d09558e2bc6875a7a7faf` |
| 11 | `theorem` | [empiricalPattern_square_sum_eq_natCount](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/empiricalpattern-square-sum-eq-natcount--9b85efa24104374fc8dd5e26.md) | 229 | `result-track:9b85efa24104374fc8dd5e2628178905aa0a61e948b1be2f0029b8b9226d5254` |
| 12 | `theorem` | [nonemptyCorrelationEnergy_eq_natCount_defect](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/nonemptycorrelationenergy-eq-natcount-defect--6850dc8dc8c378fdffb70c25.md) | 245 | `result-track:6850dc8dc8c378fdffb70c25b054f17c4db16a3ed82c6dd84fe5932f44757b8a` |
| 13 | `theorem` | [nonemptyCorrelationEnergy_sharp_sample_floor](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/declarations/nonemptycorrelationenergy-sharp-sample-floor--bafb78911847a99cb4380693.md) | 284 | `result-track:bafb78911847a99cb438069324c0fbef04ebe62d34c91d864a66f828ed21169a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
