# Verification target: GRWTSK.Algebra.GroupTheory.CovariantAndContravariant.Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "960a4491f738b6f7e16acff5242462823287610d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `960a4491f738b6f7e16acff5242462823287610d`.

Source path: `GRWTSK/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Covariant](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariant--15b2e5904eb809aa16246541.md) | 79 | `declaration-track:15b2e5904eb809aa16246541f520bea2569b4b33abbf21b7ffa8360c8331612b` |
| 2 | `def` | [Contravariant](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/contravariant--de170e648b9520073a16dbe9.md) | 87 | `declaration-track:de170e648b9520073a16dbe920ef5dcb0ba09ec9689943ffd080c5775ba48dbc` |
| 3 | `class` | [CovariantClass](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariantclass--8cf62019fedabda52436db73.md) | 102 | `declaration-track:8cf62019fedabda52436db73ca5132cbbca0bf3f8da893c53710e7b3b9cfe87f` |
| 4 | `class` | [ContravariantClass](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/contravariantclass--46f620e59c07d8623106f342.md) | 120 | `declaration-track:46f620e59c07d8623106f3428a2deb193db073aba6e65987e4ed8f8a52a9a30f` |
| 5 | `theorem` | [rel_iff_cov](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/rel-iff-cov--b7211b8edffc957585067f87.md) | 127 | `result-track:b7211b8edffc957585067f87fa558adced3ed9ca84f731f31011241b535f5459` |
| 6 | `theorem` | [Covariant.flip](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariant-flip--6d6019fbc8de74f97d1f58e8.md) | 136 | `result-track:6d6019fbc8de74f97d1f58e868671ada41d6913d2cad3c80250af83577d41511` |
| 7 | `theorem` | [Contravariant.flip](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/contravariant-flip--bf31865b39f4ee4e3600697c.md) | 140 | `result-track:bf31865b39f4ee4e3600697c35971e873fb95d15b723543010c52b3dd1bfe5ab` |
| 8 | `theorem` | [act_rel_act_of_rel](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/act-rel-act-of-rel--c0d6037d6cbc20eb02d5e30e.md) | 150 | `result-track:c0d6037d6cbc20eb02d5e30eb2c5dc76a577512a8a61811b3f0cfddc375e6418` |
| 9 | `theorem` | [Group.covariant_iff_contravariant](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/group-covariant-iff-contravariant--9d41712728e2da8bc015add6.md) | 155 | `result-track:9d41712728e2da8bc015add667d511d9a5bd816858d03287ad283028d7f66f36` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/instance--4b3f05c75ec5426c5487c24d.md) | 166 | `declaration-track:4b3f05c75ec5426c5487c24df97347e1740b8b4aa9fc881fe9a211ad5fb097b3` |
| 11 | `theorem` | [Group.covariant_swap_iff_contravariant_swap](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/group-covariant-swap-iff-contravariant-swap--09c16a15459453e48b970151.md) | 171 | `result-track:09c16a15459453e48b970151d7cf36d46514681520841fb00c13c515d5d7c5d5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/instance--fa25665fa9eb5556e4d0028d.md) | 183 | `declaration-track:fa25665fa9eb5556e4d0028d3f845375d1693629f40c8784783cd6dadab37e9c` |
| 13 | `theorem` | [act_rel_of_rel_of_act_rel](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/act-rel-of-rel-of-act-rel--1b33828261148ced20bb7bf2.md) | 193 | `result-track:1b33828261148ced20bb7bf2c138b0b721214b21448a15d1741b4b34b6d8f5c0` |
| 14 | `theorem` | [rel_act_of_rel_of_rel_act](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/rel-act-of-rel-of-rel-act--62f8531c31f5e64aacc3b7e8.md) | 197 | `result-track:62f8531c31f5e64aacc3b7e8118dfb25bd5c4e3c4a0cae147ab959e432b338b6` |
| 15 | `theorem` | [act_rel_act_of_rel_of_rel](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/act-rel-act-of-rel-of-rel--e60b91586ed685888257219c.md) | 211 | `result-track:e60b91586ed685888257219cf67c0fe68da2dabe7c30fc8613936c0f1594a439` |
| 16 | `theorem` | [rel_of_act_rel_act](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/rel-of-act-rel-act--43924ff8cbdbe3fb72d197b2.md) | 221 | `result-track:43924ff8cbdbe3fb72d197b2215f66ba0e499357329588769e0aa822898359aa` |
| 17 | `theorem` | [act_rel_of_act_rel_of_rel_act_rel](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/act-rel-of-act-rel-of-rel-act-rel--f3c9e3c3051099a010daca22.md) | 230 | `result-track:f3c9e3c3051099a010daca227f31b723388d818d21597ac6fbf2915d302f9855` |
| 18 | `theorem` | [rel_act_of_act_rel_act_of_rel_act](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/rel-act-of-act-rel-act-of-rel-act--7c3818dd09d286aa396686fb.md) | 235 | `result-track:7c3818dd09d286aa396686fbf642f78d7a66256d2a6ee9ced1200eac908d71fe` |
| 19 | `theorem` | [Covariant.monotone_of_const](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariant-monotone-of-const--d957f00e668c505e993ba569.md) | 251 | `result-track:d957f00e668c505e993ba5695ac58bfeadf078dd97045b77b41247c785b211a7` |
| 20 | `theorem` | [Monotone.covariant_of_const](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/monotone-covariant-of-const--8a1add44cd19d92a1e34f5f9.md) | 257 | `result-track:8a1add44cd19d92a1e34f5f98fe675fe53c6ec820887406a4292ba8e45e086be` |
| 21 | `theorem` | [Monotone.covariant_of_const'](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/monotone-covariant-of-const--71c425df6225360ff8554845.md) | 264 | `result-track:71c425df6225360ff85548457395b5a607a91a26639f5695eac31c0ee6e42728` |
| 22 | `theorem` | [Antitone.covariant_of_const](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/antitone-covariant-of-const--d5421fc2210e7e786117290f.md) | 270 | `result-track:d5421fc2210e7e786117290fce9276648e1ee8694861f3a614c52dd95b570b4b` |
| 23 | `theorem` | [Antitone.covariant_of_const'](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/antitone-covariant-of-const--407e1fa5974640913b9480b3.md) | 276 | `result-track:407e1fa5974640913b9480b3f63a64e7625880904aabe6376f26db4712a62703` |
| 24 | `theorem` | [covariant_le_of_covariant_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariant-le-of-covariant-lt--7faeb45703f06fe86b75bb59.md) | 283 | `result-track:7faeb45703f06fe86b75bb5958b6e62b59955f7550b908b0be09449d373038c4` |
| 25 | `theorem` | [contravariant_lt_of_contravariant_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/contravariant-lt-of-contravariant-le--0a6097e6b564450bd4c4c1ce.md) | 291 | `result-track:0a6097e6b564450bd4c4c1ce0cbd6d59f085ce5c1c4cab9c753ddc790fad429e` |
| 26 | `theorem` | [covariant_le_iff_contravariant_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariant-le-iff-contravariant-lt--64039a520ff93d7d98c6fd61.md) | 297 | `result-track:64039a520ff93d7d98c6fd61b192e823609f718ad74d9801e56497665fcae159` |
| 27 | `theorem` | [covariant_lt_iff_contravariant_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariant-lt-iff-contravariant-le--a487f050b6822cc181889b18.md) | 303 | `result-track:a487f050b6822cc181889b186596e29989f4c64a637a17299989595a9abe99b3` |
| 28 | `lemma` | [flip_mul](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/flip-mul--cf073222ccee3a20c2d52b9d.md) | 312 | `result-track:cf073222ccee3a20c2d52b9db237d7ea03a0923bd33b92c6973e15f2b33515f7` |
| 29 | `theorem` | [covariant_flip_mul_iff](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariant-flip-mul-iff--8495adee8d62a0fecf63f826.md) | 316 | `result-track:8495adee8d62a0fecf63f8264a666a79e2fa790818e708a1aee642eee1ea83bf` |
| 30 | `theorem` | [contravariant_flip_mul_iff](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/contravariant-flip-mul-iff--336f977ca59cc964ad6177f5.md) | 322 | `result-track:336f977ca59cc964ad6177f58d7d421def8c961022f20c2f3c2aca01a622f46d` |
| 31 | `instance` | [contravariant_mul_lt_of_covariant_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/contravariant-mul-lt-of-covariant-mul-le--c561aa45fe5b58347189584f.md) | 328 | `declaration-track:c561aa45fe5b58347189584f577d8778648d4b00f6972581d08fcb0985907505` |
| 32 | `instance` | [covariant_mul_lt_of_contravariant_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariant-mul-lt-of-contravariant-mul-le--c73141fdc61ac935951f9a03.md) | 333 | `declaration-track:c73141fdc61ac935951f9a039f5d21ef1372a6a910cbaa6fb6746ab819752f4b` |
| 33 | `instance` | [covariant_swap_mul_le_of_covariant_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariant-swap-mul-le-of-covariant-mul-le--eb0ed9e4679f73c815f2c528.md) | 338 | `declaration-track:eb0ed9e4679f73c815f2c5280f431cd53cad54bf2e20b9a686d38546f824d684` |
| 34 | `instance` | [contravariant_swap_mul_le_of_contravariant_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/contravariant-swap-mul-le-of-contravariant-mul-le--17556c7dc4edde790cd56249.md) | 343 | `declaration-track:17556c7dc4edde790cd56249b4715e2b4b273fb69b027a1fa433c291966e64d0` |
| 35 | `instance` | [contravariant_swap_mul_lt_of_contravariant_mul_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/contravariant-swap-mul-lt-of-contravariant-mul-lt--e376f4e45730b9e367441698.md) | 348 | `declaration-track:e376f4e45730b9e3674416981162324be83f6ddb800346eaba4eb236964c1c6d` |
| 36 | `instance` | [covariant_swap_mul_lt_of_covariant_mul_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/covariant-swap-mul-lt-of-covariant-mul-lt--99785bb666d38240561ba8da.md) | 353 | `declaration-track:99785bb666d38240561ba8daa8a1f99fea6a6a8720f4131f00087b67c5427290` |
| 37 | `instance` | [LeftCancelSemigroup.covariant_mul_lt_of_covariant_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/leftcancelsemigroup-covariant-mul-lt-of-covariant-mul-le--07100d27a9a7e3dcff8c798a.md) | 358 | `declaration-track:07100d27a9a7e3dcff8c798a62cf6c9e1137af3725164e1b584601cefa37ba64` |
| 38 | `instance` | [RightCancelSemigroup.covariant_swap_mul_lt_of_covariant_swap_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/rightcancelsemigroup-covariant-swap-mul-lt-of-covariant-swap-mul-le--1423b20243b0c27f0d43ca5a.md) | 366 | `declaration-track:1423b20243b0c27f0d43ca5a9412d1a330035e67f3172ab6662152005d25df9f` |
| 39 | `instance` | [LeftCancelSemigroup.contravariant_mul_le_of_contravariant_mul_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/leftcancelsemigroup-contravariant-mul-le-of-contravariant-mul-lt--857ce2cf808ec1af8f71cb88.md) | 374 | `declaration-track:857ce2cf808ec1af8f71cb88d75c196d67966d2aa764e5213bdca253c0baa0eb` |
| 40 | `instance` | [RightCancelSemigroup.contravariant_swap_mul_le_of_contravariant_swap_mul_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/declarations/rightcancelsemigroup-contravariant-swap-mul-le-of-contravariant-swap-mul--99989954bcabdb064621d1b3.md) | 383 | `declaration-track:99989954bcabdb064621d1b3cd444b7243ddd233bfbfd4055f33ad3efbfa25ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
