# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fold.Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ffac60c4659efa429b8d07d54b13c30acc5c845",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ffac60c4659efa429b8d07d54b13c30acc5c845`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.Defs` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.CountByIntegral` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.XiLogDeriv` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaConj` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cpow_ofReal_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/cpow-ofreal-conj--bfbc9e02ff0a8dd763ea3e5f.md) | 34 | `result-track:bfbc9e02ff0a8dd763ea3e5ff29cdc1a3f0791a92e08430080c92b9bdcd9c22a` |
| 2 | `lemma` | [Gammaℝ_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/gamma-conj--0097517cb2bf385a90d44af2.md) | 41 | `result-track:0097517cb2bf385a90d44af27705b57b2cdb54055fd4d7a0d56600afcd8ba3ef` |
| 3 | `lemma` | [deriv_Gammaℝ_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/deriv-gamma-conj--77083e1ab7fc9f60ed089413.md) | 49 | `result-track:77083e1ab7fc9f60ed08941318159e711af85f2fad39403829dd0a734541bb3f` |
| 4 | `lemma` | [logDeriv_Gammaℝ_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/logderiv-gamma-conj--90e654ac98f1ebce26e4eaa2.md) | 56 | `result-track:90e654ac98f1ebce26e4eaa25e559dad0b1b0ff593450bc39e24c3173ab44ad0` |
| 5 | `lemma` | [logDeriv_completedZeta_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/logderiv-completedzeta-conj--ab43e1ba96a4a82c22b4bc13.md) | 61 | `result-track:ab43e1ba96a4a82c22b4bc131c62590014901106d27e7d46144d1c8f2a83e4dd` |
| 6 | `lemma` | [logDeriv_completedZeta_one_sub_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/logderiv-completedzeta-one-sub-conj--c7455ae1a17735d05e32acc8.md) | 76 | `result-track:c7455ae1a17735d05e32acc89435d8e27ee29e5f5e274d80183653f65b5841c3` |
| 7 | `lemma` | [path_point_facts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/path-point-facts--cde4911f0c8fab0fb0fec48b.md) | 89 | `result-track:cde4911f0c8fab0fb0fec48b8e541d36c641c5df6e44a85c2e3ea84792246d7f` |
| 8 | `lemma` | [continuousAt_logDeriv_completedZeta](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/continuousat-logderiv-completedzeta--9210e86fd7c33f787a6047a2.md) | 99 | `result-track:9210e86fd7c33f787a6047a26548d51c6f34440f3812b955370e685e71f5f7de` |
| 9 | `lemma` | [horizontal_fold](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/horizontal-fold--b40a13227bf4c01eab173410.md) | 109 | `result-track:b40a13227bf4c01eab173410be9e18820b763261b3c7ca908b250f600eb6f645` |
| 10 | `lemma` | [vertical_fold](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/vertical-fold--bd28ce250475522fa0aa739d.md) | 146 | `result-track:bd28ce250475522fa0aa739d2c7f5eea800afb7c0e25219d6800274719e72d55` |
| 11 | `theorem` | [rectangleIntegral_logDeriv_completedZeta_eq_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/rectangleintegral-logderiv-completedzeta-eq-halfcontour--15474eb5001f2b89a28a76ca.md) | 166 | `result-track:15474eb5001f2b89a28a76ca9f79fb626004b797f8c166f57e07153cc89ca6ce` |
| 12 | `theorem` | [Ncount_eq_im_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/declarations/ncount-eq-im-halfcontour--874a9c67b15299862d02d6d5.md) | 189 | `result-track:874a9c67b15299862d02d6d5dc58f93d7b0a57671bbb99cbb81b4fdee20afd6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
