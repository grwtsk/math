# Verification target: GRWTSK.Algebra.Pointwise.Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1855fd9ff8ddd5c1cf65b8b7fd365aed6529ac58",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1855fd9ff8ddd5c1cf65b8b7fd365aed6529ac58`.

Source path: `GRWTSK/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseDistribMulAction](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/pointwisedistribmulaction--2d6b360744cb34b1a95ed348.md) | 50 | `declaration-track:2d6b360744cb34b1a95ed3484f7e75febfa51b3c8b516aff923da76533f21c35` |
| 2 | `def` | [pointwiseMulSemiringAction](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/pointwisemulsemiringaction--2fd36cf4aa82f102510ac429.md) | 67 | `declaration-track:2fd36cf4aa82f102510ac429f9633f158af9599454b1f49485782e2ccc09147d` |
| 3 | `theorem` | [pointwise_smul_def](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/pointwise-smul-def--1b0519cf53368c48b100a290.md) | 74 | `result-track:1b0519cf53368c48b100a2905cc48173cc3282d931f68754de8bf9690e241a0f` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/instance--4f8de7c64af88a5f80c51228.md) | 78 | `declaration-track:4f8de7c64af88a5f80c5122860a8ee6d061e611cf9f022a201b92fa407663d11` |
| 5 | `theorem` | [smul_mem_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/smul-mem-pointwise-smul--dd3ac3ebb10716d1aa42f053.md) | 87 | `result-track:dd3ac3ebb10716d1aa42f05397d296f4d8fa7d792523346713748b17e3dca8d2` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/instance--4afc1096f21b535a1a605e17.md) | 90 | `declaration-track:4afc1096f21b535a1a605e17467e0b2a61e09e4004bc8907dbe103e3f0263093` |
| 7 | `theorem` | [smul_bot](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/smul-bot--557e9780652c5646724c5de2.md) | 96 | `result-track:557e9780652c5646724c5de22f323c7b69d3071feca57d4930933a23c224c25b` |
| 8 | `theorem` | [smul_sup](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/smul-sup--97902ae58cab67c99a08e4d9.md) | 99 | `result-track:97902ae58cab67c99a08e4d9c95373585d6636f59812f2b911a47a94f7b082bb` |
| 9 | `theorem` | [smul_closure](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/smul-closure--12df250cb2f024dfc68b08dd.md) | 102 | `result-track:12df250cb2f024dfc68b08dd1e4f5a627dffd3ec840cfb9de00648ca23bb22d8` |
| 10 | `instance` | [pointwise_central_scalar](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/pointwise-central-scalar--2869afde4520b37f2f6c9d3f.md) | 105 | `declaration-track:2869afde4520b37f2f6c9d3f36e9c648f9aa91abcd783465c7c41c16afe739c5` |
| 11 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/pointwise-smul-toaddsubmonoid--b3eff0d07e8c6044211bd5d0.md) | 110 | `result-track:b3eff0d07e8c6044211bd5d07aefa65232b37acb4d24ef3b5ee635b534e80d42` |
| 12 | `theorem` | [pointwise_smul_toAddSubgroup](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/pointwise-smul-toaddsubgroup--38684d5fb52868e7122a3aee.md) | 117 | `result-track:38684d5fb52868e7122a3aee4d75ce38f31dc295b4d6a207d2d12bb10fe37cdc` |
| 13 | `theorem` | [pointwise_smul_eq_comap](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/pointwise-smul-eq-comap--118015324bad839e46896ca4.md) | 131 | `result-track:118015324bad839e46896ca4ee64c31a23f493d6fa6689c23c56b233046dde3c` |
| 14 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/smul-mem-pointwise-smul-iff--bc66e5de9dbf601eb2adef9f.md) | 138 | `result-track:bc66e5de9dbf601eb2adef9fa4bff781e3b3f7824592bd28b132c41c5dd684be` |
| 15 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--a6a4ca41b149fa436536c258.md) | 141 | `result-track:a6a4ca41b149fa436536c258602a51ff5627e859b13dd6e8241c049f3a64957c` |
| 16 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/mem-inv-pointwise-smul-iff--486e6e4b1b9713959c99c76a.md) | 146 | `result-track:486e6e4b1b9713959c99c76aa0e1715d3fa352c4966e4eb930e6f445baffc8c6` |
| 17 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/pointwise-smul-le-pointwise-smul-iff--c41ff20abff711a6a2bb20ab.md) | 150 | `result-track:c41ff20abff711a6a2bb20ab7539dfc7469777aaeaa5064ddb0838564300ba39` |
| 18 | `theorem` | [pointwise_smul_subset_iff](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/pointwise-smul-subset-iff--093a46241eac6ce56d513b55.md) | 153 | `result-track:093a46241eac6ce56d513b552725e557e2c8ed4e2086d07f6848775cfe80ae6b` |
| 19 | `theorem` | [subset_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/subset-pointwise-smul-iff--4de85be8d491ed6465b44176.md) | 156 | `result-track:4de85be8d491ed6465b44176949da490f7c7a742ca303fdadf45ef27fe9ce57e` |
| 20 | `instance` | [IsPrime.smul](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/isprime-smul--8ed9aff69a5c324ba7161983.md) | 159 | `declaration-track:8ed9aff69a5c324ba716198350e8c4d4c304c809f1ff3fe1844848c001f05fd7` |
| 21 | `theorem` | [IsPrime.smul_iff](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/isprime-smul-iff--89717dfac09de6d89db5fef6.md) | 164 | `result-track:89717dfac09de6d89db5fef650252b36c8f3581874e18ca442b53d436855f873` |
| 22 | `theorem` | [inertia_smul](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/inertia-smul--6a6b398306163c3f4458cafa.md) | 167 | `result-track:6a6b398306163c3f4458cafa1dbaed19c21ea5e266f7c9c421edc3e744b2637e` |
| 23 | `theorem` | [inertia_le_stabilizer](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/inertia-le-stabilizer--cb0969397c24b44bfc721e4c.md) | 175 | `result-track:cb0969397c24b44bfc721e4c0c5e4cebd3be05262d0935aae447915e6a07b92f` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/instance--d0f2a16b7021023d1f2dd11e.md) | 181 | `declaration-track:d0f2a16b7021023d1f2dd11e957f84e5113aaf5a4dacebf0886472c746ef06a3` |
| 25 | `def` | [stabilizerEquiv](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/stabilizerequiv--4f5ad5560e53ff850640e6e0.md) | 192 | `declaration-track:4f5ad5560e53ff850640e6e0fac98fb7b4e0951a69adf7961b4a33beabfdf1f5` |
| 26 | `theorem` | [stabilizerEquiv_apply_smul](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/stabilizerequiv-apply-smul--dc21e72f35da0a0f483bb4e6.md) | 199 | `result-track:dc21e72f35da0a0f483bb4e6427b68b46e7db37dd7e6b1ef9bf700303886cdd2` |
| 27 | `theorem` | [stabilizerEquiv_symm_apply_smul](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/stabilizerequiv-symm-apply-smul--0db8c24ab3ffa6935b53e4e5.md) | 205 | `result-track:0db8c24ab3ffa6935b53e4e556171b819800c86b8c4aa29eb2741df5f32e16b2` |
| 28 | `def` | [inertiaEquiv](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/inertiaequiv--086ff8f2d718b6f3150b1597.md) | 216 | `declaration-track:086ff8f2d718b6f3150b1597ab40dce8bf33f6e8ad4cb69bdb096ae344f4f7b0` |
| 29 | `theorem` | [inertiaEquiv_apply_smul](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/inertiaequiv-apply-smul--dcc74a8895af38910db45b99.md) | 223 | `result-track:dcc74a8895af38910db45b99904c31f7ffaed0787bba24fd4668134fce6a0d7d` |
| 30 | `theorem` | [inertiaEquiv_symm_apply_smul](../../../../mathematics/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/declarations/inertiaequiv-symm-apply-smul--69732c9738335dd349fe6330.md) | 230 | `result-track:69732c9738335dd349fe63303e1a7cc7bb00ea6810d16f3bc04d2fc392c9b2fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
