# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedDivisorCombined.Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a70e4985ced977502bd62f76f6e3f29c8c3117bb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a70e4985ced977502bd62f76f6e3f29c8c3117bb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/dampeddivisorcoefficient--bb3d97944882125a9ccb1d58.md) | 15 | `declaration-track:bb3d97944882125a9ccb1d586884a3897423f9ba2cbe2c22cb3f46eba732cf27` |
| 2 | `theorem` | [floor_sum_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/floor-sum-divisors--38db1c90d627b1a4ff0e9591.md) | 32 | `result-track:38db1c90d627b1a4ff0e95910d26943670a87696cad8604a39993c2b6d98417f` |
| 3 | `theorem` | [divisor_prefix_eq_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/divisor-prefix-eq-floor--c39cdd5ef95d595944b05985.md) | 62 | `result-track:c39cdd5ef95d595944b05985eb96e5fe407b6135cbd0b325130bb05ce3ac2a41` |
| 4 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/residual-floor--fdea4a2f056e6012ec376943.md) | 68 | `result-track:fdea4a2f056e6012ec37694380334fb214d785c12cc2126260bf0e1d2ac7db02` |
| 5 | `theorem` | [damped_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/damped-floor--cd77519d4ad7d65e14d83706.md) | 83 | `result-track:cd77519d4ad7d65e14d837067fff79bfb81bfc11e28d350dedf12afe555377c1` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed--513501ab49d01c4b155ada81.md) | 95 | `result-track:513501ab49d01c4b155ada814e73fce57c1d9dc76ef9387a46d11158c8ad3ca9` |
| 7 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/arithmeticresidual-eq-divisor-prefix--932fcfa534105bfc5bc432ba.md) | 108 | `result-track:932fcfa534105bfc5bc432baf8f9f9f6c9bd29cc933b370f982d22a483068ebf` |
| 8 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/arithmeticresidual-zero-of-lt-cutoff--b76db15562d82e27d0a0cac2.md) | 119 | `result-track:b76db15562d82e27d0a0cac2a5670b3627246be66606f32efbc986751ec9b3fc` |
| 9 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/arithmeticresidual-zero-damping-endpoint--9e3963068fe50803a6fba451.md) | 129 | `result-track:9e3963068fe50803a6fba451b5ae5ce7f174ddbbcdc3205d98174c8a8af60904` |
| 10 | `def` | [truncatedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/truncateddivisorcoefficient--2fa6293d226dc99f7676b83f.md) | 156 | `declaration-track:2fa6293d226dc99f7676b83f4e15a0b38d65a574c942bdafcf3f5f2c338fb2a2` |
| 11 | `theorem` | [truncatedDivisorCoefficient_eq_full](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/truncateddivisorcoefficient-eq-full--16893d1d3357d4dd285e5149.md) | 161 | `result-track:16893d1d3357d4dd285e514959360b7bfead60d39d12a5bcd3519ff521b68a8c` |
| 12 | `theorem` | [finite_floor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/finite-floor-prefix--4387ea5dde0ed82d7cd9d338.md) | 169 | `result-track:4387ea5dde0ed82d7cd9d33826efa813a7bb7012d5407f7e578f9cfabff429dd` |
| 13 | `theorem` | [damped_floor_eq_truncated_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/damped-floor-eq-truncated-prefix--5e265348565e102f25fd82fa.md) | 198 | `result-track:5e265348565e102f25fd82fa709d64e99821d801eb3481d729308aef9644cf2f` |
| 14 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/residual-floor--8d420bb062c5ecf88535c6d3.md) | 208 | `result-track:8d420bb062c5ecf88535c6d3e6bbff7a1ca2770a30a7bcddeb58f5ba14e6a0f4` |
| 15 | `theorem` | [arithmeticResidual_eq_truncated_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorCombined/Variante8e3b369ab58c042168bc49229ff58ec7ca0c55f849c8de8682c6280c0f2421f.lean/declarations/arithmeticresidual-eq-truncated-prefix--64b6565ddf12c9397dd0f57a.md) | 226 | `result-track:64b6565ddf12c9397dd0f57a3ba04d9cc5aa83def826a41455652be08d4a1dce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
