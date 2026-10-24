# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GenericRvM.Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29a5022721d4c466f23a8bb07e519816e03e05cd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29a5022721d4c466f23a8bb07e519816e03e05cd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ZeroCount.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Defs` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Complete` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.Analytic.RectangleLogDeriv` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [horizontal_fold_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/declarations/horizontal-fold-of--97befc20aa157c691c1a39c0.md) | 45 | `result-track:97befc20aa157c691c1a39c0217c4333d87a6b71077c559fe2b0cabff23a3f99` |
| 2 | `lemma` | [vertical_fold_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/declarations/vertical-fold-of--efdde23c3dab1e7b48766b95.md) | 67 | `result-track:efdde23c3dab1e7b48766b9542a7aa6ab53e0576b6ccd8b4d0177f9f460f0fdb` |
| 3 | `theorem` | [rectangleIntegral_eq_halfContour_of_fold](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/declarations/rectangleintegral-eq-halfcontour-of-fold--0a912d613658b5f40fabb367.md) | 77 | `result-track:0a912d613658b5f40fabb367b240226c7f2dfa2eb329cd3c8e8e22f0c52997dd` |
| 4 | `theorem` | [natCast_eq_im_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/declarations/natcast-eq-im-halfcontour--2cce97377e9721fa3d855e40.md) | 101 | `result-track:2cce97377e9721fa3d855e40df381d84394d32ab6df82691bc9f5d703e71ce11` |
| 5 | `theorem` | [rvM_main_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/declarations/rvm-main-of--91e126f627a031b3460e8f02.md) | 118 | `result-track:91e126f627a031b3460e8f02910791b8c70656b074f5b1f711320acb2e28dceb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
