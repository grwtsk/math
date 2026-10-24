# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualRightBumpTail.Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c724d16fe29ff0153591b571a7830e05f9c25c3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c724d16fe29ff0153591b571a7830e05f9c25c3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualBumpMellinLineBudget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualMangoldtCoefficients](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/declarations/actualmangoldtcoefficients--759604d314f431e243dc2411.md) | 27 | `declaration-track:759604d314f431e243dc2411207cd3850287b9d3491b54a5c5cb2fabfe824f1f` |
| 2 | `def` | [actualRightLineMass](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/declarations/actualrightlinemass--749fdce27669abb203d76239.md) | 30 | `declaration-track:749fdce27669abb203d762396c2f5e84bcd99d08527ce504f84e70c2503d5901` |
| 3 | `theorem` | [actualRightLineMass_summable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/declarations/actualrightlinemass-summable--1676027528ccd217cb2adb54.md) | 34 | `result-track:1676027528ccd217cb2adb54c9ea604e8046a389b3d785687ead0d1f4f0ac0d0` |
| 4 | `theorem` | [actualRightLineMass_eq_real_series](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/declarations/actualrightlinemass-eq-real-series--24077d6fc6ef67315b9e1f35.md) | 41 | `result-track:24077d6fc6ef67315b9e1f35e5ed51c0e53f907f3c75244db88613eef54df2bf` |
| 5 | `theorem` | [actualRightLineMass_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/declarations/actualrightlinemass-nonneg--93175eb0256fc338b25c5556.md) | 51 | `result-track:93175eb0256fc338b25c555648d294db433ff6929e2d48d903128ea0f803ef37` |
| 6 | `theorem` | [actual_zeta_logDeriv_on_line_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/declarations/actual-zeta-logderiv-on-line-norm-le--dcc747c7df5e9a5c965a1153.md) | 55 | `result-track:dcc747c7df5e9a5c965a11535449fd86c6054f49cd05583c87a72c0ad3ebc5d5` |
| 7 | `def` | [actualRightBumpDensity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/declarations/actualrightbumpdensity--a544b96bd884e201714fcf66.md) | 77 | `declaration-track:a544b96bd884e201714fcf6663fecdac4163203ac7eec6457d5a229b63ece6fa` |
| 8 | `theorem` | [actualRightBumpDensity_eq_logDeriv](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/declarations/actualrightbumpdensity-eq-logderiv--a2d6f62a8e3d8e45f40f2a5e.md) | 82 | `result-track:a2d6f62a8e3d8e45f40f2a5eb17077b1f25d6dfa7562b859c071cef27279fd44` |
| 9 | `def` | [actualRightBumpTailNumerator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/declarations/actualrightbumptailnumerator--2b8273a8c958f1d2497fb1d5.md) | 92 | `declaration-track:2b8273a8c958f1d2497fb1d5d0bdbe3d805d1bf75b00480ba91b9de554aeacc5` |
| 10 | `theorem` | [actualRightBumpDensity_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/declarations/actualrightbumpdensity-norm-le--02df1348c54bc8aed23cf5eb.md) | 97 | `result-track:02df1348c54bc8aed23cf5eb559ed1ab35b3c53f11a8c18b035f7126a39f4a9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
