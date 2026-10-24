# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2a3dbf4238ab555b4413644e3f3fbde8043082a",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2a3dbf4238ab555b4413644e3f3fbde8043082a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Transvection` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Pi` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Stieltjes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/macro-rules--5b58cb4e4cbb8dc53efec2e1.md) | 37 | `declaration-track:5b58cb4e4cbb8dc53efec2e1a7bdaf462c1c58fca6ae8f2dc7161c0bb91896e9` |
| 2 | `theorem` | [volume_eq_stieltjes_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-eq-stieltjes-id--b718671b469c10004ddd8a33.md) | 56 | `result-track:b718671b469c10004ddd8a337b784368c24728640994b0b88c7dd08919f06e63` |
| 3 | `theorem` | [volume_val](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-val--1bb6ebcdb899c926fa232d3e.md) | 75 | `result-track:1bb6ebcdb899c926fa232d3ed5999994a4344a795ca6b03db65e2f3c9ab66b44` |
| 4 | `theorem` | [volume_Ico](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-ico--a009a3e1f9e869d8fc203021.md) | 80 | `result-track:a009a3e1f9e869d8fc203021306e95aa5c24e049ef3a9e4fbe6aa28ffde234f7` |
| 5 | `theorem` | [volume_Icc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-icc--6796c632d746d99b4b2f52fd.md) | 84 | `result-track:6796c632d746d99b4b2f52fda2a4b45b237800d67ca75fbe9b77d827659effda` |
| 6 | `theorem` | [volume_Ioo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-ioo--b9341283344d56c0c5632bdb.md) | 88 | `result-track:b9341283344d56c0c5632bdb89ae1300a4f03c6b1f849745d30f34e3009194ad` |
| 7 | `theorem` | [volume_Ioc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-ioc--490a9bef774da42a079a0e5e.md) | 92 | `result-track:490a9bef774da42a079a0e5ea73eb49a06c792a8c112b9cc4ef720d26a6c14ff` |
| 8 | `theorem` | [volume_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-singleton--44ea36fd95ba7ae29089a155.md) | 96 | `result-track:44ea36fd95ba7ae29089a155b2d4cd5b1189c1abacba1b4f880d29d39863fc37` |
| 9 | `theorem` | [volume_univ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-univ--902532f4312427fc80743f01.md) | 100 | `result-track:902532f4312427fc80743f01b876f614db436815a46448e1ff1911d9afc450ce` |
| 10 | `theorem` | [volume_ball](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-ball--58f064a2c909589ecd7a1934.md) | 108 | `result-track:58f064a2c909589ecd7a1934625e8da6d3b3290c00ac6d9e5a38459c4b2c36aa` |
| 11 | `theorem` | [volume_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-closedball--261f041713c9b5741cc41271.md) | 113 | `result-track:261f041713c9b5741cc41271bf75399d94246bf1a11269b4ef8f32fe69269035` |
| 12 | `theorem` | [volume_emetric_ball](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-emetric-ball--b17cb9f3ccdc57ba1eafd014.md) | 118 | `result-track:b17cb9f3ccdc57ba1eafd01466ee247819cda49d3db3d8d870137ca08b9e23fa` |
| 13 | `theorem` | [volume_emetric_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-emetric-closedball--ea6ee65a9cb75b600ddd261f.md) | 127 | `result-track:ea6ee65a9cb75b600ddd261fac5f89ad17b7244ccb7a338b878ed39f1261cfee` |
| 14 | `instance` | [noAtoms_volume](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/noatoms-volume--3b6c47714a95203f86fc8777.md) | 135 | `declaration-track:3b6c47714a95203f86fc87775458e4d08421042a5af3d78ace90e69a98561f12` |
| 15 | `theorem` | [volume_interval](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-interval--6e2135511e7aa13fcf455dd3.md) | 140 | `result-track:6e2135511e7aa13fcf455dd31a70f1f22d54fc9add1cd9f3187338c9fd8db2d3` |
| 16 | `theorem` | [volume_Ioi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-ioi--e7f8c4146d1ac0127023f24b.md) | 145 | `result-track:e7f8c4146d1ac0127023f24b86f682d876d939a3cca1e60cc4bcee2ae65e0e04` |
| 17 | `theorem` | [volume_Ici](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-ici--924adb866bc42059cf57a6e4.md) | 154 | `result-track:924adb866bc42059cf57a6e4468fc8e125db1fe59e842bd176d72f8631a8ddb2` |
| 18 | `theorem` | [volume_Iio](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-iio--0e4232a306236f2a37199ba8.md) | 158 | `result-track:0e4232a306236f2a37199ba893d3750a83d9d7c9175741298ac364f6d0d0a0ba` |
| 19 | `theorem` | [volume_Iic](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-iic--089de36166b28f7821cc94bc.md) | 167 | `result-track:089de36166b28f7821cc94bcda1c1ccf8183fa656f9b876b20856306db4c2d09` |
| 20 | `instance` | [locallyFinite_volume](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/locallyfinite-volume--242b34029d79d19c9143f927.md) | 170 | `declaration-track:242b34029d79d19c9143f927d104bd6f2d40d4711cc65687787c51856bca279c` |
| 21 | `instance` | [isFiniteMeasure_restrict_Icc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/isfinitemeasure-restrict-icc--74d873a9fbe22a43235d0077.md) | 177 | `declaration-track:74d873a9fbe22a43235d0077d738bd2eca88ee775f2cf4c7535ba6093dba13d1` |
| 22 | `instance` | [isFiniteMeasure_restrict_Ico](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/isfinitemeasure-restrict-ico--5f5445a8386eba195f25e255.md) | 181 | `declaration-track:5f5445a8386eba195f25e25517c5ed0554413ac99c0ad8051d72a54374465337` |
| 23 | `instance` | [isFiniteMeasure_restrict_Ioc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/isfinitemeasure-restrict-ioc--a4928fb587b7540611a621c8.md) | 185 | `declaration-track:a4928fb587b7540611a621c8cb6f3d59f2d8ef75f3b2541a9e5295cd97978d62` |
| 24 | `instance` | [isFiniteMeasure_restrict_Ioo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/isfinitemeasure-restrict-ioo--0c5d431be6de14e83c0ba4ed.md) | 189 | `declaration-track:0c5d431be6de14e83c0ba4ed9fc3299744b1c2333ebeb42068061143b4c76af7` |
| 25 | `theorem` | [volume_le_diam](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-le-diam--ccaee6e49311f5be8c40027a.md) | 193 | `result-track:ccaee6e49311f5be8c40027ad50ea316e8194df9e89e2fda93f9e0d33a00d1b7` |
| 26 | `theorem` | [_root_.Filter.Eventually.volume_pos_of_nhds_real](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/root-filter-eventually-volume-pos-of-nhds-real--046419dc4fffaf19f5b0c8e0.md) | 200 | `result-track:046419dc4fffaf19f5b0c8e0a15e20fa1cf61ec586c7c7e0362720a59d5dc8c2` |
| 27 | `theorem` | [volume_Icc_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-icc-pi--bae2c45f1e2d15abe1a8732b.md) | 212 | `result-track:bae2c45f1e2d15abe1a8732b2ff117335641cb885c82ba2db75127999d95e340` |
| 28 | `theorem` | [volume_Icc_pi_toReal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-icc-pi-toreal--8728097a7cf5fa36987bf8a5.md) | 218 | `result-track:8728097a7cf5fa36987bf8a580a86a6d5cc0d7b8997b6107d3db0380ee654d40` |
| 29 | `theorem` | [volume_pi_Ioo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-pi-ioo--0eed5b22c9437b8d7a6e8393.md) | 223 | `result-track:0eed5b22c9437b8d7a6e8393bf65c5981661b7b54cdddc524730e0a5e03885b9` |
| 30 | `theorem` | [volume_pi_Ioo_toReal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-pi-ioo-toreal--54683ea4a7e1d63256dafb5d.md) | 229 | `result-track:54683ea4a7e1d63256dafb5deca36abde723d22d9a05016def8120fbc5ac6d60` |
| 31 | `theorem` | [volume_pi_Ioc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-pi-ioc--b988cd5c74b09f082d493707.md) | 234 | `result-track:b988cd5c74b09f082d493707e5e7281dd1b8fe3248bfa44dca7fce6b1aa1e859` |
| 32 | `theorem` | [volume_pi_Ioc_toReal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-pi-ioc-toreal--47df1cf65192e7d17df87660.md) | 240 | `result-track:47df1cf65192e7d17df87660320faad0ffcf2aa1d1a0fe7faa45b2394d917c10` |
| 33 | `theorem` | [volume_pi_Ico](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-pi-ico--5c1dc0fdb0e7989e1d79299f.md) | 245 | `result-track:5c1dc0fdb0e7989e1d79299fe1d9bc98d00f8cbd98e0d9584c48a7997b626f71` |
| 34 | `theorem` | [volume_pi_Ico_toReal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-pi-ico-toreal--99f1e62e903fddf0bc53788c.md) | 251 | `result-track:99f1e62e903fddf0bc53788cee335b3d333412398b700b9777b124a63bd708cd` |
| 35 | `theorem` | [volume_pi_ball](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-pi-ball--2850eec75aef433bbeac27c8.md) | 257 | `result-track:2850eec75aef433bbeac27c80e2dbfdef13dbba4e8e6e36e8dfa87badf2c085b` |
| 36 | `theorem` | [volume_pi_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-pi-closedball--53a21cb95654392ae0fef4a3.md) | 264 | `result-track:53a21cb95654392ae0fef4a326c93b30e1f6506a21a90f12fd580cfa225317e7` |
| 37 | `theorem` | [volume_pi_le_prod_diam](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-pi-le-prod-diam--5147a2143e4bfee26ad6993b.md) | 270 | `result-track:5147a2143e4bfee26ad6993b1d20d608732cacdba492838845abfc7f6da4815f` |
| 38 | `theorem` | [volume_pi_le_diam_pow](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-pi-le-diam-pow--cff29ba64f6f5b31f1e7d7c8.md) | 281 | `result-track:cff29ba64f6f5b31f1e7d7c81d49da91a583913870bc3d8b4f1ec4f17d3e710e` |
| 39 | `theorem` | [smul_map_volume_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/smul-map-volume-mul-left--f4e7197089b73370ffe7bc87.md) | 295 | `result-track:f4e7197089b73370ffe7bc878e16181af39e0af90a917bfdbc7242b1c75bf237` |
| 40 | `theorem` | [map_volume_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/map-volume-mul-left--bd77b1ab353bbb07454b85a9.md) | 308 | `result-track:bd77b1ab353bbb07454b85a98852d4c83c096c5a7a570f9cea0529bdc08fdf01` |
| 41 | `theorem` | [volume_preimage_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-preimage-mul-left--d14a19f132050f42e41cdb07.md) | 316 | `result-track:d14a19f132050f42e41cdb07649d7c4aa33f03d4156baf4fbd17ded847732109` |
| 42 | `theorem` | [smul_map_volume_mul_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/smul-map-volume-mul-right--60d2ee0296877de981212539.md) | 324 | `result-track:60d2ee0296877de981212539af5cb6bd872ad925855f59669c928ef8cf7af776` |
| 43 | `theorem` | [map_volume_mul_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/map-volume-mul-right--b5942bfd6c362ef5ff378cee.md) | 329 | `result-track:b5942bfd6c362ef5ff378cee3538e346a5a3d26006032237e453c09ef187a09d` |
| 44 | `theorem` | [volume_preimage_mul_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-preimage-mul-right--a521d6dc1fd271574d394272.md) | 335 | `result-track:a521d6dc1fd271574d394272a93b546f9eef4ead321803957d66b253b43e7196` |
| 45 | `theorem` | [smul_map_diagonal_volume_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/smul-map-diagonal-volume-pi--0f56a9ea999dfe25afab76bf.md) | 353 | `result-track:0f56a9ea999dfe25afab76bf5894e5eb9a557fd707fa56336b3735325736ca72` |
| 46 | `theorem` | [volume_preserving_transvectionStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-preserving-transvectionstruct--1e239eefd218277389cda215.md) | 379 | `result-track:1e239eefd218277389cda215c883415d71637c9b4fd92eec02757c4e10d2f62e` |
| 47 | `theorem` | [map_matrix_volume_pi_eq_smul_volume_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/map-matrix-volume-pi-eq-smul-volume-pi--cb879c74a170cfb8aa59060f.md) | 423 | `result-track:cb879c74a170cfb8aa59060fb01e5a59fc143cfb4d3e2016e6af1f7810211af5` |
| 48 | `theorem` | [map_linearMap_volume_pi_eq_smul_volume_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/map-linearmap-volume-pi-eq-smul-volume-pi--a5bf35de3b148729f7194c76.md) | 446 | `result-track:a5bf35de3b148729f7194c763810a5e5d8cb2fabc793dcf2163e143e297894c4` |
| 49 | `def` | [regionBetween](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/regionbetween--95decfcbbf97bd5641341da9.md) | 466 | `declaration-track:95decfcbbf97bd5641341da9d5474d13eddc9aaf936ceee869c3e4cb34721727` |
| 50 | `theorem` | [regionBetween_subset](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/regionbetween-subset--f21955ba3b08fea46f76249b.md) | 470 | `result-track:f21955ba3b08fea46f76249bf4c29abf8fbeec358f411d67c74e940e758ca0b7` |
| 51 | `theorem` | [measurableSet_regionBetween](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/measurableset-regionbetween--010d5b0f0ed105cd3d3cdb75.md) | 477 | `result-track:010d5b0f0ed105cd3d3cdb75829562490cf8b8bf594911a389f6f26a34f8c55e` |
| 52 | `theorem` | [measurableSet_region_between_oc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/measurableset-region-between-oc--98026274d4ee717b8fe9cf9d.md) | 489 | `result-track:98026274d4ee717b8fe9cf9d9430b3a324fc1951ad91703746080947538f2ab1` |
| 53 | `theorem` | [measurableSet_region_between_co](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/measurableset-region-between-co--b23cde911b91ea14113174e5.md) | 502 | `result-track:b23cde911b91ea14113174e56bdee0ffb63fb51257852c06ab2d30836ec12a11` |
| 54 | `theorem` | [measurableSet_region_between_cc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/measurableset-region-between-cc--3869fe2a0386837741ec14eb.md) | 515 | `result-track:3869fe2a0386837741ec14eb313011a10cbf47bd3c4486d3847f8e01e1819735` |
| 55 | `theorem` | [measurableSet_graph](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/measurableset-graph--41cdc297785dbf8d06add4a6.md) | 527 | `result-track:41cdc297785dbf8d06add4a6a14b270cabc612f813cdc6501c3f41c9c677b84b` |
| 56 | `theorem` | [volume_regionBetween_eq_lintegral'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-regionbetween-eq-lintegral--ad7aa97c3aa43482bb6a3f85.md) | 531 | `result-track:ad7aa97c3aa43482bb6a3f85e9878b1afe31376ef28bd7022b88fc253a90cbcd` |
| 57 | `theorem` | [volume_regionBetween_eq_lintegral](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/volume-regionbetween-eq-lintegral--619fb6f08d31c87ebb867792.md) | 553 | `result-track:619fb6f08d31c87ebb867792272de6ce90dac3cfb1486283ab308100cfa1e4e0` |
| 58 | `theorem` | [ae_restrict_of_ae_restrict_inter_Ioo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/ae-restrict-of-ae-restrict-inter-ioo--ebe3dc45850efe83f5abe0b9.md) | 585 | `result-track:ebe3dc45850efe83f5abe0b9d59d7faadd20019e5b51956eb71eaccf98850adf` |
| 59 | `theorem` | [ae_of_mem_of_ae_of_mem_inter_Ioo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/declarations/ae-of-mem-of-ae-of-mem-inter-ioo--0d67cb4455ffec7b61604d02.md) | 620 | `result-track:0d67cb4455ffec7b61604d0214777151de9fe2f234d40c1b574d6f1683a38016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
