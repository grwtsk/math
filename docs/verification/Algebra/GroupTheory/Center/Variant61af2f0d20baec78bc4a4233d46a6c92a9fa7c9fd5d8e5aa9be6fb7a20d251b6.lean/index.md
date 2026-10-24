# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0c682393ae6acc6158e370971b8769c58eb3e7c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0c682393ae6acc6158e370971b8769c58eb3e7c`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/center--e0d9cd427bf5a08b73317254.md) | 43 | `declaration-track:e0d9cd427bf5a08b73317254e34175250c6a30651c8618b44a1694fc8470a0ff` |
| 2 | `theorem` | [coe_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/coe-center--b46c17baf8de15d6d1794195.md) | 49 | `result-track:b46c17baf8de15d6d179419558467ddb80cb4365ab77f8586df05a03a68b3c34` |
| 3 | `theorem` | [center_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/center-tosubsemigroup--e9a22b63aa4c06b1d1b72a16.md) | 53 | `result-track:e9a22b63aa4c06b1d1b72a1698e7975539fbbc0105b7eea1c3ba2a9b8ee02847` |
| 4 | `abbrev` | [center.commMonoid'](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/center-commmonoid--d5c7c808b00038510904395b.md) | 63 | `declaration-track:d5c7c808b00038510904395ba2dffbdb97aa192051771f0d92210c819ed6ff81` |
| 5 | `instance` | [center.commMonoid](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/center-commmonoid--3c0e15acb58bdc043aff84c6.md) | 74 | `declaration-track:3c0e15acb58bdc043aff84c6c051e45597546e877a248d966ee9cf75cbeb238d` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/example--a1528b6cf8270c2dd8334bbc.md) | 78 | `declaration-track:a1528b6cf8270c2dd8334bbcaeb74f433a8d1454ec1a819d11b846259f5bbbf4` |
| 7 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/mem-center-iff--2a93d91f792d6723db5b55c4.md) | 82 | `result-track:2a93d91f792d6723db5b55c469da0268320589171ee138192aa00d61d8f6ab76` |
| 8 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/decidablememcenter--7977ff399aca4a6ccd5849a2.md) | 87 | `declaration-track:7977ff399aca4a6ccd5849a2c4ad509417f81168171482f27196ed0c639e9eba` |
| 9 | `instance` | [center.smulCommClass_left](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/center-smulcommclass-left--bee67743a62e4c7fe726fd14.md) | 93 | `declaration-track:bee67743a62e4c7fe726fd1467705a7363a1d84a38c620b97b6f6746fa3d77ed` |
| 10 | `instance` | [center.smulCommClass_right](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/center-smulcommclass-right--5aa2e18c4e1c61bd61da419d.md) | 97 | `declaration-track:5aa2e18c4e1c61bd61da419d85262b3bade3a45068428908d1668e74de4e8b62` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/example--c7ebb6395c6a2c28f6f72761.md) | 103 | `declaration-track:c7ebb6395c6a2c28f6f72761b01bf9ea88601f8ae37fd04adefb27138fcb6249` |
| 12 | `theorem` | [center_eq_top](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/center-eq-top--47adf89caf5c29d08575c64e.md) | 112 | `result-track:47adf89caf5c29d08575c64e21284682c5ad0dec1fc779c7af121ed90866df9d` |
| 13 | `def` | [unitsCenterToCenterUnits](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/unitscentertocenterunits--4a2fb9dd0753b1749f37f8b4.md) | 126 | `declaration-track:4a2fb9dd0753b1749f37f8b4db3bccc83981ed2af8aa973ad2c8a4100cfdb8ce` |
| 14 | `theorem` | [unitsCenterToCenterUnits_injective](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/unitscentertocenterunits-injective--ea294f41ea5114ac033ae696.md) | 134 | `result-track:ea294f41ea5114ac033ae696a40b5138dc0eb48b7f27ac731b2f0ca350abac35` |
| 15 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Center.Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.MulEquivClass.apply_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/root-grwtsk-algebra-grouptheory-center-variant2c127dd4d104be3458d983f22b--52a0df6d057a288e5e99b34c.md) | 142 | `result-track:52a0df6d057a288e5e99b34c94cb25891110f9f3dd87a62758a8011caf063653` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Center.Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.MulEquivClass.apply_mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/root-grwtsk-algebra-grouptheory-center-variant2c127dd4d104be3458d983f22b--155f2303201d065b51225e21.md) | 150 | `result-track:155f2303201d065b51225e21c2f555b34951f1f18ce9435872f64ff02e4e36ef` |
| 17 | `def` | [Subsemigroup.centerCongr](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/subsemigroup-centercongr--0f46ab9a251581e32bcea5df.md) | 158 | `declaration-track:0f46ab9a251581e32bcea5df6f9be13ee2ab1b6dc5730cc38ce14c20c03653a9` |
| 18 | `def` | [Submonoid.centerCongr](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/submonoid-centercongr--9f24891fc18554dd15e616a2.md) | 167 | `declaration-track:9f24891fc18554dd15e616a2dd2d888d1e7163a1c67b1bb2641cba236062c223` |
| 19 | `theorem` | [MulOpposite.op_mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/mulopposite-op-mem-center-iff--7a6569aa2f5b87d7b516fe21.md) | 170 | `result-track:7a6569aa2f5b87d7b516fe21d9ad9947d342f8f4b38f653051b015e66840264d` |
| 20 | `theorem` | [MulOpposite.unop_mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/mulopposite-unop-mem-center-iff--528503d70fe62af65a9463b8.md) | 174 | `result-track:528503d70fe62af65a9463b8000899806903ae58dda77730ff4ef57860932f82` |
| 21 | `def` | [Subsemigroup.centerToMulOpposite](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/subsemigroup-centertomulopposite--ad9bece2f6d7b3009e7e7210.md) | 181 | `declaration-track:ad9bece2f6d7b3009e7e7210e84b4d1867a95f7a2ea0fa96aa253196e5645d36` |
| 22 | `def` | [Submonoid.centerToMulOpposite](../../../../../mathematics/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/declarations/submonoid-centertomulopposite--62cf43efa55d45da036a5dbd.md) | 191 | `declaration-track:62cf43efa55d45da036a5dbd5c9c12c950a271df905a1b60d472f7251de44964` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
