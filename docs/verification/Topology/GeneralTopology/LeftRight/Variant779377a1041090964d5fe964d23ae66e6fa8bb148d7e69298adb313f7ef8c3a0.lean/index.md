# Verification target: GRWTSK.Topology.GeneralTopology.LeftRight.Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ba6310bd94077d1740c901ad947cccfd1740744",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ba6310bd94077d1740c901ad947cccfd1740744`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Antichain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [frequently_lt_nhds](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/frequently-lt-nhds--f80ea9ea7e98b01b9707d5c9.md) | 41 | `result-track:f80ea9ea7e98b01b9707d5c948decc52c6757c851781a4ac33045b4efc69bf3b` |
| 2 | `lemma` | [frequently_gt_nhds](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/frequently-gt-nhds--30071593e92e54dab3f4f55b.md) | 44 | `result-track:30071593e92e54dab3f4f55b3267c6fc69551ece7723e138a6e52c0f5f41ee84` |
| 3 | `theorem` | [Filter.Eventually.exists_lt](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/filter-eventually-exists-lt--335043f775344abb0863b987.md) | 47 | `result-track:335043f775344abb0863b9872604817410bb739f5b6c31dbedac219e0b3e06ae` |
| 4 | `theorem` | [Filter.Eventually.exists_gt](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/filter-eventually-exists-gt--0d886b601e63e0ac611a7a4a.md) | 51 | `result-track:0d886b601e63e0ac611a7a4a304d0f2a1ca699f68f2081dfda48c30eafdda7f5` |
| 5 | `theorem` | [nhdsWithin_Ici_neBot](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdswithin-ici-nebot--4a084f3746b0386530a0dd61.md) | 55 | `result-track:4a084f3746b0386530a0dd611fdb278fa4df2ce21673aee8bd20579501b9121e` |
| 6 | `instance` | [nhdsGE_neBot](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdsge-nebot--dc92e8c67a1a82befca85b35.md) | 58 | `declaration-track:dc92e8c67a1a82befca85b3582b04936de1c717b15c6e826fc2e5c4b243528fa` |
| 7 | `theorem` | [nhdsWithin_Ici_self_neBot](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdswithin-ici-self-nebot--426796bd842f46b41fdd33c0.md) | 61 | `result-track:426796bd842f46b41fdd33c0a6a7620e0122b3972465c01527ce1e73bfc2d67c` |
| 8 | `theorem` | [nhdsWithin_Iic_neBot](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdswithin-iic-nebot--22d2de25022ad3dcc0fe81cd.md) | 63 | `result-track:22d2de25022ad3dcc0fe81cd3dc6a206c6c801f92be165bdea1f6f8a79176100` |
| 9 | `instance` | [nhdsLE_neBot](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdsle-nebot--bb6c0350c4dfca2a82d038ce.md) | 66 | `declaration-track:bb6c0350c4dfca2a82d038ce0c2ead20920f4f215021d0342d16247e61749117` |
| 10 | `theorem` | [nhdsWithin_Iic_self_neBot](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdswithin-iic-self-nebot--5608e8b4fdb72942672d7c77.md) | 69 | `result-track:5608e8b4fdb72942672d7c772d9c8af5bcb56be75c9deeacbdae5b3162cec00e` |
| 11 | `theorem` | [nhdsLT_le_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdslt-le-nhdsne--f3e3eeb43564eeeee7818aa8.md) | 71 | `result-track:f3e3eeb43564eeeee7818aa8b8fbe77506cd2fdd26dbdc56dd694f7470f159a4` |
| 12 | `theorem` | [nhdsGT_le_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdsgt-le-nhdsne--4bf5658984d42dcb7233daf6.md) | 76 | `result-track:4bf5658984d42dcb7233daf69c4194be81e2fcf57a05d6afcbc54ea8acdb71c1` |
| 13 | `lemma` | [IsAntichain.interior_eq_empty](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/isantichain-interior-eq-empty--a402661d0eece0376a7b5442.md) | 82 | `result-track:a402661d0eece0376a7b5442fcd5873ebdcf1cf5732cfe62dad9243a0340d926` |
| 14 | `lemma` | [IsAntichain.interior_eq_empty'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/isantichain-interior-eq-empty--c2944a4d1ecb81fccdc5aedd.md) | 89 | `result-track:c2944a4d1ecb81fccdc5aedd0e89046667eb0569abd731848eaaf4ac46811c04` |
| 15 | `theorem` | [continuousWithinAt_Ioi_iff_Ici](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/continuouswithinat-ioi-iff-ici--5c49466502d223275079816f.md) | 100 | `result-track:5c49466502d223275079816f758920fdfb95f5da1d893633f823bde56f6c433d` |
| 16 | `theorem` | [continuousWithinAt_Iio_iff_Iic](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/continuouswithinat-iio-iff-iic--4a418e23f2f57f9f4cf74993.md) | 104 | `result-track:4a418e23f2f57f9f4cf749938717bb7dfba0c53388207a79763e267527c65528` |
| 17 | `theorem` | [nhdsLE_sup_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdsle-sup-nhdsge--02517dcd40f9a96eccc476df.md) | 114 | `result-track:02517dcd40f9a96eccc476df71dd1362c9da6be980d3b8e0af07aadbb98cf582` |
| 18 | `theorem` | [nhdsLT_sup_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdslt-sup-nhdsge--775f9fe060e260ac006b8e8b.md) | 119 | `result-track:775f9fe060e260ac006b8e8b9c53a1d3dbd90d7f73b65cea7a7ad8473700e253` |
| 19 | `theorem` | [nhdsLE_sup_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdsle-sup-nhdsgt--caee2cd2003d9d83cf93a7bc.md) | 124 | `result-track:caee2cd2003d9d83cf93a7bc9ca41d465a04a07dac0183785fd438b880aaeb89` |
| 20 | `theorem` | [nhdsLT_sup_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdslt-sup-nhdsgt--e1634b867d884bc2d9debfa7.md) | 129 | `result-track:e1634b867d884bc2d9debfa7aa60611a40a50807262203ab246c742deec1db8d` |
| 21 | `lemma` | [nhdsWithin_right_sup_nhds_singleton](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/nhdswithin-right-sup-nhds-singleton--f545e4374fdd4ac16111fbc4.md) | 134 | `result-track:f545e4374fdd4ac16111fbc43ab086f936b387661263fd3e397847960bdc4cbe` |
| 22 | `theorem` | [continuousAt_iff_continuous_left_right](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/continuousat-iff-continuous-left-right--bf89fc043b57e730ee98f417.md) | 138 | `result-track:bf89fc043b57e730ee98f417fcccb18ff0f2947d5c2bee546d0ae632a7db3fe7` |
| 23 | `theorem` | [continuousAt_iff_continuous_left'_right'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/declarations/continuousat-iff-continuous-left-right--83cc0d50364ce5f12e4df486.md) | 142 | `result-track:83cc0d50364ce5f12e4df486a5b4dba49d1045e756804f4fd8e933511f715d22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
