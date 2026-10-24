# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedDivisorLiteralCheck.Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bd0e07acef5dc42889ee7b19fbf67c1e67c17c3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bd0e07acef5dc42889ee7b19fbf67c1e67c17c3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean.json)

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
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/dampeddivisorcoefficient--6c8098c68ee21ed26484896d.md) | 15 | `declaration-track:6c8098c68ee21ed26484896d1c4f5d4f3a6936bc9c143d815f178ef61ad5a776` |
| 2 | `theorem` | [floor_sum_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/floor-sum-divisors--6750e323c3189f15d19239d0.md) | 32 | `result-track:6750e323c3189f15d19239d0490f29cdcbc6c49ad092b02a3f807bf55a38412c` |
| 3 | `theorem` | [divisor_prefix_eq_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/divisor-prefix-eq-floor--e0e78e725b080aacc1988ea5.md) | 62 | `result-track:e0e78e725b080aacc1988ea56e98511e9879e0ae4c46a41896ac28ce5b4f34c3` |
| 4 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/residual-floor--f6e4caae19b8922b94bd0071.md) | 68 | `result-track:f6e4caae19b8922b94bd0071c167833a297a3fe5bfd9700eacae2221751e6a80` |
| 5 | `theorem` | [damped_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/damped-floor--9b4f596f2db4053cb8434ac7.md) | 83 | `result-track:9b4f596f2db4053cb8434ac7784f94babdc88e195de6f52bc91edf437ac9c170` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed--a3ef6a803b52b0f89c201a46.md) | 95 | `result-track:a3ef6a803b52b0f89c201a4608a9461977b91c073a7d4ff6d66fadd217e114fe` |
| 7 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/arithmeticresidual-eq-divisor-prefix--61756388b86f86ccf8f8a032.md) | 108 | `result-track:61756388b86f86ccf8f8a032fc5cbeb903dc60c4bc80763eb50962f67a9744c0` |
| 8 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/arithmeticresidual-zero-of-lt-cutoff--e48afc1e3c1353a7886e2ba3.md) | 119 | `result-track:e48afc1e3c1353a7886e2ba37e0ac3802a3cf8876919a1c442375f03e761a6f4` |
| 9 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/arithmeticresidual-zero-damping-endpoint--2c7796557747b20e77baee9e.md) | 129 | `result-track:2c7796557747b20e77baee9ea165cc2324402178c6f36276182c6c89026ee06a` |
| 10 | `def` | [truncatedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/truncateddivisorcoefficient--774f93291d5a208a58a8ecfe.md) | 156 | `declaration-track:774f93291d5a208a58a8ecfeca28a5301227b2c11b3e14a9d7da8c017802d8c3` |
| 11 | `theorem` | [truncatedDivisorCoefficient_eq_full](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/truncateddivisorcoefficient-eq-full--4597966e14ea828ef245ee4f.md) | 161 | `result-track:4597966e14ea828ef245ee4f48c9b37b153dc8ec390864f885275fb61646426f` |
| 12 | `theorem` | [finite_floor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/finite-floor-prefix--edbb8b86c5fc29a6d947c1ee.md) | 169 | `result-track:edbb8b86c5fc29a6d947c1ee89bf1ca4efee80cc8d7b1393bdaa6c6c74a03e34` |
| 13 | `theorem` | [damped_floor_eq_truncated_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/damped-floor-eq-truncated-prefix--c163c34a75e365bb0c4f812f.md) | 198 | `result-track:c163c34a75e365bb0c4f812f6d768856a4423f0ce95d21515862c30f58e16e98` |
| 14 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/residual-floor--e28b5f510b3133d7f6a1e019.md) | 208 | `result-track:e28b5f510b3133d7f6a1e019ef780cec67a3c7d3a863353f3fd5057fab2845de` |
| 15 | `theorem` | [arithmeticResidual_eq_truncated_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/arithmeticresidual-eq-truncated-prefix--c7935625326855ad2717704a.md) | 226 | `result-track:c7935625326855ad2717704a433b4173fe5cac26fd38c536846966179550dbca` |
| 16 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/example--066f2768de097c91214a9bc7.md) | 247 | `declaration-track:066f2768de097c91214a9bc7eeda1aa59d2ee360e797bb45fcd33f48f9bbba48` |
| 17 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/example--03ff893e14cdae07b49514ce.md) | 251 | `declaration-track:03ff893e14cdae07b49514ce994896bfcf9bb4a8d4b5bf1afa8d90660ee95338` |
| 18 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/example--0533f6a2239274ae9d8c6d93.md) | 255 | `declaration-track:0533f6a2239274ae9d8c6d939fc9950d3d78019fb38e9189791f1e93e3e7690f` |
| 19 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/declarations/example--32bba8612f4f191e772b40cd.md) | 262 | `declaration-track:32bba8612f4f191e772b40cdf87c4ae265c8aeb02844bd27b646da73e4d2cc94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
