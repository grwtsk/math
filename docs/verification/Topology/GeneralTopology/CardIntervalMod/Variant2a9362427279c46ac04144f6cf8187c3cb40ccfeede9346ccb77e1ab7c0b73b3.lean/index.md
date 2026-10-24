# Verification target: GRWTSK.Topology.GeneralTopology.CardIntervalMod.Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1cbda0811d7d2875a1239e4f05c8336e4bfb864",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1cbda0811d7d2875a1239e4f05c8336e4bfb864`.

Source path: `GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.ModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ico_filter_modEq_eq](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ico-filter-modeq-eq--ef210cd16f308c13c8e2de96.md) | 36 | `result-track:ef210cd16f308c13c8e2de96616a353014361271bcfcecb07c110c323a9cf5e9` |
| 2 | `lemma` | [Ioc_filter_modEq_eq](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ioc-filter-modeq-eq--ad6c9b1d3430d883c675a3e1.md) | 43 | `result-track:ad6c9b1d3430d883c675a3e1f3bf425958e13522c1b39195a4a0567168723d5b` |
| 3 | `lemma` | [Ico_filter_dvd_eq](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ico-filter-dvd-eq--1e24f5882de7958cf2412659.md) | 53 | `result-track:1e24f5882de7958cf24126599a60e631647b57255897482f7a72c8905a9e599a` |
| 4 | `lemma` | [Ioc_filter_dvd_eq](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ioc-filter-dvd-eq--d5933133a3b9bca12cc4685e.md) | 61 | `result-track:d5933133a3b9bca12cc4685e28a7552f3301b38b5eb2bb80a8bb00e069bdd9e1` |
| 5 | `theorem` | [Ico_filter_dvd_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ico-filter-dvd-card--7bcb25e467b72b9614017873.md) | 70 | `result-track:7bcb25e467b72b961401787318ab3d939bf39cd467e44dc777ba201f0b367808` |
| 6 | `theorem` | [Ioc_filter_dvd_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ioc-filter-dvd-card--ccda1c58210620485072aaef.md) | 74 | `result-track:ccda1c58210620485072aaef8445e8e6b1480025db922ce5c0c49149e1c4586e` |
| 7 | `theorem` | [Ico_filter_modEq_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ico-filter-modeq-card--a8781a00dd0d2d0978fd903f.md) | 79 | `result-track:a8781a00dd0d2d0978fd903fc12eb3f5076754d965cd2b4edd6191e5d1ce3d4c` |
| 8 | `theorem` | [Ioc_filter_modEq_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ioc-filter-modeq-card--0f4b371bc4f9e57272f8a260.md) | 85 | `result-track:0f4b371bc4f9e57272f8a260c0e8645bd93043466134f09421cf4f4f17468f5e` |
| 9 | `lemma` | [Ico_filter_modEq_cast](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ico-filter-modeq-cast--7aca93b4de3ff2a84035a274.md) | 95 | `result-track:7aca93b4de3ff2a84035a274fa2f0fd99b687e303209f5f20f8251fb36b9c92a` |
| 10 | `lemma` | [Ioc_filter_modEq_cast](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ioc-filter-modeq-cast--8f27a17a96cf407dff0d9c71.md) | 104 | `result-track:8f27a17a96cf407dff0d9c711f349e4eac8bdb790f329b94fdaf54e09afe1351` |
| 11 | `theorem` | [Ico_filter_modEq_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ico-filter-modeq-card--9fd8b5da24e0511bc177d013.md) | 118 | `result-track:9fd8b5da24e0511bc177d0133db38cabbe274f0d85717ad442207b6dcc0f4967` |
| 12 | `theorem` | [Ioc_filter_modEq_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/ioc-filter-modeq-card--1403cd611d982617fdc164d7.md) | 125 | `result-track:1403cd611d982617fdc164d77e1e8a80548408bc99892f0b4c37b1a9b273c47a` |
| 13 | `theorem` | [count_modEq_card_eq_ceil](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/count-modeq-card-eq-ceil--2273fdfacca00c7c876a6539.md) | 131 | `result-track:2273fdfacca00c7c876a653950914372e666e5ab51784b1f03e3afe27a5d86ba` |
| 14 | `theorem` | [count_modEq_card](../../../../../mathematics/Topology/GeneralTopology/CardIntervalMod/Variant2a9362427279c46ac04144f6cf8187c3cb40ccfeede9346ccb77e1ab7c0b73b3.lean/declarations/count-modeq-card--83fa6d277e41425bbc1568c8.md) | 147 | `result-track:83fa6d277e41425bbc1568c8a1633e074f7ab389960f3f56982e52fa64a6d282` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
