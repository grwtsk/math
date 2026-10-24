# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf44a79828b938c6400893f676e0b3c79e306139",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf44a79828b938c6400893f676e0b3c79e306139`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.OreLocalization.OreSet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.MulAction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oreEqv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/oreeqv--d5ed9993eae5ce2bc648a16c.md) | 47 | `declaration-track:d5ed9993eae5ce2bc648a16cd88df3c7672510180b276ee35e864b6b4c55da66` |
| 2 | `def` | [OreLocalization](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/orelocalization--292e0438b7a2697d3b543885.md) | 74 | `declaration-track:292e0438b7a2697d3b5438851dcdc4abbd03a915f5aac49907c318ba78d7296d` |
| 3 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/macro-rules--65d4dca1b4469db07234d547.md) | 86 | `declaration-track:65d4dca1b4469db07234d547cfdd9fee07a16daf72aed42e79060001debe52af` |
| 4 | `def` | [oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/orediv--fc3a02787ae329dadac58ea3.md) | 96 | `declaration-track:fc3a02787ae329dadac58ea38211c43711b0510e7541bb92f46ebf4e7fd48bdf` |
| 5 | `theorem` | [ind](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/ind--74c1d995aa9fa0e0f30e8259.md) | 106 | `result-track:74c1d995aa9fa0e0f30e825956855311c7605117c09b33baf93e34c360f3fa90` |
| 6 | `theorem` | [oreDiv_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/orediv-eq-iff--124dab41f4758847a2f54e4e.md) | 113 | `result-track:124dab41f4758847a2f54e4ec9e327537d01870a7ee11db319dc85d60585e136` |
| 7 | `theorem` | [expand](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/expand--da570b0831694dd7f5ace6c5.md) | 120 | `result-track:da570b0831694dd7f5ace6c59bc0f68638d6e0d3a2ca0814f843b092104d1555` |
| 8 | `theorem` | [expand'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/expand--f9ea5525730c45aff3ddab39.md) | 127 | `result-track:f9ea5525730c45aff3ddab3986d8621d5882bc71a1bf36c6775f15a313fd5d51` |
| 9 | `theorem` | [eq_of_num_factor_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/eq-of-num-factor-eq--ab6a0023ebd218c7325316ee.md) | 134 | `result-track:ab6a0023ebd218c7325316ee5f01c9c6d2c47348e45b2a0b042fcb1d9eb75275` |
| 10 | `def` | [liftExpand](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/liftexpand--5f9892f59e554d2d2a945701.md) | 153 | `declaration-track:5f9892f59e554d2d2a9457018c5d85c05f6a7a4f655280e2d691e6c0df72ab3f` |
| 11 | `theorem` | [liftExpand_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/liftexpand-of--748d05b771adcaecfbb8259d.md) | 166 | `result-track:748d05b771adcaecfbb8259da6cb0ec5f5fd75fe8c06ad99114b8026a6226e0b` |
| 12 | `def` | [lift₂Expand](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/lift-expand--9e9ee43d8d578c1e2b851818.md) | 174 | `declaration-track:9e9ee43d8d578c1e2b851818f2fca80ce15ff72c35ed1244151fd39585014355` |
| 13 | `theorem` | [lift₂Expand_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/lift-expand-of--b4b19f1f599e1aaa895deef6.md) | 190 | `result-track:b4b19f1f599e1aaa895deef6a00126c53641441c566fb4305d7845992ba066b9` |
| 14 | `def` | [smul'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul--7247fa23ab40827803e7a8d5.md) | 199 | `declaration-track:7247fa23ab40827803e7a8d52b6a5f7f7a23ee0bdd4b8136ea9533574ce83b29` |
| 15 | `theorem` | [smul'_char](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul-char--520eb49161cdc3d4f726ec4b.md) | 203 | `result-track:520eb49161cdc3d4f726ec4b7ad1e3e2354d2a94d49f59b85df0ecfcdf30870b` |
| 16 | `def` | [smul''](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul--717eedb4c9b6342e162334c1.md) | 227 | `declaration-track:717eedb4c9b6342e162334c1dbe5aea5710fbe537b2be7b7a807bc1c6d59da91` |
| 17 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul--dd52ea99c29f9304a95c3502.md) | 250 | `declaration-track:dd52ea99c29f9304a95c35022b28f965e492ed8c3bc0ca258a252daf9ad1b3ce` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--21d9bf5ff34664dc7347dc11.md) | 273 | `declaration-track:21d9bf5ff34664dc7347dc115b3d74fc2945263e3d92dd40bae16f76ec05ca03` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--748daed24b68f4f3c0276378.md) | 277 | `declaration-track:748daed24b68f4f3c0276378b8c99bfeaeebc8d52cd4a1537a88f88b7f89ff7d` |
| 20 | `theorem` | [oreDiv_smul_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/orediv-smul-orediv--58ec2b1c52b01dd9ada04fc8.md) | 281 | `result-track:58ec2b1c52b01dd9ada04fc85de5853d1e43c4a4523e94766a0a375cae756791` |
| 21 | `theorem` | [oreDiv_mul_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/orediv-mul-orediv--2b4ac56b76717b4b82477068.md) | 286 | `result-track:2b4ac56b76717b4b824770680c796a4d3d4f3cd3beedc20009a9aec3f772ea2a` |
| 22 | `theorem` | [oreDiv_smul_char](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/orediv-smul-char--0c85a6ff1204598dddc8f9af.md) | 294 | `result-track:0c85a6ff1204598dddc8f9afa622bb7c11b95fd1ca46b4c3609d773022905f97` |
| 23 | `theorem` | [oreDiv_mul_char](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/orediv-mul-char--b936153982fc6c42d837f912.md) | 302 | `result-track:b936153982fc6c42d837f9124379062e57f2da6965ca93e57d97812826c93eb7` |
| 24 | `def` | [oreDivSMulChar'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/oredivsmulchar--1d997de7eb1db1da1a8367f9.md) | 310 | `declaration-track:1d997de7eb1db1da1a8367f9fa92404a72e022667aa0cc903f27556b8ad75f2a` |
| 25 | `def` | [oreDivMulChar'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/oredivmulchar--bcd33859cd5fe9838f16d3c4.md) | 318 | `declaration-track:bcd33859cd5fe9838f16d3c480604dcd4a2836bd712eabf9823bf0fe1fb099fd` |
| 26 | `def` | [one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/one--7d1182209cbf420229d6fe67.md) | 324 | `declaration-track:7d1182209cbf420229d6fe6715512b54e90e5fed3814cda1d319c53e08fb9d28` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--2b587773cc2b4481778ee54b.md) | 327 | `declaration-track:2b587773cc2b4481778ee54b482705e07a6a1554e2aafebe11a0d9a763c22a95` |
| 28 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/one-def--4906fffb1eda9a98dacc2a5c.md) | 331 | `result-track:4906fffb1eda9a98dacc2a5cb0807c1de41f20d5ef5c32761e2604eb1e5f13f8` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--48bb6d127dd4e86a112663c4.md) | 335 | `declaration-track:48bb6d127dd4e86a112663c47b8207c4177a3a25d892543a0f4ab09aa0f8321a` |
| 30 | `theorem` | [div_eq_one'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/div-eq-one--ae829ea101ead9b92998a0b4.md) | 339 | `result-track:ae829ea101ead9b92998a0b454f207ba7dc99e45d8333acc086bf6376af7283a` |
| 31 | `theorem` | [div_eq_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/div-eq-one--e64e1cda7a350cddab2e7188.md) | 344 | `result-track:e64e1cda7a350cddab2e7188254f3a892117486668d554a0de6a7d8c77f2e470` |
| 32 | `theorem` | [one_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/one-smul--2acf7d797cdb8d7624bf294d.md) | 348 | `result-track:2acf7d797cdb8d7624bf294d2b020a99ca6e2df1164c59a7e7b57153ddb6dbf0` |
| 33 | `theorem` | [one_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/one-mul--e36a3f07f0d4212a50eca0a6.md) | 353 | `result-track:e36a3f07f0d4212a50eca0a6d3eae7de33ecced29a59b3f175d54473c06fc3a3` |
| 34 | `theorem` | [mul_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/mul-one--806827e40e95cad22ea6e51f.md) | 357 | `result-track:806827e40e95cad22ea6e51f663b48d05303fbe3daa18b5524fccd0074ba0e61` |
| 35 | `theorem` | [mul_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/mul-smul--e9e10ecf3be30f323ab26261.md) | 362 | `result-track:e9e10ecf3be30f323ab262613872f3902724f07198cf1ddbd17d180a0c1e1daa` |
| 36 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/mul-assoc--72d71b549e1f5cc9cf0ad1fd.md) | 377 | `result-track:72d71b549e1f5cc9cf0ad1fd0692280a44437689fd83503b41bb752c507d7dbd` |
| 37 | `def` | [npow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/npow--af73bffc6bdc5a02c5b0338e.md) | 382 | `declaration-track:af73bffc6bdc5a02c5b0338ee2e1f6ef9f6f3e3abe7127610ace61b67680f12a` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--6dc2fed59dfb31785c1b9487.md) | 386 | `declaration-track:6dc2fed59dfb31785c1b948744c36d6c1f883cc92e52e02d23945bc4e2f13c57` |
| 39 | `instance` | [instMulActionOreLocalization](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instmulactionorelocalization--afc29f36f66754a1f1b78b21.md) | 393 | `declaration-track:afc29f36f66754a1f1b78b21472c62c02fbdaa52730e6179bb36c8f462b480d9` |
| 40 | `theorem` | [mul_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/mul-inv--e90868add3f297b33f410eb9.md) | 398 | `result-track:e90868add3f297b33f410eb90b5eccaa4801672f0fa731cd9a645dd825fa4260` |
| 41 | `theorem` | [one_div_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/one-div-smul--4f232e6bd8a924e0e280e751.md) | 402 | `result-track:4f232e6bd8a924e0e280e751606f4e5ecb6cfb91ded3c216cb4a7cc000b30c83` |
| 42 | `theorem` | [one_div_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/one-div-mul--c724a25b5c849b144919c86f.md) | 406 | `result-track:c724a25b5c849b144919c86fee943cca2d0ad8a45c8901bbf6c875435dcf47f1` |
| 43 | `theorem` | [smul_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul-cancel--5445222c494e94622e42438b.md) | 410 | `result-track:5445222c494e94622e42438bdb770efa81a00e5105635d17401e8341b354f4c0` |
| 44 | `theorem` | [mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/mul-cancel--df227376e7b488c669777362.md) | 414 | `result-track:df227376e7b488c6697773622358b5e8f8b7d96287906f649f4d3a5c8acf51cd` |
| 45 | `theorem` | [smul_cancel'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul-cancel--611dad5b60642331cc191612.md) | 418 | `result-track:611dad5b60642331cc191612aa0086cf2ea4535ada521d172ba9717972f6a60b` |
| 46 | `theorem` | [mul_cancel'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/mul-cancel--a9a7514b2f3fa8c76ba23afb.md) | 423 | `result-track:a9a7514b2f3fa8c76ba23afbe4625ee16c0d364244a2888025061e4dfe12ad3f` |
| 47 | `theorem` | [smul_div_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul-div-one--7d6f8e1a3f51ea450212bab9.md) | 428 | `result-track:7d6f8e1a3f51ea450212bab9c9ea6cde60a780e9b3cbf39bbd4c6db462e20122` |
| 48 | `theorem` | [mul_div_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/mul-div-one--6f2288063f93cf8144e8b19b.md) | 432 | `result-track:6f2288063f93cf8144e8b19b05e1186412a1f54ad5ef0879b890bb34b9fa8325` |
| 49 | `def` | [numeratorUnit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/numeratorunit--74d4a6f93f75cf6da2e5fae9.md) | 438 | `declaration-track:74d4a6f93f75cf6da2e5fae94a4c68af38b0e8b9d78fbcd5b90ca7fc80922d8d` |
| 50 | `def` | [numeratorHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/numeratorhom--cccaf1c6671a09dcbb5ea498.md) | 448 | `declaration-track:cccaf1c6671a09dcbb5ea49826db071289483524d462ab84a7ab80deeaaae28a` |
| 51 | `theorem` | [numeratorHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/numeratorhom-apply--1e7481bb10019c434e5ef113.md) | 454 | `result-track:1e7481bb10019c434e5ef113eea34f9340fbd234b9129ac0ec75f81fded3e245` |
| 52 | `theorem` | [numerator_isUnit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/numerator-isunit--cb2a45272ffebf64c1159d66.md) | 458 | `result-track:cb2a45272ffebf64c1159d66ad6a9c503b52b6ef1a59075a7176495d18ad1238` |
| 53 | `def` | [universalMulHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/universalmulhom--c6b5fc9f62b0ffb88bccf7d4.md) | 470 | `declaration-track:c6b5fc9f62b0ffb88bccf7d4f8cc3a26cd828344b43c24201e6f919a8ae38d84` |
| 54 | `theorem` | [universalMulHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/universalmulhom-apply--b13d8c726cea0a5c8209d5f0.md) | 495 | `result-track:b13d8c726cea0a5c8209d5f0bb6bfe9f5c316c581d0088ea236eabec38e53491` |
| 55 | `theorem` | [universalMulHom_commutes](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/universalmulhom-commutes--48941de73240ba2af526496e.md) | 500 | `result-track:48941de73240ba2af526496e360b926917a6b738ce98147afbcb4bd9b1a1b291` |
| 56 | `theorem` | [universalMulHom_unique](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/universalmulhom-unique--f0dcd3ddd013486e28fa4483.md) | 505 | `result-track:f0dcd3ddd013486e28fa4483f73d4de978a8c06931b6cf1ea4fa5820fffb5c04` |
| 57 | `def` | [hsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/hsmul--6c7a63d27ce07885ca46c063.md) | 525 | `declaration-track:6c7a63d27ce07885ca46c063661ba6289c449c1f34b90d24a51506e60e78b7e6` |
| 58 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--726c4d39540662b74c26caf2.md) | 537 | `declaration-track:726c4d39540662b74c26caf29bc33de9a00e0595dcbf72f4061d3a605b2ec250` |
| 59 | `theorem` | [smul_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul-orediv--e319598a2b55f93c1939e439.md) | 541 | `result-track:e319598a2b55f93c1939e43910b272125ed7f92cf7589ec52fa32cf3e1fc58e0` |
| 60 | `theorem` | [oreDiv_one_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/orediv-one-smul--0be32c37f633e720499828a3.md) | 545 | `result-track:0be32c37f633e720499828a3f8205e5a96b617e9f3c732a252ed94a5c1ce703c` |
| 61 | `theorem` | [smul_one_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul-one-smul--b051a7d322b1a1d0c58414f3.md) | 550 | `result-track:b051a7d322b1a1d0c58414f32c30a4f285870acb1023525d92d91f2782efa870` |
| 62 | `theorem` | [smul_one_oreDiv_one_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul-one-orediv-one-smul--5255793c3e271151950f5cd2.md) | 555 | `result-track:5255793c3e271151950f5cd250422cf9a0f8cf7e4008523ad77ddffddb273656` |
| 63 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--913500ef2a45a7d8338059d3.md) | 560 | `declaration-track:913500ef2a45a7d8338059d339d5515032a9434892f85d59e485744c7af82153` |
| 64 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--363a4720afd67b2b560c655b.md) | 567 | `declaration-track:363a4720afd67b2b560c655b82d8f08d78f45ada5600792a3e7da05178add2f0` |
| 65 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--83d1afa284628ee6660e51fe.md) | 572 | `declaration-track:83d1afa284628ee6660e51fef809a874991cc1094095fcc7ada71a92e45673f9` |
| 66 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--722acde2d4d2d6a649f0537e.md) | 577 | `declaration-track:722acde2d4d2d6a649f0537e6d8d7a2ee01aa1dd54b5b853b69c3850d46c9f54` |
| 67 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--098b0eea8c8739036e259962.md) | 586 | `declaration-track:098b0eea8c8739036e259962e21131e661aecf143e83b0f98f38a916fdb75680` |
| 68 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--66c7a6567860cc53450ccde0.md) | 592 | `declaration-track:66c7a6567860cc53450ccde0c6ee21f4f3c06faa9cfd50afdb021475be838ca7` |
| 69 | `theorem` | [smul_oreDiv_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/smul-orediv-one--a94ac2dd05b457f67d85a5f1.md) | 599 | `result-track:a94ac2dd05b457f67d85a5f1ab1735f88822e11480f0f233e1510b0cf09d2752` |
| 70 | `theorem` | [oreDiv_mul_oreDiv_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/orediv-mul-orediv-comm--0160d6947d1a083de5685b1f.md) | 609 | `result-track:0160d6947d1a083de5685b1f69bec831d3fc689f624f733ff5a6798c239790f9` |
| 71 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--a1c77789990567ea4dd46269.md) | 614 | `declaration-track:a1c77789990567ea4dd462692087735602e78a53095cbbe629adef3d073b8b17` |
| 72 | `def` | [zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/zero--1da70940ceebc04dea5c8339.md) | 630 | `declaration-track:1da70940ceebc04dea5c8339d16dde8641762529347b5a903800a5e5405290fc` |
| 73 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/instance--f3d0df69818f21399076492c.md) | 632 | `declaration-track:f3d0df69818f21399076492c9f0e27e59af3944a1710c23c58327fa04eb406c9` |
| 74 | `theorem` | [zero_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/declarations/zero-def--c7fabae3faed1f246d1bd140.md) | 635 | `result-track:c7fabae3faed1f246d1bd140204145fe6d418a632eb84bc6343fd9f141326f6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
