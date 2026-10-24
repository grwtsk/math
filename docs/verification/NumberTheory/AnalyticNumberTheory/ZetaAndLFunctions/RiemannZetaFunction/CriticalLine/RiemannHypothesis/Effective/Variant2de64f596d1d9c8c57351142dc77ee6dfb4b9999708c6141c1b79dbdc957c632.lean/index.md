# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Effective.Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a53c155d9d22710a053a3573734ed409642ac61",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a53c155d9d22710a053a3573734ed409642ac61`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.ZetaGrowth` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.LocalCount` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.CountByIntegral` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.StirlingVert` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Landau` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.HurwitzZetaValues` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.GammaFactsChiProof` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zeta_growth_quarter_explicit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/zeta-growth-quarter-explicit--b493652d1431690137af05b7.md) | 47 | `result-track:b493652d1431690137af05b7c2bfdda4f37770177f06e470302c5b591c3adc78` |
| 2 | `theorem` | [zeta_logDeriv_partial_fraction_explicit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/zeta-logderiv-partial-fraction-explicit--452e2907bf30c9b4b315ee3c.md) | 65 | `result-track:452e2907bf30c9b4b315ee3c26bae5879ed2d392ac4776a69b8209efc8051085` |
| 3 | `theorem` | [mu_eq_muq01](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/mu-eq-muq01--a1362ba2961bfe34e7e5721a.md) | 315 | `result-track:a1362ba2961bfe34e7e5721a209c079a4d63df3da209eb1edf4ef44f16a07788` |
| 4 | `theorem` | [mu_deriv_bound_explicit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/mu-deriv-bound-explicit--0feeb70224c80b64a9f64c19.md) | 330 | `result-track:0feeb70224c80b64a9f64c1946daea12caf6ab5e5bbedf1958382e19af5eaa3a` |
| 5 | `theorem` | [mu_increment_explicit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/mu-increment-explicit--325610beb43e4f6e4693b7c9.md) | 341 | `result-track:325610beb43e4f6e4693b7c90fa0c0304356109e30bd9bf5ebb588c3302eef18` |
| 6 | `theorem` | [zeta_local_count_explicit_large](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/zeta-local-count-explicit-large--8279d7d88b157631dad9a938.md) | 445 | `result-track:8279d7d88b157631dad9a93884437511a0baa8b31dc5a9137a542f6a41001142` |
| 7 | `theorem` | [norm_Gamma_le_Gamma_re](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/norm-gamma-le-gamma-re--2bc277445f6369b37044a5e1.md) | 514 | `result-track:2bc277445f6369b37044a5e1eef06acff1d4be3d87d3968c0a3cfe310a9ac61b` |
| 8 | `def` | [xi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/xi--6e9be2e8fb8d4e388454391b.md) | 529 | `declaration-track:6e9be2e8fb8d4e388454391b707cec2e68a5d18e2d617785242ac6c6b3c31420` |
| 9 | `theorem` | [xi_differentiable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/xi-differentiable--3e9801ac76df2d7c487f1706.md) | 531 | `result-track:3e9801ac76df2d7c487f17061c4e995902683d801b0f06b5f72b02fdcc2a02ac` |
| 10 | `theorem` | [xi_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/xi-eq--769db9c790a81eef9e8bcbab.md) | 536 | `result-track:769db9c790a81eef9e8bcbab9d3eb29488d2dfa3d99450ea6046f929f149c6a6` |
| 11 | `theorem` | [xi_one_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/xi-one-sub--620fa66f8c52cac1425b4446.md) | 545 | `result-track:620fa66f8c52cac1425b44467b49070b5b1d640d5e2e1987c4a1012f77488b45` |
| 12 | `theorem` | [xi_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/xi-two--74f4492338d560cc16bd3167.md) | 550 | `result-track:74f4492338d560cc16bd316751a238b5e5aba4d6ae7804c28c7fc3bb87c645b8` |
| 13 | `theorem` | [Real_Gamma_le_24](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/real-gamma-le-24--2c41e9a33a37e779cc7188d9.md) | 576 | `result-track:2c41e9a33a37e779cc7188d98fdeae99e4994cda68ba2eaa4b97f2c91e5cdb96` |
| 14 | `theorem` | [xi_norm_le_right](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/xi-norm-le-right--afa9cdbd705658fae01bc41f.md) | 612 | `result-track:afa9cdbd705658fae01bc41f1df9d7145981b5e993d3c07cf9b63bed3731fc82` |
| 15 | `theorem` | [xi_norm_le_ball](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/xi-norm-le-ball--a60abfcd4f529322a994eb7f.md) | 684 | `result-track:a60abfcd4f529322a994eb7f0e1324d60be8797676ef0d85228e8d1b3efda24e` |
| 16 | `theorem` | [zeta_local_count_box](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/zeta-local-count-box--3c3e53baf4065c3d8d88602b.md) | 773 | `result-track:3c3e53baf4065c3d8d88602bb30bf7e04d0fb7c943f5903794a1fc21f0b68ac7` |
| 17 | `theorem` | [zeta_local_zero_count_explicit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/declarations/zeta-local-zero-count-explicit--5e2e5408352caa053ccebfb8.md) | 934 | `result-track:5e2e5408352caa053ccebfb869cd7772a2c7824873e1d02c5be5d50a8f5ce4ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
