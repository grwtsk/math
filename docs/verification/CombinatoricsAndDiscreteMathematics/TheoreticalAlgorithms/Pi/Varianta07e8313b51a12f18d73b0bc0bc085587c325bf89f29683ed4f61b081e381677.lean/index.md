# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pi.Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6692388d7aea3b8c6f933168f1b8defd7a9e036b",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6692388d7aea3b8c6f933168f1b8defd7a9e036b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Pi.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.UnorderedInterval` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pi_univ_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-ici--9723a2fe6c19457467a5cfdb.md) | 41 | `result-track:9723a2fe6c19457467a5cfdb1e766eb26c4cee258e9881faadccbd847231f675` |
| 2 | `theorem` | [pi_univ_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-iic--9576863c899bbf1340bbb087.md) | 46 | `result-track:9576863c899bbf1340bbb087a253acb00333413d18190979fbb58941daf546f3` |
| 3 | `theorem` | [pi_univ_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-icc--b70a5a3550366ccd44fdb7cb.md) | 51 | `result-track:b70a5a3550366ccd44fdb7cb3b9d4188fa4ff5774832759dc43141b4ee718729` |
| 4 | `theorem` | [piecewise_mem_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/piecewise-mem-icc--bd61ea3b9cabe74afdca1f9c.md) | 55 | `result-track:bd61ea3b9cabe74afdca1f9c493307e2097f3316c634a90ce470d367dd7f2c51` |
| 5 | `theorem` | [piecewise_mem_Icc'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/piecewise-mem-icc--a0e18830bb1950a43f0c32ba.md) | 62 | `result-track:a0e18830bb1950a43f0c32bad20f3d2e47348a7e335e79e4d9359d169b2c184d` |
| 6 | `theorem` | [pi_univ_Ioi_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-ioi-subset--e5d059bb0ea860af07c1e6da.md) | 71 | `result-track:e5d059bb0ea860af07c1e6da2faa49d1c1084beb4a14446b3812c7cfde33a4e1` |
| 7 | `theorem` | [pi_univ_Iio_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-iio-subset--bab6836eeb5074b2d088e564.md) | 76 | `result-track:bab6836eeb5074b2d088e56450b799e2139080c3d82435643f8d228bea41a009` |
| 8 | `theorem` | [pi_univ_Ioo_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-ioo-subset--5d6d8195daf08059c2a8d8ad.md) | 80 | `result-track:5d6d8195daf08059c2a8d8ad38bc89fc7d5e958371204cd4cf9af09bb4c8a175` |
| 9 | `theorem` | [pi_univ_Ioc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-ioc-subset--1b9561f09702f958e61ccb10.md) | 84 | `result-track:1b9561f09702f958e61ccb10130c81b4b7114cd788b66f12f48b6499ded81389` |
| 10 | `theorem` | [pi_univ_Ico_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-ico-subset--53a5d3582498f683ba2b351b.md) | 88 | `result-track:53a5d3582498f683ba2b351b30ba24c3073628abecff880d79be3739b9151579` |
| 11 | `theorem` | [pi_univ_Ioc_update_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-ioc-update-left--839c95e5fe4d56765f522102.md) | 98 | `result-track:839c95e5fe4d56765f5221023af5354e37a5bef9b04d62963aaacb1efdc2ccbc` |
| 12 | `theorem` | [pi_univ_Ioc_update_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-ioc-update-right--cdb88755501380032fd10712.md) | 109 | `result-track:cdb88755501380032fd10712dea16b663f46a52111398de25d103044e65a48c8` |
| 13 | `theorem` | [disjoint_pi_univ_Ioc_update_left_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/disjoint-pi-univ-ioc-update-left-right--048c524c9045a764021167df.md) | 120 | `result-track:048c524c9045a764021167df97e51bd86b58a02678093a7bbdaf8c7ae70ce6fa` |
| 14 | `theorem` | [image_update_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-icc--e941def27107d3bc6050c5ba.md) | 136 | `result-track:e941def27107d3bc6050c5bafc5a98d3a532e06257bde384e70be7c8f203cd7a` |
| 15 | `theorem` | [image_update_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-ico--e257f2111ab94f3c14e0c70c.md) | 150 | `result-track:e257f2111ab94f3c14e0c70cbd99208e5df844182b188fe5c9c8f2384fdd5e20` |
| 16 | `theorem` | [image_update_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-ioc--bbfc9d2947d086e994bccae3.md) | 156 | `result-track:bbfc9d2947d086e994bccae35534a71952157ae83cc02f7cdc41d9c26d511b94` |
| 17 | `theorem` | [image_update_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-ioo--c8efb54a13407df798f7b2e3.md) | 162 | `result-track:c8efb54a13407df798f7b2e3560f2b420b38cabd7a1593009664b202c5e214aa` |
| 18 | `theorem` | [image_update_Icc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-icc-left--a45414b6d419b6f2b03da979.md) | 168 | `result-track:a45414b6d419b6f2b03da9792bb7dae6e5ffff1bbd05ecf3f04ec34897cb6d9d` |
| 19 | `theorem` | [image_update_Ico_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-ico-left--1d63774274967402be08a72e.md) | 172 | `result-track:1d63774274967402be08a72e2e573508f898c138e96be2bc18b8e6bc00bf5f24` |
| 20 | `theorem` | [image_update_Ioc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-ioc-left--eac570826ec8cd629e8742d6.md) | 176 | `result-track:eac570826ec8cd629e8742d6c471764dfe1acfa26c9b6d7028b688b13ab426d0` |
| 21 | `theorem` | [image_update_Ioo_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-ioo-left--e5170c2b5a7d3e0dc7b595b5.md) | 180 | `result-track:e5170c2b5a7d3e0dc7b595b5c5b28ab55d82795ca19fa640e94a3ab087cb6c96` |
| 22 | `theorem` | [image_update_Icc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-icc-right--c58c483655154135aea889cf.md) | 184 | `result-track:c58c483655154135aea889cf75613d607c9bbc3fc94e39b2d8b081ee7432cc55` |
| 23 | `theorem` | [image_update_Ico_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-ico-right--fda2e5713f832961e5426106.md) | 188 | `result-track:fda2e5713f832961e5426106ffaaeefeaa48dfa76212d774a5323c226c06c6e1` |
| 24 | `theorem` | [image_update_Ioc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-ioc-right--a48b0a5888e62553c4741818.md) | 192 | `result-track:a48b0a5888e62553c47418188f0b649c4c79c5cd42f367a41403ee1abfe94576` |
| 25 | `theorem` | [image_update_Ioo_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-ioo-right--5a58326151ab63ea75a02d96.md) | 196 | `result-track:5a58326151ab63ea75a02d960053b7b6a8e9429ca3d641e7def5d68a493b28ba` |
| 26 | `theorem` | [image_mulSingle_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-icc--470a62245f61d461d777cd75.md) | 203 | `result-track:470a62245f61d461d777cd7512b34bb387417c3a87c701c579af5c72b2328631` |
| 27 | `theorem` | [image_mulSingle_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-ico--19a5b8a2f1d4430c1fbb1927.md) | 210 | `result-track:19a5b8a2f1d4430c1fbb1927b91e9230a4c430f871002408b72640d88642324b` |
| 28 | `theorem` | [image_mulSingle_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-ioc--dc0df3e01f30febe6408bb3b.md) | 217 | `result-track:dc0df3e01f30febe6408bb3b6b6ebe346ea60563df05f136a56a095bf77ec187` |
| 29 | `theorem` | [image_mulSingle_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-ioo--eefacaa865cef522d94c4f5f.md) | 224 | `result-track:eefacaa865cef522d94c4f5f0541dc884c8d8ae9aacbb5a7a300a88c747e6532` |
| 30 | `theorem` | [image_mulSingle_Icc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-icc-left--806297714654e0e69b8c60da.md) | 231 | `result-track:806297714654e0e69b8c60da2c0b42a0cfb72cefdf10abb3e643930808de8940` |
| 31 | `theorem` | [image_mulSingle_Ico_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-ico-left--b2f6572432ddcd07ed4d9048.md) | 238 | `result-track:b2f6572432ddcd07ed4d90488d5d3e2920158aba50b6cf148519fbc00b6b69a6` |
| 32 | `theorem` | [image_mulSingle_Ioc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-ioc-left--5759fe57e73382d7ac713fcf.md) | 245 | `result-track:5759fe57e73382d7ac713fcf159de16e3f3d74e7945fdad3e0b74f36cd45a1e3` |
| 33 | `theorem` | [image_mulSingle_Ioo_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-ioo-left--973ff4735fa2fce721cf89ea.md) | 252 | `result-track:973ff4735fa2fce721cf89eac0700c222eef647eb8ae471486915d7cd0c061a2` |
| 34 | `theorem` | [image_mulSingle_Icc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-icc-right--39662b5954fddea55e6b766b.md) | 259 | `result-track:39662b5954fddea55e6b766bc9723a6fc4c6ce40cc89789fda249094299b131c` |
| 35 | `theorem` | [image_mulSingle_Ico_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-ico-right--5132c52eea715c8889efeb94.md) | 266 | `result-track:5132c52eea715c8889efeb94b6ae77ab31aa62ee12c3e7d31ce150bf6ae32a88` |
| 36 | `theorem` | [image_mulSingle_Ioc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-ioc-right--4692e11dfd85df81ccb8f24d.md) | 273 | `result-track:4692e11dfd85df81ccb8f24df83c0b823c9f0c5d0f8e8b880c9a43ba81479c56` |
| 37 | `theorem` | [image_mulSingle_Ioo_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-ioo-right--11560fadd00dce593ab63deb.md) | 280 | `result-track:11560fadd00dce593ab63deb2b86b6f8ad071d4cc300dedcc56a1700cc48b849` |
| 38 | `theorem` | [pi_univ_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-uicc--dc406fc290e715c4e9a2d886.md) | 293 | `result-track:dc406fc290e715c4e9a2d8866c83e5fb25286c31f5a74c74a0f3e36ec012eb48` |
| 39 | `theorem` | [image_update_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-uicc--c23bd688be27097441598711.md) | 299 | `result-track:c23bd688be270974415987114b88fa0fffd8d9b67d78a6cb5988085a14b9449c` |
| 40 | `theorem` | [image_update_uIcc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-uicc-left--8af17d0b3ae1689a716db4fd.md) | 304 | `result-track:8af17d0b3ae1689a716db4fdcea44e8ba0dca3bf09f235afb2881f04cfcc0c1c` |
| 41 | `theorem` | [image_update_uIcc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-update-uicc-right--7c8a82fc96f193a5faea54cd.md) | 309 | `result-track:7c8a82fc96f193a5faea54cdf5f8710236ed015293fb2d3791c28bb8c72be948` |
| 42 | `theorem` | [image_mulSingle_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-uicc--61dd50491126f89f7c49b57f.md) | 317 | `result-track:61dd50491126f89f7c49b57f96dc9a648cc1340c8df479cc8abd8889b67aabad` |
| 43 | `theorem` | [image_mulSingle_uIcc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-uicc-left--02252f5dbc03c9fe0d1bda89.md) | 324 | `result-track:02252f5dbc03c9fe0d1bda89bf45ffe6d8f380a9177c65f484f641c054d55932` |
| 44 | `theorem` | [image_mulSingle_uIcc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/image-mulsingle-uicc-right--d69e76d084e85c693401465c.md) | 331 | `result-track:d69e76d084e85c693401465cda8a53526f72a9c3afcf8c0b3865674e7bbbaa01` |
| 45 | `theorem` | [pi_univ_Ioc_update_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/pi-univ-ioc-update-union--dd45590ae7bf6216d798ac1e.md) | 343 | `result-track:dd45590ae7bf6216d798ac1e47fcf4b0ad94be6cb7695d2dc1312dde5b328135` |
| 46 | `theorem` | [Icc_diff_pi_univ_Ioo_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/icc-diff-pi-univ-ioo-subset--775fee1e85f2deb79788d1e9.md) | 359 | `result-track:775fee1e85f2deb79788d1e93fcb766f7cc4c7f1c1e0cbced8cc6a9c7fbc4b39` |
| 47 | `theorem` | [Icc_diff_pi_univ_Ioc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Varianta07e8313b51a12f18d73b0bc0bc085587c325bf89f29683ed4f61b081e381677.lean/declarations/icc-diff-pi-univ-ioc-subset--d1bae30d906ac035e7f6ca4f.md) | 377 | `result-track:d1bae30d906ac035e7f6ca4f03eeb676bc625b1c432905493b1a58f8e5e70197` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
