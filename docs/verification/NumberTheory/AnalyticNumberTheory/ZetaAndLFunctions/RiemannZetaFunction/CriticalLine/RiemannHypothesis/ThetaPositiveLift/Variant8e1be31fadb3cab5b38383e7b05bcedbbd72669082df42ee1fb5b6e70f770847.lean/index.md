# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d059c297413d3df8cc94a7b0eb5e83a816c1a83d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d059c297413d3df8cc94a7b0eb5e83a816c1a83d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPositiveLift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iteratedDeriv_evenBasis](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean/declarations/iteratedderiv-evenbasis--fd003ee90be784f60934e9df.md) | 25 | `result-track:fd003ee90be784f60934e9dfb34e4384d71e04ca5a1a2a85e719ba94cc45d0fc` |
| 2 | `theorem` | [iteratedDeriv_evenBasis_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean/declarations/iteratedderiv-evenbasis-add--ea8b4c8a88d11a4ff4b0f6dc.md) | 37 | `result-track:ea8b4c8a88d11a4ff4b0f6dc96a0cef2a32dcc58deb0f5a53790f98f96e6f533` |
| 3 | `theorem` | [iteratedDeriv_evenBasis_add_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean/declarations/iteratedderiv-evenbasis-add-zero--0b156492d9b91d71c59a83d9.md) | 57 | `result-track:0b156492d9b91d71c59a83d98f2174964adb7d7dbf54eb4a004baf4ea7432084` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
