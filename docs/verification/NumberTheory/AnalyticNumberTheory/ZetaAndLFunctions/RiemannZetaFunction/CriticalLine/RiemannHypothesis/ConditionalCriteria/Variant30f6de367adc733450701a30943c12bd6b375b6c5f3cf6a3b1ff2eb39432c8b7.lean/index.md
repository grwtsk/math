# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ConditionalCriteria.Variant30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e76dc68d03f7b91866d3ea5e2df4fd20a8ab2bfe",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e76dc68d03f7b91866d3ea5e2df4fd20a8ab2bfe`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.BoundaryCriterion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [h0_real_zeros_from_spectral_realization](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7.lean/declarations/h0-real-zeros-from-spectral-realization--14938c9760223d9697d3706a.md) | 26 | `result-track:14938c9760223d9697d3706a427a36c4c5d7bc66193513ac81d218ee7926d694` |
| 2 | `theorem` | [rh_of_h0_selfadjoint_realization](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7.lean/declarations/rh-of-h0-selfadjoint-realization--3011bcda7dd97118b04e086f.md) | 45 | `result-track:3011bcda7dd97118b04e086f5b2e2c6783d4d8b29a45ca4515f70dbf375af2d6` |
| 3 | `theorem` | [rh_of_trace_positivity_and_zero_correspondence](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConditionalCriteria/Variant30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7.lean/declarations/rh-of-trace-positivity-and-zero-correspondence--418ff640b3f81ecc92932c48.md) | 71 | `result-track:418ff640b3f81ecc92932c480dccc4fbc403b000a9cc08bd8e68cc74dbf4332a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
