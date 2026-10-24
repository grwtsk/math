# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebCoprime.Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "242ddd0dc8878e093738083a2baf71fbd53260a1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `242ddd0dc8878e093738083a2baf71fbd53260a1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Hypotheses` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.Chebyshev` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_half_pow_Icc_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean/declarations/sum-half-pow-icc-le--c6cfb8cb30a100c9873ea246.md) | 23 | `result-track:c6cfb8cb30a100c9873ea2468a49d5bf1420a771a86845e3e8790c14330bb9f4` |
| 2 | `lemma` | [removed_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean/declarations/removed-le--82460032cb03390ba61238ab.md) | 35 | `result-track:82460032cb03390ba61238abbf3b0b43b854072bf6a90b5348ba86f4de0a36b9` |
| 3 | `theorem` | [chebyshevMertensCoprime](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean/declarations/chebyshevmertenscoprime--89bae733f12e33d6a8742bdc.md) | 206 | `result-track:89bae733f12e33d6a8742bdcf9a8a4a57e7a88737337d836664aa35259e194c6` |
| 4 | `theorem` | [chebyshevMertensCoprimeBounded](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean/declarations/chebyshevmertenscoprimebounded--03e4f6e60468b1415fcbf517.md) | 295 | `result-track:03e4f6e60468b1415fcbf5170e05a2921a889d3d232362168efe6fff0673913d` |
| 5 | `theorem` | [chebyshevMertensCoprime'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean/declarations/chebyshevmertenscoprime--e73e519651f1214ae07cadea.md) | 411 | `result-track:e73e519651f1214ae07cadea44dd81a1a7470d8e8935e75334e26e83c1013e3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
