# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CatalanJacobiResolvent.Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce97db2d89eeb7bd2edac6b614299343571058f3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce97db2d89eeb7bd2edac6b614299343571058f3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.CatalanJacobi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Catalan` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Expand` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evenMomentSeries](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/evenmomentseries--910c8e02ed75ca00168aaa0d.md) | 25 | `declaration-track:910c8e02ed75ca00168aaa0d008f1542957545d5e0389fec764df85f7ba62b0a` |
| 2 | `lemma` | [evenMomentSeries_eq_catalanSeries](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/evenmomentseries-eq-catalanseries--ab453dac29a93a8652a46f64.md) | 28 | `result-track:ab453dac29a93a8652a46f640c0a71b4b82060f89eeb6b218e049c1d746d00a3` |
| 3 | `lemma` | [evenMomentSeries_fixed_point](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/evenmomentseries-fixed-point--cf853d2cfd3820399a256d3c.md) | 32 | `result-track:cf853d2cfd3820399a256d3c1f0d447582122dfcb388bb776c6c066554bebf45` |
| 4 | `def` | [evenMomentSeriesRat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/evenmomentseriesrat--6c68f8dbb5fd07a0396156ff.md) | 40 | `declaration-track:6c68f8dbb5fd07a0396156ff7af0f1aa2ccfcdfba28b6b4cb74684e61ac91a78` |
| 5 | `lemma` | [evenMomentSeriesRat_coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/evenmomentseriesrat-coeff--a51103aa11931ed5a1e4b8b7.md) | 43 | `result-track:a51103aa11931ed5a1e4b8b7a132ea35908d6e471e2dd7ecb6535843fa1a2a65` |
| 6 | `lemma` | [evenMomentSeriesRat_fixed_point](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/evenmomentseriesrat-fixed-point--c13f410bc33929342c7ac9fb.md) | 47 | `result-track:c13f410bc33929342c7ac9fbfaafefac943d91b5723b347c8f5ef6d12301e2a6` |
| 7 | `lemma` | [evenMomentSeriesRat_constantCoeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/evenmomentseriesrat-constantcoeff--1cecef16d97cd07e016b5e5c.md) | 52 | `result-track:1cecef16d97cd07e016b5e5c365a699895c069a40be2e4674f681a97e58dc1c9` |
| 8 | `lemma` | [evenMomentSeriesRat_mul_denominator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/evenmomentseriesrat-mul-denominator--9995a5810ce1b482639aba2b.md) | 56 | `result-track:9995a5810ce1b482639aba2b67864cf751a5a46f49bdd1ba76c737c64565f329` |
| 9 | `lemma` | [evenMomentSeriesRat_jFraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/evenmomentseriesrat-jfraction--2f607030c0aab99fa14a7c32.md) | 66 | `result-track:2f607030c0aab99fa14a7c328c2b3b17593737326aea4e8e0a57849ad74b928d` |
| 10 | `def` | [formalResolventSeries](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/formalresolventseries--f7954753cdacf586f85b1466.md) | 74 | `declaration-track:f7954753cdacf586f85b1466c9b3061b9b730f627d9756dd3c2d8f6dac306e22` |
| 11 | `lemma` | [formalResolventSeries_coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/formalresolventseries-coeff--cd146087b144307d7c940ebc.md) | 77 | `result-track:cd146087b144307d7c940ebcf2e027c9e9085a2b5a4bd51b2764612b61745dc3` |
| 12 | `lemma` | [formalResolventSeries_fixed_point](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/formalresolventseries-fixed-point--98fbe9d3e20cd1d500bc7aed.md) | 85 | `result-track:98fbe9d3e20cd1d500bc7aed3ea67ea2164a060f43fd9eefd413882b430b52f6` |
| 13 | `lemma` | [formalResolventSeries_mul_denominator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/formalresolventseries-mul-denominator--b70570a46a9050ece722659f.md) | 90 | `result-track:b70570a46a9050ece722659ff592493de19ba0b7d33db500e25db5d4a34f4e43` |
| 14 | `lemma` | [formalResolventSeries_jFraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2.lean/declarations/formalresolventseries-jfraction--b0aa26a7f7bc912da7d54b1c.md) | 101 | `result-track:b0aa26a7f7bc912da7d54b1c8765db331d02fd62f68fbfa302adc317c4e2d43a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
