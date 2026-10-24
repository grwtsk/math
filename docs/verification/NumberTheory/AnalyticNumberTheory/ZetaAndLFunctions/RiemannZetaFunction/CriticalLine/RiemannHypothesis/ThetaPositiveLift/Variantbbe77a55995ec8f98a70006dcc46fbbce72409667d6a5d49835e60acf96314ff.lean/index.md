# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2aa57ba2d92ad3ccc2a662c3e9155e56d76e6a5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2aa57ba2d92ad3ccc2a662c3e9155e56d76e6a5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWhitenedInertia` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiNegativeParityProjector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/declarations/thetaphinegativeparityprojector--b3238e1ce27b9d3c4b8a54e5.md) | 33 | `declaration-track:b3238e1ce27b9d3c4b8a54e5723cd14482b513bf44044615d640ff19aaff4af2` |
| 2 | `theorem` | [thetaPhiNegativeParityProjector_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/declarations/thetaphinegativeparityprojector-transpose--4598b516fecf4b583f2f1303.md) | 39 | `result-track:4598b516fecf4b583f2f130314cf5bec2fc64d06fc7246ad4a2030876fecb1ea` |
| 3 | `theorem` | [thetaPhiNegativeParityProjector_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/declarations/thetaphinegativeparityprojector-sq--c0864733f07935bf85f1d461.md) | 50 | `result-track:c0864733f07935bf85f1d4618d01c0b69c3a24ba8c8103a5a3992f334e873ace` |
| 4 | `theorem` | [thetaPhiNegativeParityProjector_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/declarations/thetaphinegativeparityprojector-possemidef--5c37348781edf756640d4abd.md) | 64 | `result-track:5c37348781edf756640d4abd3f3d8fd9f48a4b67df0a624b49ad19f57baffafe` |
| 5 | `theorem` | [thetaPhiParityInvolution_eq_one_sub_two_negativeProjector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/declarations/thetaphiparityinvolution-eq-one-sub-two-negativeprojector--e3ed284e8174631e840bb80e.md) | 73 | `result-track:e3ed284e8174631e840bb80ef46565d6a7d8190bad5064d156e5b62281549abd` |
| 6 | `def` | [thetaPhiWhitenedNegativeParityGram](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/declarations/thetaphiwhitenednegativeparitygram--aa6af573f83dc1eeafb20233.md) | 95 | `declaration-track:aa6af573f83dc1eeafb2023399e84a56ef8f164d18df5031b175c2f9e7789ea7` |
| 7 | `theorem` | [thetaPhiWhitenedNegativeParityGram_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/declarations/thetaphiwhitenednegativeparitygram-possemidef--d894d271d1295fdd28672cd0.md) | 103 | `result-track:d894d271d1295fdd28672cd0040a56fbcfd8f0b135969b88e7f966c95c3eecc4` |
| 8 | `theorem` | [thetaPhiWhitenedParityCompression_eq_one_sub_two_negativeGram](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/declarations/thetaphiwhitenedparitycompression-eq-one-sub-two-negativegram--c7827b0963826098828c10df.md) | 114 | `result-track:c7827b0963826098828c10df89b1c7bc94e8a5aa931cf628a967977e819abcf3` |
| 9 | `def` | [thetaPhiWhitenedHalfThresholdCount](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/declarations/thetaphiwhitenedhalfthresholdcount--84089ca74ae412878f79cf09.md) | 142 | `declaration-track:84089ca74ae412878f79cf0936ae0d7b38efe64529dfaa91061de6d2288641c1` |
| 10 | `def` | [ThetaPhiWhitenedHalfThresholdParity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbbe77a55995ec8f98a70006dcc46fbbce72409667d6a5d49835e60acf96314ff.lean/declarations/thetaphiwhitenedhalfthresholdparity--f0cc59bfe43deee7ad26e4d3.md) | 152 | `declaration-track:f0cc59bfe43deee7ad26e4d3337b3c43777580e8cf8620686c0049865ae75be2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
