# Verification target: GRWTSK.Analysis.BKLNWA2Bounds.Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc6caa382c2de9e9303199107e8e7bf975e5264a",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/index.md) · [Full source](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc6caa382c2de9e9303199107e8e7bf975e5264a`.

Source path: `GRWTSK/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Examples.BKLNW_a2_pow2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bklnwF](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/bklnwf--2410e466e38bd9fb2f8d0069.md) | 50 | `declaration-track:2410e466e38bd9fb2f8d00694b7354b19c2fd791c58f9459e05a94347812cab9` |
| 2 | `theorem` | [floor_20](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-20--8ed0260991c8a3468820b637.md) | 55 | `result-track:8ed0260991c8a3468820b637dc6cc07fd466338d66a3452d42bcb2587aa4c204` |
| 3 | `theorem` | [floor_25](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-25--ee7c2f60346d6d14e7504f37.md) | 61 | `result-track:ee7c2f60346d6d14e7504f377b382ae42f13b138ab6104df292dd7063a9b25c0` |
| 4 | `theorem` | [floor_30](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-30--48548b719766fcf9b44323a7.md) | 67 | `result-track:48548b719766fcf9b44323a795639b8e807f7a63d5cc9c9e9e9d678ba63e1820` |
| 5 | `theorem` | [floor_35](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-35--17f6646038a350aeb3b16d11.md) | 73 | `result-track:17f6646038a350aeb3b16d11b3a6d75008d5a9f7f473e7f68530a022ff5cf13c` |
| 6 | `theorem` | [floor_40](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-40--d1d2372625a5476f041241be.md) | 79 | `result-track:d1d2372625a5476f041241be7e86805dfd2effea474bbe7aa47c1555bed906f1` |
| 7 | `theorem` | [floor_43](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-43--6e9207c7b0c57f1e0bb7230e.md) | 85 | `result-track:6e9207c7b0c57f1e0bb7230eda4b81dc05a9b5680b52c1eff83c4ce9d7cf2a72` |
| 8 | `theorem` | [floor_100](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-100--2a5a84fd89db8fa339fed5d1.md) | 91 | `result-track:2a5a84fd89db8fa339fed5d102bad9df595945a11bb4dd6b44cb0307fe22877f` |
| 9 | `theorem` | [floor_150](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-150--82f715d6905704e462a1360a.md) | 97 | `result-track:82f715d6905704e462a1360aaca688e8dbe42d108c32af2e647171fa3e45cca7` |
| 10 | `theorem` | [floor_200](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-200--b7db7e20c8c050a92c1487a5.md) | 103 | `result-track:b7db7e20c8c050a92c1487a554e4fcc2b4c344914e2a071d20c89e6209133825` |
| 11 | `theorem` | [floor_250](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-250--d86c9ed37ce32fdda851703e.md) | 109 | `result-track:d86c9ed37ce32fdda851703ea234b3057e6354380e32346a3fbbca2dca1d0e9d` |
| 12 | `theorem` | [floor_300](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/floor-300--da45991b44d9f5a3774b1cf4.md) | 115 | `result-track:da45991b44d9f5a3774b1cf494153735c65b702775bad5587c280fdf2d71baec` |
| 13 | `theorem` | [f_eq_bklnwF_exp](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/f-eq-bklnwf-exp--fda13a264f7664219d46d3d1.md) | 124 | `result-track:fda13a264f7664219d46d3d1769b3a66e1dbbc57bbbfc8dc1ebf95b1a1d9c556` |
| 14 | `lemma` | [a2_20_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-20-exp-lower--e93bbe483c2f5f184d26ea92.md) | 136 | `result-track:e93bbe483c2f5f184d26ea92deec1f18fee364c39f01ac47009819230e643104` |
| 15 | `lemma` | [a2_20_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-20-exp-upper--8575d2b5a203042b58263ac7.md) | 138 | `result-track:8575d2b5a203042b58263ac7b809cd9e61e3a267542b8489ea9d4c1bb99825d9` |
| 16 | `lemma` | [a2_25_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-25-exp-lower--bc66cf353738298c984ee269.md) | 142 | `result-track:bc66cf353738298c984ee26924630917801d9e8751a50957c3a9b78ec7e00516` |
| 17 | `lemma` | [a2_25_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-25-exp-upper--8c8a0adc7ee5090e21c3b5d0.md) | 144 | `result-track:8c8a0adc7ee5090e21c3b5d0adbc08473efeb5be31037a0bd9250c17e07fd66f` |
| 18 | `lemma` | [a2_30_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-30-exp-lower--7080e1f64655db313d87a574.md) | 148 | `result-track:7080e1f64655db313d87a5745f045c63d5ac0ad1c301ca4efa8827a402830841` |
| 19 | `lemma` | [a2_30_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-30-exp-upper--ab26f612bcaa220acee259dd.md) | 150 | `result-track:ab26f612bcaa220acee259ddc41a3332299eba7adbcb7068d2f1075643aa54a7` |
| 20 | `lemma` | [a2_35_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-35-exp-lower--5eb7e25ab566001f6fcdbda5.md) | 154 | `result-track:5eb7e25ab566001f6fcdbda51049526f4eaa53f8cddbd41d96ace866e26a0ee3` |
| 21 | `lemma` | [a2_35_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-35-exp-upper--e8cf4ebfdf66a46188fea629.md) | 156 | `result-track:e8cf4ebfdf66a46188fea629ae742ea01bc2b03406667cb5866bcfd62133c2f6` |
| 22 | `lemma` | [a2_40_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-40-exp-lower--799693a59ec011f67450c683.md) | 160 | `result-track:799693a59ec011f67450c68355db09099928873748e0fd3ffb1c3c1c625ce951` |
| 23 | `lemma` | [a2_40_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-40-exp-upper--ba9e84019905e84739afd933.md) | 162 | `result-track:ba9e84019905e84739afd933b772f8c2bb02d7978eeb64051038313418688da8` |
| 24 | `lemma` | [a2_43_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-43-exp-lower--3e383d9dffdb884af31f1b95.md) | 166 | `result-track:3e383d9dffdb884af31f1b95a686266f4dc4018e522769c4b8ca33d292ba51ce` |
| 25 | `lemma` | [a2_43_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-43-exp-upper--51f416e4d576f1c2e644804d.md) | 168 | `result-track:51f416e4d576f1c2e644804da7bc823be226f95bfdbbe448691b250ca8bfcfc8` |
| 26 | `lemma` | [a2_100_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-100-exp-lower--f73596eda098239b1fede065.md) | 172 | `result-track:f73596eda098239b1fede06506b15f49519c41f590a31a11868163c45b994770` |
| 27 | `lemma` | [a2_100_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-100-exp-upper--7a0147d96b53bc6cb731831c.md) | 174 | `result-track:7a0147d96b53bc6cb731831cf4400faf28bf9737934c8e2b08497b39f0c4d749` |
| 28 | `lemma` | [a2_150_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-150-exp-lower--071db17c1f9256ced4219b7f.md) | 178 | `result-track:071db17c1f9256ced4219b7fb54b6635170360c6cec154ab8aa99840b0799a53` |
| 29 | `lemma` | [a2_150_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-150-exp-upper--f6130e665b734e5bb1c67c6e.md) | 180 | `result-track:f6130e665b734e5bb1c67c6e48338c67687e12097087a2488252a943795390d2` |
| 30 | `lemma` | [a2_200_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-200-exp-lower--b2b2e642cbeaf3db28966da4.md) | 184 | `result-track:b2b2e642cbeaf3db28966da477502d6b557c8e689bfd6eda7dfdf90e35dc8227` |
| 31 | `lemma` | [a2_200_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-200-exp-upper--e8aa72eb00c24a76975a8476.md) | 186 | `result-track:e8aa72eb00c24a76975a847677aba0834613caf1056f96e5e2181bf13372a2f1` |
| 32 | `lemma` | [a2_250_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-250-exp-lower--18d3853dbb060b5235c5b562.md) | 190 | `result-track:18d3853dbb060b5235c5b56293c31d804445d4039e374cbf7697a7af47cb9e41` |
| 33 | `lemma` | [a2_250_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-250-exp-upper--78dc9a9bc08eee79ea9fe56e.md) | 192 | `result-track:78dc9a9bc08eee79ea9fe56e2a390b83cc813cf6a155f28952b772e98fe25691` |
| 34 | `lemma` | [a2_300_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-300-exp-lower--2c447b0194d7a5736f12c8ed.md) | 196 | `result-track:2c447b0194d7a5736f12c8ed41bb111ce64cc932c6443e599dfca7807680ef17` |
| 35 | `lemma` | [a2_300_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant5555d35a3996f0c03179d3d3b9ef27523a28d1a6ab5aacc6cb15b73374b559bd.lean/declarations/a2-300-exp-upper--177e06dc5ee9299c59a6208b.md) | 198 | `result-track:177e06dc5ee9299c59a6208b61eb8987fdd94e9a03f4712617c751f397284fb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
