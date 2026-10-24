# Verification target: GRWTSK.Analysis.ComplexAnalysis.Linear.Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "279a6377859b312338579f9e9d071dabdd4af1ad",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `279a6377859b312338579f9e9d071dabdd4af1ad`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fpowerSeries](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpowerseries--252a2aa57bba3d1f274fa445.md) | 32 | `declaration-track:252a2aa57bba3d1f274fa445c28b2ad244a9429923f8e0ac6382f8e57a4d2c73` |
| 2 | `theorem` | [fpower_series_apply_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpower-series-apply-zero--7e62a7be9ae07deeb8d9d553.md) | 38 | `result-track:7e62a7be9ae07deeb8d9d553d10b3c916a04ef40f57f8d4638aca3df20503733` |
| 3 | `theorem` | [fpower_series_apply_one](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpower-series-apply-one--25bee561bd732d1f69f5f117.md) | 42 | `result-track:25bee561bd732d1f69f5f117bcb89e334e4780b8749eb02e61a96bff4cbc4441` |
| 4 | `theorem` | [fpowerSeries_apply_add_two](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpowerseries-apply-add-two--156d32cb4531e153d9a8d456.md) | 46 | `result-track:156d32cb4531e153d9a8d4564cf5a8d9a4ccd716c0bbf93c0282b60ce5ae00a4` |
| 5 | `theorem` | [fpowerSeries_radius](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpowerseries-radius--3858a1747b5e024890b2ee0e.md) | 55 | `result-track:3858a1747b5e024890b2ee0e5d7db2d222322014c6728cbbb9470d16bcc4be08` |
| 6 | `theorem` | [hasFPowerSeriesOnBall](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/hasfpowerseriesonball--f8c6d5385a66ffcc3c2f3492.md) | 59 | `result-track:f8c6d5385a66ffcc3c2f3492b8275cb774de278fcbfedfff2eee9d6f86170769` |
| 7 | `theorem` | [hasFPowerSeriesAt](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/hasfpowerseriesat--003abc17ddf1373e44d7e829.md) | 67 | `result-track:003abc17ddf1373e44d7e8298571155639a4aa10a594c730e10c749e10bf68f2` |
| 8 | `theorem` | [analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/analyticat--144e9401fd4bad28c79f0098.md) | 72 | `result-track:144e9401fd4bad28c79f0098a93ef4bdf81ac9ba009ac28a8f43e3861b065795` |
| 9 | `def` | [uncurryBilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/uncurrybilinear--8c27e930d2a1e7f020336a2c.md) | 80 | `declaration-track:8c27e930d2a1e7f020336a2c2d5b1090c0381c7f77eeb9c0c18b4e3585980ea1` |
| 10 | `theorem` | [uncurryBilinear_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/uncurrybilinear-apply--fe151c7eeeb4d63c25e8cd59.md) | 87 | `result-track:fe151c7eeeb4d63c25e8cd5963941a3b004d0774f0be9b263d1e4a7ec2c34596` |
| 11 | `def` | [fpowerSeriesBilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpowerseriesbilinear--81104f8120d6a7e16dd544c8.md) | 93 | `declaration-track:81104f8120d6a7e16dd544c89e7920df6cde3d9b158a10ad151fd74f7eb7bf94` |
| 12 | `theorem` | [fpowerSeriesBilinear_apply_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpowerseriesbilinear-apply-zero--4a7f0788c24a2012334e6422.md) | 100 | `result-track:4a7f0788c24a2012334e6422700dcc67baf4130888624cc45de839de4ce852e7` |
| 13 | `theorem` | [fpowerSeriesBilinear_apply_one](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpowerseriesbilinear-apply-one--cafe1d9a68b2ccbe00c1650a.md) | 104 | `result-track:cafe1d9a68b2ccbe00c1650ad710cc9af82e503452f4513ad7290c0c41025503` |
| 14 | `theorem` | [fpowerSeriesBilinear_apply_two](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpowerseriesbilinear-apply-two--1268dcc189eb86ef83e3b5f2.md) | 108 | `result-track:1268dcc189eb86ef83e3b5f2fab70406a66a243fef614a0c6f743e4fd8322fcf` |
| 15 | `theorem` | [fpowerSeriesBilinear_apply_add_three](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpowerseriesbilinear-apply-add-three--2a5180ae2addd4c51d06fccd.md) | 112 | `result-track:2a5180ae2addd4c51d06fccda42fd3390fe0792d221b825353e9341da87319f6` |
| 16 | `theorem` | [fpowerSeriesBilinear_radius](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/fpowerseriesbilinear-radius--11894135635c68036f75fff8.md) | 125 | `result-track:11894135635c68036f75fff855cd0db0d4c155d4a3bb6652c16a216a447f9ef8` |
| 17 | `theorem` | [hasFPowerSeriesOnBall_bilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/hasfpowerseriesonball-bilinear--4a895a6e042964811dac9fb2.md) | 130 | `result-track:4a895a6e042964811dac9fb24317df0173f3be2d00397a89c7c9c71580791eb5` |
| 18 | `theorem` | [hasFPowerSeriesAt_bilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/hasfpowerseriesat-bilinear--6f68316dfd72ca95512b9f26.md) | 141 | `result-track:6f68316dfd72ca95512b9f2650fbb7048c59a95f214ec3ea1f3940d744e7c939` |
| 19 | `theorem` | [analyticAt_bilinear](../../../../../mathematics/Analysis/ComplexAnalysis/Linear/Variant2535d2af6031a1d3d4061318b22d2d7f0a0f65483dbc4c2fac154b5844d90f00.lean/declarations/analyticat-bilinear--132b8705280362de7deca41a.md) | 146 | `result-track:132b8705280362de7deca41a448c244a901059b8181c59448d1c047931471f02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
