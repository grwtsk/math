# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "255bfa93b6b95d0cbe943b333662a9dfafc872de",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `255bfa93b6b95d0cbe943b333662a9dfafc872de`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailLogSlope` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaTail_ratio_eq_product](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3.lean/declarations/thetatail-ratio-eq-product--b5181e2f450ae99a4b36f3f1.md) | 24 | `result-track:b5181e2f450ae99a4b36f3f18d2fe989b4c70da2032aa326f080830e03bd36e7` |
| 2 | `theorem` | [thetaTail_ratio_product_antitone](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3.lean/declarations/thetatail-ratio-product-antitone--92063c2768b7932150709442.md) | 34 | `result-track:92063c2768b793215070944291db7d23a959d4bab8dc6a43b8c8ca149d0f9ad6` |
| 3 | `theorem` | [thetaTail_div_antitone](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3.lean/declarations/thetatail-div-antitone--44d6e4c3155a03f17b20de4d.md) | 42 | `result-track:44d6e4c3155a03f17b20de4deeeddfb36ca389649e07dd28a0f74b64db158f73` |
| 4 | `theorem` | [thetaTailSignRegular_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4ee849e4405bb0bf22e79b0afcb19000436fceb5bda7b94bd0a01ac7efc14ce3.lean/declarations/thetatailsignregular-two--7ddec34fc402eaea52b75f2b.md) | 50 | `result-track:7ddec34fc402eaea52b75f2bc48044d71d68ec39770e0e3559445d823ab523f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
