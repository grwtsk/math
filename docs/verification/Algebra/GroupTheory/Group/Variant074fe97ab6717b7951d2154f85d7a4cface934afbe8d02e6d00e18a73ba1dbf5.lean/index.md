# Verification target: GRWTSK.Algebra.GroupTheory.Group.Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33528194679fa6b43084b07def63e50147bca10b",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33528194679fa6b43084b07def63e50147bca10b`.

Source path: `GRWTSK/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Aut` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Units` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [RightCancelMonoid.faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/rightcancelmonoid-faithfulsmul--9185145c1dde072f4cb80901.md) | 26 | `declaration-track:9185145c1dde072f4cb8090134d5a46116d5659436680f5720b004e431a2f691` |
| 2 | `theorem` | [inv_smul_smul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/inv-smul-smul--f35592aabe854d4e8fc652f4.md) | 36 | `result-track:f35592aabe854d4e8fc652f430d261810091c9577dc49dd52513e157f2d55fb8` |
| 3 | `theorem` | [smul_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-inv-smul--30bcfa07d28226c4b277442c.md) | 41 | `result-track:30bcfa07d28226c4b277442c91acf6d291d33b17f2c75fb6587fdb3758ad104a` |
| 4 | `def` | [MulAction.toPerm](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/mulaction-toperm--8645be8de7392f56aeb41526.md) | 48 | `declaration-track:8645be8de7392f56aeb41526f8fc21b42a7102410905da6a38b14979bafb943b` |
| 5 | `theorem` | [MulAction.toPerm_injective](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/mulaction-toperm-injective--c1223d6d3d50f0532d8904e3.md) | 62 | `result-track:c1223d6d3d50f0532d8904e377207a57fb772060b241723b34ba43ba916de7f1` |
| 6 | `def` | [MulAction.toPermHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/mulaction-topermhom--e94ebe80145f8c851c2082df.md) | 72 | `declaration-track:e94ebe80145f8c851c2082dfc4d53618f50e4f0a56f05a184d2b8327647b66a8` |
| 7 | `def` | [AddAction.toPermHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/addaction-topermhom--22e4c2ee4b3010e1f1046796.md) | 82 | `declaration-track:22e4c2ee4b3010e1f10467961248d56024b38fe9ea665e12efffb0970a3ff141` |
| 8 | `instance` | [Equiv.Perm.applyMulAction](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/equiv-perm-applymulaction--0c9af332428107841062d27f.md) | 90 | `declaration-track:0c9af332428107841062d27f0a633103acb300a59af457aed04634115eefbcfa` |
| 9 | `theorem` | [Equiv.Perm.smul_def](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/equiv-perm-smul-def--479f0a06af3c23faaf10da46.md) | 97 | `result-track:479f0a06af3c23faaf10da46601e52726a4027a083b1d63c123330113947dcb7` |
| 10 | `instance` | [Equiv.Perm.applyFaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/equiv-perm-applyfaithfulsmul--a929c1b1411d5882040684a2.md) | 102 | `declaration-track:a929c1b1411d5882040684a26c312e1f29032cfdac0e967ec48a7bc41b9018a4` |
| 11 | `theorem` | [inv_smul_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/inv-smul-eq-iff--bb45591c13bee4c330761162.md) | 109 | `result-track:bb45591c13bee4c330761162b905edca11016d9e4ec8c0c6563903cbd0a5f591` |
| 12 | `theorem` | [eq_inv_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/eq-inv-smul-iff--806197508853b76a71818b3f.md) | 115 | `result-track:806197508853b76a71818b3f3b964d51c8e14b28a85302ce4b163ea01213dbad` |
| 13 | `theorem` | [smul_inv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-inv--88766b6f7cbf179185484204.md) | 120 | `result-track:88766b6f7cbf1791854842043e8b6842f166f70021dc9982da83514725464e0e` |
| 14 | `theorem` | [smul_zpow](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-zpow--41bfc6cf521c0927f6b84684.md) | 125 | `result-track:41bfc6cf521c0927f6b84684778d917e9b8b249dc579b7366c57bae4f60a67b0` |
| 15 | `theorem` | [Commute.smul_right_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/commute-smul-right-iff--bc735ff2b5031ca8aa44a5e5.md) | 132 | `result-track:bc735ff2b5031ca8aa44a5e5306ef978328c830bfc292ebfcc2cbdce6a54222c` |
| 16 | `theorem` | [Commute.smul_left_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/commute-smul-left-iff--7b755c47cd24ad62037b40ce.md) | 138 | `result-track:7b755c47cd24ad62037b40ce7dc1d01d490f5bc35351bbc1aa0c79bf739d2629` |
| 17 | `theorem` | [MulAction.bijective](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/mulaction-bijective--e53109bb07160ac9de803b16.md) | 144 | `result-track:e53109bb07160ac9de803b16ac51a1b45635894daae00dbcf6cb35c6ec2ec0e5` |
| 18 | `theorem` | [MulAction.injective](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/mulaction-injective--66fc0713e9907cecea88ef98.md) | 150 | `result-track:66fc0713e9907cecea88ef98d9d4a8f3b74aaa4bd8e14a8f101c1dbb7e28683d` |
| 19 | `theorem` | [MulAction.surjective](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/mulaction-surjective--8aef2b099aaad1f738b51ddb.md) | 156 | `result-track:8aef2b099aaad1f738b51ddb1a706d31efbb7c288bce4a4d17cf380e032af5dc` |
| 20 | `theorem` | [smul_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-left-cancel--2949bed6eaf598173ff8767c.md) | 162 | `result-track:2949bed6eaf598173ff8767c0f62c892aa05cce7c26fe7e0ca5fae6132e3e304` |
| 21 | `theorem` | [smul_left_cancel_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-left-cancel-iff--6e02ab208cf7ba074fa92684.md) | 168 | `result-track:6e02ab208cf7ba074fa9268403cea007e412d1ebcfc155398767edb6f2e2eb62` |
| 22 | `theorem` | [smul_eq_iff_eq_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-eq-iff-eq-inv-smul--173ea55b075fb4ae8caae75b.md) | 174 | `result-track:173ea55b075fb4ae8caae75b9e12e47ec0f808805999ebeb86db671e11dd19b0` |
| 23 | `instance` | [CancelMonoidWithZero.faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/cancelmonoidwithzero-faithfulsmul--6b9043c7b7f3ab286fb9bfa8.md) | 182 | `declaration-track:6b9043c7b7f3ab286fb9bfa8314141dbfc1ea519162ffd01597b8bca706b9a0e` |
| 24 | `theorem` | [inv_smul_smul₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/inv-smul-smul--792bfc4a6581d9292fe6d83d.md) | 192 | `result-track:792bfc4a6581d9292fe6d83df2163ecd166e9ab58cd34877d4b0d0c813e343b6` |
| 25 | `theorem` | [smul_inv_smul₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-inv-smul--48567267707cb3396892b04b.md) | 197 | `result-track:48567267707cb3396892b04bf84b5db0d2755e7f7dc3918dbe32ea0378a93a3d` |
| 26 | `theorem` | [inv_smul_eq_iff₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/inv-smul-eq-iff--1033cb17b008f1b6b6dc60bb.md) | 201 | `result-track:1033cb17b008f1b6b6dc60bbcc01fc0e1c90d4a9e148fa5f77c8178b9c2dd42d` |
| 27 | `theorem` | [eq_inv_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/eq-inv-smul-iff--c81e153a813086f0309a3923.md) | 205 | `result-track:c81e153a813086f0309a3923adbc0fca8c8b5752e4de40f16d42cd3a2d7687f7` |
| 28 | `theorem` | [Commute.smul_right_iff₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/commute-smul-right-iff--b1fe802d0c3a863658c325fe.md) | 210 | `result-track:b1fe802d0c3a863658c325fe053727c8d3af06070fa14e07b061d2fb34b314c0` |
| 29 | `theorem` | [Commute.smul_left_iff₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/commute-smul-left-iff--302a8bd25d4f1bc483420f79.md) | 216 | `result-track:302a8bd25d4f1bc483420f794a89e243125258f1667c9b01c4082e7e9166c158` |
| 30 | `theorem` | [MulAction.bijective₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/mulaction-bijective--e77193cca8d95612e948a932.md) | 221 | `result-track:e77193cca8d95612e948a9326492b2dba48e87d80de2df79ff2022b5e327e0bc` |
| 31 | `theorem` | [MulAction.injective₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/mulaction-injective--9b1ea86c3cd2de16de75900f.md) | 225 | `result-track:9b1ea86c3cd2de16de75900fe5b09fbf49111b4b6cc9ea57cbeeb11f656c9a86` |
| 32 | `theorem` | [MulAction.surjective₀](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/mulaction-surjective--cf552e2fb82f2e0796a81ea9.md) | 229 | `result-track:cf552e2fb82f2e0796a81ea9d046113558a651a324c073c66f167ae7fbeae89f` |
| 33 | `def` | [DistribMulAction.toAddEquiv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/distribmulaction-toaddequiv--59f4fa219995a4486145681c.md) | 249 | `declaration-track:59f4fa219995a4486145681cc261c80670e5bb7ca1c5e448dc48015e81c6d737` |
| 34 | `def` | [DistribMulAction.toAddAut](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/distribmulaction-toaddaut--aceea474c244e9747fb768e8.md) | 261 | `declaration-track:aceea474c244e9747fb768e8e3c73a2c2689940e439df0fce23eeab132379eab` |
| 35 | `theorem` | [smul_eq_zero_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-eq-zero-iff-eq--ba9f9b2bdd66b0245c0d9c6f.md) | 270 | `result-track:ba9f9b2bdd66b0245c0d9c6fcd8ed10048b1d214a375b558e9a1809e8f02cc95` |
| 36 | `theorem` | [smul_ne_zero_iff_ne](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-ne-zero-iff-ne--a17f32f5e7eb9aa9962136a5.md) | 274 | `result-track:a17f32f5e7eb9aa9962136a513b4c615d8778fadd8ffce3b82de820b62c52e07` |
| 37 | `theorem` | [smul_eq_zero_iff_eq'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-eq-zero-iff-eq--744f9148c35eea1267d50d95.md) | 284 | `result-track:744f9148c35eea1267d50d9559bd40ad092c99a4a81c03b8d9d6b1af0e377740` |
| 38 | `theorem` | [smul_ne_zero_iff_ne'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-ne-zero-iff-ne--fc9b40a4f7e0f6c542f0a45b.md) | 288 | `result-track:fc9b40a4f7e0f6c542f0a45b57328e36dd17fbe0e2c2faf6464a46f3d88ecbc4` |
| 39 | `def` | [MulDistribMulAction.toMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/muldistribmulaction-tomulequiv--be9b74ccaeae59a00f83972a.md) | 306 | `declaration-track:be9b74ccaeae59a00f83972a1eef123338034bce812bec77ddbeacf840005bfa` |
| 40 | `def` | [MulDistribMulAction.toMulAut](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/muldistribmulaction-tomulaut--63a5f7863f9e60ae2b551f9a.md) | 318 | `declaration-track:63a5f7863f9e60ae2b551f9a4563d83be6be50b32d1b0f499ca0cc945f3c8ed1` |
| 41 | `def` | [arrowAction](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/arrowaction--4daf898c95dc1cb0659253dc.md) | 334 | `declaration-track:4daf898c95dc1cb0659253dc25438f392485722a471acd5c954c1fc2a8c5778e` |
| 42 | `def` | [arrowMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/arrowmuldistribmulaction--b37efec603e6090a36e47c15.md) | 350 | `declaration-track:b37efec603e6090a36e47c15c144ecffc440a5b0563312962d049142e3e3d178` |
| 43 | `def` | [mulAutArrow](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/mulautarrow--541a4f1ee58319f4ec07de35.md) | 361 | `declaration-track:541a4f1ee58319f4ec07de359e67d5656e7ade74c7e689c3ab6ab97889e714db` |
| 44 | `theorem` | [smul_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-left-cancel--f5e0320c2e5ba7100d6d8e82.md) | 376 | `result-track:f5e0320c2e5ba7100d6d8e8212a9255076e67877485a8566a82b4550954db3a7` |
| 45 | `theorem` | [smul_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/smul-eq-zero--1eeda41f23e57839147e43ba.md) | 389 | `result-track:1eeda41f23e57839147e43ba5e475be810f427a7d668a33cefdc2760c1188e2b` |
| 46 | `theorem` | [isUnit_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/isunit-smul-iff--f8828fc40c702bdb83163245.md) | 402 | `result-track:f8828fc40c702bdb831632456d51dcb1efec2dc6eaa4567e3c6e092af493688b` |
| 47 | `theorem` | [IsUnit.smul_sub_iff_sub_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/declarations/isunit-smul-sub-iff-sub-inv-smul--831afdd2c8f84e1ab4b07f10.md) | 407 | `result-track:831afdd2c8f84e1ab4b07f101577d9c512bcdf291f09e9f831f3b71818fb0fa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
