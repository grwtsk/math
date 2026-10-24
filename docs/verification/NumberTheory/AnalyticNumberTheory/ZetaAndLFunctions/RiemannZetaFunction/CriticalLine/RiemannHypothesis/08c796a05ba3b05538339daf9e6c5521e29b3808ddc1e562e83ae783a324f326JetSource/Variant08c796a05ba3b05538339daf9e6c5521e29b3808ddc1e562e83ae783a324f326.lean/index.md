# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource.Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96b6b0543d0236bec9d4224f7552cc822868210b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96b6b0543d0236bec9d4224f7552cc822868210b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jetCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/declarations/jetcoefficient--f02cd5a8463398bee06ed68b.md) | 9 | `declaration-track:f02cd5a8463398bee06ed68be880aef7d43b191deb7176298b7ea9baa90ce5e2` |
| 2 | `theorem` | [jetPolynomial_eq_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/declarations/jetpolynomial-eq-sum--40e6cac05d51bc11a2340d99.md) | 14 | `result-track:40e6cac05d51bc11a2340d99e011695f31054714e267de964bcc95478cee88c3` |
| 3 | `def` | [thetaPhiJet](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/declarations/thetaphijet--74e473f5bc95da3378675b04.md) | 19 | `declaration-track:74e473f5bc95da3378675b04abd6baa4f9cd46834c2a75283d253a860bafb79a` |
| 4 | `theorem` | [thetaPhi_eq_gaussianSums](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/declarations/thetaphi-eq-gaussiansums--56148c3d5e09e438c4b0f617.md) | 22 | `result-track:56148c3d5e09e438c4b0f61787c85b2e90eeef392ee31b479c4469df3366539d` |
| 5 | `theorem` | [thetaPhiJet_eq_gaussianSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/declarations/thetaphijet-eq-gaussiansum--56bb0cfa3b1f306fdadfe21a.md) | 38 | `result-track:56bb0cfa3b1f306fdadfe21aa822b708baf61ab73a5203b9f6ae5b66716a22f3` |
| 6 | `theorem` | [scaledGaussianTerm_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/declarations/scaledgaussianterm-eq--77369decd6da676743713dc5.md) | 46 | `result-track:77369decd6da676743713dc51acc5ab063859d77f2dbfa49e2b78178a3b9fe07` |
| 7 | `theorem` | [thetaPhiJet_eq_polynomial_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/declarations/thetaphijet-eq-polynomial-sum--71520ff72a20bf6351a4cd71.md) | 75 | `result-track:71520ff72a20bf6351a4cd7104c8e433f35ea2a618d9d2a8013af3d081678a13` |
| 8 | `theorem` | [thetaPhiJet_polynomial_summable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/declarations/thetaphijet-polynomial-summable--9c7510d68026ba79de323f9b.md) | 107 | `result-track:9c7510d68026ba79de323f9b93d642e0068f8a0a33f61519993f8556eefaa968` |
| 9 | `theorem` | [hasDerivAt_thetaPhiJet](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/declarations/hasderivat-thetaphijet--4dff2bb3524bdb9b84aae217.md) | 126 | `result-track:4dff2bb3524bdb9b84aae2176d5d366e15d06959952175e2c1b5773cc01d8e1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
