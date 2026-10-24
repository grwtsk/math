# Verification target: GRWTSK.Algebra.LinearAlgebra.Ker.Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3ecddf1bb034b8d9211e48659de1f18a60e67ad",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3ecddf1bb034b8d9211e48659de1f18a60e67ad`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker--3f5c30b8ef57de1adebb1bb8.md) | 60 | `declaration-track:3f5c30b8ef57de1adebb1bb8a9cde89753182bef30e6f45749c4aae3825034c1` |
| 2 | `theorem` | [mem_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/mem-ker--6bbdb1d1e7bec1daecab96c2.md) | 64 | `result-track:6bbdb1d1e7bec1daecab96c2563b60a9ba5be99d3be5e1293ae88494a8a26c20` |
| 3 | `theorem` | [ker_id](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-id--0f69a34dc28d2f03ed84c21d.md) | 68 | `result-track:0f69a34dc28d2f03ed84c21d7a2e6645ff7bcfe9b32e44ed0eb9b04c9db494c9` |
| 4 | `theorem` | [map_coe_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/map-coe-ker--6582efccab7d9bc200bec47a.md) | 72 | `result-track:6582efccab7d9bc200bec47ace0815b3b18b47312accda6fd61932e2469cd81d` |
| 5 | `theorem` | [ker_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-toaddsubmonoid--a4b02f27ef4f536f4c46e39a.md) | 75 | `result-track:a4b02f27ef4f536f4c46e39ab9959877840c19d91e91868dfabb75debca38d2f` |
| 6 | `theorem` | [le_ker_iff_comp_subtype_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/le-ker-iff-comp-subtype-eq-zero--2c54decf149feb76e6536806.md) | 78 | `result-track:2c54decf149feb76e65368061416e013fff1bf8221debc7ae5eacbdb0a7de172` |
| 7 | `theorem` | [comp_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/comp-ker-subtype--5bf70295a51f53cd874e1d2c.md) | 82 | `result-track:5bf70295a51f53cd874e1d2c6a93f73fac5dcc64bdd8be49c792fd756f31d6aa` |
| 8 | `theorem` | [ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-comp--781ac4ac5bb0d8609116ed32.md) | 85 | `result-track:781ac4ac5bb0d8609116ed327795ab69d3fee9a43272b8b3a2a84ecd4960ef93` |
| 9 | `theorem` | [ker_le_ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-le-ker-comp--f1af9b96476ec911c24ff675.md) | 89 | `result-track:f1af9b96476ec911c24ff675d4a497ba79ea3d0fe7d3d9dc83ad508807c41433` |
| 10 | `theorem` | [ker_sup_ker_le_ker_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-sup-ker-le-ker-comp-of-commute--74a1a0732870cfcdf95b02c4.md) | 92 | `result-track:74a1a0732870cfcdf95b02c478efb3b3abc13c9f8aa353ca6e04a7e56339d2e0` |
| 11 | `theorem` | [ker_le_comap](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-le-comap--725b9cd0cf7c14bf65d11819.md) | 99 | `result-track:725b9cd0cf7c14bf65d11819369454093d3c32162b02628b9e3fd5b9c7320473` |
| 12 | `theorem` | [disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/disjoint-ker--3ad483a435cce3ff622e7ea3.md) | 103 | `result-track:3ad483a435cce3ff622e7ea3278057c23d374b4a4c5ba35c00c1d3be5f7d4ba9` |
| 13 | `theorem` | [ker_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-eq-bot--b5896665454dfa60a48ca049.md) | 107 | `result-track:b5896665454dfa60a48ca0492302635691c4ce1f7a986af2a8a7aa01137b8d8e` |
| 14 | `theorem` | [ker_eq_bot_of_inverse](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-eq-bot-of-inverse--3108f8beca9a8292580215f3.md) | 110 | `result-track:3108f8beca9a8292580215f366428a1f3fa1058306a16d48e214bc52f57e120e` |
| 15 | `theorem` | [le_ker_iff_map](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/le-ker-iff-map--20750705f425ec05c1d7ba12.md) | 114 | `result-track:20750705f425ec05c1d7ba1264ab9573c127c3a87c9cb9713a23f7a1a72572d4` |
| 16 | `theorem` | [ker_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-codrestrict--7681c58325b642c1a6f95556.md) | 118 | `result-track:7681c58325b642c1a6f9555692e60b2d971ab0ca8fd8b8697f3e71d0188b64ec` |
| 17 | `lemma` | [ker_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-domrestrict--869814d43967910f7d8171ff.md) | 121 | `result-track:869814d43967910f7d8171fffbe2aaa7fadf044c2cb822006945c9dcd0fcd3d1` |
| 18 | `theorem` | [ker_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-restrict--bc740862bf2261234246b429.md) | 125 | `result-track:bc740862bf2261234246b429ca184a880b470b6a3aae9832977fb9e0e256f405` |
| 19 | `theorem` | [ker_zero](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-zero--1cb7c898066d8bc85d4fb593.md) | 131 | `result-track:1cb7c898066d8bc85d4fb59387aaba721779380e3f015eea45eba4d133fd3090` |
| 20 | `theorem` | [ker_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-eq-top--a951b5d49f2cc80d12a23c89.md) | 135 | `result-track:a951b5d49f2cc80d12a23c8905d9837abf2f7ca1bf70f72f2dbf08dfecf8ed02` |
| 21 | `lemma` | [domRestrict_ker_self](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/domrestrict-ker-self--83597932fb3472385c135359.md) | 139 | `result-track:83597932fb3472385c1353593016cb6e7e800653e92e954286f5606997773061` |
| 22 | `theorem` | [exists_ne_zero_of_sSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/exists-ne-zero-of-ssup-eq-top--01cecdc2b669ed786f1d5e4b.md) | 142 | `result-track:01cecdc2b669ed786f1d5e4b54071e1795032ebb5f251a36346e829814f8df05` |
| 23 | `theorem` | [_root_.AddMonoidHom.coe_toIntLinearMap_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/root-addmonoidhom-coe-tointlinearmap-ker--c476ce7815879ddedcecf4b5.md) | 149 | `result-track:c476ce7815879ddedcecf4b5ee8a63a34d713899f323177dec755d542e637eb6` |
| 24 | `theorem` | [ker_eq_bot_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-eq-bot-of-injective--7c5744ad8aeae6a803de5117.md) | 152 | `result-track:7c5744ad8aeae6a803de5117aab6bb9e8330f2b887b4e22b8baf3ac1784091a3` |
| 25 | `def` | [iterateKer](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/iterateker--6a7e4b0b851a92db4331530b.md) | 160 | `declaration-track:6a7e4b0b851a92db4331530b1e9ed5acfee54d5e42c54c556f4ab636f31abc03` |
| 26 | `lemma` | [ker_submoduleMap](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-submodulemap--03e5512fcc760cfd4f8e98c9.md) | 167 | `result-track:03e5512fcc760cfd4f8e98c9266cf19aebd8f6baefb2393b14e8e5e09f70dd9d` |
| 27 | `theorem` | [ker_neg](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-neg--236cb4dbf988f68d064eed83.md) | 184 | `result-track:236cb4dbf988f68d064eed83e87f56c7ffd6456ebf78a513118cce48da891c3a` |
| 28 | `theorem` | [ker_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-toaddsubgroup--5c1e8ef7a94af1618206e193.md) | 186 | `result-track:5c1e8ef7a94af1618206e1933a7bfc05e41022d3e7e9ca15a76ab3b528a5b049` |
| 29 | `theorem` | [sub_mem_ker_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/sub-mem-ker-iff--da801ea6cae929d0b36b33ae.md) | 189 | `result-track:da801ea6cae929d0b36b33ae74024fd12300868c840ccae46dcb27b563b278b4` |
| 30 | `theorem` | [disjoint_ker_iff_injOn](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/disjoint-ker-iff-injon--3c3e0a462be7479828dba550.md) | 191 | `result-track:3c3e0a462be7479828dba550c0753ea186c5728801efa7d1b6eb3135b0fbbefe` |
| 31 | `theorem` | [injOn_of_disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/injon-of-disjoint-ker--44634d3f679753983aee932e.md) | 195 | `result-track:44634d3f679753983aee932e36d5b878b9b227ea74a28ba7dc5fe8b833422e76` |
| 32 | `theorem` | [ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-eq-bot--a8052c29ecc56b76d51162b8.md) | 199 | `result-track:a8052c29ecc56b76d51162b83692624108036f46a050196ada238b4e2b37f408` |
| 33 | `lemma` | [injective_domRestrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/injective-domrestrict-iff--76642816b33effbc872b9d56.md) | 202 | `result-track:76642816b33effbc872b9d568b5c23c733e9e631c3bc1c7c80b479684b18264c` |
| 34 | `theorem` | [injective_restrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/injective-restrict-iff--8f97fa31d2237063eb608b0d.md) | 207 | `result-track:8f97fa31d2237063eb608b0da21f10da44e2443d4b1422a08f41597a0a1ba42a` |
| 35 | `theorem` | [injective_codRestrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/injective-codrestrict-iff--7585c6cf0b1531593fae50aa.md) | 215 | `result-track:7585c6cf0b1531593fae50aab2b2a264f5197e792a52e7a0d8eb0c82b3dc1b0e` |
| 36 | `theorem` | [ker_le_ker_smul](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-le-ker-smul--bef995e4d2fa64eb29971bb9.md) | 227 | `result-track:bef995e4d2fa64eb29971bb9938bd70e2971cf0b9db00bcfd970088adcaddaa3` |
| 37 | `theorem` | [ker_smul](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-smul--20a848a2fe3f405cb2349154.md) | 238 | `result-track:20a848a2fe3f405cb2349154271f3e363ce2d5121a39843044bdd9062f71fdd0` |
| 38 | `theorem` | [ker_smul'](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-smul--8677e75ac3b4b77ede1d72fb.md) | 241 | `result-track:8677e75ac3b4b77ede1d72fbbc4518e635ae9a5830b5292223a8f60784c800e9` |
| 39 | `theorem` | [comap_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/comap-bot--a5bdf72763477e9b6a66a633.md) | 260 | `result-track:a5bdf72763477e9b6a66a6330daeab0ea73b9c70771059947cd87f57c8b53dd8` |
| 40 | `theorem` | [ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-subtype--f0d28fd106d7c5b30febd131.md) | 264 | `result-track:f0d28fd106d7c5b30febd131e6651ec383b3afc7c811a9309c123af115ec7d4d` |
| 41 | `theorem` | [ker_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-inclusion--215f7a381c5cae75060e3a4a.md) | 268 | `result-track:215f7a381c5cae75060e3a4a2fa758c09b8c345566894ee27d2638ee9d75ce30` |
| 42 | `theorem` | [ker_comp_of_ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-comp-of-ker-eq-bot--1d28a538f94bb26e4f133c3a.md) | 285 | `result-track:1d28a538f94bb26e4f133c3a4d71d3e8cdcfb77021fedcf6c78ecfd6d9e20017` |
| 43 | `theorem` | [ker_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-restrictscalars--5a43aa92a2b79c90ab792a01.md) | 297 | `result-track:5a43aa92a2b79c90ab792a01f0251847af1617b9d03421d065f899f6fc4bb70e` |
| 44 | `theorem` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker--09bf70c569d7b73ca3fe6247.md) | 325 | `result-track:09bf70c569d7b73ca3fe624794c778eff9178ee65d8db01d9d74bf98022b6abd` |
| 45 | `theorem` | [ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.lean/declarations/ker-comp--95c021470cf06d19fb97319a.md) | 329 | `result-track:95c021470cf06d19fb97319a1ed06d94cdeaa95ad5c06f50dc03d6d9d3ca191b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
