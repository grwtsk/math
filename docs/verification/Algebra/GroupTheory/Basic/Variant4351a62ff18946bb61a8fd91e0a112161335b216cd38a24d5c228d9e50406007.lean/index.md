# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05732c151599b59968fc91e41b7cbd73679b41f9",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05732c151599b59968fc91e41b7cbd73679b41f9`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean.json)

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
| 1 | `lemma` | [smul_set_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-prod--aabf70f49b06b1b635d7fd70.md) | 52 | `result-track:aabf70f49b06b1b635d7fd7001042ba1b8291f8dccde3fc23d8550ddb96aa26d` |
| 2 | `lemma` | [smul_set_pi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-pi--6bec06043ec41b32c0b5b395.md) | 57 | `result-track:6bec06043ec41b32c0b5b39595b4f607e6752e3749262a67535960bf1e42b0eb` |
| 3 | `lemma` | [smul_set_pi_of_isUnit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-pi-of-isunit--c0443f256a067e627431bdd1.md) | 62 | `result-track:c0443f256a067e627431bdd1b4eefd7f7352897df8e55c5e79a45558b617bd5f` |
| 4 | `lemma` | [smul_set_subset_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-subset-mul--570b29347d1b76759323b7c2.md) | 70 | `result-track:570b29347d1b76759323b7c2838a56e9d4771e7f766fae7917194350a53c15d0` |
| 5 | `lemma` | [op_smul_set_subset_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/op-smul-set-subset-mul--6ef400d68b63fdc56231b553.md) | 73 | `result-track:6ef400d68b63fdc56231b55389cae5e3284d5a90916427e291ffc17c0ee233dd` |
| 6 | `theorem` | [image_op_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/image-op-smul--63d91190ed48f1fa873c8357.md) | 76 | `result-track:63d91190ed48f1fa873c8357905b800b1f4a3e89aed537e17aaa35f9ecbfe134` |
| 7 | `theorem` | [iUnion_op_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/iunion-op-smul-set--2438c824009f3f23701efed2.md) | 81 | `result-track:2438c824009f3f23701efed25c0893185eb2b4014e3db4f71865217819236d20` |
| 8 | `theorem` | [mul_subset_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/mul-subset-iff-left--e80c3507bbc401f0db1bb82e.md) | 85 | `result-track:e80c3507bbc401f0db1bb82e7d1c0fe783240c57cf0e8284b22a0398bebd5e95` |
| 9 | `theorem` | [mul_subset_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/mul-subset-iff-right--bf828797b58c6aebdbfd9dce.md) | 89 | `result-track:bf828797b58c6aebdbfd9dcedefc349ad972108e87fb76a1e06c3f7226227b5a` |
| 10 | `lemma` | [pair_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/pair-mul--e4f21b27ee6c05a4ad245ca0.md) | 92 | `result-track:e4f21b27ee6c05a4ad245ca027b210902dd64dc6dc307b010d737271beeaa87a` |
| 11 | `lemma` | [mul_pair](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/mul-pair--6fdae7876d832547954340a8.md) | 96 | `result-track:6fdae7876d832547954340a8f850b3767481a9c755ba4f139d4a5ddae229b157` |
| 12 | `lemma` | [range_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/range-mul--814041d38d5e2d3fe0f2e313.md) | 99 | `result-track:814041d38d5e2d3fe0f2e313141dede526e6293b26906ebfbf782c34b47e9d87` |
| 13 | `lemma` | [image_smul_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/image-smul-distrib--4de2af71ad0e6a65c40ae3bb.md) | 105 | `result-track:4de2af71ad0e6a65c40ae3bbb253e0d04e8ba0c035658d5d6748c33ad7782b96` |
| 14 | `lemma` | [image_op_smul_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/image-op-smul-distrib--e1bf91cfcdd7e2bee7bef3f7.md) | 112 | `result-track:e1bf91cfcdd7e2bee7bef3f76341d5e4d0b375608fa43b012d1d8c084d83eb7d` |
| 15 | `lemma` | [op_smul_set_mul_eq_mul_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/op-smul-set-mul-eq-mul-smul-set--f54fd080289b91022a6ad875.md) | 119 | `result-track:f54fd080289b91022a6ad875878de3562ce6d07e0795cc2072686fa07ec15e92` |
| 16 | `theorem` | [pairwiseDisjoint_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/pairwisedisjoint-smul-iff--983a2d655c2c175cbef4b235.md) | 130 | `result-track:983a2d655c2c175cbef4b23513507053f9ac422c51ee2c5d73df04dee5e24816` |
| 17 | `instance` | [smulCommClass_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smulcommclass-set--79f91b2eeb5913c24e8adae5.md) | 137 | `declaration-track:79f91b2eeb5913c24e8adae521168104e28a05cc21a188dfe5b2aa50a4e3f58d` |
| 18 | `instance` | [smulCommClass_set'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smulcommclass-set--2d372bca9f967630a5a581d3.md) | 142 | `declaration-track:2d372bca9f967630a5a581d392ad491375db849f84b23b142238b95b829e16c9` |
| 19 | `instance` | [smulCommClass_set''](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smulcommclass-set--2b273df8a05e8409cdfa3f8b.md) | 147 | `declaration-track:2b273df8a05e8409cdfa3f8bcbdc042da879be9def51675e7c7426209f2a63f2` |
| 20 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smulcommclass--07d966f691e70a58afdc4b03.md) | 153 | `declaration-track:07d966f691e70a58afdc4b03fd25f7f2567a01a98fa3eaac9472f01f6f9837ee` |
| 21 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/isscalartower--d25f9c6ab0421fa724b64d25.md) | 158 | `declaration-track:d25f9c6ab0421fa724b64d25cfb80507dd59f4f03b5193baad37087d0a6ecce3` |
| 22 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/isscalartower--03029277ff2169cd40840de0.md) | 163 | `declaration-track:03029277ff2169cd40840de0e0b454ee0e0d8f6ff71eb0230c02c487a5895be9` |
| 23 | `instance` | [isScalarTower''](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/isscalartower--74bcdd4ba80227c98212fa6c.md) | 168 | `declaration-track:74bcdd4ba80227c98212fa6ca8345aa1a4ede3cbbf90c04cdf085aecb8c8663e` |
| 24 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/iscentralscalar--75868255c07c2fb7eb9f4c72.md) | 173 | `declaration-track:75868255c07c2fb7eb9f4c7247d0f3cfa9ba6fe9d736205c7bffa615bdd263e9` |
| 25 | `def` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/mulaction--dded8a4d8beb3edb5702e6a0.md) | 182 | `declaration-track:dded8a4d8beb3edb5702e6a0968638049de1c9e3ded9aa466192cb9aebaea476` |
| 26 | `def` | [mulActionSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/mulactionset--83be942a74c826c4c746662c.md) | 189 | `declaration-track:83be942a74c826c4c746662cf89df4fddcdd68a74fee08aa8aa0bcbd8c8e1bb6` |
| 27 | `theorem` | [smul_mem_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-mem-smul-set-iff--c5dae529280dad90ae991ec0.md) | 200 | `result-track:c5dae529280dad90ae991ec014fc637a064320b103e2c0cb45d0aeeaf6b77d23` |
| 28 | `theorem` | [mem_smul_set_iff_inv_smul_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/mem-smul-set-iff-inv-smul-mem--592793cc12e207d87022fb2d.md) | 204 | `result-track:592793cc12e207d87022fb2d75b3c0c3cd3195a0f7037a067f432b8d74df540e` |
| 29 | `theorem` | [mem_inv_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/mem-inv-smul-set-iff--1c7577c805d2d25ffdd59317.md) | 208 | `result-track:1c7577c805d2d25ffdd593176a468a500ece425c47c9908f79ed65c667853943` |
| 30 | `lemma` | [mem_smul_set_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/mem-smul-set-inv--c08fded159badbe6d2c876e6.md) | 212 | `result-track:c08fded159badbe6d2c876e63c71c6919a7e16038a7ee77a61fe6078733c68d1` |
| 31 | `theorem` | [preimage_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/preimage-smul--884a87c2b2bd0b303403964e.md) | 216 | `result-track:884a87c2b2bd0b303403964ef30f630bbdccce21a1eeb4b5303ec16849f625f7` |
| 32 | `theorem` | [preimage_smul_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/preimage-smul-inv--04838fe2de80681cbfdc60a2.md) | 220 | `result-track:04838fe2de80681cbfdc60a286b4faf26c803c118b7b33c0d00912db8697e88b` |
| 33 | `theorem` | [smul_set_subset_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-subset-smul-set-iff--838a06ccc16c007c9350be09.md) | 224 | `result-track:838a06ccc16c007c9350be09975dea2b4a8cc1fc8272dccb4d4b7e190d36caab` |
| 34 | `theorem` | [smul_set_subset_iff_subset_inv_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-subset-iff-subset-inv-smul-set--58f4b011fa101cebbe8edfa7.md) | 228 | `result-track:58f4b011fa101cebbe8edfa78b8a0f4223e466af5a989f9d3fe17ca55ae68cf4` |
| 35 | `theorem` | [subset_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/subset-smul-set-iff--b2627074f0359931d4687912.md) | 234 | `result-track:b2627074f0359931d4687912d4a702d3819b90f37ac90587784f9035665151bf` |
| 36 | `theorem` | [smul_set_inter](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-inter--d54650897e659abe8a7b979f.md) | 239 | `result-track:d54650897e659abe8a7b979fc45c1759c8b53c1e9fe9f1884d7967964401739c` |
| 37 | `theorem` | [smul_set_iInter](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-iinter--b19c8a59d6ab4b9c9c14ee0e.md) | 243 | `result-track:b19c8a59d6ab4b9c9c14ee0e4f6f55ec1405a65ae7656296cfc4c6810cfa825c` |
| 38 | `theorem` | [smul_set_sdiff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-sdiff--aa6c11d779231fc3cfe4ee5c.md) | 248 | `result-track:aa6c11d779231fc3cfe4ee5c20c80b1e76b8c81e61eecbe0f3e1d9616382dcf6` |
| 39 | `theorem` | [smul_set_symmDiff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-symmdiff--14b05cec284142ab9eb968de.md) | 253 | `result-track:14b05cec284142ab9eb968de120889ca1655d848c1dbf5071856a12cd462453b` |
| 40 | `theorem` | [smul_set_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-univ--c96c2284b04a4fcfd72037cd.md) | 257 | `result-track:c96c2284b04a4fcfd72037cd35472eb2a9da7c7665cd7f3e5348bb15f3edb0ef` |
| 41 | `theorem` | [smul_set_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-eq-univ--bd5734fb505d450f4209bcfb.md) | 261 | `result-track:bd5734fb505d450f4209bcfb5407f916b16b79f596e8fc953d1f4c5154e8c294` |
| 42 | `theorem` | [smul_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-univ--acac0ffab467af29f7f70c3e.md) | 265 | `result-track:acac0ffab467af29f7f70c3e19de2522c784b8de07dd659641d18bac9b432645` |
| 43 | `theorem` | [smul_set_compl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-set-compl--f54278cea67a60ffd68aa63a.md) | 270 | `result-track:f54278cea67a60ffd68aa63a6e3a20ea2cbfc0a5fa879097d0aebfd935c8e87f` |
| 44 | `theorem` | [smul_inter_nonempty_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-inter-nonempty-iff--628402026d81bf3e5af2756e.md) | 274 | `result-track:628402026d81bf3e5af2756e90a4f234bc541bd326dec4e9322171d6018bd636` |
| 45 | `theorem` | [smul_inter_nonempty_iff'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-inter-nonempty-iff--4edef8055d3cc92c29e00edc.md) | 284 | `result-track:4edef8055d3cc92c29e00edc955b5947774b0e78e41d0baf03b26abf8474b8d6` |
| 46 | `theorem` | [op_smul_inter_nonempty_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/op-smul-inter-nonempty-iff--7a79d852ca8c0ed2f777afc1.md) | 289 | `result-track:7a79d852ca8c0ed2f777afc1f6491a1c23e927734f687a5bc4c960d88da60473` |
| 47 | `theorem` | [iUnion_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/iunion-inv-smul--7b0cb347514c523fde4e569b.md) | 300 | `result-track:7b0cb347514c523fde4e569b90f1bb28407cadecdf2cf64f36aa297eceb0eed6` |
| 48 | `theorem` | [iUnion_smul_eq_ofPred_exists](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/iunion-smul-eq-ofpred-exists--504cabb2161cd4b68aa13345.md) | 304 | `result-track:504cabb2161cd4b68aa13345897f5044769e4bd5ce7a45c90ab93c8d035d47af` |
| 49 | `lemma` | [inv_smul_set_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/inv-smul-set-distrib--72220351587ef0d5fbee418a.md) | 314 | `result-track:72220351587ef0d5fbee418a0cf8164d34c198950946c13b3aa4b6df6761e4cf` |
| 50 | `lemma` | [inv_op_smul_set_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/inv-op-smul-set-distrib--83d66e98508e8c1f802ed82f.md) | 318 | `result-track:83d66e98508e8c1f802ed82f0967a7c211f017bf6e0f8c61f7979ad47ac6f287` |
| 51 | `lemma` | [disjoint_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/disjoint-smul-set--9c738880e005e2df36d502c8.md) | 322 | `result-track:9c738880e005e2df36d502c872cddc1ae7801994dd378e8975a6c2a0ec7edbf1` |
| 52 | `lemma` | [disjoint_smul_set_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/disjoint-smul-set-left--60e82717f19e61281d20dbf7.md) | 326 | `result-track:60e82717f19e61281d20dbf7693d049715c2e02e6812c19828215585a8eb2899` |
| 53 | `lemma` | [disjoint_smul_set_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/disjoint-smul-set-right--312f43eb4c6c325b8615e90b.md) | 330 | `result-track:312f43eb4c6c325b8615e90b2475564223ed3e9f8055d882f6e9f209118921df` |
| 54 | `lemma` | [pairwise_disjoint_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/pairwise-disjoint-smul-iff--f2560933553f99f27dc69c4d.md) | 333 | `result-track:f2560933553f99f27dc69c4dfa0f3ac73ed1cec06146a6b28b7d1a1ab2c44c30` |
| 55 | `lemma` | [exists_smul_inter_smul_subset_smul_inv_mul_inter_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/exists-smul-inter-smul-subset-smul-inv-mul-inter-inv-mul--8a1a4e2e745801402bcbc9e6.md) | 350 | `result-track:8a1a4e2e745801402bcbc9e67a444f09e1992266f1ac0925fda8630fe16d2f14` |
| 56 | `lemma` | [mem_invOf_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/mem-invof-smul-set--7ce705ea61138561690f0105.md) | 365 | `result-track:7ce705ea61138561690f0105ed259c72c97eaa2bfdc1f266b3b1f18329e0d8e4` |
| 57 | `lemma` | [smul_graphOn](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-graphon--0fd46e9e15a83c21b395120f.md) | 374 | `result-track:0fd46e9e15a83c21b395120f30752fb1a9f719a2a54aec467aacd3f7851fd2ee` |
| 58 | `lemma` | [smul_graphOn_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-graphon-univ--73463b1040390ed33b9ee13d.md) | 381 | `result-track:73463b1040390ed33b9ee13d2beb181e163f7d64e73553fbc732935f1c31c0af` |
| 59 | `lemma` | [smul_div_smul_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4351a62ff18946bb61a8fd91e0a112161335b216cd38a24d5c228d9e50406007.lean/declarations/smul-div-smul-comm--72eaf1ac597c2b3e23772817.md) | 389 | `result-track:72eaf1ac597c2b3e237728178b1e33214183d32bb4f8ef887e1d6dc3d9e2974a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
