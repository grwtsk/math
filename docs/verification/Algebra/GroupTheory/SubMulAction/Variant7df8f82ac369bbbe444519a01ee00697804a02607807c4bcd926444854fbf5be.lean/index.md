# Verification target: GRWTSK.Algebra.GroupTheory.SubMulAction.Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "189772f158ddaab0fd19dab459cd929edd91b1cc",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `189772f158ddaab0fd19dab459cd929edd91b1cc`.

Source path: `GRWTSK/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.GroupAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SMulMemClass](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/smulmemclass--feb464082351860666bc1121.md) | 55 | `declaration-track:feb464082351860666bc1121c1aa8d40bf3a9be5dddef047868d95b5282536be` |
| 2 | `class` | [VAddMemClass](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/vaddmemclass--5bfb2c380516e0af355346ca.md) | 66 | `declaration-track:5bfb2c380516e0af355346cab185f7a647a73d25b89e8e8010cdc3df576a83e3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/instance--2dfcc4b9353cb9cea5e2116a.md) | 83 | `declaration-track:2dfcc4b9353cb9cea5e2116a359259a5563033d3b2042998b41ee395b28bc6ae` |
| 4 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.SMulMemClass.Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.SMulMemClass.ofIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/root-grwtsk-algebra-grouptheory-smulmemclass-variant0cdbddbfb332373b1366--cf42b660a504de337ad68c76.md) | 90 | `result-track:cf42b660a504de337ad68c76a5da8ea6f96cadd99ac29d6acda0fb777db5ffde` |
| 5 | `theorem` | [val_smul](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/val-smul--caffe43f7770417667ffdcd0.md) | 98 | `result-track:caffe43f7770417667ffdcd00ad753ce458ff479e1dafb56279cc91cc483ad50` |
| 6 | `theorem` | [mk_smul_mk](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/mk-smul-mk--0ee039becbccb2e4f6be7e90.md) | 106 | `result-track:0ee039becbccb2e4f6be7e9036106a04285f5ff9398b00729db4fde87003b2e3` |
| 7 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/smul-def--8a7a9e5ec8da2826d7eeee64.md) | 112 | `result-track:8a7a9e5ec8da2826d7eeee6435b5362ac8783de930dcb31218e28adcceb89be2` |
| 8 | `theorem` | [forall_smul_mem_iff](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/forall-smul-mem-iff--b2a7377888c565b77e168b18.md) | 118 | `result-track:b2a7377888c565b77e168b184af3b092736e1ebe369ce86d6b3c1c835845c12d` |
| 9 | `structure` | [SubMulAction](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/submulaction--59aa0182ecae6f5595cc16e7.md) | 126 | `declaration-track:59aa0182ecae6f5595cc16e71a651a69a4d5c8bf4f4a37a7ae8ad59476a34c12` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/instance--69f84bfb24f114f69b053832.md) | 137 | `declaration-track:69f84bfb24f114f69b05383287ae61f012a25e09afa4d4560af33807ef034a8b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/instance--92747e53aaac5acff7f5ad4e.md) | 140 | `declaration-track:92747e53aaac5acff7f5ad4e759d1147c1f84914d22d522e693e2d4eae802641` |
| 12 | `theorem` | [mem_carrier](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/mem-carrier--fee538e9a50d5a73ec85dc90.md) | 143 | `result-track:fee538e9a50d5a73ec85dc90ac0b12468645ee09a2565a63e789394367ed9bf9` |
| 13 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/ext--c63cd9b5dd011f0ca47677ad.md) | 148 | `result-track:c63cd9b5dd011f0ca47677ad64258005cc7ac123a5e3ea9eaacc935994041f04` |
| 14 | `def` | [copy](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/copy--2c205666bc781008b6bbb003.md) | 154 | `declaration-track:2c205666bc781008b6bbb003ea4035cc070791f1a6dce70b8c51743a259647bc` |
| 15 | `theorem` | [coe_copy](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/coe-copy--a8916380675b0ac33fe30286.md) | 161 | `result-track:a8916380675b0ac33fe3028629940c56b180195aaa46930c4f650d2e826551f3` |
| 16 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/copy-eq--022ffda93e0a98913f831cbc.md) | 165 | `result-track:022ffda93e0a98913f831cbcb77712230672b508e090208943bf6f9c9c5eebe5` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/instance--33eb31795f5b5c7d6ad0fa5e.md) | 169 | `declaration-track:33eb31795f5b5c7d6ad0fa5e237220eba7cbad6e3b0f23bf6201de899ad36fa6` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/instance--3bfdc2f91fa8c7bd15642c26.md) | 174 | `declaration-track:3bfdc2f91fa8c7bd15642c264014d120103c8e06c2619955b414f2437a7bc40a` |
| 19 | `theorem` | [smul_mem](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/smul-mem--13128081040c3a78570f7818.md) | 189 | `result-track:13128081040c3a78570f78182e0d8888c174ac2f639bc5de596ef84af7c054ee` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/instance--194a6e0ea3514b0629c9cd62.md) | 193 | `declaration-track:194a6e0ea3514b0629c9cd62ebe39b8d6d0d6c2f009542048ad66c83f9d3512c` |
| 21 | `theorem` | [val_smul](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/val-smul--db3d805f3ae96db0824dc8b3.md) | 198 | `result-track:db3d805f3ae96db0824dc8b336982928ad1d1d3d63a4e61778afb2f9fe2353f7` |
| 22 | `def` | [subtype](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/subtype--b7c425586ca4c49f4a06b7f0.md) | 208 | `declaration-track:b7c425586ca4c49f4a06b7f056a7f605aaede84f276ca5d5cacb61aed88f9d8f` |
| 23 | `theorem` | [subtype_apply](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/subtype-apply--e3c7d4c41df8fc9a80b6c12d.md) | 212 | `result-track:e3c7d4c41df8fc9a80b6c12dca0255324e8c8bb79c68c823ce061deba1207979` |
| 24 | `theorem` | [subtype_eq_val](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/subtype-eq-val--36cfabd0b2aa8f707da4c593.md) | 216 | `result-track:36cfabd0b2aa8f707da4c5939517bef84c8a6199f9d03f96172ed9c9197575fe` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/instance--a54102085308b1ee8dde708c.md) | 230 | `declaration-track:a54102085308b1ee8dde708cb3527e17986e525629c505eb5204e63c13c21c1f` |
| 26 | `def` | [subtype](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/subtype--aef253e3efeda703f558a92c.md) | 235 | `declaration-track:aef253e3efeda703f558a92ca243a2ef6e0a5f222e5ce870e6a074dad0d0670b` |
| 27 | `theorem` | [coeSubtype](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/coesubtype--4fc5d38b528172293f33aba9.md) | 240 | `result-track:4fc5d38b528172293f33aba91a97e9b1282dc0df9c413d38076ff94ad00a4077` |
| 28 | `theorem` | [smul_of_tower_mem](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/smul-of-tower-mem--2063b66b3c823892ecc5f24c.md) | 256 | `result-track:2063b66b3c823892ecc5f24c26530f4469a82e6c5475e916e143266a9a910156` |
| 29 | `instance` | [smul'](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/smul--b58f96071679574bb37e9eed.md) | 261 | `declaration-track:b58f96071679574bb37e9eedaab2141fa4c84dea70a53e0905890645957310e3` |
| 30 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/isscalartower--6dbfec497fb372b1e8e1c698.md) | 264 | `declaration-track:6dbfec497fb372b1e8e1c698d773b33198acf0c7827fdda9a8c8b4d09de78a9c` |
| 31 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/isscalartower--26f42991e09ef9047bade6dc.md) | 268 | `declaration-track:26f42991e09ef9047bade6dc5246379a764fe9e5893e3d77ce10cd3237c230cd` |
| 32 | `theorem` | [val_smul_of_tower](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/val-smul-of-tower--63874d415b3040732b71b08a.md) | 274 | `result-track:63874d415b3040732b71b08ae4a6535650d20b40d79f2a9092cbe4a1e4d71154` |
| 33 | `theorem` | [smul_mem_iff'](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/smul-mem-iff--cef045ca258f87afd3546e41.md) | 279 | `result-track:cef045ca258f87afd3546e410be4054f93525f32db29055cff942ec17fed61a2` |
| 34 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/iscentralscalar--0cdb5378ad8e8781a239157b.md) | 284 | `declaration-track:0cdb5378ad8e8781a239157b752ba2b438c8f50ba92b9a6bf7978ec3bce15dff` |
| 35 | `instance` | [mulAction'](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/mulaction--feb94bdec5dc2fb7c4d0ea41.md) | 298 | `declaration-track:feb94bdec5dc2fb7c4d0ea41dc5c5ab8cff72dac7cd8c8272efa796a7dd85bb4` |
| 36 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/mulaction--c99419e42089cbea644d0084.md) | 304 | `declaration-track:c99419e42089cbea644d0084d04f739687cfc268d63096c1eb8c9c3b9e68d470` |
| 37 | `theorem` | [val_image_orbit](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/val-image-orbit--aae3820a3ba3e0c6bcd5c253.md) | 311 | `result-track:aae3820a3ba3e0c6bcd5c25335a96281bf5578f38dc05aa17aacc939683d1d77` |
| 38 | `theorem` | [stabilizer_of_subMul.submonoid](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/stabilizer-of-submul-submonoid--aadd6b8da5fdfd6a53e52fcd.md) | 321 | `result-track:aadd6b8da5fdfd6a53e52fcdcd5a99902cbfa81fa6c6d7b977d32b7c8bd0ff69` |
| 39 | `theorem` | [stabilizer_of_subMul](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/stabilizer-of-submul--41b2e9c377f0a7883962c362.md) | 334 | `result-track:41b2e9c377f0a7883962c362c9e68824803513446f78822c359fb357d911818e` |
| 40 | `theorem` | [zero_mem](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/zero-mem--3b5cb514072e21bb13f9bd2c.md) | 350 | `result-track:3b5cb514072e21bb13f9bd2c4b588f52fb054482cae6904fd9c04773363e811e` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/instance--dcfe3381b3d820f6f6496072.md) | 357 | `declaration-track:dcfe3381b3d820f6f64960727cc99bfae84051c1fcafa5432c73fea9e30e1ffb` |
| 42 | `theorem` | [neg_mem](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/neg-mem--14f129a19f201a164105886e.md) | 372 | `result-track:14f129a19f201a164105886e7228963410bc59899b7a264fd1af204db01f7100` |
| 43 | `theorem` | [neg_mem_iff](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/neg-mem-iff--267b6fa4e7db30500c0d76b4.md) | 378 | `result-track:267b6fa4e7db30500c0d76b4ebb78408bebc58dcce3f41b71eb17686ee900d80` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/instance--41f0e5f0bee045263c408f10.md) | 384 | `declaration-track:41f0e5f0bee045263c408f1030b8c52a3eca8ec14853ecba238db7f794d0f5cb` |
| 45 | `theorem` | [val_neg](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/val-neg--7bba81142801fde9159f40a9.md) | 388 | `result-track:7bba81142801fde9159f40a9868b2d872ef040f4b09f5ac939c5e14c93df8e96` |
| 46 | `theorem` | [smul_mem_iff](../../../../../mathematics/Algebra/GroupTheory/SubMulAction/Variant7df8f82ac369bbbe444519a01ee00697804a02607807c4bcd926444854fbf5be.lean/declarations/smul-mem-iff--ea0dc7cb3e91e22f1e2a249e.md) | 404 | `result-track:ea0dc7cb3e91e22f1e2a249ea14c491694cb67b9e546673c7662b40a8f73231d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
