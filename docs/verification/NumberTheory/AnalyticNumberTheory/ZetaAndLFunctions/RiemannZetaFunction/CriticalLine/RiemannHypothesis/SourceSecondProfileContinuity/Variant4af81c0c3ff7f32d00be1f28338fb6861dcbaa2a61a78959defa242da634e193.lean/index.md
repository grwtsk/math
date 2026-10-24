# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSecondProfileContinuity.Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bd7f7f9527150b414ad48e8ae66161d47b8fdb3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bd7f7f9527150b414ad48e8ae66161d47b8fdb3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceSecondProfileCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `ActualSourceWeakSecondDerivative` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualSecondProfile_continuousAt_of_ne_endpoints](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean/declarations/actualsecondprofile-continuousat-of-ne-endpoints--35612ab0232955bff92c147c.md) | 29 | `result-track:35612ab0232955bff92c147cbce4b9ec613ef61cf0ced41cac2e461a55fadf13` |
| 2 | `theorem` | [actualSecondProfile_bounded](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean/declarations/actualsecondprofile-bounded--7de01b5c87c7730835caad96.md) | 36 | `result-track:7de01b5c87c7730835caad9699b76f3c04ac221e795d577d89ae7f7926549dfa` |
| 3 | `theorem` | [actualSecondProfileCorrelation_continuous](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean/declarations/actualsecondprofilecorrelation-continuous--27de23c3f9e2c630c91201e2.md) | 50 | `result-track:27de23c3f9e2c630c91201e2a57ca00a58e6913898ba8400ca676d5f2a64df74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
