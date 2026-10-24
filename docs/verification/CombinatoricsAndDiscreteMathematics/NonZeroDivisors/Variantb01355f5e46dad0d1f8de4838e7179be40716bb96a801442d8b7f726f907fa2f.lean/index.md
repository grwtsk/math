# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NonZeroDivisors.Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c61e4f332d01671808dc230ce08d51744cb7f89c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c61e4f332d01671808dc230ce08d51744cb7f89c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Submonoid.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/nonzerodivisors--15bc47d26e8c9299cbda67a9.md) | 37 | `declaration-track:15bc47d26e8c9299cbda67a9fec3df5ac06ea287adf587b853e883e8673192b5` |
| 2 | `theorem` | [mem_nonZeroDivisors_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mem-nonzerodivisors-iff--fb19abf4e95498a82ce1afb2.md) | 53 | `result-track:fb19abf4e95498a82ce1afb253afc5fdfb44f1d266b03d9d39f332afedc0bf44` |
| 3 | `theorem` | [mul_right_mem_nonZeroDivisors_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mul-right-mem-nonzerodivisors-eq-zero-iff--dc17b74cee26505ed792ae8e.md) | 56 | `result-track:dc17b74cee26505ed792ae8e18e8e6e616795e99fe45b06eb9f58f3064cb8d29` |
| 4 | `theorem` | [mul_right_coe_nonZeroDivisors_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mul-right-coe-nonzerodivisors-eq-zero-iff--ebb65fbfe221917d3a0e7de2.md) | 60 | `result-track:ebb65fbfe221917d3a0e7de2366ad1dc60a3136efe014ad5f188cb061758ced7` |
| 5 | `theorem` | [mul_left_mem_nonZeroDivisors_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mul-left-mem-nonzerodivisors-eq-zero-iff--ce1e868a51ed22d806580fe9.md) | 64 | `result-track:ce1e868a51ed22d806580fe9e0498328f5b72808bc6b7566fa724bb0be0d66f5` |
| 6 | `theorem` | [mul_left_coe_nonZeroDivisors_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mul-left-coe-nonzerodivisors-eq-zero-iff--02723909c1ad31fc38a32b55.md) | 69 | `result-track:02723909c1ad31fc38a32b55a66d3e36c28e478425a5f4a29e6f8030a364b116` |
| 7 | `theorem` | [mul_cancel_right_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mul-cancel-right-mem-nonzerodivisors--6a14c700e8fa79c47fee6028.md) | 73 | `result-track:6a14c700e8fa79c47fee6028c21f366031aee16fba5984336abc4ace15a07827` |
| 8 | `theorem` | [mul_cancel_right_coe_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mul-cancel-right-coe-nonzerodivisors--8b914c7880d29e38588f1b37.md) | 78 | `result-track:8b914c7880d29e38588f1b374337233e353acba3f675dc74c4a5f3801d6c9587` |
| 9 | `theorem` | [mul_cancel_left_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mul-cancel-left-mem-nonzerodivisors--236524ad2e4ebc6453ff6ca0.md) | 83 | `result-track:236524ad2e4ebc6453ff6ca0abe39fd7aae0b6aa46553514fa33f2f8c5f9ee1f` |
| 10 | `theorem` | [mul_cancel_left_coe_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mul-cancel-left-coe-nonzerodivisors--46b2651a50da1732dbcad3b5.md) | 87 | `result-track:46b2651a50da1732dbcad3b5bda3efe3715d491964234dbb8348c002dd4928b8` |
| 11 | `theorem` | [nonZeroDivisors.ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/nonzerodivisors-ne-zero--89773fd97b31c8e14f115c4e.md) | 91 | `result-track:89773fd97b31c8e14f115c4eaa134b964a9903df794e7b32b47d5a63bb05f052` |
| 12 | `theorem` | [nonZeroDivisors.coe_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/nonzerodivisors-coe-ne-zero--b78f6580f571ddd7cd1788b7.md) | 95 | `result-track:b78f6580f571ddd7cd1788b7f99086be9bff384be8c58d09a75a78680253414a` |
| 13 | `theorem` | [mul_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mul-mem-nonzerodivisors--2120200fa5f4443f5434e7f0.md) | 99 | `result-track:2120200fa5f4443f5434e7f01cf71a3ca5fd33669257a18af5b378aaf086581f` |
| 14 | `theorem` | [isUnit_of_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/isunit-of-mem-nonzerodivisors--f3e5ea220cec8847b319383f.md) | 111 | `result-track:f3e5ea220cec8847b319383f299d025e90da5c01a4e4fc9e9fb21f0fdd583363` |
| 15 | `theorem` | [eq_zero_of_ne_zero_of_mul_right_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/eq-zero-of-ne-zero-of-mul-right-eq-zero--5609b58965b7f8c45a88a36a.md) | 117 | `result-track:5609b58965b7f8c45a88a36a46a43f545e1e41d981126259eb0737c2e8463073` |
| 16 | `theorem` | [eq_zero_of_ne_zero_of_mul_left_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/eq-zero-of-ne-zero-of-mul-left-eq-zero--0628484ae6b4b26231c11771.md) | 122 | `result-track:0628484ae6b4b26231c1177130d993a11c228a59ee8d0f6d715e7fa563442708` |
| 17 | `theorem` | [mem_nonZeroDivisors_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mem-nonzerodivisors-of-ne-zero--7dcdc67a3d1e1a3c069a4221.md) | 127 | `result-track:7dcdc67a3d1e1a3c069a42217e6711131b8667c0d3c32864aa97c9331b62486d` |
| 18 | `theorem` | [mem_nonZeroDivisors_iff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/mem-nonzerodivisors-iff-ne-zero--b926f9326c5bd474432b9ad5.md) | 131 | `result-track:b926f9326c5bd474432b9ad5ea2bdd392392710033eec7494fdc6b8f4da8c304` |
| 19 | `theorem` | [map_ne_zero_of_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/map-ne-zero-of-mem-nonzerodivisors--afb9aee019d070d3996f8d72.md) | 135 | `result-track:afb9aee019d070d3996f8d7255dbe8ffa54702344ddc6d2bad24d05cf851d415` |
| 20 | `theorem` | [map_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/map-mem-nonzerodivisors--7e488275b91ce232797c1153.md) | 140 | `result-track:7e488275b91ce232797c11533a314c988b37cb14484230ad86c2ea2d1f001a95` |
| 21 | `theorem` | [le_nonZeroDivisors_of_noZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/le-nonzerodivisors-of-nozerodivisors--515e1f3c1e470a818869ea2f.md) | 145 | `result-track:515e1f3c1e470a818869ea2f5bebb34c858a1671607ba6984a85238a4957e5d4` |
| 22 | `theorem` | [powers_le_nonZeroDivisors_of_noZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/powers-le-nonzerodivisors-of-nozerodivisors--d40b10e0bc7bf442b9bfe4fd.md) | 151 | `result-track:d40b10e0bc7bf442b9bfe4fde944bbffde20fc78b81c53d2e11d6ea3f62db26e` |
| 23 | `theorem` | [map_le_nonZeroDivisors_of_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/map-le-nonzerodivisors-of-injective--58c4939bc8eed105503898ed.md) | 156 | `result-track:58c4939bc8eed105503898ed1692d6b06db4783fbf7ece9346992f228c0062ae` |
| 24 | `theorem` | [nonZeroDivisors_le_comap_nonZeroDivisors_of_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/nonzerodivisors-le-comap-nonzerodivisors-of-injective--5fa61184df803c3653c1dac4.md) | 165 | `result-track:5fa61184df803c3653c1dac4b55f09da1f75321ffc2948bbc13419b1aec8a51e` |
| 25 | `theorem` | [prod_zero_iff_exists_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variantb01355f5e46dad0d1f8de4838e7179be40716bb96a801442d8b7f726f907fa2f.lean/declarations/prod-zero-iff-exists-zero--93d499080370294426a26130.md) | 170 | `result-track:93d499080370294426a26130a914515af9f3c6491a7447c88da1266fd451daf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
