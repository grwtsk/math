# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Contour.Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1c1cce630522694033ba857604ab4313c23ddd4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1c1cce630522694033ba857604ab4313c23ddd4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Seam` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Defs` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.Analytic.RectangleLogDeriv` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.GenericRvM` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GoodHeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/declarations/goodheight--bc8bf8c3cc69bbf5b33e2807.md) | 36 | `declaration-track:bc8bf8c3cc69bbf5b33e2807ec734a09f46f6c8b2eb590e70e79ea18e9fd5413` |
| 2 | `theorem` | [exists_goodHeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/declarations/exists-goodheight--aa49ee666ed209dce67f68db.md) | 39 | `result-track:aa49ee666ed209dce67f68dbe855ac98f36f652f8df31c324399f64c78629784` |
| 3 | `theorem` | [goodHeight_xiDeriv_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/declarations/goodheight-xideriv-ne-zero--958a937f07482ca7a746c03a.md) | 50 | `result-track:958a937f07482ca7a746c03a06b63be78a5d8bb68c982d561fef9d234e5be49b` |
| 4 | `theorem` | [rectangleIntegral'_logDeriv_xiDeriv_eq_Ncount](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/declarations/rectangleintegral-logderiv-xideriv-eq-ncount--6aa0e8e885922922c40ef45d.md) | 55 | `result-track:6aa0e8e885922922c40ef45d5317255884f786fdf70b3a07abd7919d8099fb65` |
| 5 | `lemma` | [continuous_logDeriv_xiDeriv_horizontal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/declarations/continuous-logderiv-xideriv-horizontal--138ba6d68e45ed46f1d20167.md) | 115 | `result-track:138ba6d68e45ed46f1d2016725331b843e40c7d9430f4871542fcc33aea1f11b` |
| 6 | `lemma` | [horizontal_fold](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/declarations/horizontal-fold--64177f65c27487dd6b7f2a4f.md) | 126 | `result-track:64177f65c27487dd6b7f2a4f83c04b880ed6c865da2362f254a6ac9b8eedbde2` |
| 7 | `lemma` | [vertical_fold](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/declarations/vertical-fold--a797a940810dccbc99f152ed.md) | 133 | `result-track:a797a940810dccbc99f152ed302bee4d1c95bc49af5f03d1e16e2adfd95d1f25` |
| 8 | `theorem` | [rectangleIntegral_logDeriv_xiDeriv_eq_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/declarations/rectangleintegral-logderiv-xideriv-eq-halfcontour--8049bb85c9a66e6b033fade6.md) | 140 | `result-track:8049bb85c9a66e6b033fade6d9bbc75548a7c434cbb3ef1ed7ddfe2e979ae231` |
| 9 | `theorem` | [Ncount_eq_im_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant21f4d883ee49ee8c63527962f48a7078b4c7de7117d8cb22be0365eecdfc4eba.lean/declarations/ncount-eq-im-halfcontour--682413a93a01de8a077ecdb1.md) | 150 | `result-track:682413a93a01de8a077ecdb12a3068f79b590ee06eec9665751fd3a77007f5a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
