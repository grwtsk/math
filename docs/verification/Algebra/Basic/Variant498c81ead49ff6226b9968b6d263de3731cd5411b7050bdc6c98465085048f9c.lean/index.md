# Verification target: GRWTSK.Algebra.Basic.Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a2bec0e40694328e8405bc489abef27f6a24a1f",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a2bec0e40694328e8405bc489abef27f6a24a1f`.

Source path: `GRWTSK/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Semiring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Pow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.LeastGreatest` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Archimedean](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/archimedean--9a6c3421581057ae945f0d21.md) | 49 | `declaration-track:9a6c3421581057ae945f0d21a821025f519a32ab4dc49c464f73fcce96ef760f` |
| 2 | `class` | [MulArchimedean](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/mularchimedean--4b6594c24a0a0c2a370e1c9a.md) | 59 | `declaration-track:4b6594c24a0a0c2a370e1c9a8728c153c0163cf53a970ae33a5efe18782fd9fb` |
| 3 | `instance` | [OrderDual.instMulArchimedean](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/orderdual-instmularchimedean--f2852e66385a31cfb84eff8a.md) | 67 | `declaration-track:f2852e66385a31cfb84eff8ac5331ecca9607938e8ac6c330895db43738b23ee` |
| 4 | `instance` | [Additive.instArchimedean](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/additive-instarchimedean--d748646c7c58887fea4b40ea.md) | 74 | `declaration-track:d748646c7c58887fea4b40ea5ae8a1d5046dd7b055e06f538fd370317d535813` |
| 5 | `instance` | [Multiplicative.instMulArchimedean](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/multiplicative-instmularchimedean--c0a650f407899e3d2c99f6fb.md) | 78 | `declaration-track:c0a650f407899e3d2c99f6fb85b0c64f1292ac2cda705b1ce27962e19800181b` |
| 6 | `theorem` | [exists_lt_pow](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-lt-pow--65627d74cdf83b222a3eda03.md) | 83 | `result-track:65627d74cdf83b222a3eda03273a59c4cf53884b240984bef4101511cdc4d161` |
| 7 | `theorem` | [existsUnique_zpow_near_of_one_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/existsunique-zpow-near-of-one-lt--7080d893c91af06589d3082b.md) | 96 | `result-track:7080d893c91af06589d3082b936ffb66889cbeb173489b6f5a1104e7d1a0b38f` |
| 8 | `theorem` | [existsUnique_zpow_near_of_one_lt'](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/existsunique-zpow-near-of-one-lt--6838da70388d39d6b64fc870.md) | 116 | `result-track:6838da70388d39d6b64fc870e51d83e86115001663be687e6d18cf375fd3294e` |
| 9 | `theorem` | [existsUnique_div_zpow_mem_Ico](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/existsunique-div-zpow-mem-ico--259eefc947282b16d410cd17.md) | 122 | `result-track:259eefc947282b16d410cd1782f9fa08b73b3d8666b1c7cb144f62fd5aeea3d3` |
| 10 | `theorem` | [existsUnique_mul_zpow_mem_Ico](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/existsunique-mul-zpow-mem-ico--93a67bfb62b750f22154801d.md) | 128 | `result-track:93a67bfb62b750f22154801de542c29bc1e785bf83b151a6b071e591759e14e9` |
| 11 | `theorem` | [existsUnique_add_zpow_mem_Ioc](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/existsunique-add-zpow-mem-ioc--ea8878509e141bb63c4ef417.md) | 135 | `result-track:ea8878509e141bb63c4ef4170337d6dd1abf0e8604982faa663df511175b9d3c` |
| 12 | `theorem` | [existsUnique_sub_zpow_mem_Ioc](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/existsunique-sub-zpow-mem-ioc--9455315ed3e6e597998f6506.md) | 143 | `result-track:9455315ed3e6e597998f6506ae462d8c559c90470fdf92453ea535d2c1aed34c` |
| 13 | `theorem` | [exists_nat_ge](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-nat-ge--4a862bf5bf17d14fda0cf006.md) | 155 | `result-track:4a862bf5bf17d14fda0cf006c11a4cdb3759d4c1039e5cd86bdf814ec67baf7b` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/instance--84a64e84e3ebec85102f247b.md) | 160 | `declaration-track:84a64e84e3ebec85102f247bf72d3b73ccb93f5cc019293d2f7fef0f4a0af2b7` |
| 15 | `lemma` | [exists_nat_gt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-nat-gt--a6002e3ed5d275e637bc711e.md) | 171 | `result-track:a6002e3ed5d275e637bc711e515df5b1df1cb268dcc655ce0405dd9fcb486bea` |
| 16 | `theorem` | [add_one_pow_unbounded_of_pos](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/add-one-pow-unbounded-of-pos--be1f124a109a2b971b5e5acc.md) | 174 | `result-track:be1f124a109a2b971b5e5acc448c152037d8ef5560556139477cc37f9e21e03d` |
| 17 | `lemma` | [pow_unbounded_of_one_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/pow-unbounded-of-one-lt--a7524ff6d80298600a8550c5.md) | 186 | `result-track:a7524ff6d80298600a8550c511c1608cc8e286e23cf1a194dc6469f7eca96353` |
| 18 | `theorem` | [exists_int_ge](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-int-ge--188d8cbded1b4d66609171dd.md) | 197 | `result-track:188d8cbded1b4d66609171dddc5a777563ef29caba75fa0da9f42dbcf38fa526` |
| 19 | `theorem` | [exists_int_le](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-int-le--60390ac5e22ec07635af4ebf.md) | 199 | `result-track:60390ac5e22ec07635af4ebff86155ec67dae12139633559b8ac427d09af20fc` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/instance--0ed9236a3e2d0cb924f06256.md) | 202 | `declaration-track:0ed9236a3e2d0cb924f06256b0e08b9cda5302d78130e343785004d229566d25` |
| 21 | `theorem` | [exists_int_gt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-int-gt--c108e38cfb37851c87ad1f65.md) | 213 | `result-track:c108e38cfb37851c87ad1f6551ea76a0d333ae55152af3d416e98eb1c6d7cd2d` |
| 22 | `theorem` | [exists_int_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-int-lt--b5176a3228d55f0fb21d34c2.md) | 217 | `result-track:b5176a3228d55f0fb21d34c2fe9f090038c8f48a62bdae0495ec74c000c6b336` |
| 23 | `theorem` | [exists_floor](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-floor--f66f6bde7c85fba925afaa5a.md) | 221 | `result-track:f66f6bde7c85fba925afaa5a0e78e8ab09c8bd3b1a5ecaa13f6ab204a1d012d3` |
| 24 | `theorem` | [exists_nat_pow_near](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-nat-pow-near--9a299ab450220fcee77354d9.md) | 241 | `result-track:9a299ab450220fcee77354d95860782cbd8634be60b1bbc9d9e9424d4ec550a6` |
| 25 | `lemma` | [exists_nat_one_div_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-nat-one-div-lt--2f5d8405c7a2ed390b211e48.md) | 257 | `result-track:2f5d8405c7a2ed390b211e480958121f84e5d7c6ae38dd52feb5e26de99c0ce6` |
| 26 | `theorem` | [exists_mem_Ico_zpow](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-mem-ico-zpow--8ac40434d97ea44c23a48cb9.md) | 270 | `result-track:8ac40434d97ea44c23a48cb95f06fb3806b5140ce8f3d980747e51a5d3e1aa25` |
| 27 | `theorem` | [exists_mem_Ioc_zpow](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-mem-ioc-zpow--bd5acacea55491eae3d3f845.md) | 289 | `result-track:bd5acacea55491eae3d3f8456f145245d0b64e0abc82b3b3d310989ebc3bc119` |
| 28 | `theorem` | [exists_pow_lt_of_lt_one](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-pow-lt-of-lt-one--f6e34042b7c2646e6e8b6e8c.md) | 296 | `result-track:f6e34042b7c2646e6e8b6e8cd68c534328f4fe6c698c9bd29ec0580f5a579abd` |
| 29 | `theorem` | [exists_nat_pow_near_of_lt_one](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-nat-pow-near-of-lt-one--c5f63439a93d3b77053c57f6.md) | 307 | `result-track:c5f63439a93d3b77053c57f67baa218b2781456db8f9ee8fda0ea8a24660c2f4` |
| 30 | `lemma` | [exists_pow_btwn_of_lt_mul](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-pow-btwn-of-lt-mul--b321777b17725182f3096c23.md) | 317 | `result-track:b321777b17725182f3096c2359298e5dc892fb43c5b09182e0cd655657af5d59` |
| 31 | `lemma` | [exists_zpow_btwn_of_lt_mul](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-zpow-btwn-of-lt-mul--2a95cdf5e1a1b701d78c866a.md) | 332 | `result-track:2a95cdf5e1a1b701d78c866ae24a7b6cd01035b32c4e5af89dc36d73f1e32861` |
| 32 | `theorem` | [archimedean_iff_nat_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/archimedean-iff-nat-lt--fdb9559694dc0facd57d613a.md) | 357 | `result-track:fdb9559694dc0facd57d613a6000e959cff13f0f84a9b8c797c5c7ebb4fdef5a` |
| 33 | `theorem` | [archimedean_iff_nat_le](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/archimedean-iff-nat-le--9b4d0e44eaf674da9f298487.md) | 362 | `result-track:9b4d0e44eaf674da9f298487c31d4a99812b468950f10fa637493be4c976765d` |
| 34 | `theorem` | [archimedean_iff_int_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/archimedean-iff-int-lt--0c18cb609b708bb1ed3bc406.md) | 368 | `result-track:0c18cb609b708bb1ed3bc40642300ab7bab5d0c5553f5a0cecdfef87d59f9ff2` |
| 35 | `theorem` | [archimedean_iff_int_le](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/archimedean-iff-int-le--3339cfcf7dca913f73513726.md) | 376 | `result-track:3339cfcf7dca913f73513726f46058e812d73794605e89ea0dd70d31c8cecb22` |
| 36 | `theorem` | [archimedean_iff_rat_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/archimedean-iff-rat-lt--7aedad715d5e1b7accad2c52.md) | 382 | `result-track:7aedad715d5e1b7accad2c524eea0057a4c2fc30086a19144d3ce651acedf0ea` |
| 37 | `theorem` | [archimedean_iff_rat_le](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/archimedean-iff-rat-le--c6a036af03c607387e35b855.md) | 389 | `result-track:c6a036af03c607387e35b855da7d412c6d5dfe135f3370b4ba2a423e6f1d2013` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/instance--5a196dafafe39159181e1e07.md) | 395 | `declaration-track:5a196dafafe39159181e1e07f90e450cce02001901e903aa7517587f58e1a6cc` |
| 39 | `theorem` | [exists_rat_gt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-rat-gt--fc9ad25a222aaa908aadcc78.md) | 400 | `result-track:fc9ad25a222aaa908aadcc7846799e1644472768ee3273d9f13ede4a25bd74a8` |
| 40 | `theorem` | [exists_rat_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-rat-lt--958d3b25a99407341fb1313a.md) | 402 | `result-track:958d3b25a99407341fb1313a3578172e87bbc5a07ba3f93699015fa67eeab3e1` |
| 41 | `theorem` | [exists_rat_btwn](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-rat-btwn--ffc64224e31564acb586ecc0.md) | 406 | `result-track:ffc64224e31564acb586ecc0598ffe2db4b339a6dd0c05359d223651cd2891e9` |
| 42 | `theorem` | [exists_pow_btwn](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-pow-btwn--94404b1b45b290004f9f1225.md) | 424 | `result-track:94404b1b45b290004f9f1225a9fcbaf5ad1d3aae72e644ef3fafee5785856979` |
| 43 | `theorem` | [exists_rat_pow_btwn](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-rat-pow-btwn--1893b29b46f469f89643a165.md) | 453 | `result-track:1893b29b46f469f89643a165ff6b55b377d73dd88a379f4970c51d70dd031222` |
| 44 | `theorem` | [le_of_forall_rat_lt_imp_le](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/le-of-forall-rat-lt-imp-le--8e5bb6eea4ee014ce2313d90.md) | 462 | `result-track:8e5bb6eea4ee014ce2313d90d0dce85479ec9f692aed81d8850948416a4a2962` |
| 45 | `theorem` | [le_of_forall_lt_rat_imp_le](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/le-of-forall-lt-rat-imp-le--65f8ec9bcdae8d0ae920a271.md) | 467 | `result-track:65f8ec9bcdae8d0ae920a271cd8bbf0f38d9ea8a7539927717109b88b2baa98a` |
| 46 | `theorem` | [le_iff_forall_rat_lt_imp_le](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/le-iff-forall-rat-lt-imp-le--af8beeed2612a48748b13a94.md) | 472 | `result-track:af8beeed2612a48748b13a949afe402b385cb292ee761a55b66e8384b170da7f` |
| 47 | `theorem` | [le_iff_forall_lt_rat_imp_le](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/le-iff-forall-lt-rat-imp-le--fd5dd4882f70a4e7d1678481.md) | 475 | `result-track:fd5dd4882f70a4e7d1678481463d7459df2306cda1c181fa7854e9c60c0898b6` |
| 48 | `theorem` | [eq_of_forall_rat_lt_iff_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/eq-of-forall-rat-lt-iff-lt--9e9093d77388d0e931d5b247.md) | 478 | `result-track:9e9093d77388d0e931d5b247c0562fba860386fd8f2500525ba71fa0c091e435` |
| 49 | `theorem` | [eq_of_forall_lt_rat_iff_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/eq-of-forall-lt-rat-iff-lt--035075b877e00ce7a180e35a.md) | 482 | `result-track:035075b877e00ce7a180e35ac21a7a5aa9e73d79df03b6af23001d9a12557f7f` |
| 50 | `theorem` | [exists_pos_rat_lt](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-pos-rat-lt--dc38818d74f83e689c72e9dc.md) | 486 | `result-track:dc38818d74f83e689c72e9dc0587b1b8ccb9cc09d6ff545541cdc03961ebece8` |
| 51 | `theorem` | [exists_rat_near](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/exists-rat-near--738d53aee7c428585fa88514.md) | 489 | `result-track:738d53aee7c428585fa8851402466d07b445e369d8cb524e1d9e0ed5b6470698` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/instance--21bd11791df8d2b9a8585725.md) | 496 | `declaration-track:21bd11791df8d2b9a8585725b7d81ace24ca8071e3a5f4ac6a0076d38a51288f` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/instance--bc49f6636468dcc841d0c8ca.md) | 501 | `declaration-track:bc49f6636468dcc841d0c8cab6f08a6b983428e241ed72147fd03ab10f2c662d` |
| 54 | `instance` | [Nonneg.instArchimedean](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/nonneg-instarchimedean--9b88b8baa3ce4e80e0886d28.md) | 508 | `declaration-track:9b88b8baa3ce4e80e0886d28240aa664a91dded533c9cb57aeaeae7da653b37c` |
| 55 | `instance` | [Nonneg.instMulArchimedean](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/nonneg-instmularchimedean--f9f2dcd1569ab52253d708cc.md) | 515 | `declaration-track:f9f2dcd1569ab52253d708cc187479e32ef2c432d909e22d5bf4f9cb4176f557` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/instance--8500b5fb60a78658ba9f6d4d.md) | 520 | `declaration-track:8500b5fb60a78658ba9f6d4d3a04c7f242c6ed018a26b2bc4be45ed9e086cc94` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/instance--71b83a463e223114e202216e.md) | 521 | `declaration-track:71b83a463e223114e202216edd5792531e7ed7bac4dc4b3cdc703bd7736eccb3` |
| 58 | `def` | [Archimedean.floorRing](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/archimedean-floorring--b3b4b6088adb72f69885786b.md) | 525 | `declaration-track:b3b4b6088adb72f69885786b6eb7e2445de5385b098fa0eb0716ceaeb38b7b43` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/instance--5046fe4aac76b0c2148cad20.md) | 532 | `declaration-track:5046fe4aac76b0c2148cad2039a1dae4f268cad2d704d38fdcfd2c38016a4bf2` |
| 60 | `instance` | [Units.instMulArchimedean](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/units-instmularchimedean--047517bca3db93c2eaba7850.md) | 539 | `declaration-track:047517bca3db93c2eaba785074294e9de595724ab46adb7ec654ead3a4339ecb` |
| 61 | `instance` | [WithBot.instArchimedean](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/withbot-instarchimedean--5ece35a0836807a422ae5755.md) | 543 | `declaration-track:5ece35a0836807a422ae5755fcd89c88bbf1f327d9a7fa1088bfb162c59c3773` |
| 62 | `instance` | [WithZero.instMulArchimedean](../../../../mathematics/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/declarations/withzero-instmularchimedean--5ec3536ea24ebde79406354a.md) | 554 | `declaration-track:5ec3536ea24ebde79406354a8d50e0240b6cbc20db5e1c5eaabab2aef5c72a83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
