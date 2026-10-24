# Verification target: GRWTSK.Algebra.GroupAction.Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "286d2a40aea9492c39e17d2e3296b3b87b46f587",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/index.md) · [Full source](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `286d2a40aea9492c39e17d2e3296b3b87b46f587`.

Source path: `GRWTSK/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupRingAction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MulActionHom](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/mulactionhom--0da9b9df348bb74975310973.md) | 62 | `declaration-track:0da9b9df348bb749753109732a7383b1b50265c389e886747c6abbe59335fbcb` |
| 2 | `class` | [SMulHomClass](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/smulhomclass--585b4a72ebeddd539d734335.md) | 78 | `declaration-track:585b4a72ebeddd539d734335447785e733cd47c030a79971823528785a81c463` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/instance--1a9a48df31e60307048bf41f.md) | 94 | `declaration-track:1a9a48df31e60307048bf41f4582f13658438d2481a7d316342dad5ecdb1451d` |
| 4 | `def` | [_root_.SMulHomClass.toMulActionHom](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/root-smulhomclass-tomulactionhom--e9ab15e130194036d99ddbc6.md) | 110 | `declaration-track:e9ab15e130194036d99ddbc6b275c65443f8d1e5b1f52d7e0053f6240037bcf0` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/instance--ccde0c20c822ec966e08c725.md) | 117 | `declaration-track:ccde0c20c822ec966e08c725cc439db2074b9950f22da245d920d034d6e122ad` |
| 6 | `theorem` | [map_smul](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-smul--0f4eb7e4b8bb75a97ca4414b.md) | 120 | `result-track:0f4eb7e4b8bb75a97ca4414bf5a2901e23e47396d304a092fa6e1e8e95340060` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/ext--7d203aa33dd126ee65fbec79.md) | 125 | `result-track:7d203aa33dd126ee65fbec7934cbb8166c6392a8e9bb0b11659407855c44c543` |
| 8 | `theorem` | [ext_iff](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/ext-iff--fb6cbcb7ffb5890ba82164d5.md) | 129 | `result-track:fb6cbcb7ffb5890ba82164d52c8235754ca34de66bbbd4eff6964cf001a16844` |
| 9 | `theorem` | [congr_fun](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/congr-fun--16ca4a08cee8694c97da12cb.md) | 133 | `result-track:16ca4a08cee8694c97da12cb632cbab802b79d51a75acf78d82819280dc33905` |
| 10 | `def` | [id](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/id--0a2c9277c7e325b0b76ddc39.md) | 140 | `declaration-track:0a2c9277c7e325b0b76ddc39a024b978434737410e768b22816392b045d3e4e6` |
| 11 | `theorem` | [id_apply](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/id-apply--191e646a331f02f9aad53a31.md) | 145 | `result-track:191e646a331f02f9aad53a31e7ded7d9d0252b663d8ffd5f9121e70af7204cdb` |
| 12 | `def` | [comp](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/comp--d1cad5a09bd40036ae08e2cd.md) | 152 | `declaration-track:d1cad5a09bd40036ae08e2cdfe464cc2d30ab74dce84513efb4f50bfc8dce6f1` |
| 13 | `theorem` | [comp_apply](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/comp-apply--4a79263fd48adca95491b5c2.md) | 160 | `result-track:4a79263fd48adca95491b5c2c50c20c01acdcff38d783a5dd3bf37f86614a4b5` |
| 14 | `theorem` | [id_comp](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/id-comp--bd07ca5bca06cb2f506e0b27.md) | 165 | `result-track:bd07ca5bca06cb2f506e0b27b494050469147bd7cc6233883219adb6ac1eb6f7` |
| 15 | `theorem` | [comp_id](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/comp-id--2175c87ac4b36635856554ae.md) | 170 | `result-track:2175c87ac4b36635856554ae0e2f8408f9a3f247d12d173546550daff9f83576` |
| 16 | `def` | [inverse](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/inverse--aff62f4633d3a1a6a800907a.md) | 178 | `declaration-track:aff62f4633d3a1a6a800907a3e6d4149e8f34c9b4d740aa202d47080084dec58` |
| 17 | `def` | [SMulCommClass.toMulActionHom](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/smulcommclass-tomulactionhom--0a16aa9bc33d327975253bb4.md) | 194 | `declaration-track:0a16aa9bc33d327975253bb40e83ef260c60157ef01ff47c431e53b8ab8ff2f1` |
| 18 | `structure` | [DistribMulActionHom](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/distribmulactionhom--686adc4421aa0427c67ace5e.md) | 200 | `declaration-track:686adc4421aa0427c67ace5e26206aaedbfd0e56b87c70ce44acde7b86f6b8f0` |
| 19 | `class` | [DistribMulActionHomClass](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/distribmulactionhomclass--4ecfd8a27d34ec714d423fda.md) | 221 | `declaration-track:4ecfd8a27d34ec714d423fdaceb58043d4c6d3e23263ea2f16109e2810e406ae` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/instance--a708f5087dd20f2217fc7b65.md) | 247 | `declaration-track:a708f5087dd20f2217fc7b6587c0155af1bcbd10e8a94567cedfca92e59bece9` |
| 21 | `def` | [_root_.DistribMulActionHomClass.toDistribMulActionHom](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/root-distribmulactionhomclass-todistribmulactionhom--01b3acb3f444d5db6fdc2039.md) | 264 | `declaration-track:01b3acb3f444d5db6fdc203910ca4c1b22edb16b8a89e7215d84eaa720339ee4` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/instance--964a22595f2284dd3a77a8a0.md) | 270 | `declaration-track:964a22595f2284dd3a77a8a0abb28e5cf278d67412209f9b810e02f9ab61748e` |
| 23 | `theorem` | [toFun_eq_coe](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/tofun-eq-coe--3dd66131d8c6293ab876424f.md) | 274 | `result-track:3dd66131d8c6293ab876424f433bd2a9bade49a3f62c55a5ba3c864319f2c768` |
| 24 | `theorem` | [coe_fn_coe](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/coe-fn-coe--2c0ab7957f92d5e224b16055.md) | 278 | `result-track:2c0ab7957f92d5e224b16055d6a5f20baf4aca83c7e41a64763e8712bcae6569` |
| 25 | `theorem` | [coe_fn_coe'](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/coe-fn-coe--e25e490e62b94ad31b81ad3a.md) | 283 | `result-track:e25e490e62b94ad31b81ad3a32426bcec57af2ac08a2c362400bc7198c659746` |
| 26 | `theorem` | [ext](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/ext--8c3066399e06326fe1a3169f.md) | 288 | `result-track:8c3066399e06326fe1a3169faf51bb6d1c2f9699090f0fee5aa97bb7c285ec1c` |
| 27 | `theorem` | [ext_iff](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/ext-iff--97b0568ea616396c507d8edc.md) | 292 | `result-track:97b0568ea616396c507d8edce3c05f6847875e2be5ecfb298948788653ac2ed2` |
| 28 | `theorem` | [congr_fun](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/congr-fun--9d9ba8d2c1502b83ebf784a8.md) | 296 | `result-track:9d9ba8d2c1502b83ebf784a8f7476a037b015f066edcc32ce56cf98016d652ec` |
| 29 | `theorem` | [toMulActionHom_injective](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/tomulactionhom-injective--b9f685008c95cf664506b8dc.md) | 300 | `result-track:b9f685008c95cf664506b8dc303db9a40411e03ba7c8970e9477db45cdb5ea95` |
| 30 | `theorem` | [toAddMonoidHom_injective](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/toaddmonoidhom-injective--517ed3c4123a8ae14adbef8f.md) | 306 | `result-track:517ed3c4123a8ae14adbef8f1db77218c80f634e5b2839a8da18405b7c086de4` |
| 31 | `theorem` | [map_zero](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-zero--657b3eaf75149381afcde477.md) | 311 | `result-track:657b3eaf75149381afcde477ef2277077ef707579783a9e84405c124b84fb483` |
| 32 | `theorem` | [map_add](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-add--d310b0b465d9f0f6cea240ca.md) | 315 | `result-track:d310b0b465d9f0f6cea240cad7ffdf7a39633d09bd7bb3e6c86cadb868fca434` |
| 33 | `theorem` | [map_neg](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-neg--fee462c2d1adca0f77d1d211.md) | 319 | `result-track:fee462c2d1adca0f77d1d2113fc9a3bc76b01b7e2008e592870eced206f0d1e1` |
| 34 | `theorem` | [map_sub](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-sub--d57a995611cfb4fb06d29697.md) | 323 | `result-track:d57a995611cfb4fb06d296970d9446a6a72a581b7112b6f22fbc45f82d6ab220` |
| 35 | `theorem` | [map_smul](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-smul--b1a28d09323bb7a66b8ad828.md) | 327 | `result-track:b1a28d09323bb7a66b8ad828e09a19ebcf17c5a1f8bd13343770c2326ecf8667` |
| 36 | `def` | [id](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/id--d93bc956c4937fa22969f3ad.md) | 333 | `declaration-track:d93bc956c4937fa22969f3adfc923eb31d10769ab4e51d2e0766d90dbd9f270a` |
| 37 | `theorem` | [id_apply](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/id-apply--b80def04e9467496aa438da1.md) | 338 | `result-track:b80def04e9467496aa438da1ac19d057141eb831806d27d8d8e7178803de348f` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/instance--9da16e1d873a5cd7cc0c3582.md) | 345 | `declaration-track:9da16e1d873a5cd7cc0c358273795ff07086b2b970b6d1546a28f4909e29c6e8` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/instance--fae9ab42371e043d9080aa8a.md) | 348 | `declaration-track:fae9ab42371e043d9080aa8ad84c1f2164a3b9047a21e946d23daa2f5c1c1e9b` |
| 40 | `theorem` | [coe_zero](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/coe-zero--3c95a1f1cf2d131c2b8f3971.md) | 352 | `result-track:3c95a1f1cf2d131c2b8f397128a6ff6ec5800d60a2e0a0027179b929d27f81e4` |
| 41 | `theorem` | [coe_one](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/coe-one--19c28e74f72996859a128d2e.md) | 357 | `result-track:19c28e74f72996859a128d2ea8feb7ede05604df468d99341b122dd2b3333979` |
| 42 | `theorem` | [zero_apply](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/zero-apply--ba4db1eb221353d201ae85b5.md) | 361 | `result-track:ba4db1eb221353d201ae85b5a8e4e3ef8933d64c119b222df8b961fe669b3e36` |
| 43 | `theorem` | [one_apply](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/one-apply--c08ae8d68adb4d1a6222a9d1.md) | 365 | `result-track:c08ae8d68adb4d1a6222a9d1b6813bd1fdf50234db14664e63a5589b4bdc8306` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/instance--adea79a85de6d7dbf9d423f9.md) | 369 | `declaration-track:adea79a85de6d7dbf9d423f9fc94de4256509b7af5ddf959836f4bd39767765d` |
| 45 | `def` | [comp](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/comp--7e87d858e069bf5d578682f2.md) | 373 | `declaration-track:7e87d858e069bf5d578682f2b02438ba24edf64d6fd8331d4bb4a762c7f124aa` |
| 46 | `theorem` | [comp_apply](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/comp-apply--0b6bf0569cc70fcb96608e16.md) | 379 | `result-track:0b6bf0569cc70fcb96608e16e4c16f1fc48317becc1fdc9d243b83dea9f493e8` |
| 47 | `theorem` | [id_comp](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/id-comp--57e9633a94a242ac898cccd5.md) | 384 | `result-track:57e9633a94a242ac898cccd5ea9be088aad419401753e4a4213a0c5b0a5f1baf` |
| 48 | `theorem` | [comp_id](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/comp-id--ee7e32c977133c193551f2c9.md) | 389 | `result-track:ee7e32c977133c193551f2c93fd86ce02d8d3a33c7f3ac0b490112de7698940c` |
| 49 | `def` | [inverse](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/inverse--8b16d4c8fee651bbf72c7a68.md) | 395 | `declaration-track:8b16d4c8fee651bbf72c7a68f41a479e30fe43bd187edb1c391f85c64868261a` |
| 50 | `theorem` | [ext_ring](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/ext-ring--a2e99fde4a3bff912d0d6cda.md) | 406 | `result-track:a2e99fde4a3bff912d0d6cda588c39027a72fa5415f3b6c671c3f3793e72e42e` |
| 51 | `theorem` | [ext_ring_iff](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/ext-ring-iff--842208d3894b491cde43e542.md) | 411 | `result-track:842208d3894b491cde43e5426d05fe4e1c33871a06bdb43b4da2e664f34af8f3` |
| 52 | `def` | [SMulCommClass.toDistribMulActionHom](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/smulcommclass-todistribmulactionhom--664e71696c166f990ddde051.md) | 422 | `declaration-track:664e71696c166f990ddde0511a1ed28702d98e88c9382c6829dd588ff1e67874` |
| 53 | `structure` | [MulSemiringActionHom](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/mulsemiringactionhom--d08b15f2f301ff82429d2397.md) | 430 | `declaration-track:d08b15f2f301ff82429d2397ef0c1d65a2fad52e6234cdf8f0846fb8f5cd9b64` |
| 54 | `class` | [MulSemiringActionHomClass](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/mulsemiringactionhomclass--5c3bae906c3b756e30d5d3ec.md) | 451 | `declaration-track:5c3bae906c3b756e30d5d3ecfc677b1125b05c71351d71e45e21cfa0fcbd83e1` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/instance--e5ebf3a590f5ca53e114ea94.md) | 479 | `declaration-track:e5ebf3a590f5ca53e114ea940e6a5ef6c5e59fea38e1a7606ed3b0e4c40c3953` |
| 56 | `def` | [_root_.MulSemiringActionHomClass.toMulSemiringActionHom](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/root-mulsemiringactionhomclass-tomulsemiringactionhom--7b8bf37e4d6944d5076d3e65.md) | 500 | `declaration-track:7b8bf37e4d6944d5076d3e65422116f94da00589c46798754961249902b90261` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/instance--310b33c7918587c85816f1cd.md) | 506 | `declaration-track:310b33c7918587c85816f1cd4b50377cf9fc31606d3cb5c7931730f146789a51` |
| 58 | `theorem` | [coe_fn_coe](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/coe-fn-coe--5a8ea0ea89884fdd77f2384c.md) | 510 | `result-track:5a8ea0ea89884fdd77f2384c09ec2f888abe3f007a336688260f2ad03f142ec2` |
| 59 | `theorem` | [coe_fn_coe'](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/coe-fn-coe--ff5cafeb17e641eeaf05d534.md) | 515 | `result-track:ff5cafeb17e641eeaf05d5340dd94c1c782ad338d57df04a0e86712123bc8064` |
| 60 | `theorem` | [ext](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/ext--958fbb2038e064e14b52ca92.md) | 520 | `result-track:958fbb2038e064e14b52ca920d07e6506d443ad3f81bbef2b81118f1ca8dd17f` |
| 61 | `theorem` | [ext_iff](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/ext-iff--a3fac37e18cc9c71da970cf2.md) | 524 | `result-track:a3fac37e18cc9c71da970cf2be8709e90f6057ed8af2bdec2a2540deaa34c010` |
| 62 | `theorem` | [map_zero](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-zero--06fe820aaf0f47f59dae1ea1.md) | 528 | `result-track:06fe820aaf0f47f59dae1ea1c48229ec58504365f5edd748d07a98277aaebe8c` |
| 63 | `theorem` | [map_add](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-add--3a912da6e2b8bf1869864172.md) | 532 | `result-track:3a912da6e2b8bf186986417203996964fc09198d9843d113dfe19d3e297f266d` |
| 64 | `theorem` | [map_neg](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-neg--0086a271c6a69479918a2b57.md) | 536 | `result-track:0086a271c6a69479918a2b57f568f54744a2a61551b141bf6a78cdd08aa34ce8` |
| 65 | `theorem` | [map_sub](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-sub--be543f5ca01d68d84e8ec906.md) | 540 | `result-track:be543f5ca01d68d84e8ec906e1672ee6fd179640ac7fa7e88131e1169b49d795` |
| 66 | `theorem` | [map_one](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-one--399501d459b12aa21631d474.md) | 544 | `result-track:399501d459b12aa21631d47438975cf6896b8e6088104a5b2ecad6236c312033` |
| 67 | `theorem` | [map_mul](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-mul--bdcec57913bd3785771ae8bd.md) | 548 | `result-track:bdcec57913bd3785771ae8bd215669b4409447b56cf1eb282c4b90e8d54b890e` |
| 68 | `theorem` | [map_smul](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/map-smul--f15763d1af56ea5afe3d3259.md) | 552 | `result-track:f15763d1af56ea5afe3d3259164a18df964227e2a9a80fecafb3f98d78b5e16a` |
| 69 | `def` | [id](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/id--b171b487f47fd058da5fadbe.md) | 559 | `declaration-track:b171b487f47fd058da5fadbe47a78c22243f75dec00562cc7fe392476063fbef` |
| 70 | `theorem` | [id_apply](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/id-apply--912b0df5fc1809bd1a74029a.md) | 564 | `result-track:912b0df5fc1809bd1a74029ab1307edefe781e3185a05ad6999c9997c834b57c` |
| 71 | `def` | [comp](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/comp--e746f01a04ad65320cf61c87.md) | 571 | `declaration-track:e746f01a04ad65320cf61c878fa955e5cdc97e7a70736433fe1c8643fc0640cd` |
| 72 | `theorem` | [comp_apply](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/comp-apply--9db5071970d578cb61269509.md) | 577 | `result-track:9db5071970d578cb612695092d419d80f78414b48c5f20992f01e4f7b6a7c931` |
| 73 | `theorem` | [id_comp](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/id-comp--bfd9964e9e8fb6946b48b8fa.md) | 582 | `result-track:bfd9964e9e8fb6946b48b8fa6cd3027b18fb7dd5244bd8373c899876283afea2` |
| 74 | `theorem` | [comp_id](../../../../mathematics/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/declarations/comp-id--4c693592bb5e7e87f55a2a00.md) | 587 | `result-track:4c693592bb5e7e87f55a2a002e1a5fddf1c218242f6d1184eb3cac4ee30b077c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
