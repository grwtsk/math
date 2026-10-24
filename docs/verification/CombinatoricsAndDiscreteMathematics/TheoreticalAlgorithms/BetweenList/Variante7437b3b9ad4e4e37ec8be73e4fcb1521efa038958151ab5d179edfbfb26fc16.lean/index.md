# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BetweenList.Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e13da82efe42512401f5d9046c145ac7458d08ac",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e13da82efe42512401f5d9046c145ac7458d08ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Triplewise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Wbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/wbtw--568fdea1cbf7ea763c9c86b9.md) | 34 | `declaration-track:568fdea1cbf7ea763c9c86b99677043f2e7a1874f929ae309df953a898565f0b` |
| 2 | `lemma` | [wbtw_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/wbtw-cons--b044c707db71e5d780c42eb7.md) | 39 | `result-track:b044c707db71e5d780c42eb7747899e9d7aa8ee6bd1b2bf8a0ee9d141d4583d5` |
| 3 | `def` | [Sbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sbtw--5f3bbd851560199fc50bb269.md) | 45 | `declaration-track:5f3bbd851560199fc50bb269596ddf1514c5d1a8ad9fb9c6ab909447257ec731` |
| 4 | `lemma` | [wbtw_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/wbtw-nil--16a314a9fd1f824fb3dbd2eb.md) | 50 | `result-track:16a314a9fd1f824fb3dbd2eb5622e0b2aa13168e342da9aa55ad5448c1a81c0c` |
| 5 | `lemma` | [sbtw_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sbtw-nil--1537fcb4bd176540a4d4175d.md) | 53 | `result-track:1537fcb4bd176540a4d4175daa65825747284c08a9351314fb656de7f6d8acc1` |
| 6 | `lemma` | [wbtw_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/wbtw-singleton--84ecfb582e1c612d930a2c4a.md) | 58 | `result-track:84ecfb582e1c612d930a2c4a1305dffc83ead62ccde6f8f8ba798aec9af0a5c2` |
| 7 | `lemma` | [sbtw_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sbtw-singleton--0c1dbdea03193270ca43d36a.md) | 61 | `result-track:0c1dbdea03193270ca43d36ac58891437f6d66ee7c208e21d0e3f3dbe0c3fadb` |
| 8 | `lemma` | [wbtw_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/wbtw-pair--71dc52852a6471d568dac991.md) | 64 | `result-track:71dc52852a6471d568dac9913e6ec986745668ca8e045cd54bc5200a628f8ec9` |
| 9 | `lemma` | [sbtw_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sbtw-pair--d68d74b3a6953b54595d5675.md) | 67 | `result-track:d68d74b3a6953b54595d56750233b02df89d0c2baa8262093c8b9744bf140412` |
| 10 | `lemma` | [wbtw_triple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/wbtw-triple--bee016ead775eb97a60890d8.md) | 72 | `result-track:bee016ead775eb97a60890d87c6625b3c8b97f89e8138b2d84f264a0178b163d` |
| 11 | `lemma` | [sbtw_triple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sbtw-triple--32b89a062c8ac9aa14f7999e.md) | 76 | `result-track:32b89a062c8ac9aa14f7999e7734c4b247b549ba6e67ab9539e44e838efaf2e3` |
| 12 | `lemma` | [wbtw_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/wbtw-four--fa36f1314c0b1df79e8e8913.md) | 82 | `result-track:fa36f1314c0b1df79e8e8913f5c11e5bf7cf0f209adaf61b024662f299b2bdb9` |
| 13 | `lemma` | [sbtw_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sbtw-four--7370990ef3ff1463501607d8.md) | 86 | `result-track:7370990ef3ff1463501607d84a8d04f51c18ab9cf44205cae837004d2bd7bd44` |
| 14 | `lemma` | [Sbtw.wbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sbtw-wbtw--d3c83529b21e806f6afb2b6e.md) | 91 | `result-track:d3c83529b21e806f6afb2b6ea66c1a0da9015e512decb4e6cc9a37b058650afb` |
| 15 | `lemma` | [Sbtw.pairwise_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sbtw-pairwise-ne--272f4c2dca80cc7c318cc1c3.md) | 94 | `result-track:272f4c2dca80cc7c318cc1c378f60a530f860b8dbbdc56ed55c0e622e3dceb6a` |
| 16 | `lemma` | [sbtw_iff_triplewise_and_ne_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sbtw-iff-triplewise-and-ne-pair--647e2dd70d24908200987235.md) | 97 | `result-track:647e2dd70d24908200987235322ea3e266967d5f96e7e7b914bacd5cdc7a5c35` |
| 17 | `lemma` | [sbtw_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sbtw-cons--d09b71ed030094c24c22b0d7.md) | 145 | `result-track:d09b71ed030094c24c22b0d788ab20b8fc918cbb91b8e15fc81e723a5c0d7f36` |
| 18 | `lemma` | [Wbtw.map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/wbtw-map--bdfa47f6e1b6cd8509c077fc.md) | 154 | `result-track:bdfa47f6e1b6cd8509c077fc0c2a63718d7b82d7f1eecfe36c8284a3abcaa0d1` |
| 19 | `lemma` | [_root_.Function.Injective.list_wbtw_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/root-function-injective-list-wbtw-map-iff--8692ff4ebd73966feaddba7a.md) | 157 | `result-track:8692ff4ebd73966feaddba7a7175ac8581a02549dce0a6c4426af43090c73476` |
| 20 | `lemma` | [_root_.Function.Injective.list_sbtw_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/root-function-injective-list-sbtw-map-iff--3af472463457f9d6ab96ba5b.md) | 161 | `result-track:3af472463457f9d6ab96ba5bf9682ba8669b3444e6c2e460cfa9bd951556ba05` |
| 21 | `lemma` | [_root_.AffineEquiv.list_wbtw_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/root-affineequiv-list-wbtw-map-iff--a965c1d5b92133484b6ac5a8.md) | 167 | `result-track:a965c1d5b92133484b6ac5a8a319f67d1f494f5678ff3b147464d14cb7814818` |
| 22 | `lemma` | [_root_.AffineEquiv.list_sbtw_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/root-affineequiv-list-sbtw-map-iff--1e47f618ee50289342d46093.md) | 172 | `result-track:1e47f618ee50289342d460930de5e2856f00edac4ec30d332871819286b00134` |
| 23 | `lemma` | [Sorted.wbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sorted-wbtw--c290c6319ccbc5b4c85658ed.md) | 185 | `result-track:c290c6319ccbc5b4c85658ed7680ff1982cc2889dbee462cd8228588b99d9fe6` |
| 24 | `lemma` | [Sorted.sbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/sorted-sbtw--6d5f19036551652890de69a4.md) | 201 | `result-track:6d5f19036551652890de69a406ffea49e5c11a1cedc82f88aeb2dd2e70d201ee` |
| 25 | `lemma` | [exists_map_eq_of_sorted_nonempty_iff_wbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/exists-map-eq-of-sorted-nonempty-iff-wbtw--d2901f53a245196edd7550c5.md) | 204 | `result-track:d2901f53a245196edd7550c5b1aea66db0066dcc00dd7d65a27c68bb5a80a141` |
| 26 | `lemma` | [exists_map_eq_of_sorted_iff_wbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/exists-map-eq-of-sorted-iff-wbtw--736325c98e2682404c18513e.md) | 254 | `result-track:736325c98e2682404c18513e7cf1249894ac36f5138f9f9a79176345f777b1aa` |
| 27 | `lemma` | [exists_map_eq_of_sorted_nonempty_iff_sbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/exists-map-eq-of-sorted-nonempty-iff-sbtw--8cecd623f6517470bb40f6e6.md) | 263 | `result-track:8cecd623f6517470bb40f6e682366318b74f016a229b06ac6ab2534879669f1e` |
| 28 | `lemma` | [exists_map_eq_of_sorted_iff_sbtw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variante7437b3b9ad4e4e37ec8be73e4fcb1521efa038958151ab5d179edfbfb26fc16.lean/declarations/exists-map-eq-of-sorted-iff-sbtw--defb1dff99b9c7170b57a2ad.md) | 295 | `result-track:defb1dff99b9c7170b57a2ad8380cafee5bd3e66a2f4c2d33f60664e6b34e478` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
