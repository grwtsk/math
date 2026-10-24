# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SeamL.Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc0a5b4c084aed86c77f00c6cc834e11e454a187",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc0a5b4c084aed86c77f00c6cc834e11e454a187`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Statement` — import line 33; external provider; requires a separately pinned dependency.
- `Zeta23.ZetaReflect` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Lemmas` — import line 36; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 37; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 38; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.FiniteDimensional` — import line 39; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ne_one_of_primitive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/ne-one-of-primitive--aba9f09260b705b820b60ffe.md) | 57 | `result-track:aba9f09260b705b820b60ffea99aea1ea6a6941d395ce3e773daa18a51ea72a8` |
| 2 | `lemma` | [inv_ne_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/inv-ne-one--4ed0692a6a40df63e2514ea4.md) | 63 | `result-track:4ed0692a6a40df63e2514ea419047da7cfe29da2e5cc5c02512674e5c3a43f98` |
| 3 | `lemma` | [LFunction_two_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/lfunction-two-ne-zero--5ea5d7f2bfdad9e7bd3c9124.md) | 66 | `result-track:5ea5d7f2bfdad9e7bd3c91243d5e942e2fedc1ec1149bce66a778a70b3186ae1` |
| 4 | `lemma` | [LFunction_analyticOnNhd](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/lfunction-analyticonnhd--91cf9ae66885dbb253f7e5c1.md) | 69 | `result-track:91cf9ae66885dbb253f7e5c1f16868e9f4ae20c4f947e8400928aeaf1c5d6772` |
| 5 | `lemma` | [LFunction_conj_of_one_lt_re](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/lfunction-conj-of-one-lt-re--19f832aebfe7e3f148b47b89.md) | 74 | `result-track:19f832aebfe7e3f148b47b89676a826d1d7530b329d44ca7d7d38dc20b770d7d` |
| 6 | `theorem` | [LFunction_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/lfunction-conj--36ba1f63bee9013e51410243.md) | 103 | `result-track:36ba1f63bee9013e514102437e37966187a6fe37678669890c7688f7d4512f94` |
| 7 | `theorem` | [analyticOrderAt_LFunction_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/analyticorderat-lfunction-conj--e2eba4a656248409bbe25c42.md) | 126 | `result-track:e2eba4a656248409bbe25c42f39c2c92ee6759d54932754a664fe58c091c52dd` |
| 8 | `lemma` | [gammaFactor_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/gammafactor-analyticat--e53f074a1349dad609a364a8.md) | 140 | `result-track:e53f074a1349dad609a364a8ff187ee59610e1513950c71e02db684cfc67abaa` |
| 9 | `lemma` | [completed_eq_gamma_mul_L](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/completed-eq-gamma-mul-l--184fe33fd8466a7f4851f9ed.md) | 191 | `result-track:184fe33fd8466a7f4851f9ed3aa9b2206bcbfcc35f35bb28f7d7608ce78ceb78` |
| 10 | `theorem` | [rootNumber_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/rootnumber-ne-zero--1711c4ae5d06666fa86d3788.md) | 209 | `result-track:1711c4ae5d06666fa86d3788713d9a7ca6d0b435e3f156255eb835bd6539274e` |
| 11 | `theorem` | [analyticOrderAt_LFunction_one_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/analyticorderat-lfunction-one-sub--5ba763ef9f2ec7f7958e6378.md) | 232 | `result-track:5ba763ef9f2ec7f7958e637899ba2033757abc652e331aac89e557ab2297606c` |
| 12 | `theorem` | [L_mult_reflect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/l-mult-reflect--394d6e1e10ccd895a034355c.md) | 283 | `result-track:394d6e1e10ccd895a034355c434f477485bc304e7e7ae6a633eda5e461ceb052` |
| 13 | `theorem` | [L_reflect_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/l-reflect-zero--0cda245bd60122c76e945e82.md) | 295 | `result-track:0cda245bd60122c76e945e82b1aca74c6004d36bc8ab15ca774d6c46c609331d` |
| 14 | `theorem` | [LSeam_one_le_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/lseam-one-le-mult--f9b1151d818256f3252caca4.md) | 330 | `result-track:f9b1151d818256f3252caca42e10b7f98f35881b04651ce42602278394efd632` |
| 15 | `theorem` | [LSeam_finite_window](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/lseam-finite-window--619e37cfd497e2574352c877.md) | 349 | `result-track:619e37cfd497e2574352c8777a2e22a0efc07e9778c8d4ff0d604867205c0d7f` |
| 16 | `theorem` | [LSeam_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/declarations/lseam-of--c977e670de2cd7a0f8ab7c3f.md) | 375 | `result-track:c977e670de2cd7a0f8ab7c3f93929228f412defb1ffd2e6d6c2254f3f260912a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
