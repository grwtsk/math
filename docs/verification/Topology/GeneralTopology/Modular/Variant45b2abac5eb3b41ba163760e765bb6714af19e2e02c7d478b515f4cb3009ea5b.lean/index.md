# Verification target: GRWTSK.Topology.GeneralTopology.Modular.Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11af827f4bf5f7597004c39e36c8528150e8111d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11af827f4bf5f7597004c39e36c8528150e8111d`.

Source path: `GRWTSK/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ZMultiples` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bottom_row_coprime](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/bottom-row-coprime--67e2525ab6a4075c264d7646.md) | 80 | `result-track:67e2525ab6a4075c264d764604380a1e09addf00aaf54053a0fa5f96d84a4921` |
| 2 | `theorem` | [bottom_row_surj](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/bottom-row-surj--1c5050b4e5e9c6c8b1a6e292.md) | 88 | `result-track:1c5050b4e5e9c6c8b1a6e292c9706ece09a9345e493e9cc7c3604b1c88d55967` |
| 3 | `theorem` | [tendsto_normSq_coprime_pair](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/tendsto-normsq-coprime-pair--e9a2daa02e540c75cc3753bc.md) | 110 | `result-track:e9a2daa02e540c75cc3753bc123f81d9fb2773ac0548c814128fa798f175ed7e` |
| 4 | `def` | [lcRow0](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/lcrow0--f09373120d4fce8e6589c6ec.md) | 159 | `declaration-track:f09373120d4fce8e6589c6ece153b00629f6bc97ed8a79b2156fd818e6c3e650` |
| 5 | `theorem` | [lcRow0_apply](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/lcrow0-apply--0cad9372b3780b4fba055fb9.md) | 165 | `result-track:0cad9372b3780b4fba055fb97042b93e143966b0a1b5e38e016a05323ec3c391` |
| 6 | `def` | [lcRow0Extend](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/lcrow0extend--7341dab5456e57f17b3642ef.md) | 172 | `declaration-track:7341dab5456e57f17b3642efb51d01a9498f8ae02bbb031d0c7c0a31c7eeae3c` |
| 7 | `theorem` | [tendsto_lcRow0](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/tendsto-lcrow0--7295a5cfc43b60478898fa6e.md) | 185 | `result-track:7295a5cfc43b60478898fa6e52b575ca855c27e109a03e6dbe94206167ea03d3` |
| 8 | `theorem` | [smul_eq_lcRow0_add](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/smul-eq-lcrow0-add--10e4c74b7d0e0adeb9e7f1b3.md) | 229 | `result-track:10e4c74b7d0e0adeb9e7f1b3f84b569d51da3b1e585a6fd3a8908f50418cc809` |
| 9 | `theorem` | [tendsto_abs_re_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/tendsto-abs-re-smul--b8cec5c90da3cb04fbb3547b.md) | 245 | `result-track:b8cec5c90da3cb04fbb3547b9644c2f23aa85cf7c429ff787c5708d1d50edacd` |
| 10 | `theorem` | [exists_max_im](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/exists-max-im--dc98042e7eb6e15b674801a4.md) | 273 | `result-track:dc98042e7eb6e15b674801a473c21703e2da1270349f57f68c5ada37b2a3a5d0` |
| 11 | `theorem` | [exists_row_one_eq_and_min_re](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/exists-row-one-eq-and-min-re--32344e9d28dc728ce1b21e2a.md) | 290 | `result-track:32344e9d28dc728ce1b21e2ae06728e4fbfb4d78efa8b37c14dc1a1bc6ed70f5` |
| 12 | `theorem` | [coe_T_zpow_smul_eq](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/coe-t-zpow-smul-eq--55454ede9544cf08f3703996.md) | 304 | `result-track:55454ede9544cf08f37039966bc65bc9ee65b5ac739f589f5bbf042153cd38c4` |
| 13 | `theorem` | [re_T_zpow_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/re-t-zpow-smul--b42028d62be5449dcee56e78.md) | 308 | `result-track:b42028d62be5449dcee56e78046d5f32e79587f162849ffbe6a8bb9a89051d55` |
| 14 | `theorem` | [im_T_zpow_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/im-t-zpow-smul--2646be6a3c6ba251b03065a2.md) | 311 | `result-track:2646be6a3c6ba251b03065a26669306359fed6a3b8f825bcad45acdf4540ed3c` |
| 15 | `theorem` | [re_T_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/re-t-smul--20ef711dc3bf40a276d2fd68.md) | 314 | `result-track:20ef711dc3bf40a276d2fd68389313a68571a3fdbc9fcf5111494d49532bfc9f` |
| 16 | `theorem` | [im_T_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/im-t-smul--d2acde38f457a3bdc228be8d.md) | 316 | `result-track:d2acde38f457a3bdc228be8d92dcd56c4c64a7d4e500bf7127b63f390284b0c3` |
| 17 | `theorem` | [re_T_inv_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/re-t-inv-smul--7af795a8b7b265f095591812.md) | 318 | `result-track:7af795a8b7b265f095591812b6571f2e29434aa7c5f592f935978a6d71ba3726` |
| 18 | `theorem` | [im_T_inv_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/im-t-inv-smul--90f078eb12e3c0201e5399bf.md) | 320 | `result-track:90f078eb12e3c0201e5399bf97a9fba9a10916f6316f1b74ae30c44aa4c23ad6` |
| 19 | `theorem` | [exists_eq_T_zpow_of_c_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/exists-eq-t-zpow-of-c-eq-zero--bc1268e5770ef1032834acb3.md) | 325 | `result-track:bc1268e5770ef1032834acb33c561afce0b93c6b13f2495bd6cc3fbcf57183af` |
| 20 | `theorem` | [g_eq_of_c_eq_one](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/g-eq-of-c-eq-one--20eec932b07c5c57b596dd22.md) | 340 | `result-track:20eec932b07c5c57b596dd22795bce48386c1cdca6ae7371e7c8108941fd9f1c` |
| 21 | `theorem` | [normSq_S_smul_lt_one](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/normsq-s-smul-lt-one--b75e8f82866a6937a518f73b.md) | 349 | `result-track:b75e8f82866a6937a518f73b3664d5815b7c22fe39c36b6cb052d14d3bfbf39e` |
| 22 | `theorem` | [im_lt_im_S_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/im-lt-im-s-smul--6f1b2fae2ea7871a3b8cdec9.md) | 354 | `result-track:6f1b2fae2ea7871a3b8cdec9db8c8aee04772960fc7db4baab058168b10cdb93` |
| 23 | `def` | [fd](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/fd--675d8d90307dc12ef3559618.md) | 363 | `declaration-track:675d8d90307dc12ef3559618a814d3845efcd13cab5d1e07142f441df0af97c6` |
| 24 | `def` | [fdo](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/fdo--b68534aa6794975e00c314e4.md) | 367 | `declaration-track:b68534aa6794975e00c314e47eb76ceeddde9f482766f8d34596e826f770276a` |
| 25 | `theorem` | [abs_two_mul_re_lt_one_of_mem_fdo](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/abs-two-mul-re-lt-one-of-mem-fdo--bf8e0dc694b44d6c875a7520.md) | 378 | `result-track:bf8e0dc694b44d6c875a7520078cab583678053dab3e7d5b3a8007dff3be8e21` |
| 26 | `theorem` | [three_lt_four_mul_im_sq_of_mem_fdo](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/three-lt-four-mul-im-sq-of-mem-fdo--390c5c65fb38a724065121ac.md) | 382 | `result-track:390c5c65fb38a724065121ac3fd6858f795853bed5f8ae1e062bdccad482739a` |
| 27 | `theorem` | [three_le_four_mul_im_sq_of_mem_fd](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/three-le-four-mul-im-sq-of-mem-fd--6d2a1f93acacd894cc782971.md) | 388 | `result-track:6d2a1f93acacd894cc782971ea4fe274749e63e58ccf485770af608be6fbb221` |
| 28 | `theorem` | [one_lt_normSq_T_zpow_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/one-lt-normsq-t-zpow-smul--949daef8873f73769d308e93.md) | 393 | `result-track:949daef8873f73769d308e9312e1ac14c0fd2f893b58e3a6f86905881495fe76` |
| 29 | `theorem` | [eq_zero_of_mem_fdo_of_T_zpow_mem_fdo](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/eq-zero-of-mem-fdo-of-t-zpow-mem-fdo--5846e6508413515b3593f290.md) | 400 | `result-track:5846e6508413515b3593f29063dd53b1b3985822b3bdba253546f16b09aba289` |
| 30 | `theorem` | [exists_smul_mem_fd](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/exists-smul-mem-fd--589c35057867504b0614a554.md) | 414 | `result-track:589c35057867504b0614a5544a7c7d4ade9d7c6febf0c3199a651e7168370530` |
| 31 | `theorem` | [abs_c_le_one](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/abs-c-le-one--83dbef0307c244625e00ad76.md) | 448 | `result-track:83dbef0307c244625e00ad76e7a519d43c7a71644bff10cb7f9b372ab787134d` |
| 32 | `theorem` | [c_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/c-eq-zero--71ac053e4f7245df5df6cbe3.md) | 477 | `result-track:71ac053e4f7245df5df6cbe3aa0e166f8872be4c124e6fd790c7ad5de97f00c0` |
| 33 | `theorem` | [eq_smul_self_of_mem_fdo_mem_fdo](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/eq-smul-self-of-mem-fdo-mem-fdo--b9313f148fbf086dbe379905.md) | 502 | `result-track:b9313f148fbf086dbe3799052382c47c07de9febd9e83e02ebe1d7238e8fbe29` |
| 34 | `lemma` | [exists_one_half_le_im_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/exists-one-half-le-im-smul--aa385980c01279b52aeafeba.md) | 511 | `result-track:aa385980c01279b52aeafebad155ddbcac69d71f13c2b7603cb92a180e17051b` |
| 35 | `lemma` | [exists_one_half_le_im_smul_and_norm_denom_le](../../../../../mathematics/Topology/GeneralTopology/Modular/Variant45b2abac5eb3b41ba163760e765bb6714af19e2e02c7d478b515f4cb3009ea5b.lean/declarations/exists-one-half-le-im-smul-and-norm-denom-le--b65e592f6851b4a798ae5cfe.md) | 518 | `result-track:b65e592f6851b4a798ae5cfeffab0d7b7dc496671e4ea86f3749f4c8c37480bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
