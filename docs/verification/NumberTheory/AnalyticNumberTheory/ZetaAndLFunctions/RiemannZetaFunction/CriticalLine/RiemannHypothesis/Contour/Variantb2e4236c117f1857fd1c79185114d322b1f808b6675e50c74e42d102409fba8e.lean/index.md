# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Contour.Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81548e1e7a17365f261fff763ed955ceca997060",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81548e1e7a17365f261fff763ed955ceca997060`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Seam` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.Analytic.RectangleLogDeriv` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.GenericRvM` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GoodHeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/declarations/goodheight--a0ddcdb4fc7db2e621a1f75c.md) | 28 | `declaration-track:a0ddcdb4fc7db2e621a1f75c40ec17424dc310ce3dda8fadef97876498cb5973` |
| 2 | `theorem` | [exists_goodHeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/declarations/exists-goodheight--a5d65007d1081004eb3aa869.md) | 31 | `result-track:a5d65007d1081004eb3aa8690ce81f4a83e6cf925869be99b75a2b1d5ecf4572` |
| 3 | `theorem` | [goodHeight_xiDeriv_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/declarations/goodheight-xideriv-ne-zero--8e6e4ee07c206ca682a66248.md) | 42 | `result-track:8e6e4ee07c206ca682a66248db66372c928a7b5b7f66564955b4aae1997a8d50` |
| 4 | `theorem` | [rectangleIntegral'_logDeriv_xiDeriv_eq_Ncount](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/declarations/rectangleintegral-logderiv-xideriv-eq-ncount--6b9614a84681838f32e1d225.md) | 47 | `result-track:6b9614a84681838f32e1d2256e8164e4bd8fea6aa01b9a8fddc481ecf4ec372c` |
| 5 | `lemma` | [continuous_logDeriv_xiDeriv_horizontal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/declarations/continuous-logderiv-xideriv-horizontal--3d424d8f678365b77225af8a.md) | 107 | `result-track:3d424d8f678365b77225af8aa1858f900ffeca2be5bda8ebdd7f25ef0485c4c5` |
| 6 | `lemma` | [horizontal_fold](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/declarations/horizontal-fold--a24c0b76ef628d1d1b26ee1b.md) | 118 | `result-track:a24c0b76ef628d1d1b26ee1b396d3ae6b67fc2a62e5769b3b5dc62670a37e59b` |
| 7 | `lemma` | [vertical_fold](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/declarations/vertical-fold--0a8932628aebaaf6f4324a27.md) | 125 | `result-track:0a8932628aebaaf6f4324a27bdb48b2aed96cf9940d77cadc31589010cb97170` |
| 8 | `theorem` | [rectangleIntegral_logDeriv_xiDeriv_eq_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/declarations/rectangleintegral-logderiv-xideriv-eq-halfcontour--dab08579d19a433db0fe90e3.md) | 132 | `result-track:dab08579d19a433db0fe90e37b23ed2d14136e1446ef63e71b85ae136061b88a` |
| 9 | `theorem` | [Ncount_eq_im_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/declarations/ncount-eq-im-halfcontour--5156161a88f3f589e300e65f.md) | 142 | `result-track:5156161a88f3f589e300e65f3ed76dc15343a82881585a65d523dfa96802637e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
