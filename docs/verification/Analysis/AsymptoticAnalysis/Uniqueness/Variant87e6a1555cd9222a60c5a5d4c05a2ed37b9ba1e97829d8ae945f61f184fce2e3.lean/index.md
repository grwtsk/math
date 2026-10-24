# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Uniqueness.Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21e4d8592e1cf731850fea2bb638a074f6913ae7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21e4d8592e1cf731850fea2bb638a074f6913ae7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Linear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Composition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Completion` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Asymptotics.IsBigO.continuousMultilinearMap_apply_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/asymptotics-isbigo-continuousmultilinearmap-apply-eq-zero--142cde8f3bbd6566ab61cfa6.md) | 42 | `result-track:142cde8f3bbd6566ab61cfa6442384c65c89b413de7e5c17689e6b3e526bcfa5` |
| 2 | `theorem` | [HasFPowerSeriesAt.apply_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/hasfpowerseriesat-apply-eq-zero--c375e7b025b15c464578b1ef.md) | 90 | `result-track:c375e7b025b15c464578b1ef4a78b6da131fc61d774190d9ff291e7364c1b94d` |
| 3 | `theorem` | [HasFPowerSeriesAt.eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/hasfpowerseriesat-eq-zero--af35a0bb73279876c8b33cb3.md) | 104 | `result-track:af35a0bb73279876c8b33cb31ed371400d4646b50874e2f99a8c6c152671388f` |
| 4 | `theorem` | [HasFPowerSeriesAt.eq_formalMultilinearSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/hasfpowerseriesat-eq-formalmultilinearseries--1677a24b0a600a8a282656fe.md) | 111 | `result-track:1677a24b0a600a8a282656fe9d9e79e44d2807eb3ce6288ad33270db8d6bace2` |
| 5 | `theorem` | [HasFPowerSeriesAt.eq_formalMultilinearSeries_of_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/hasfpowerseriesat-eq-formalmultilinearseries-of-eventually--b2be1845120897bb3644696b.md) | 115 | `result-track:b2be1845120897bb3644696b8c0c74890577080585166616bb450ac46d4ce9aa` |
| 6 | `theorem` | [HasFPowerSeriesAt.eq_zero_of_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/hasfpowerseriesat-eq-zero-of-eventually--b5e7dbbd9b2d8d156d5cb433.md) | 121 | `result-track:b5e7dbbd9b2d8d156d5cb4338df1074ae2d2812620dc657bfc6a6f2b59aa7f67` |
| 7 | `theorem` | [HasFPowerSeriesOnBall.exchange_radius](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/hasfpowerseriesonball-exchange-radius--033d3375401772e36776e004.md) | 128 | `result-track:033d3375401772e36776e0049a10f7ed17ec621a87a78172e1dd1f28bf086ca2` |
| 8 | `theorem` | [HasFPowerSeriesOnBall.r_eq_top_of_exists](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/hasfpowerseriesonball-r-eq-top-of-exists--3cec64519bf106b2b14af500.md) | 136 | `result-track:3cec64519bf106b2b14af5006d87ccc5bdf85c144b38345321207fd8cf43945d` |
| 9 | `theorem` | [eqOn_zero_of_preconnected_of_eventuallyEq_zero_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/eqon-zero-of-preconnected-of-eventuallyeq-zero-aux--b661a090904d4e69102f2276.md) | 157 | `result-track:b661a090904d4e69102f2276b4d43ead35803b80af6219745006f93452505bcf` |
| 10 | `theorem` | [eqOn_zero_of_preconnected_of_eventuallyEq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/eqon-zero-of-preconnected-of-eventuallyeq-zero--68175f5867cfc3f4ecc0f155.md) | 202 | `result-track:68175f5867cfc3f4ecc0f1551a3637dcefbc6409ed982c9a350ca2e9f648964b` |
| 11 | `theorem` | [eqOn_of_preconnected_of_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/eqon-of-preconnected-of-eventuallyeq--5bba4a0b7897aa6288a7763b.md) | 221 | `result-track:5bba4a0b7897aa6288a7763b74982f4857bbebb9fc117db9c9d70ba2b4a3c140` |
| 12 | `theorem` | [eq_of_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/declarations/eq-of-eventuallyeq--3dd5a8cd9a11f7be081748ce.md) | 232 | `result-track:3dd5a8cd9a11f7be081748ce942560cccc6271ba9af4386b83eb6c9bfde96f55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
