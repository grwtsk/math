# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.LnFactorialSeries.Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10958b0661cc0e8ab6e4d32585d4bdf2b3ce5b34",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10958b0661cc0e8ab6e4d32585d4bdf2b3ce5b34`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Star` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Star` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [summable_series](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/declarations/summable-series--d9304cfc20754849360245dd.md) | 49 | `result-track:d9304cfc20754849360245dd21eed807138da8aeeb41a8c97339f975f127b073` |
| 2 | `lemma` | [hs_lo](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/declarations/hs-lo--d288f8ab601e6bddffee18b5.md) | 58 | `result-track:d288f8ab601e6bddffee18b59de74bc7f90f3692374cfba3d0d9cf94563d1798` |
| 3 | `lemma` | [tail_drop_factor](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/declarations/tail-drop-factor--9797f82469b0d331f78d984c.md) | 69 | `result-track:9797f82469b0d331f78d984c1716eb131b24eb1278378474d13f506b9a4d4458` |
| 4 | `lemma` | [tail_factor_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/declarations/tail-factor-bound--08d16b20d8e5bdea4010c5cb.md) | 80 | `result-track:08d16b20d8e5bdea4010c5cbaa22ecdce050b5eb61db54a18a0989a958c48fab` |
| 5 | `lemma` | [exp_series_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/declarations/exp-series-eq--f4438d66586b745b424d8e50.md) | 92 | `result-track:f4438d66586b745b424d8e50e4b593918e5f7ed84c4ba550f13a4e8c5a3960ad` |
| 6 | `lemma` | [tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/declarations/tail-bound--4a07386123f9da3b2efba6e5.md) | 96 | `result-track:4a07386123f9da3b2efba6e5807ff1552b13d414cbccdb71740994479771a000` |
| 7 | `lemma` | [hs_hi_close](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/declarations/hs-hi-close--8ed8e74918d351feea676dbc.md) | 101 | `result-track:8ed8e74918d351feea676dbc781d827c727a434d4159f6fdd7bcaee4608c81bd` |
| 8 | `lemma` | [hs_hi](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/declarations/hs-hi--0e6df08be3b91e15e1df4d34.md) | 117 | `result-track:0e6df08be3b91e15e1df4d349e330cb53a463355b071639f9d36ceab61fb066f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
