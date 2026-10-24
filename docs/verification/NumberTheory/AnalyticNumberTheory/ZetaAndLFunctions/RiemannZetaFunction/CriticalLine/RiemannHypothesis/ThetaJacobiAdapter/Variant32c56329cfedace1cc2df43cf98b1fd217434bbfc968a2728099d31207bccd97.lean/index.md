# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaJacobiAdapter.Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9a2e1c84b9c549ce04477c6829328c1d99ec7e5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9a2e1c84b9c549ce04477c6829328c1d99ec7e5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PositiveFourSector` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.CatalanJacobi` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/cyclicmoment--f8958b7ce37c56f6f7429a44.md) | 38 | `declaration-track:f8958b7ce37c56f6f7429a4494a7037c3d56d73303be6ca9c5c52ceddf7fd3cd` |
| 2 | `theorem` | [intertwiner_power_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/intertwiner-power-apply--ee1cea1f0d7313cbd1d05e73.md) | 43 | `result-track:ee1cea1f0d7313cbd1d05e73c89cb19d99c001c2b1cd12ac657f18fb4ca24864` |
| 3 | `theorem` | [cyclicMoment_transport](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/cyclicmoment-transport--c1934e1d5272c72bca84356d.md) | 54 | `result-track:c1934e1d5272c72bca84356df767a874c8f8927ab998c7f7c1be82dc2764e230` |
| 4 | `theorem` | [first_moment_obstructs_transport](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/first-moment-obstructs-transport--f12a5e67d08d6834c6898f2f.md) | 64 | `result-track:f12a5e67d08d6834c6898f2f63997ab7577077cdd88fc530f722a76d89694c4c` |
| 5 | `def` | [atomicMagnitudeMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/atomicmagnitudemoment--793a2dfd2a1e77ca875c3fd2.md) | 77 | `declaration-track:793a2dfd2a1e77ca875c3fd20918959069a18eb08cef730998d284d413a713d1` |
| 6 | `theorem` | [positive_atomic_first_moment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/positive-atomic-first-moment--41d7a7e56c55c57e33341d54.md) | 82 | `result-track:41d7a7e56c55c57e33341d54fdd587190e19db0b19d43bc50c53484a947c0f3b` |
| 7 | `theorem` | [positive_atomic_moments_not_free](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/positive-atomic-moments-not-free--eb7587ba44765ca16073d828.md) | 95 | `result-track:eb7587ba44765ca16073d828bd3c7d6538141f94fe15d91ef061f7add1ceb7e9` |
| 8 | `theorem` | [positive_atomic_moments_not_canonical_free](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/positive-atomic-moments-not-canonical-free--f6ad3788b1314982c34d830a.md) | 105 | `result-track:f6ad3788b1314982c34d830ab36000d933002dba318d0d1fc0883e6379a141fe` |
| 9 | `def` | [measureMagnitudeMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/measuremagnitudemoment--8a71a67e4a1eabbc6b5647b8.md) | 120 | `declaration-track:8a71a67e4a1eabbc6b5647b802340169782e4597917a269d310b9ad0c66ef20d` |
| 10 | `theorem` | [measure_first_moment_positive_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/measure-first-moment-positive-iff--99817ba9f97cb23523036ca6.md) | 125 | `result-track:99817ba9f97cb23523036ca6694f03f7e7efecc27f19385afe2ce330d0783653` |
| 11 | `theorem` | [measure_first_moment_positive_of_positive_support](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/measure-first-moment-positive-of-positive-support--de1839235b5ca71859a3c035.md) | 133 | `result-track:de1839235b5ca71859a3c035842ace63b6a271442f43aa8d12082ddd54589989` |
| 12 | `theorem` | [measure_moments_not_canonical_free](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/measure-moments-not-canonical-free--4ffb8e6223f2f8bcce6f11e6.md) | 144 | `result-track:4ffb8e6223f2f8bcce6f11e6a78efca4101e1daec4d95c57799aa69ae35b83bf` |
| 13 | `theorem` | [involution_form_eq_sector_difference](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/involution-form-eq-sector-difference--7630dee22c4c75810c68e3c4.md) | 160 | `result-track:7630dee22c4c75810c68e3c45619387fae679e0625b24c24b5fb49e106f67913` |
| 14 | `theorem` | [negative_sector_form_negative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/negative-sector-form-negative--efbd4e8d4bb82faea340f47b.md) | 177 | `result-track:efbd4e8d4bb82faea340f47bab167df74549ca5649899288a6bb0c0a0e0ef0bb` |
| 15 | `theorem` | [negative_sector_prevents_magnitude_identification](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97.lean/declarations/negative-sector-prevents-magnitude-identification--fb8ed56e29cdecba9731ef20.md) | 188 | `result-track:fb8ed56e29cdecba9731ef209d85b821c81c15b09f406f16b6df89435c0f1607` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
