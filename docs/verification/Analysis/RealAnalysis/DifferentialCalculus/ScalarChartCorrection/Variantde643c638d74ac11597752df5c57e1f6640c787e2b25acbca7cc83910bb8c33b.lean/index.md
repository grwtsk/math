# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScalarChartCorrection.Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64b3b77e25d991535f252bf0c12fe76cce522f0b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64b3b77e25d991535f252bf0c12fe76cce522f0b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_composite_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/hasderivat-composite-second--e072e73f50a0680b8e64bec2.md) | 35 | `result-track:e072e73f50a0680b8e64bec260489a608d90eb705a6d1b3aecfce6ac45f88cea` |
| 2 | `theorem` | [scalar_hessian_correction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/scalar-hessian-correction--a88db6848db199435c91e8b4.md) | 56 | `result-track:a88db6848db199435c91e8b4055aec9f314c5bdfe9afa5a0f0facea6d882d02a` |
| 3 | `theorem` | [corrected_hessian_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/corrected-hessian-nonnegative--ce25b4242645241f0e5b4d49.md) | 70 | `result-track:ce25b4242645241f0e5b4d499b055334bc88fad86d0fc7161557a8eb65bf426f` |
| 4 | `def` | [logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/logoneplus--eff1d65e3ee906e59dda5d3f.md) | 83 | `declaration-track:eff1d65e3ee906e59dda5d3f22c1d79fb35b214e6eec33fa382d0429fb9c35b4` |
| 5 | `theorem` | [hasDerivAt_logOnePlus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/hasderivat-logoneplus--b2ccbbe4e4dabb9b0133fd9a.md) | 86 | `result-track:b2ccbbe4e4dabb9b0133fd9a53f1d3651d7937914c8b1129bba8785df74d1ae1` |
| 6 | `theorem` | [hasDerivAt_logOnePlusSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/hasderivat-logoneplusslope--c81a72f421ba1c8edbb039fb.md) | 94 | `result-track:c81a72f421ba1c8edbb039fb0309c9794b6e3fa07e35e9fdb5355ef17452df8f` |
| 7 | `theorem` | [logOnePlus_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/logoneplus-second--25637fa67c6a320c3f820ad6.md) | 101 | `result-track:25637fa67c6a320c3f820ad6e8c69bd3bfc2a80db9da196c376b15c6a2811ea0` |
| 8 | `theorem` | [hasDerivAt_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/hasderivat-logchart--0e8d1e6d39346a0314812da5.md) | 110 | `result-track:0e8d1e6d39346a0314812da5e757d3e528eed81e496241ae3f1e4ee72c53864b` |
| 9 | `theorem` | [hasDerivAt_logChartSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/hasderivat-logchartslope--f5b48a1ca57019c003c573f2.md) | 115 | `result-track:f5b48a1ca57019c003c573f2027e9a494c900fbaf0c640d5b1193afe92d9b6a1` |
| 10 | `def` | [bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/bernoullipotential--977d0c50fa1ae3caf0fe725c.md) | 120 | `declaration-track:977d0c50fa1ae3caf0fe725c9c13776f2a2419baca5a9243b20c0aad0caee948` |
| 11 | `theorem` | [hasDerivAt_bernoulliPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/hasderivat-bernoullipotential--57abe50a19a4e8ffb80bbeee.md) | 123 | `result-track:57abe50a19a4e8ffb80bbeeeb71f8356692dfd6773c594c911badc52456a78df` |
| 12 | `theorem` | [bernoulli_logChart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/bernoulli-logchart--87100b518e221c01d6e379b5.md) | 133 | `result-track:87100b518e221c01d6e379b51416ae8f4d4d616165cb9e9682f0154d48b11dc8` |
| 13 | `theorem` | [bernoulli_chart_term](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/bernoulli-chart-term--40664acf9385cbbf04983354.md) | 138 | `result-track:40664acf9385cbbf04983354e3b09c1cbb7b2fc6f74f37418a348a8dc657b854` |
| 14 | `theorem` | [bernoulli_corrected_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/bernoulli-corrected-second--9c6ceeaa038eaa24807efaaa.md) | 147 | `result-track:9c6ceeaa038eaa24807efaaa17d31b2770f93c3272c436350ae3439d2b65b4c5` |
| 15 | `theorem` | [bernoulli_sign_separation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variantde643c638d74ac11597752df5c57e1f6640c787e2b25acbca7cc83910bb8c33b.lean/declarations/bernoulli-sign-separation--918b9850a9f682c8365af5f5.md) | 158 | `result-track:918b9850a9f682c8365af5f50409d5f2e9c81d211bd6ff737dfdd09b2d6639cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
