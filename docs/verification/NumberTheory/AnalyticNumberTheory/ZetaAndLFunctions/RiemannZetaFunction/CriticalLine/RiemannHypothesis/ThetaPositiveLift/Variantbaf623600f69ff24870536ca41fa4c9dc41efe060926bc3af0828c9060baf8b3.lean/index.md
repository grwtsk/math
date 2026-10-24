# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27b60b3036398bca9c52507e2ac31dbcee301f74",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27b60b3036398bca9c52507e2ac31dbcee301f74`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWhitenedHalfThreshold` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiPositiveParityProjector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphipositiveparityprojector--762c77c19c560f4745cbd7ec.md) | 37 | `declaration-track:762c77c19c560f4745cbd7ecac4744f0168271bc7b050ee20b89d59fda859e14` |
| 2 | `theorem` | [thetaPhiPositiveParityProjector_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphipositiveparityprojector-transpose--bc81fc50012e25a21dd01e31.md) | 43 | `result-track:bc81fc50012e25a21dd01e31b61bf3573d74ee58402559f7a756fb97b4243fa0` |
| 3 | `theorem` | [thetaPhiPositiveParityProjector_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphipositiveparityprojector-sq--0c4ae5ecba8c1e033a3c18ea.md) | 54 | `result-track:0c4ae5ecba8c1e033a3c18eaa2b66cb4eef42831da7750cc6b4c0a90a6de9860` |
| 4 | `theorem` | [thetaPhiPositiveParityProjector_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphipositiveparityprojector-possemidef--b3f0333683fffb6bbc0326f8.md) | 68 | `result-track:b3f0333683fffb6bbc0326f8f3bf70918b900dca3968b32ae285ba9bfe1fa143` |
| 5 | `theorem` | [thetaPhiParityProjectors_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphiparityprojectors-add--dcece8aaa7e9c6ecb99b16ef.md) | 77 | `result-track:dcece8aaa7e9c6ecb99b16eff5e6759e09c133c72627cb4bb78b72da0698e1e8` |
| 6 | `def` | [thetaPhiWhitenedPositiveParityGram](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphiwhitenedpositiveparitygram--7decd329a4ededa40d2dc133.md) | 99 | `declaration-track:7decd329a4ededa40d2dc133f4395e4a0741d7ab4ea263aab787a5af1484a5e9` |
| 7 | `theorem` | [thetaPhiWhitenedPositiveParityGram_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphiwhitenedpositiveparitygram-possemidef--f86a2bd2cd1abb8adc9e0e41.md) | 107 | `result-track:f86a2bd2cd1abb8adc9e0e41c01f77ec283915f41d1959e4258fd890b712ea41` |
| 8 | `theorem` | [thetaPhiWhitenedParityGrams_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphiwhitenedparitygrams-add--ab76fd10a68e58c3c4288daa.md) | 118 | `result-track:ab76fd10a68e58c3c4288daab6a14812aec7c2ce527495de793ed59c2b8c87e6` |
| 9 | `theorem` | [thetaPhiWhitenedParityCompression_eq_positiveGram_sub_negativeGram](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphiwhitenedparitycompression-eq-positivegram-sub-negativegram--5ac85337a9ada90b195f9013.md) | 140 | `result-track:5ac85337a9ada90b195f9013af2d9cd6416844d95b351d77427573ba748eafb9` |
| 10 | `theorem` | [thetaPhiWhitenedNegativeParityGram_eq_one_sub_positive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphiwhitenednegativeparitygram-eq-one-sub-positive--df1b103e5102f01d54566e33.md) | 158 | `result-track:df1b103e5102f01d54566e33e9435d9b0a14adbbd43170ecb5ad080d125cb5a7` |
| 11 | `theorem` | [thetaPhiWhitenedPositiveParityGram_eq_one_sub_negative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/declarations/thetaphiwhitenedpositiveparitygram-eq-one-sub-negative--af8fd88557e7285ce868aec4.md) | 168 | `result-track:af8fd88557e7285ce868aec4d27739ea4500594327a2a55c6a04a30ae90185b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
