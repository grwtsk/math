# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPositivity.Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9f0f374e95c200c608632e046263e9438bf98c7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9f0f374e95c200c608632e046263e9438bf98c7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.EndpointMonotonicity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalizedTest_endpoint_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean/declarations/normalizedtest-endpoint-pos--a5d20dcb351f8b070396ea40.md) | 21 | `result-track:a5d20dcb351f8b070396ea403e0c7887b599950bb47e825c37c9f66297e0f3c8` |
| 2 | `theorem` | [sourceCorrelation_endpoint_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean/declarations/sourcecorrelation-endpoint-pos--db0c606827232ce2f309dd96.md) | 45 | `result-track:db0c606827232ce2f309dd966bc71bf5c1abb336c34c90fecb88a733afbb0b7e` |
| 3 | `theorem` | [upper_product_log_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean/declarations/upper-product-log-lower--be5aaec80866c0fd51ca6cbe.md) | 64 | `result-track:be5aaec80866c0fd51ca6cbef9965d7e8ed667b0c1da025bc34e756a8ac3876d` |
| 4 | `theorem` | [sourceSamplingKernel_upper_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean/declarations/sourcesamplingkernel-upper-pos--5d97543adc45d045c0b736c4.md) | 83 | `result-track:5d97543adc45d045c0b736c4646de3b274029bd6278004386aa6a05e0c84a53d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
