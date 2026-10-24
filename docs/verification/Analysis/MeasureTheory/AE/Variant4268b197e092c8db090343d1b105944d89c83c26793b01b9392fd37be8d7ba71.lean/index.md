# Verification target: GRWTSK.Analysis.MeasureTheory.AE.Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f0167745d9234a6e66708b1d0461dd2aa10e308",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f0167745d9234a6e66708b1d0461dd2aa10e308`.

Source path: `GRWTSK/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.OuterMeasure.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ae](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae--17ad770b4f1001493075f2c1.md) | 43 | `declaration-track:17ad770b4f1001493075f2c178e15973fbf8dae90d5418e0ec76557c318e8b31` |
| 2 | `theorem` | [mem_ae_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/mem-ae-iff--1cda3a01ce3784c896de2547.md) | 70 | `result-track:1cda3a01ce3784c896de254710b0d302221845bbb6a1be89e29951f4156d2475` |
| 3 | `theorem` | [ae_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-iff--bb24eaf852aff97630768eb0.md) | 73 | `result-track:bb24eaf852aff97630768eb0dd67c36547ca7c1f6eb23180014f1f33e2024fdf` |
| 4 | `theorem` | [compl_mem_ae_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/compl-mem-ae-iff--cb80c8cc1f3e7ffed2de19e8.md) | 76 | `result-track:cb80c8cc1f3e7ffed2de19e8c840409eca6f7d217bb82b785efa00726164238c` |
| 5 | `theorem` | [frequently_ae_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/frequently-ae-iff--c60fa1aefc4e33b48ae2817f.md) | 78 | `result-track:c60fa1aefc4e33b48ae2817fa8479fb60c651bfa44b0f64a4bececc7fd3f6b07` |
| 6 | `theorem` | [frequently_ae_mem_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/frequently-ae-mem-iff--ca33a458f7680c067683af11.md) | 81 | `result-track:ca33a458f7680c067683af116beb2795b7b56c7225252d6690a9ff2818b6b351` |
| 7 | `theorem` | [measure_zero_iff_ae_notMem](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/measure-zero-iff-ae-notmem--751d32b78d3fc01bdb36ced1.md) | 84 | `result-track:751d32b78d3fc01bdb36ced1f46ed96a1966991f72390cb3415454d20156eb5a` |
| 8 | `theorem` | [ae_of_all](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-of-all--f5f3fb13a1fb85dd37bef4f0.md) | 89 | `result-track:f5f3fb13a1fb85dd37bef4f0f42bfec87d8badf67a79c136155a2e5793d0dbde` |
| 9 | `instance` | [instCountableInterFilter](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/instcountableinterfilter--bc912c2ca5ad5e6b3b861b39.md) | 92 | `declaration-track:bc912c2ca5ad5e6b3b861b3912bf164ca794b4d09ccad5c98f6505dd93864fe4` |
| 10 | `theorem` | [ae_all_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-all-iff--f2d63645ddb2f580906590cb.md) | 95 | `result-track:f2d63645ddb2f580906590cbcfd9f6c6b029a19591ffcabcc83fdbc1039df607` |
| 11 | `theorem` | [all_ae_of](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/all-ae-of--441a2a9e08203d84f436fe64.md) | 99 | `result-track:441a2a9e08203d84f436fe64a075992df27dfdba52dff485294dbba1a3d0f8a1` |
| 12 | `lemma` | [ae_iff_of_countable](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-iff-of-countable--bab5eceb04f92ace317919c3.md) | 103 | `result-track:bab5eceb04f92ace317919c3903acda17e823e53690f7b77a3dcc1ccaba68946` |
| 13 | `theorem` | [ae_ball_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-ball-iff--5aef19e73cc20609ded3e9ed.md) | 107 | `result-track:5aef19e73cc20609ded3e9ed7e0736f2ec56d237c8eb68fb1d80185554ca7a1b` |
| 14 | `lemma` | [ae_eq_refl](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-refl--94796babcfaec66827f4d715.md) | 111 | `result-track:94796babcfaec66827f4d71517febd5cf8f1126aa09068ba02bc770b5f4f5d9b` |
| 15 | `lemma` | [ae_eq_rfl](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-rfl--4bbeceb5f8d29255c853376d.md) | 112 | `result-track:4bbeceb5f8d29255c853376de15f5068f695f43febd78eaa5d95dc961f484eb3` |
| 16 | `lemma` | [ae_eq_comm](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-comm--5feaf2de0c1c697b07c43774.md) | 113 | `result-track:5feaf2de0c1c697b07c43774d5788d976ad75a050cfd9f26686ee01ca44ed390` |
| 17 | `theorem` | [ae_eq_symm](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-symm--4f2284e4f9d2d03ce6b4bcc4.md) | 115 | `result-track:4f2284e4f9d2d03ce6b4bcc400c8893c728a9d77a949033e1127dc9a35ab26be` |
| 18 | `theorem` | [ae_eq_trans](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-trans--340b1b95669e2f73a37da242.md) | 118 | `result-track:340b1b95669e2f73a37da242104509f5502cb9d5179d022f8c30003d65d64b77` |
| 19 | `lemma` | [ae_eq_top](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-top--507ac41ad766eec3ca7335c5.md) | 121 | `result-track:507ac41ad766eec3ca7335c5aafeada0c32f9534c3cb90e347f33f26bf61177f` |
| 20 | `theorem` | [ae_le_of_ae_lt](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-le-of-ae-lt--fc7692aa65e11769fcc743ca.md) | 130 | `result-track:fc7692aa65e11769fcc743ca76794fac09dfa7c2713421e668bdb5fdc3ca4bc6` |
| 21 | `theorem` | [ae_eq_empty](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-empty--0c02b6a57662ceb5d564220c.md) | 135 | `result-track:0c02b6a57662ceb5d564220cf54c7f91f7db53b29d655d8ed58d651271e19190` |
| 22 | `theorem` | [ae_eq_univ](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-univ--72b190954ed637e74b1e4b11.md) | 140 | `result-track:72b190954ed637e74b1e4b1139cc6e83bbd87a0a488cecb4c3e38d39696dd138` |
| 23 | `theorem` | [ae_le_set](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-le-set--00f43256169c8f707ba1a814.md) | 143 | `result-track:00f43256169c8f707ba1a814b06ee54d3d32157ad35dc24b3dfd9cb3a8e89580` |
| 24 | `theorem` | [ae_le_set_inter](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-le-set-inter--cf6fe7b224a0d6fc930d300a.md) | 148 | `result-track:cf6fe7b224a0d6fc930d300a8e2d1f3221f3841b6c80910314a841db61de47b8` |
| 25 | `theorem` | [ae_le_set_union](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-le-set-union--c5f0e41057f6c239603e18c3.md) | 152 | `result-track:c5f0e41057f6c239603e18c399e717465ed659e3a11a169784d2055f54de7581` |
| 26 | `theorem` | [union_ae_eq_right](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/union-ae-eq-right--e4d72141d24570b83fce6f4e.md) | 156 | `result-track:e4d72141d24570b83fce6f4e366745dda2ca2f266aaa350d9f0da3f71d719f83` |
| 27 | `theorem` | [diff_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/diff-ae-eq-self--9606bd769047cae65560322c.md) | 160 | `result-track:9606bd769047cae65560322c02d24433b6743662074e37b4de152404e5c87c16` |
| 28 | `theorem` | [diff_null_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/diff-null-ae-eq-self--64d7d7db70412595c0e97e53.md) | 164 | `result-track:64d7d7db70412595c0e97e53b0ecf9119016ed3a7ce3c187d515f1e629c78a0f` |
| 29 | `theorem` | [ae_eq_set](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-set--fcebd15fa8e0fbe9466e17c4.md) | 167 | `result-track:fcebd15fa8e0fbe9466e17c423b849d668d05c2c8a8e922822a2cfbb4cbea843` |
| 30 | `theorem` | [measure_symmDiff_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/measure-symmdiff-eq-zero-iff--655b95454eb8a05efe5b0df9.md) | 172 | `result-track:655b95454eb8a05efe5b0df97f83e0f86a003b75112636252a9280c0d4b9bb95` |
| 31 | `theorem` | [ae_eq_set_compl_compl](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-set-compl-compl--24572dbbede4f27a090ce2cf.md) | 176 | `result-track:24572dbbede4f27a090ce2cfa1415f4325209bcee7e44c4e2aa78d63698141bc` |
| 32 | `theorem` | [ae_eq_set_compl](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-set-compl--b8d0533799b0e700e3024f8f.md) | 179 | `result-track:b8d0533799b0e700e3024f8fdbae1a12a5eb5fc22b2a2f6a18a067c7db445680` |
| 33 | `theorem` | [ae_eq_set_inter](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-set-inter--b728cb7d31a90f54629c99eb.md) | 182 | `result-track:b728cb7d31a90f54629c99ebf8e5f02784c2eb95a4de86aa60b8fd61ab393c0b` |
| 34 | `theorem` | [ae_eq_set_union](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-set-union--b3e5f342a5f24d7e474b4fb5.md) | 186 | `result-track:b3e5f342a5f24d7e474b4fb5849cee08974e98efc57018b9ca2fb03820dcbf22` |
| 35 | `theorem` | [ae_eq_set_diff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-set-diff--5c8f010df73d4e739a68e84f.md) | 190 | `result-track:5c8f010df73d4e739a68e84f79e780b5281daf0aac2c43b1c9cfbdf30de2b1a6` |
| 36 | `theorem` | [ae_eq_set_symmDiff](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/ae-eq-set-symmdiff--60a679ad5d8e79f10990ffba.md) | 195 | `result-track:60a679ad5d8e79f10990ffba0b676261a5552f9690b0a62bc984f0925207b413` |
| 37 | `theorem` | [union_ae_eq_univ_of_ae_eq_univ_left](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/union-ae-eq-univ-of-ae-eq-univ-left--f51cf651c0b9c65cec7d9c7d.md) | 199 | `result-track:f51cf651c0b9c65cec7d9c7d7d548f51f755a0df9241024e9c498d106461a03f` |
| 38 | `theorem` | [union_ae_eq_univ_of_ae_eq_univ_right](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/union-ae-eq-univ-of-ae-eq-univ-right--e9ccdd0fb2ac3b74cc91a563.md) | 202 | `result-track:e9ccdd0fb2ac3b74cc91a563478cebd009df6548529ada49835300b90b016b58` |
| 39 | `theorem` | [union_ae_eq_right_of_ae_eq_empty](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/union-ae-eq-right-of-ae-eq-empty--dedb03d06c49849152a6926b.md) | 206 | `result-track:dedb03d06c49849152a6926bf1ef556bfe8d50eb425902604c4f8ff3575bf1be` |
| 40 | `theorem` | [union_ae_eq_left_of_ae_eq_empty](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/union-ae-eq-left-of-ae-eq-empty--d0f003eb72d6c604cc3fa050.md) | 210 | `result-track:d0f003eb72d6c604cc3fa0504270e7b4cd9928a7f8955b5ea42f2025da44ddd4` |
| 41 | `theorem` | [inter_ae_eq_right_of_ae_eq_univ](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/inter-ae-eq-right-of-ae-eq-univ--10bdb45549ebe3a0b4c87632.md) | 214 | `result-track:10bdb45549ebe3a0b4c87632950f093a2e88a274445a8f0e34420897737b3758` |
| 42 | `theorem` | [inter_ae_eq_left_of_ae_eq_univ](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/inter-ae-eq-left-of-ae-eq-univ--dc6730b63cebadaf41cb0b08.md) | 218 | `result-track:dc6730b63cebadaf41cb0b08cc0c09e15358067520b85ab5f6215235b12295bd` |
| 43 | `theorem` | [inter_ae_eq_empty_of_ae_eq_empty_left](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/inter-ae-eq-empty-of-ae-eq-empty-left--16a6a03bb29b71e26035c719.md) | 222 | `result-track:16a6a03bb29b71e26035c7197ee30747900a8b4507e155f036c7cc06395e22cc` |
| 44 | `theorem` | [inter_ae_eq_empty_of_ae_eq_empty_right](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/inter-ae-eq-empty-of-ae-eq-empty-right--1874c1ea4464f41e16aa38f5.md) | 227 | `result-track:1874c1ea4464f41e16aa38f5f182db31770be100990001221d91dd967a3b81a1` |
| 45 | `theorem` | [_root_.Set.mulIndicator_ae_eq_one](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/root-set-mulindicator-ae-eq-one--864c1599de04a66fe9cb7226.md) | 233 | `result-track:864c1599de04a66fe9cb7226f7529d06348cf38d5692fc708b37e5bf11da1af8` |
| 46 | `theorem` | [measure_mono_ae](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/measure-mono-ae--04407611d6b281cb5e3757bb.md) | 239 | `result-track:04407611d6b281cb5e3757bbd266689675a8b5f4e9a7cdbdf1bc96d7782463ad` |
| 47 | `theorem` | [measure_congr](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/measure-congr--b9b14d49ee09188424f9595e.md) | 249 | `result-track:b9b14d49ee09188424f9595e85bd3518e9566d608889ffa007bd36e76c6bca6c` |
| 48 | `theorem` | [measure_mono_null_ae](../../../../../mathematics/Analysis/MeasureTheory/AE/Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.lean/declarations/measure-mono-null-ae--d50d2c24f2a12fb8f9b79f8c.md) | 254 | `result-track:d50d2c24f2a12fb8f9b79f8c0371a5ca9bcf8f59e7fa491ab8700a12d5ea6a7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
