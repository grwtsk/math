# Verification target: GRWTSK.NumberTheory.Basic.Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "164e182669ae5f4557ace7f89a11deef80508f6f",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `164e182669ae5f4557ace7f89a11deef80508f6f`.

Source path: `GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MulChar](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/mulchar--41c1a645097c368010d110a1.md) | 73 | `declaration-track:41c1a645097c368010d110a188fa7590a6a47af90e846c42b998d764abf46689` |
| 2 | `instance` | [MulChar.instFunLike](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/mulchar-instfunlike--5175a007cd20b6112a94efbf.md) | 76 | `declaration-track:5175a007cd20b6112a94efbf53f4f587430072ade0d8b3c7c290e3f2293e0ce2` |
| 3 | `class` | [MulCharClass](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/mulcharclass--edf0214135bbc28dffd259ce.md) | 81 | `declaration-track:edf0214135bbc28dffd259cede84b7ea554132418102cf7b9e363d1bfaed643d` |
| 4 | `def` | [trivial](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/trivial--ef9a2fcc8a645cb0526b4281.md) | 105 | `declaration-track:ef9a2fcc8a645cb0526b42813ce539f77698d666aed1fc934ecec59d34fe7865` |
| 5 | `theorem` | [coe_mk](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/coe-mk--01887cda564d1dd77cca5e5d.md) | 118 | `result-track:01887cda564d1dd77cca5e5d80e6acc3e464eebcd0a74b02e5b2e2a42ebd5b69` |
| 6 | `theorem` | [ext'](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ext--b1f6f4e0f4497327170ca7eb.md) | 122 | `result-track:b1f6f4e0f4497327170ca7eba34cf5f96547860dffe00f2bef089675288e8b46` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/instance--8e9f7a721c7f053c2baab4b5.md) | 128 | `declaration-track:8e9f7a721c7f053c2baab4b5c3042a975e470e487b93701bc646994d19563f41` |
| 8 | `theorem` | [map_nonunit](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/map-nonunit--7e6b2f3108aa792c0914ca1d.md) | 133 | `result-track:7e6b2f3108aa792c0914ca1d0ccfd18837446df557e216c9b99d942ad56bd7b9` |
| 9 | `theorem` | [ext](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ext--633f34afdd42ec9d3eac6a58.md) | 139 | `result-track:633f34afdd42ec9d3eac6a587b0998934fd6d68afc4dc0ab955a20e56c63c703` |
| 10 | `def` | [toUnitHom](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/tounithom--98becddcfb0c7fc0d2fe4c86.md) | 155 | `declaration-track:98becddcfb0c7fc0d2fe4c86a9bb26a1c19a70a781015ebaf45fc45f68e55022` |
| 11 | `theorem` | [coe_toUnitHom](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/coe-tounithom--add3cdd1ffb3b64ee517e5fc.md) | 158 | `result-track:add3cdd1ffb3b64ee517e5fcf816642291624242c1fd8e63af50f44ad2df67cc` |
| 12 | `def` | [ofUnitHom](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ofunithom--0530951bd3059b16b261f6fd.md) | 162 | `declaration-track:0530951bd3059b16b261f6fd81ecb3dac13b942432c0d934bf795713d27fad8d` |
| 13 | `theorem` | [ofUnitHom_coe](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ofunithom-coe--195cd8e555ccb96dd222fe89.md) | 183 | `result-track:195cd8e555ccb96dd222fe89d22f7ff94da2374a9875371a086e23a52eace29c` |
| 14 | `def` | [equivToUnitHom](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/equivtounithom--2babb271e6da395dcfbb9eed.md) | 186 | `declaration-track:2babb271e6da395dcfbb9eedc50df46e002b40df1874d6b71ca990c8afb145c4` |
| 15 | `theorem` | [toUnitHom_eq](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/tounithom-eq--cd8e11a611f142e48642b6e3.md) | 199 | `result-track:cd8e11a611f142e48642b6e3d9aa454259041ef0bb84569df3c651e483dcc3cf` |
| 16 | `theorem` | [ofUnitHom_eq](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ofunithom-eq--0e1318af0339fc21a979ba95.md) | 203 | `result-track:0e1318af0339fc21a979ba954f69337491ad5d867acc7ac55ff64c281ffe24d4` |
| 17 | `theorem` | [coe_equivToUnitHom](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/coe-equivtounithom--d99febdbdab8b0e0ef62c42d.md) | 207 | `result-track:d99febdbdab8b0e0ef62c42d945582a2d10ad3b760196abdc80d92a1eaa4530d` |
| 18 | `theorem` | [equivToUnitHom_symm_coe](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/equivtounithom-symm-coe--bfa1bf28254630a115d7b7f1.md) | 211 | `result-track:bfa1bf28254630a115d7b7f1bf6d65373d37b9090ce759488fdee8948818ca2d` |
| 19 | `lemma` | [coe_toMonoidHom](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/coe-tomonoidhom--012db140a9c10c853003049f.md) | 215 | `result-track:012db140a9c10c853003049fa5c49903760e40b75a84c8ca0fa95c7e120137a5` |
| 20 | `theorem` | [map_one](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/map-one--45f3e6904ea0fa5f97ba1ba0.md) | 225 | `result-track:45f3e6904ea0fa5f97ba1ba08ff87ae4ad7453fd2a9fc449c46c9ffe064e627e` |
| 21 | `theorem` | [map_zero](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/map-zero--55250fdcc5c015744e583341.md) | 229 | `result-track:55250fdcc5c015744e583341b9959b69f9e544deaf323a692fd23ac51c2724a8` |
| 22 | `def` | [toMonoidWithZeroHom](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/tomonoidwithzerohom--8b7f6928941c1c144874a759.md) | 235 | `declaration-track:8b7f6928941c1c144874a75901d1151b509cd6eddf3cca3798daa282d16c2ec5` |
| 23 | `theorem` | [map_ringChar](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/map-ringchar--ebc1773a9b05675c2c3af782.md) | 243 | `result-track:ebc1773a9b05675c2c3af782f1f6206bfba65ab680f5e568a82ff69bd7d6e70a` |
| 24 | `instance` | [hasOne](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/hasone--4c457ea3fa50162f2df23487.md) | 246 | `declaration-track:4c457ea3fa50162f2df23487ab1f9851a9a5d79b4508c66be7be3b03293cb5a4` |
| 25 | `instance` | [inhabited](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/inhabited--3c5c30d8a4317f212c85701b.md) | 249 | `declaration-track:3c5c30d8a4317f212c85701b6dece1ccb57e39684e2f6fba83bdd99a073703d7` |
| 26 | `theorem` | [one_apply_coe](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/one-apply-coe--35b31633c3136081c109c5ce.md) | 254 | `result-track:35b31633c3136081c109c5ce6eee982b216a567de2e7be861c62fc314f9c5406` |
| 27 | `lemma` | [one_apply](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/one-apply--9aee5c0222c65ddf2d9f4030.md) | 257 | `result-track:9aee5c0222c65ddf2d9f40305dd73fca3640f0e197fc90188f4928344d4daa6b` |
| 28 | `def` | [mul](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/mul--761bfee3ee2434438fb91d4e.md) | 260 | `declaration-track:761bfee3ee2434438fb91d4effb69b2207e6c0749a057bc0b25c1a9b85baa2ea` |
| 29 | `instance` | [hasMul](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/hasmul--c3d2da1ffc1f1d2a85b15add.md) | 265 | `declaration-track:c3d2da1ffc1f1d2a85b15addd787f09f04750a7203a427a381ff06a4b0e97669` |
| 30 | `theorem` | [mul_apply](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/mul-apply--93c3e8e91735ba9088311cc4.md) | 268 | `result-track:93c3e8e91735ba9088311cc4b7b6862db102403003bd16be23b469b939e9e412` |
| 31 | `theorem` | [coeToFun_mul](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/coetofun-mul--e2a228d874c1a2fc3269955a.md) | 272 | `result-track:e2a228d874c1a2fc3269955a325cafd9ba5b2ed529253206bebf5830802356ab` |
| 32 | `theorem` | [one_mul](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/one-mul--5287b480e39a9bf58acdde2c.md) | 275 | `result-track:5287b480e39a9bf58acdde2c90d40be7bc7448ff9f69192bb222650eed3861f6` |
| 33 | `theorem` | [mul_one](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/mul-one--e734347bb899a59ef3084102.md) | 279 | `result-track:e734347bb899a59ef30841025f95dd1e92296a5ea16569d3a4b9be33b8d7b797` |
| 34 | `def` | [inv](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/inv--c3a003cc05b5d9106757c1c9.md) | 284 | `declaration-track:c3a003cc05b5d9106757c1c993bb6a68629fbc8fc8f7cd127bcc9069a1d9627f` |
| 35 | `instance` | [hasInv](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/hasinv--a2943cf0b54f39d9046cee2e.md) | 289 | `declaration-track:a2943cf0b54f39d9046cee2e6afbaaad404d3636074d5d1a58ef0d887cd0df91` |
| 36 | `theorem` | [inv_apply_eq_inv](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/inv-apply-eq-inv--889d3f1365c0272e8f35dcc6.md) | 293 | `result-track:889d3f1365c0272e8f35dcc6e60264ac7f7ca38935d56fe23d8b3bca6aa7f950` |
| 37 | `theorem` | [inv_apply_eq_inv'](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/inv-apply-eq-inv--31892430541313a5b780640b.md) | 298 | `result-track:31892430541313a5b780640b077dc75704d3bd587756f14b3dcfd696ee80afb8` |
| 38 | `theorem` | [inv_apply](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/inv-apply--fde749539010e9945fbb0a38.md) | 304 | `result-track:fde749539010e9945fbb0a38c7936dc407c0c34b9a966e4a28186dcabd7940ca` |
| 39 | `theorem` | [inv_apply'](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/inv-apply--a1388d813b634657817d5c4b.md) | 320 | `result-track:a1388d813b634657817d5c4bef443305c6690df5feaf2aa4dd827df2e42c5dd7` |
| 40 | `theorem` | [inv_mul](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/inv-mul--691c9029e336be157e33c171.md) | 324 | `result-track:691c9029e336be157e33c17159e550aa205b522bef519a70aca482ba9406323b` |
| 41 | `instance` | [commGroup](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/commgroup--7225ff867ef58743b4adf842.md) | 331 | `declaration-track:7225ff867ef58743b4adf842361bdb84a503efd024dc516750978fcdd7ab619c` |
| 42 | `theorem` | [pow_apply_coe](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/pow-apply-coe--0bb6650a1a2296d7498f10af.md) | 348 | `result-track:0bb6650a1a2296d7498f10af50d2b452ef9287fc0344d216367b275cd78563c9` |
| 43 | `theorem` | [pow_apply'](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/pow-apply--3f7bb21d375d96eb5c4d27a5.md) | 354 | `result-track:3f7bb21d375d96eb5c4d27a5ea65d8b657671eb340691c5c4a9ec3b92ac733f6` |
| 44 | `lemma` | [equivToUnitHom_mul_apply](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/equivtounithom-mul-apply--42062caeab782ff81412604b.md) | 359 | `result-track:42062caeab782ff81412604bd7d8f6145bb5c4ef3e3172bf35ed52709a248a12` |
| 45 | `def` | [mulEquivToUnitHom](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/mulequivtounithom--2c75775619b2b7440665d71b.md) | 368 | `declaration-track:2c75775619b2b7440665d71b708c7a34e14e8be186fb50f891650307ab6366d1` |
| 46 | `lemma` | [eq_one_iff](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/eq-one-iff--c9e03f06d1fbaf155f18e4a2.md) | 396 | `result-track:c9e03f06d1fbaf155f18e4a2e728be3435641e96f5040d6ee33e2b47d211e690` |
| 47 | `lemma` | [ne_one_iff](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ne-one-iff--9b9149a2d997bfbbe0021c58.md) | 399 | `result-track:9b9149a2d997bfbbe0021c58ee43e44ab67aefd7c5467ec1a45754836270d1c5` |
| 48 | `def` | [IsQuadratic](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/isquadratic--6a8cbab0f68eb338578f771d.md) | 409 | `declaration-track:6a8cbab0f68eb338578f771de0a12b5c54c5883f1183075cf4be22b9f7b10f8d` |
| 49 | `theorem` | [IsQuadratic.eq_of_eq_coe](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/isquadratic-eq-of-eq-coe--cf6cec4896948d8a876f8510.md) | 414 | `result-track:cf6cec4896948d8a876f8510550729390dace6237ea71efad5a2fdc3532f3535` |
| 50 | `def` | [ringHomComp](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ringhomcomp--30aa2ae53d3cca732d0fe534.md) | 421 | `declaration-track:30aa2ae53d3cca732d0fe5346fec1ecd42e0dbd6bfef7be7dec34c1ae6967482` |
| 51 | `lemma` | [ringHomComp_one](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ringhomcomp-one--b7afbb2eebccc63a589c243e.md) | 427 | `result-track:b7afbb2eebccc63a589c243ef145307e979b11419553d965acf9f3fffb42e262` |
| 52 | `lemma` | [ringHomComp_inv](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ringhomcomp-inv--a5e1478a520ac2df8a94b1da.md) | 431 | `result-track:a5e1478a520ac2df8a94b1dacafe76f5e0603f8f270827c40b971aa5e57c19d6` |
| 53 | `lemma` | [ringHomComp_mul](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ringhomcomp-mul--f3812c7e98ad988b07014270.md) | 436 | `result-track:f3812c7e98ad988b07014270673c85bc896de2cf2fc4b9c94f75d931915c4b29` |
| 54 | `lemma` | [ringHomComp_pow](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ringhomcomp-pow--c764dcf19fad4967b99d4eec.md) | 441 | `result-track:c764dcf19fad4967b99d4eecd4a1299b3e6d153ae07b163fefe48fb46b2ebd12` |
| 55 | `lemma` | [injective_ringHomComp](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/injective-ringhomcomp--b9d65e4bfc4368c3b346a577.md) | 447 | `result-track:b9d65e4bfc4368c3b346a577a414976882b0b7e88a01f948802dff54fe82291a` |
| 56 | `lemma` | [ringHomComp_eq_one_iff](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ringhomcomp-eq-one-iff--2eca91f9ca9b0cc19090f318.md) | 453 | `result-track:2eca91f9ca9b0cc19090f31858965f9f285512a2202942ca880514051f571d03` |
| 57 | `lemma` | [ringHomComp_ne_one_iff](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/ringhomcomp-ne-one-iff--8dcaee3474e0d8fe8db2cdc8.md) | 458 | `result-track:8dcaee3474e0d8fe8db2cdc8558ee7b6797583aa0c029c122dd1e7456ca29ce0` |
| 58 | `theorem` | [IsQuadratic.comp](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/isquadratic-comp--3f130859ecec00b12cd54a4c.md) | 463 | `result-track:3f130859ecec00b12cd54a4c5b87930a835f903bd05b9d9b1d28198b3076517f` |
| 59 | `theorem` | [IsQuadratic.inv](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/isquadratic-inv--6055d15f4b85910557e0f607.md) | 469 | `result-track:6055d15f4b85910557e0f607ef6971a99bddc42bdb225a0c657a99af8942edc8` |
| 60 | `theorem` | [IsQuadratic.sq_eq_one](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/isquadratic-sq-eq-one--e6e49f1968249ba4330ccab9.md) | 481 | `result-track:e6e49f1968249ba4330ccab9785dfdf9298addfff3e1d5b1d9aeeb207bb1997c` |
| 61 | `theorem` | [IsQuadratic.pow_char](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/isquadratic-pow-char--26ae5bdc774bd75f03457c80.md) | 486 | `result-track:26ae5bdc774bd75f03457c80470e154b8ac67ba5175222c3d949805309d7841a` |
| 62 | `theorem` | [IsQuadratic.pow_even](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/isquadratic-pow-even--13db22f7c48770d4d71d930c.md) | 496 | `result-track:13db22f7c48770d4d71d930c7a13f4fcabc54d61a08232abe786caed78c1f0f6` |
| 63 | `theorem` | [IsQuadratic.pow_odd](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/isquadratic-pow-odd--ea86345caedce03319cbc9a5.md) | 502 | `result-track:ea86345caedce03319cbc9a52ecc16d3d0352b5d134d4a5d53c7cfa52e1ff261` |
| 64 | `lemma` | [isQuadratic_iff_sq_eq_one](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/isquadratic-iff-sq-eq-one--0b3c61b9459f8908c7220465.md) | 509 | `result-track:0b3c61b9459f8908c72204657c488f6a58053db3191556d9f52c1be2dcc13c56` |
| 65 | `lemma` | [pow_card_eq_one](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/pow-card-eq-one--a1cf28d242ac1091a3f378b9.md) | 538 | `result-track:a1cf28d242ac1091a3f378b9249b918ff0da8a507f2b4be7a73d1934cc6e8bd6` |
| 66 | `lemma` | [orderOf_pos](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/orderof-pos--181cbbce4178d0eb24f6c2e8.md) | 545 | `result-track:181cbbce4178d0eb24f6c2e81c3bac57cb66d647a57e01b992e160a69cd6312c` |
| 67 | `theorem` | [sum_eq_zero_of_ne_one](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/sum-eq-zero-of-ne-one--0d174eec314d36c769729d9f.md) | 558 | `result-track:0d174eec314d36c769729d9f0d1f9ec029c423518a7c150397f9d263303cddbf` |
| 68 | `theorem` | [sum_one_eq_card_units](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/sum-one-eq-card-units--74500986d6ccc0d77885eb5d.md) | 565 | `result-track:74500986d6ccc0d77885eb5d9dfd31f4f19707ec30904257b6fcbf363a5b16ce` |
| 69 | `lemma` | [val_neg_one_eq_one_of_odd_order](../../../../mathematics/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/declarations/val-neg-one-eq-one-of-odd-order--01a9ed0e2d596431275f6f1b.md) | 592 | `result-track:01a9ed0e2d596431275f6f1b4f4df59dea69cd6fe9bb98e1807109905ee4fe42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
