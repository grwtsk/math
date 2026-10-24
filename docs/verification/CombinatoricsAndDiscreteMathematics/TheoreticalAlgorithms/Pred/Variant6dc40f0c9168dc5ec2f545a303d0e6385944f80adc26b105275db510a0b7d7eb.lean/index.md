# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pred.Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0ea0ea752605d8cfcb820bb9a3bf225009fc6f5",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0ea0ea752605d8cfcb820bb9a3bf225009fc6f5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.Find.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Pred` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Iterate` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [find?_bool_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/find-bool-eq-some-iff--bcdb3cbb6ae10bda64314601.md) | 28 | `result-track:bcdb3cbb6ae10bda64314601f31f3f2fa6c04871e25ebb2783b0c7d8e3f61067` |
| 2 | `theorem` | [find?_prop_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/find-prop-eq-some-iff--93d7a1d09e8b50279d096b4b.md) | 33 | `result-track:93d7a1d09e8b50279d096b4b9fffb49fd3e31efcb757ee5d57b626dc37ff416e` |
| 3 | `theorem` | [find?_bool_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/find-bool-eq-some-iff-splits--28fd48bdcbcc594e7d356625.md) | 39 | `result-track:28fd48bdcbcc594e7d35662510c74607d47dd34ad89147aa9da6145d6ba50393` |
| 4 | `theorem` | [find?_prop_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/find-prop-eq-some-iff-splits--36248dcba91c777ef4f8793f.md) | 54 | `result-track:36248dcba91c777ef4f8793f19cc4219919974a03f56ab653aec7acf6c1a9fa1` |
| 5 | `theorem` | [contains_bool_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/contains-bool-eq--3a4ad7c937eb63b34eed1d8a.md) | 62 | `result-track:3a4ad7c937eb63b34eed1d8afd8a0b511073d8a15cfc8a46dcfd65d1e8ae0110` |
| 6 | `theorem` | [contains_prop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/contains-prop-eq--24a059c840ea05492310c336.md) | 69 | `result-track:24a059c840ea05492310c33628cf715bdb1da4efa78d175462c836bf0f9b0b32` |
| 7 | `theorem` | [Pos.find?_bool_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-bool-eq-some-iff--67fc1b49d372a145ef1a2d44.md) | 73 | `result-track:67fc1b49d372a145ef1a2d44914cfa8c8a079b63e9cb68ebe4b9e731c98983ee` |
| 8 | `theorem` | [Pos.find?_bool_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-bool-eq-some-iff-splits--471edb106006caa9ba78789a.md) | 80 | `result-track:471edb106006caa9ba78789a43fed81e1122584724fbda038276729fa7d3689a` |
| 9 | `theorem` | [Pos.find?_bool_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-bool-eq-none-iff--53565e4982eb38d65c7a11e0.md) | 117 | `result-track:53565e4982eb38d65c7a11e0f1e950259ff78177fc0fa25fc4c831e4ad81804f` |
| 10 | `theorem` | [Pos.find?_bool_eq_none_iff_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-bool-eq-none-iff-of-splits--6d9f6c61a2022500265eaf4c.md) | 122 | `result-track:6d9f6c61a2022500265eaf4c76eac1379c73cf46844eb8e43fc49324f1eb7531` |
| 11 | `theorem` | [Pos.find?_prop_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-prop-eq-some-iff--94c3c558b18738eb58a2db6b.md) | 133 | `result-track:94c3c558b18738eb58a2db6bb77053efe9717f63143d78ae8a802807b5fda7d7` |
| 12 | `theorem` | [Pos.find?_prop_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-prop-eq-some-iff-splits--ea70a7abfaa4ed487e20ee01.md) | 142 | `result-track:ea70a7abfaa4ed487e20ee014667a11d7ee1c554c11a63783e681caa879caeec` |
| 13 | `theorem` | [Pos.find?_prop_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-prop-eq-none-iff--6f4abd6e1e62423b4a7c14b0.md) | 149 | `result-track:6f4abd6e1e62423b4a7c14b01cf1dd4258e00726caf3dfc8ba9dbfa7323e5017` |
| 14 | `theorem` | [Pos.find?_prop_eq_none_iff_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-prop-eq-none-iff-of-splits--fcbdbc02824a9a90ef2d27c1.md) | 154 | `result-track:fcbdbc02824a9a90ef2d27c144f7925e5e07ac6feba64b3e5d7700063c6a9c89` |
| 15 | `theorem` | [Pos.find?_prop_eq_find?_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-prop-eq-find-decide--b68a7be0f3e3a416e558f014.md) | 164 | `result-track:b68a7be0f3e3a416e558f0148549f8327990a3e594918826fef87bc59d8c4209` |
| 16 | `theorem` | [find?_prop_eq_find?_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/find-prop-eq-find-decide--61f68a70de37aede19dc4bdd.md) | 170 | `result-track:61f68a70de37aede19dc4bddb41af52f8615a234cda8a17e7d6c04d23c30eeb8` |
| 17 | `theorem` | [contains_prop_eq_contains_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/contains-prop-eq-contains-decide--478881f1ab7c96f02da7e092.md) | 176 | `result-track:478881f1ab7c96f02da7e09243c8bea99993d9520f1dec1c58371505819e95bc` |
| 18 | `theorem` | [Pos.find?_bool_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-bool-eq-some-iff--241e75d3ee3477876415f18f.md) | 181 | `result-track:241e75d3ee3477876415f18f2c86245970fd22cde2e7bad8b961a775fb740e26` |
| 19 | `theorem` | [Pos.find?_bool_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-bool-eq-some-iff-splits--969a9ceb0fa4dbcf887a6f80.md) | 201 | `result-track:969a9ceb0fa4dbcf887a6f800065289f975bc5da27587d3db823e58eb84e4ad0` |
| 20 | `theorem` | [Pos.find?_bool_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-bool-eq-none-iff--7e58b67f6241011465cbe3f4.md) | 214 | `result-track:7e58b67f6241011465cbe3f42dccd7ae350984feef2668c956459602062b4290` |
| 21 | `theorem` | [Pos.find?_bool_eq_none_iff_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-bool-eq-none-iff-of-splits--58cafe041fe41106e6c68794.md) | 227 | `result-track:58cafe041fe41106e6c687940f32fb738db4546eb6da129bb2371ef01304ba1d` |
| 22 | `theorem` | [Pos.find?_prop_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-prop-eq-some-iff--fda02cba5704f6bda8d4c8c8.md) | 233 | `result-track:fda02cba5704f6bda8d4c8c87a75d1f86e29b2c5f6639c52e3c431fe9f9a41f8` |
| 23 | `theorem` | [Pos.find?_prop_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-prop-eq-some-iff-splits--5a27dd271c02301e1f2b0623.md) | 242 | `result-track:5a27dd271c02301e1f2b0623b82fe87662c5bba6b7f3743f9642ebfd85b15e91` |
| 24 | `theorem` | [Pos.find?_prop_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-prop-eq-none-iff--77a5c9eac81fa61b04501389.md) | 249 | `result-track:77a5c9eac81fa61b04501389a997dc37deeed18bf805a0a8467146f1ebf7b927` |
| 25 | `theorem` | [Pos.find?_prop_eq_none_iff_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/pos-find-prop-eq-none-iff-of-splits--a966f7d15f0b8a3b9f4c7961.md) | 255 | `result-track:a966f7d15f0b8a3b9f4c796135dbd2c3b5a760dc00969087bdda67497a846c0c` |
| 26 | `theorem` | [find?_bool_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/find-bool-eq-some-iff--e0cdf4c0eaa9a3b79317fb11.md) | 261 | `result-track:e0cdf4c0eaa9a3b79317fb115843573f7d8b7ef9653e888f08a802a9c2523132` |
| 27 | `theorem` | [find?_bool_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/find-bool-eq-some-iff-splits--686c4a0f3c4580500dd09cd9.md) | 275 | `result-track:686c4a0f3c4580500dd09cd9b58b4b0c5c391f6ee411824e19b1fd9301a98123` |
| 28 | `theorem` | [find?_prop_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/find-prop-eq-some-iff--490a04e7d28804d18e9349dd.md) | 286 | `result-track:490a04e7d28804d18e9349dd241c11397d3b5cfc9b83b8a1ea02d6b798740fb0` |
| 29 | `theorem` | [find?_prop_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/find-prop-eq-some-iff-splits--9aeddde1ad3675afe47bd4d4.md) | 292 | `result-track:9aeddde1ad3675afe47bd4d43bf4b8018f2bca456b8a6968cab49a7fdff621fa` |
| 30 | `theorem` | [contains_bool_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/contains-bool-eq--d0e372f1eda3df9aa1f754af.md) | 300 | `result-track:d0e372f1eda3df9aa1f754af77b1b0ab64508dcfb1f5cb1f5103bf6ef15c3c61` |
| 31 | `theorem` | [contains_prop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb.lean/declarations/contains-prop-eq--fe53136486dcf277803e7f0c.md) | 304 | `result-track:fe53136486dcf277803e7f0c5dec8a60b48bc3e1d29d9a1535a526e1c26aeab5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
