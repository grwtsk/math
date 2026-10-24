# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointMonotonicity.Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "665d7d03535646164c39ebe4579068ea75c5debd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `665d7d03535646164c39ebe4579068ea75c5debd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceSamplingDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [endpoint_scaled_bounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/declarations/endpoint-scaled-bounds--ab7b4a11972fbb5ae698ba46.md) | 22 | `result-track:ab7b4a11972fbb5ae698ba46cf8dd028a5a714326278e1f8e41a993974734429` |
| 2 | `theorem` | [normalizedInterior_factor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/declarations/normalizedinterior-factor--93ee01b9fa07bcbeb79beb11.md) | 40 | `result-track:93ee01b9fa07bcbeb79beb113b2d96e04fe4b7e9aa055f7b4a93a1c0d6f6fd86` |
| 3 | `theorem` | [normalizedInteriorDerivative_factor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/declarations/normalizedinteriorderivative-factor--c2e703f05c02df94cd69638f.md) | 53 | `result-track:c2e703f05c02df94cd69638f28978850100ce1e8f7f7219edf0dd7faccc498d6` |
| 4 | `theorem` | [normalizedTest_endpoint_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/declarations/normalizedtest-endpoint-nonneg--8fbb839668e21df231030c33.md) | 67 | `result-track:8fbb839668e21df231030c330385bf71783e88a78bf9f755288e70b7dcfa598f` |
| 5 | `theorem` | [normalizedTest_derivative_endpoint_nonpos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/declarations/normalizedtest-derivative-endpoint-nonpos--1cdaff09973a953dfa6f4c7e.md) | 84 | `result-track:1cdaff09973a953dfa6f4c7e414071863dcfc70e1f0df6f3901f0f594450dc96` |
| 6 | `theorem` | [endpoint_product_signs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/declarations/endpoint-product-signs--1aba4ec6102452317cf2aca0.md) | 104 | `result-track:1aba4ec6102452317cf2aca06b2ece2d5be30b3a221b16c560af1256cc71a8b8` |
| 7 | `theorem` | [sourceCorrelation_endpoint_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/declarations/sourcecorrelation-endpoint-nonneg--4a85db5f197cfbd959f1b1a1.md) | 137 | `result-track:4a85db5f197cfbd959f1b1a17dbf0386f0857ef1797aecd1b32c226cbb9bc8d0` |
| 8 | `theorem` | [sourceCorrelation_derivative_endpoint_nonpos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/declarations/sourcecorrelation-derivative-endpoint-nonpos--202dbdb16ceb4504a839c025.md) | 146 | `result-track:202dbdb16ceb4504a839c02581c440d764befbbd237cfb0fe4bb3353aa72f177` |
| 9 | `theorem` | [correlationDifference_endpoint_nonpos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/declarations/correlationdifference-endpoint-nonpos--905e1431e3b956a731d5cfd2.md) | 156 | `result-track:905e1431e3b956a731d5cfd26851e5dee487d86bf37bcbb65cb1b7d9794ad55a` |
| 10 | `theorem` | [sourceSamplingKernel_derivative_upper_nonpos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/declarations/sourcesamplingkernel-derivative-upper-nonpos--1bdf9675b2650b99f967514c.md) | 165 | `result-track:1bdf9675b2650b99f967514c63a164c52c1265451e0433327b11a855ddda41a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
