# Verification target: GRWTSK.NumberTheory.Regulator.Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad681e27c1d3f32611e63ec7e8a96012e3cb096e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad681e27c1d3f32611e63ec7e8a96012e3cb096e`.

Source path: `GRWTSK/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivFinRank](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/equivfinrank--deafc57aff102bee6765c806.md) | 57 | `declaration-track:deafc57aff102bee6765c80662d499d49816f3cefdd0115cad29c2cf58201c2c` |
| 2 | `abbrev` | [IsMaxRank](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/ismaxrank--b5e2fd2cfb3dd7e95634ef01.md) | 71 | `declaration-track:b5e2fd2cfb3dd7e95634ef01d3e383bd1398b3ccf73ef9b99b14ad95775c44e5` |
| 3 | `def` | [basisOfIsMaxRank](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/basisofismaxrank--ee4f6285e23a0d51249c048d.md) | 78 | `declaration-track:ee4f6285e23a0d51249c048d38d4fced289e969b2200697ddb2257079c501108` |
| 4 | `theorem` | [basisOfIsMaxRank_apply](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/basisofismaxrank-apply--3170306dbc2aab5fc58ab3d8.md) | 84 | `result-track:3170306dbc2aab5fc58ab3d860fd55d8e356e44ffb39a7acdb49c16d64b6a9ee` |
| 5 | `theorem` | [span_basisOfIsMaxRank](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/span-basisofismaxrank--0c84d9d8ce8bbb819eb7868c.md) | 89 | `result-track:0c84d9d8ce8bbb819eb7868c732dcd4db0ccefe1e32207bf671ff115697e4bb4` |
| 6 | `theorem` | [finiteIndex_iff_sup_torsion_finiteIndex](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/finiteindex-iff-sup-torsion-finiteindex--bcb89cbd74dbba2c9b4e82db.md) | 95 | `result-track:bcb89cbd74dbba2c9b4e82db1f31110a63d67c7a3f636193a44c380a28c0c943` |
| 7 | `theorem` | [isMaxRank_iff_closure_finiteIndex](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/ismaxrank-iff-closure-finiteindex--9ee995746bb6638852689c63.md) | 108 | `result-track:9ee995746bb6638852689c63e55ee30993bea2a7307411c92386a28a52cfa9b3` |
| 8 | `def` | [regOfFamily](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regoffamily--037019eb1b571a541776556d.md) | 142 | `declaration-track:037019eb1b571a541776556db6030dec3282e884143fd0993100b6ea3429ad56` |
| 9 | `theorem` | [regOfFamily_eq_zero](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regoffamily-eq-zero--4678435ec977849dd0cfbb41.md) | 147 | `result-track:4678435ec977849dd0cfbb4189cecfe54d823ab387328742deab7a880442e275` |
| 10 | `theorem` | [regOfFamily_of_isMaxRank](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regoffamily-of-ismaxrank--86020475495da088be979fe7.md) | 152 | `result-track:86020475495da088be979fe773c90cfad3235e08f37cec0a4c32a69eedd3b325` |
| 11 | `theorem` | [regOfFamily_pos](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regoffamily-pos--0b117e9aec15c2a1da737aef.md) | 156 | `result-track:0b117e9aec15c2a1da737aef1dacff21014352d519e804687c4d09ee2203cca2` |
| 12 | `theorem` | [regOfFamily_ne_zero](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regoffamily-ne-zero--0061a75687fd07ea17d7163e.md) | 162 | `result-track:0061a75687fd07ea17d7163e42e9d48d4d0b49e1f16df11960a236bd318933f3` |
| 13 | `theorem` | [regOfFamily_ne_zero_iff](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regoffamily-ne-zero-iff--cb430525b9f3434d97abfcda.md) | 165 | `result-track:cb430525b9f3434d97abfcda2ee95dc5d536c9124e8e5deca4a57c261016d723` |
| 14 | `theorem` | [regOfFamily_eq_det'](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regoffamily-eq-det--c5acf276777950fa8b2c0270.md) | 170 | `result-track:c5acf276777950fa8b2c027083564b4705b499d5cd2ed4167a20f619e53da1f2` |
| 15 | `theorem` | [abs_det_eq_abs_det](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/abs-det-eq-abs-det--fcd94328eca12df0f365c930.md) | 187 | `result-track:fcd94328eca12df0f365c93086086c67cc80f2ad1bda734e21754fecb4f705a0` |
| 16 | `theorem` | [regOfFamily_eq_det](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regoffamily-eq-det--fc64746499492af88d3d3d68.md) | 224 | `result-track:fc64746499492af88d3d3d6862a9f08172dde097551bf6a22d5c5e31e8e4e653` |
| 17 | `theorem` | [finrank_mul_regOfFamily_eq_det](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/finrank-mul-regoffamily-eq-det--78996333230085db3b454e5f.md) | 236 | `result-track:78996333230085db3b454e5ffc05657b441fd8080e41905aa88b72cad2d5e4a9` |
| 18 | `def` | [regulator](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regulator--cea19c175e1fcc755245221c.md) | 266 | `declaration-track:cea19c175e1fcc755245221cbbbee05632b73a4f41af1d1012be5602536ff87b` |
| 19 | `theorem` | [isMaxRank_fundSystem](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/ismaxrank-fundsystem--bdc0618709d005632a24e693.md) | 268 | `result-track:bdc0618709d005632a24e693e5f4ab1804a8c5293e0e2f85d6db6321d8d760a1` |
| 20 | `theorem` | [basisOfIsMaxRank_fundSystem](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/basisofismaxrank-fundsystem--1cecf7d18e3aaf56535a92a0.md) | 275 | `result-track:1cecf7d18e3aaf56535a92a037d98dc5832d380c84f5a608d8e24db7aadf0439` |
| 21 | `theorem` | [regulator_eq_regOfFamily_fundSystem](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regulator-eq-regoffamily-fundsystem--55655a060ab034e513bf472b.md) | 280 | `result-track:55655a060ab034e513bf472b0b5a71d2f197c986c602f6eeeb17499a41adfc89` |
| 22 | `theorem` | [regulator_pos](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regulator-pos--cc084da774d3ee39feaee1e0.md) | 286 | `result-track:cc084da774d3ee39feaee1e0c64a802a69e002f918ff53450cec85abfd865638` |
| 23 | `theorem` | [regulator_ne_zero](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regulator-ne-zero--4183b05c84436f06f75d7a65.md) | 289 | `result-track:4183b05c84436f06f75d7a65a520adef6008d8ae007354b0bf91f3b78e498910` |
| 24 | `theorem` | [regulator_eq_det'](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regulator-eq-det--e3c9d0d090d1ea6927073e49.md) | 293 | `result-track:e3c9d0d090d1ea6927073e498e4c89546114b70b098c37e1a84e450736ad65aa` |
| 25 | `theorem` | [regulator_eq_det](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regulator-eq-det--e59771dbf1edf14905a04890.md) | 303 | `result-track:e59771dbf1edf14905a0489065add98f8b0a3481585f2d2edcc4fa100eb778ee` |
| 26 | `theorem` | [finrank_mul_regulator_eq_det](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/finrank-mul-regulator-eq-det--41360c51a0a76b368cede703.md) | 314 | `result-track:41360c51a0a76b368cede703640f7ed1d9412f35bbf7e9395a0f380f789e2435` |
| 27 | `theorem` | [regOfFamily_div_regOfFamily](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regoffamily-div-regoffamily--a65fb63c89071de0bc3858e7.md) | 333 | `result-track:a65fb63c89071de0bc3858e7dfde991f6b2976249cd980de9e495f28a90cb0ca` |
| 28 | `theorem` | [regOfFamily_div_regulator](../../../../mathematics/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/declarations/regoffamily-div-regulator--639f32f30295258bdd66bc48.md) | 361 | `result-track:639f32f30295258bdd66bc482a81891d4d02d6a61b066d7300767464db301d2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
