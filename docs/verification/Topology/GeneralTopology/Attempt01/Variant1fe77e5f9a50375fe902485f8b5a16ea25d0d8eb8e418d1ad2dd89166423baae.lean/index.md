# Verification target: GRWTSK.Topology.GeneralTopology.Attempt01.Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdb6e81cf8ba260aed701a9e499056dd727bc4ed",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdb6e81cf8ba260aed701a9e499056dd727bc4ed`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IntermediateValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SmallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/smallpositive--492663356535fc26bf96eaf2.md) | 25 | `declaration-track:492663356535fc26bf96eaf29fd8808d0c8876f2fb26075f92527896c8150f43` |
| 2 | `def` | [GlobalNonnegative](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/globalnonnegative--d0fcc7aafe91a5f656057cb0.md) | 28 | `declaration-track:d0fcc7aafe91a5f656057cb08e0ca0d849b58b4431618fb0942cf1e10dc34ad5` |
| 3 | `def` | [NonvanishingOnPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/nonvanishingonpositive--0c176012e2bfae72b0147412.md) | 31 | `declaration-track:0c176012e2bfae72b01474124f448862c5e400eb3b33507a71d24c37d4904349` |
| 4 | `def` | [affineFixture](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/affinefixture--1b29519bf2d386210869886d.md) | 34 | `declaration-track:1b29519bf2d386210869886d90d71fd5ed4b00d899a6cea6da455e24961148f0` |
| 5 | `theorem` | [affineFixture_continuous](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/affinefixture-continuous--d2fcd0b7de4ddf9d7a5f6b8c.md) | 36 | `result-track:d2fcd0b7de4ddf9d7a5f6b8cd3b39cf7b27acbe3ccec70b904307bad95aa9f73` |
| 6 | `theorem` | [affineFixture_smallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/affinefixture-smallpositive--d1cf7af4fa8357a9b32b72e3.md) | 40 | `result-track:d1cf7af4fa8357a9b32b72e3d2ea9de7f43a7ca90868177e772daa17b7a02060` |
| 7 | `theorem` | [affineFixture_later_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/affinefixture-later-negative--e5e28f4ab25a6351375148ef.md) | 46 | `result-track:e5e28f4ab25a6351375148ef4d4631d32ed53f63fdb9cbf66534ffe6e8b32808` |
| 8 | `theorem` | [affineFixture_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/affinefixture-not-global--0774ed1f922d877b6dd4e174.md) | 49 | `result-track:0774ed1f922d877b6dd4e1745d7eddb9ec4deae39d574cee434593a0129b2e21` |
| 9 | `theorem` | [continuous_local_does_not_imply_global](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/continuous-local-does-not-imply-global--fe2255eb5d8ee05ca59a6af3.md) | 54 | `result-track:fe2255eb5d8ee05ca59a6af34b2e11a4ca75eaa0faa26e8d7a1b90130a6193c9` |
| 10 | `theorem` | [affineFixture_unique_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/affinefixture-unique-crossing--a64dcff1d63d0dc3336939a0.md) | 61 | `result-track:a64dcff1d63d0dc3336939a0dd58c77c569ae0da002d7043aa375adf85daaa3f` |
| 11 | `theorem` | [zero_before_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/zero-before-negative--2253daaf83ddfeed5a5b234d.md) | 67 | `result-track:2253daaf83ddfeed5a5b234d0b0362dbc23700a1a5fb460efff83e0ba913cfc1` |
| 12 | `theorem` | [zero_of_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/zero-of-not-global--408cdaf0f8145d65328b5279.md) | 90 | `result-track:408cdaf0f8145d65328b5279729ac6e615614c986a2475f2dd174be2038e1359` |
| 13 | `theorem` | [positive_everywhere_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/positive-everywhere-of-nonvanishing--f87432bc69094a6885698a28.md) | 100 | `result-track:f87432bc69094a6885698a28d4bb5c6a83f29d3e88546250e03f079503ba84c4` |
| 14 | `theorem` | [positive_everywhere_iff_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/positive-everywhere-iff-nonvanishing--5ddae3850c952432d637adba.md) | 112 | `result-track:5ddae3850c952432d637adba46e8717ff47cfac6daf71426e6acce1091af115d` |
| 15 | `theorem` | [global_nonnegative_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/global-nonnegative-of-nonvanishing--ea4226ab3265039e6e1f65a3.md) | 119 | `result-track:ea4226ab3265039e6e1f65a35c06b206af7e42daa32714e4aff0879731fb74e6` |
| 16 | `def` | [LowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/lowesteigenvalueprofile--76629bcf26c964837d100158.md) | 126 | `declaration-track:76629bcf26c964837d100158430cdaab1cd52145e4420cf43158f12f2d582f7d` |
| 17 | `theorem` | [lowestEigenvalue_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/lowesteigenvalue-crossing--321c178f9a970f10b6ad4d8a.md) | 129 | `result-track:321c178f9a970f10b6ad4d8ac360d0a2effcb55367e0788850446f94cf4c7337` |
| 18 | `theorem` | [lowestEigenvalue_failure_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/lowesteigenvalue-failure-crossing--a302f8e9f746495274ca24b7.md) | 134 | `result-track:a302f8e9f746495274ca24b77e9809a6b55dc7b69d054ac9460dca65761f2ada` |
| 19 | `theorem` | [lowestEigenvalue_nonvanishing_iff_positive](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/lowesteigenvalue-nonvanishing-iff-positive--d1d516ea91f7da5cbc259919.md) | 139 | `result-track:d1d516ea91f7da5cbc2599190bb02e00b6b474af70c89ff79c199438a216b2de` |
| 20 | `theorem` | [affineFixture_lowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant1fe77e5f9a50375fe902485f8b5a16ea25d0d8eb8e418d1ad2dd89166423baae.lean/declarations/affinefixture-lowesteigenvalueprofile--64fe18ada5a4da989540601b.md) | 144 | `result-track:64fe18ada5a4da989540601b823880ca1e9b7a9c24fad38de149651336f69747` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
