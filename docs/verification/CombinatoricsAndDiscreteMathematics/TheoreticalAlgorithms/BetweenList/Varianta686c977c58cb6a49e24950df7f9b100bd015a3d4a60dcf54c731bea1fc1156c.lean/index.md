# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BetweenList.Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08d1841490974239509a830cdc39c4585bc5a0d3",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08d1841490974239509a830cdc39c4585bc5a0d3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Triplewise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Wbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/wbtw--0ab75c53f718c8417d170f58.md) | 42 | `declaration-track:0ab75c53f718c8417d170f5829b442c12a599de554ee68c67322c56da853da63` |
| 2 | `lemma` | [wbtw_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/wbtw-cons--2f6566402c426f7af3f4ccee.md) | 47 | `result-track:2f6566402c426f7af3f4ccee74b4daf98d7a2bda2513ee1a31bec6f05ad8fc7c` |
| 3 | `def` | [Sbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sbtw--7b2e8698cc254cef811d179a.md) | 53 | `declaration-track:7b2e8698cc254cef811d179adc7dd3704d2f83d131d8f0effae2ac486bd8c0a1` |
| 4 | `lemma` | [wbtw_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/wbtw-nil--0847056daef066ece411c94e.md) | 58 | `result-track:0847056daef066ece411c94e6beb117edf67048740b6655210da1f8ec76f5272` |
| 5 | `lemma` | [sbtw_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sbtw-nil--bc047a3a2b02dd90e3727fcd.md) | 61 | `result-track:bc047a3a2b02dd90e3727fcd3e5042053c9e85bd444c8bfc49d67d5f4d231666` |
| 6 | `lemma` | [wbtw_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/wbtw-singleton--546c7f28dcf0aa494f42d9a4.md) | 66 | `result-track:546c7f28dcf0aa494f42d9a42d8b149558696f1a2cfcb12555e76f908e8beabf` |
| 7 | `lemma` | [sbtw_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sbtw-singleton--9c61cb9ae371c15da244c464.md) | 69 | `result-track:9c61cb9ae371c15da244c464bfb0e52cd2005a2487ad6f84cf5b83717efe4710` |
| 8 | `lemma` | [wbtw_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/wbtw-pair--02775803d4cb203eaf9a8019.md) | 72 | `result-track:02775803d4cb203eaf9a8019bdcf527a3ed2df3a59234bff1d66bb33dddf16b8` |
| 9 | `lemma` | [sbtw_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sbtw-pair--2fdf23bfa395f6a08c3a06f5.md) | 75 | `result-track:2fdf23bfa395f6a08c3a06f5a32f577564f88d288ae78a2a44e2c1558dbc5181` |
| 10 | `lemma` | [wbtw_triple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/wbtw-triple--afcee028c7188a61350994e0.md) | 80 | `result-track:afcee028c7188a61350994e04a36db439cfccfb7750df49f0a0f39ed5a0bd4c7` |
| 11 | `lemma` | [sbtw_triple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sbtw-triple--6946d708a5b987356f1bb443.md) | 84 | `result-track:6946d708a5b987356f1bb443bfd1922745efdbf6153ad7b42931c50c29d8aef6` |
| 12 | `lemma` | [wbtw_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/wbtw-four--8005d81f8275e32082601690.md) | 90 | `result-track:8005d81f8275e320826016900961f0da703019114169cfd3df350d009df95a55` |
| 13 | `lemma` | [sbtw_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sbtw-four--0a8e09b9be0cc293e3c7fdbe.md) | 94 | `result-track:0a8e09b9be0cc293e3c7fdbe6b56d6cc34900a3693a79fe54d382b097af0decf` |
| 14 | `lemma` | [Sbtw.wbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sbtw-wbtw--830a6984a5cb1941e7fec2d7.md) | 99 | `result-track:830a6984a5cb1941e7fec2d7e332643820bbdbc128c462ff54ed231b0edfe7ac` |
| 15 | `lemma` | [Sbtw.pairwise_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sbtw-pairwise-ne--3d41018af11a0fa22c636f52.md) | 102 | `result-track:3d41018af11a0fa22c636f5241574037ad02583478231bec5e89620d60cc8858` |
| 16 | `lemma` | [sbtw_iff_triplewise_and_ne_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sbtw-iff-triplewise-and-ne-pair--9486165118e7161e753421b8.md) | 105 | `result-track:9486165118e7161e753421b81e979a11439053a42adb80d596667bbbc6a9b77c` |
| 17 | `lemma` | [sbtw_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sbtw-cons--6af422450454f4e15afd3ba6.md) | 153 | `result-track:6af422450454f4e15afd3ba6217106c90b43becadc6bbccfc3f6119b2274df6f` |
| 18 | `lemma` | [Wbtw.map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/wbtw-map--ba20cc62aecefbfac0431c70.md) | 162 | `result-track:ba20cc62aecefbfac0431c70a4c861be15c1635c83a110f15e27034d40cea37e` |
| 19 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Wbtw.Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.Function.Injective.list_wbtw_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-wb--eb9f9fefd3defef2d9940516.md) | 165 | `result-track:eb9f9fefd3defef2d9940516b57182c184f813807e4022e5353c2eb7d022f147` |
| 20 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Wbtw.Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.Function.Injective.list_sbtw_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-wb--002c980e058aa95ab47ba440.md) | 169 | `result-track:002c980e058aa95ab47ba440073d1ca86131cf7a32251aac3d6fdb6db24b0474` |
| 21 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Wbtw.Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.AffineEquiv.list_wbtw_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-wb--503cc8adcdf06d65a7d93407.md) | 175 | `result-track:503cc8adcdf06d65a7d93407304a67dfcf928c858555f97c047390ea4ec34be8` |
| 22 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Wbtw.Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.AffineEquiv.list_sbtw_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-wb--4999a2e2f9fd39a165f16744.md) | 180 | `result-track:4999a2e2f9fd39a165f16744ca3867e13e7978a3f3efdcbaf5ff20cc27647da4` |
| 23 | `lemma` | [Sorted.wbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sorted-wbtw--f8e5ae5fd493be641078f722.md) | 193 | `result-track:f8e5ae5fd493be641078f7226d0c8748a208095e0683ffc7d4cd5e8fb53bd5df` |
| 24 | `lemma` | [Sorted.sbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/sorted-sbtw--563435dc6dbba37a27c08af2.md) | 209 | `result-track:563435dc6dbba37a27c08af28a74cecb0de91849f00ce6d330dc5a425847a72d` |
| 25 | `lemma` | [exists_map_eq_of_sorted_nonempty_iff_wbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/exists-map-eq-of-sorted-nonempty-iff-wbtw--9d6af529818d02f1a4b877bb.md) | 212 | `result-track:9d6af529818d02f1a4b877bb9021b3fe6484d77298d34af1e483419886efe301` |
| 26 | `lemma` | [exists_map_eq_of_sorted_iff_wbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/exists-map-eq-of-sorted-iff-wbtw--10d8cb7652c257079105896b.md) | 262 | `result-track:10d8cb7652c257079105896b606bc9be16596130c89df345e3b94936347040f7` |
| 27 | `lemma` | [exists_map_eq_of_sorted_nonempty_iff_sbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/exists-map-eq-of-sorted-nonempty-iff-sbtw--0ca1379e48c2d12243aa89f1.md) | 271 | `result-track:0ca1379e48c2d12243aa89f1f2e7329ce19d2c04029021bc91ef8f2cfa705de6` |
| 28 | `lemma` | [exists_map_eq_of_sorted_iff_sbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/declarations/exists-map-eq-of-sorted-iff-sbtw--8e05e4dcd8bb2f70b2fe228a.md) | 303 | `result-track:8e05e4dcd8bb2f70b2fe228aeabb65edd229ee6200b9982f49704ab64b307a39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
