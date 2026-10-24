# Verification target: GRWTSK.Analysis.BKLNWA2Bounds.Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99f9d41f029d14e0fe5a69f74cf039badb792eca",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/index.md) · [Full source](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99f9d41f029d14e0fe5a69f74cf039badb792eca`.

Source path: `GRWTSK/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Examples.BKLNW_a2_pow2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bklnwF](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/bklnwf--b7a56bce0fe5c03c2f5c6819.md) | 58 | `declaration-track:b7a56bce0fe5c03c2f5c68190c9a82cbfb594943f5f33353b8e166035fdb3a3b` |
| 2 | `theorem` | [floor_20](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-20--37cf358995a1783ad84e638a.md) | 63 | `result-track:37cf358995a1783ad84e638abb96a78eaa908f26be79e4291dccea3755f89cb7` |
| 3 | `theorem` | [floor_25](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-25--6b3ebefcc82f1bcd105f293a.md) | 69 | `result-track:6b3ebefcc82f1bcd105f293a4a55f054049d4b8f5d4d566302f6dee0ebf59772` |
| 4 | `theorem` | [floor_30](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-30--1d490872b164f96736bb8511.md) | 75 | `result-track:1d490872b164f96736bb8511e0247b58eba52f6d861e08a1563f61f12a183323` |
| 5 | `theorem` | [floor_35](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-35--313d61fff2d6ecc1778b9ba9.md) | 81 | `result-track:313d61fff2d6ecc1778b9ba929fc38dc8b61686911dc5f20dd40616f95187374` |
| 6 | `theorem` | [floor_40](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-40--f781c1f4cd82a32928bfce33.md) | 87 | `result-track:f781c1f4cd82a32928bfce3316e7a853f052dd6d4ad0ab28cdd7523630facc80` |
| 7 | `theorem` | [floor_43](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-43--2b9849c2e9de242d1fb3846e.md) | 93 | `result-track:2b9849c2e9de242d1fb3846e99bfa0e0593743002bf99d696dcb1cf88974dca5` |
| 8 | `theorem` | [floor_100](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-100--76a7aa60472830339d8dfa34.md) | 99 | `result-track:76a7aa60472830339d8dfa34f582e3635444eac3926108b5cc32bb9cd60a8a1b` |
| 9 | `theorem` | [floor_150](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-150--2211f3d956ba2fd20a0add3b.md) | 105 | `result-track:2211f3d956ba2fd20a0add3bfa853ee07c0df0632f12a8da4b528c02924fa10a` |
| 10 | `theorem` | [floor_200](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-200--f271736bcb75e824e38a469b.md) | 111 | `result-track:f271736bcb75e824e38a469b922579577375f1377ab6b016d8b22c8af59dfd85` |
| 11 | `theorem` | [floor_250](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-250--ff6caf5fb30f6cf95cf3a554.md) | 117 | `result-track:ff6caf5fb30f6cf95cf3a554215df03588092a1f988c22da43f0d88723f25915` |
| 12 | `theorem` | [floor_300](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/floor-300--9c5d687bc2be45e18a91beb7.md) | 123 | `result-track:9c5d687bc2be45e18a91beb7e5b6dcdc96d2a22650eff38b7a770d6a651644f5` |
| 13 | `theorem` | [f_eq_bklnwF_exp](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/f-eq-bklnwf-exp--5e8d50c2989f371ebcbd4511.md) | 132 | `result-track:5e8d50c2989f371ebcbd451173b990b0ea625a60301151d9c39a5e88a2c06317` |
| 14 | `lemma` | [a2_20_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-20-exp-lower--0c811eb17cfb954decc51bd4.md) | 144 | `result-track:0c811eb17cfb954decc51bd44a109417fd5a9df8e097d8fa3f808b0f7448dc6c` |
| 15 | `lemma` | [a2_20_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-20-exp-upper--1c40a50424220c12790717bd.md) | 146 | `result-track:1c40a50424220c12790717bd442460b3b996be83ff0032d1cfc30f01a4331c53` |
| 16 | `lemma` | [a2_25_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-25-exp-lower--90afa1c5be1fce1b3559b455.md) | 150 | `result-track:90afa1c5be1fce1b3559b45500a2d05e6c463b8b58d416e490ad79bbcae5773c` |
| 17 | `lemma` | [a2_25_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-25-exp-upper--c470e9b0c46f357a2f4473ac.md) | 152 | `result-track:c470e9b0c46f357a2f4473acafbb3ea1a8deda072eb1dbbbb4c6c2a3b28fd050` |
| 18 | `lemma` | [a2_30_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-30-exp-lower--7d08572769776339a6990265.md) | 156 | `result-track:7d08572769776339a699026522f5e80609f0aa646f03fd495a750c2b885118b5` |
| 19 | `lemma` | [a2_30_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-30-exp-upper--247997549784f48f7d048160.md) | 158 | `result-track:247997549784f48f7d0481608368c0260aa329d5b0c917d983a75d504e27a131` |
| 20 | `lemma` | [a2_35_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-35-exp-lower--78746a904cc375212678b172.md) | 162 | `result-track:78746a904cc375212678b17262669df9dc68cec46ecc3ffd12b9193b871005b5` |
| 21 | `lemma` | [a2_35_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-35-exp-upper--f861efbc0d3695a16cfb5aa1.md) | 164 | `result-track:f861efbc0d3695a16cfb5aa1eb02a6c9d259cfc71c79c66cbf938eb34b941170` |
| 22 | `lemma` | [a2_40_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-40-exp-lower--76fbb8fb74ad00fe196ed306.md) | 168 | `result-track:76fbb8fb74ad00fe196ed3060e3213fc7da2e9c1fa35fe342519f2276a152b24` |
| 23 | `lemma` | [a2_40_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-40-exp-upper--1773ea093ed432bed3e9ae95.md) | 170 | `result-track:1773ea093ed432bed3e9ae959795e1207a9fb135c570256ba46a55f28e113ee6` |
| 24 | `lemma` | [a2_43_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-43-exp-lower--9adc8fd3dc344753084ed42d.md) | 174 | `result-track:9adc8fd3dc344753084ed42dc2b28924606a06a4d2bc32fdf741623a02b113c8` |
| 25 | `lemma` | [a2_43_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-43-exp-upper--634fca5c1a0fbc46eac50b4f.md) | 176 | `result-track:634fca5c1a0fbc46eac50b4fe8dc4b06d626589af175b60ae1c506784cc30150` |
| 26 | `lemma` | [a2_100_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-100-exp-lower--5634420d278109b33257357b.md) | 180 | `result-track:5634420d278109b33257357b54447d5d80b761bca6de8414ec460df32d3a064d` |
| 27 | `lemma` | [a2_100_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-100-exp-upper--173baf0a3d56b9b9ae16d8d0.md) | 182 | `result-track:173baf0a3d56b9b9ae16d8d0cb3d47e1953387b7385dbf849991a4f67b8111ce` |
| 28 | `lemma` | [a2_150_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-150-exp-lower--3524aab9b651e58518d513e8.md) | 186 | `result-track:3524aab9b651e58518d513e8853f440c69b81425f88517e626ae2d5f502fac2f` |
| 29 | `lemma` | [a2_150_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-150-exp-upper--f88c869b3933725d905190fd.md) | 188 | `result-track:f88c869b3933725d905190fdaeebe21feb23fe1aac5e6f0f176104a55fb364a8` |
| 30 | `lemma` | [a2_200_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-200-exp-lower--af9fa8d75367691a91b1b90a.md) | 192 | `result-track:af9fa8d75367691a91b1b90ac6d3a985afc77c43688e482f612a5c86c99430ad` |
| 31 | `lemma` | [a2_200_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-200-exp-upper--689a8193c57f521af5558a03.md) | 194 | `result-track:689a8193c57f521af5558a031c5dfaa728920f34b8845cbacf0a7e2fbd0c6efb` |
| 32 | `lemma` | [a2_250_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-250-exp-lower--26b1c6a26e29260cd6748218.md) | 198 | `result-track:26b1c6a26e29260cd674821877cbb45e953005109b40e5f6d19c99202aec597a` |
| 33 | `lemma` | [a2_250_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-250-exp-upper--7337a74c084600dfa4b59760.md) | 200 | `result-track:7337a74c084600dfa4b597605db264ceb4f0bb623241181214c8f5a23d79bda3` |
| 34 | `lemma` | [a2_300_exp_lower](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-300-exp-lower--b1167f7bedb1e8b68ede067e.md) | 204 | `result-track:b1167f7bedb1e8b68ede067ec6b4e0303d66a65e9a1c438f823232e5000923ad` |
| 35 | `lemma` | [a2_300_exp_upper](../../../../mathematics/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/declarations/a2-300-exp-upper--e49d44f91c13be3f4d7923c4.md) | 206 | `result-track:e49d44f91c13be3f4d7923c4bd35f63b72d6719bf32fda7e388cc9c8033f3515` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
