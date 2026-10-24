# Verification target: GRWTSK.Algebra.LinearAlgebra.End.Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13c2e5dba9670d1e6a058299e4a9e78d68f78847",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13c2e5dba9670d1e6a058299e4a9e78d68f78847`.

Source path: `GRWTSK/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Module.End](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/module-end--6b5ca5a9372744fdda3570fd.md) | 27 | `declaration-track:6b5ca5a9372744fdda3570fd54ac150ba13f43af2ea290e69b069bb1986ed400` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/instance--e10949473063af608a8bde2f.md) | 42 | `declaration-track:e10949473063af608a8bde2fc983e53e635b965c346c0da3ae8ea65c66bf14a8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/instance--71b7c0344f943ab6cb4c4b79.md) | 44 | `declaration-track:71b7c0344f943ab6cb4c4b793ce22c670a756c3a21620ef930cdcbcb8cbc1aea` |
| 4 | `theorem` | [one_eq_id](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/one-eq-id--c18224485aae63ee199d67c8.md) | 46 | `result-track:c18224485aae63ee199d67c8fa4a977a2f88b04ac910f919633878c6d190a44e` |
| 5 | `theorem` | [mul_eq_comp](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/mul-eq-comp--62f723530a96235c1546e0cd.md) | 48 | `result-track:62f723530a96235c1546e0cdcfca9f4d62df45ce731e168e097260003d43402c` |
| 6 | `theorem` | [one_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/one-apply--025b233e9c391f9ffe653e14.md) | 51 | `result-track:025b233e9c391f9ffe653e146fb9388f84382fd952e6fa58c9261da5bf31279d` |
| 7 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/mul-apply--201281a2728abb8d3ee7368f.md) | 54 | `result-track:201281a2728abb8d3ee7368f0721cba3f15f7e9dda7dd526b3afa8b39e59e0d0` |
| 8 | `theorem` | [coe_one](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/coe-one--6895c361b2b7ea1db83f738e.md) | 56 | `result-track:6895c361b2b7ea1db83f738ea9bbee4b23057685197405f412a95ee0e942f63e` |
| 9 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/coe-mul--908129cce4f5b55cf3a007c9.md) | 58 | `result-track:908129cce4f5b55cf3a007c93cf52b549fe0358b63e2226c3756741f77c24b5e` |
| 10 | `instance` | [instNontrivial](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/instnontrivial--e7f85169de0c9577398ca647.md) | 60 | `declaration-track:e7f85169de0c9577398ca6479d4ca619a38145dd8467b650e8f0f685c5a15f82` |
| 11 | `instance` | [instMonoid](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/instmonoid--0c2bece2f8e57a0db48474d5.md) | 64 | `declaration-track:0c2bece2f8e57a0db48474d5771d26bdf1bb3d50601c57846ce2a0bd28a72cf7` |
| 12 | `instance` | [instSemiring](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/instsemiring--4324b17dc6dce355f555f892.md) | 69 | `declaration-track:4324b17dc6dce355f555f89295fb668f54f55f395e50036651cf7c56c00cc803` |
| 13 | `theorem` | [natCast_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/natcast-apply--cd4ae6e6082975c28f24bf53.md) | 83 | `result-track:cd4ae6e6082975c28f24bf5339c8cacd57bd0576f3dd3c63d7e56fdce931471e` |
| 14 | `theorem` | [ofNat_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/ofnat-apply--3601436d5260bbf001e4fa04.md) | 86 | `result-track:3601436d5260bbf001e4fa048c63575e5add90bb9309db69b25ce142540e72cc` |
| 15 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/instring--33f85bd05b8042c8687f8443.md) | 89 | `declaration-track:33f85bd05b8042c8687f844334f3ce582a38d82c31973e7b9bfc080a06638719` |
| 16 | `theorem` | [intCast_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/intcast-apply--c062912955218375e687297c.md) | 96 | `result-track:c062912955218375e687297c6e4027d867e8274c5a3d0309ee6ae1af255c41a0` |
| 17 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/instisscalartower--bc41a3a348b88876efb10a82.md) | 103 | `declaration-track:bc41a3a348b88876efb10a820d962879ef9fc13f1920b4c9c03a705dc3a490ab` |
| 18 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/instsmulcommclass--225eac38be1ccfc8129195ab.md) | 107 | `declaration-track:225eac38be1ccfc8129195ab5ed1650f4edbdaf1d618c2a2b7e58390e8ea4853` |
| 19 | `instance` | [instSMulCommClass'](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/instsmulcommclass--6cb98f0bfb26b5e9eb1bc6d5.md) | 111 | `declaration-track:6cb98f0bfb26b5e9eb1bc6d5c91ef9072315cf1c445a673bf79d840ace64ec15` |
| 20 | `theorem` | [isUnit_apply_inv_apply_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/isunit-apply-inv-apply-of-isunit--bf5b0833fb10b23415302695.md) | 115 | `result-track:bf5b0833fb10b23415302695661e05f95bff367dec934efa8b6cf07f1d83075a` |
| 21 | `theorem` | [isUnit_inv_apply_apply_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/isunit-inv-apply-apply-of-isunit--c0c230877c4096e7aa25eaa9.md) | 122 | `result-track:c0c230877c4096e7aa25eaa914f0b32e26e0c676919813d8c520602bbdc04ebe` |
| 22 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/coe-pow--a647fc36f94b5252559acba5.md) | 129 | `result-track:a647fc36f94b5252559acba526157012b5c430e9d6829b84085d179d8143dd07` |
| 23 | `theorem` | [pow_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/pow-apply--386e4502fcb000d7afabbd1a.md) | 131 | `result-track:386e4502fcb000d7afabbd1a1495c91afd07f56d4d3be772a1ee2208f5a7af4a` |
| 24 | `theorem` | [pow_map_zero_of_le](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/pow-map-zero-of-le--39b0eef854d3bbfc9c6ee24d.md) | 133 | `result-track:39b0eef854d3bbfc9c6ee24d176aef2c57e0cf3bcdaa6bb1cc16358de95e1aba` |
| 25 | `theorem` | [commute_pow_left_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/commute-pow-left-of-commute--5894e3448a02a9ab442d7b8c.md) | 137 | `result-track:5894e3448a02a9ab442d7b8c7b47983ab3cfd1e067a2c79fcc651788b3e39541` |
| 26 | `theorem` | [id_pow](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/id-pow--01c2542e68fd549653608e50.md) | 147 | `result-track:01c2542e68fd549653608e500c229e680ddbfdc4a728b08ca7ec2d1939a9c2ca` |
| 27 | `theorem` | [iterate_succ](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/iterate-succ--7dafae4c714eedb5def65b0d.md) | 152 | `result-track:7dafae4c714eedb5def65b0dae195e8384bdc474f875deef18fe207067f39647` |
| 28 | `theorem` | [iterate_surjective](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/iterate-surjective--1d59137c0762521951a67af0.md) | 154 | `result-track:1d59137c0762521951a67af0d8a4922d7ef54f24ce8000e6710ba58bb0de642b` |
| 29 | `theorem` | [iterate_injective](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/iterate-injective--81e9f2022502a15928747671.md) | 160 | `result-track:81e9f2022502a15928747671911da3e3ce88762ef16f38de81ed8ce7dc59759b` |
| 30 | `theorem` | [iterate_bijective](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/iterate-bijective--c0e1335a6d5b78032819dda5.md) | 166 | `result-track:c0e1335a6d5b78032819dda52f3eb51c54960003222c8b5ddbed96d0c0095fcd` |
| 31 | `theorem` | [injective_of_iterate_injective](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/injective-of-iterate-injective--dd3d8c30f55798f1aab05bc4.md) | 172 | `result-track:dd3d8c30f55798f1aab05bc4e365cdd77d0b37d4ddfd6141e5090ad3be14a02d` |
| 32 | `theorem` | [surjective_of_iterate_surjective](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/surjective-of-iterate-surjective--859b8e67d7b2d13e8fac3468.md) | 177 | `result-track:859b8e67d7b2d13e8fac3468c63021ffa464eda73270f02e38e9893afca60261` |
| 33 | `instance` | [applyModule](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/applymodule--c6e60ab7c0744d9be373fdcb.md) | 190 | `declaration-track:c6e60ab7c0744d9be373fdcb5b992b3be85c948e75ce08c2fdf64269a44a6e04` |
| 34 | `theorem` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/smul-def--e7918d2f5c281d9179baee0e.md) | 200 | `result-track:e7918d2f5c281d9179baee0e89404749553e0599a4f7b678e2a3edd9511785b6` |
| 35 | `instance` | [apply_faithfulSMul](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/apply-faithfulsmul--e96844830be11a2f27e7c214.md) | 204 | `declaration-track:e96844830be11a2f27e7c2146e3e0ccbdf0f621640b8eaa9f06e3ed234e8dc28` |
| 36 | `instance` | [apply_smulCommClass](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/apply-smulcommclass--f536fa7f961d0e6fa3f0d81e.md) | 207 | `declaration-track:f536fa7f961d0e6fa3f0d81ef12669e6bd4419d0eb6066dfb46d94620fa0e9c9` |
| 37 | `instance` | [apply_smulCommClass'](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/apply-smulcommclass--f8c0e68f3f1c00d8b11ac447.md) | 211 | `declaration-track:f8c0e68f3f1c00d8b11ac447ae6ed0f4e447a9a1c49afbb630867c3c1e998f78` |
| 38 | `instance` | [apply_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/apply-isscalartower--8145c171e5b9b93da834a853.md) | 215 | `declaration-track:8145c171e5b9b93da834a85356b7ee6bac9b857398ae7cc569c0537817a50e8c` |
| 39 | `def` | [toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/tolinearmap--842cb1dd689286c7f4d20da8.md) | 233 | `declaration-track:842cb1dd689286c7f4d20da899eed10770be6a3cae2308de246ab4ee73a16171` |
| 40 | `def` | [toModuleEnd](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/tomoduleend--4fe878e1eab8faa43f000dd6.md) | 242 | `declaration-track:4fe878e1eab8faa43f000dd6ddf3d2fe5513fef360517e8205ec20a10a70a2e0` |
| 41 | `def` | [Module.toModuleEnd](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/module-tomoduleend--6e4c088ea7e38b37c4738cc2.md) | 258 | `declaration-track:6e4c088ea7e38b37c4738cc2336673c691aa713902127da3c52ae1055b1a8fcc` |
| 42 | `def` | [RingEquiv.moduleEndSelf](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/ringequiv-moduleendself--ab86f09f235f9e8ff5a9f9cd.md) | 267 | `declaration-track:ab86f09f235f9e8ff5a9f9cdd97f6bca9889dc5f84b319138e94dafb69c33b8d` |
| 43 | `def` | [RingEquiv.moduleEndSelfOp](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/ringequiv-moduleendselfop--38014ce5b03d94782e078196.md) | 277 | `declaration-track:38014ce5b03d94782e078196aedf3a1481ec4500ce5ec254eb0df9b73f6d0193` |
| 44 | `theorem` | [Module.End.natCast_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/module-end-natcast-def--d1df0f04c53b859c96cfa6e1.md) | 287 | `result-track:d1df0f04c53b859c96cfa6e1da09b8df79512e4462adcafee270d794acd6f116` |
| 45 | `theorem` | [Module.End.intCast_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/module-end-intcast-def--71b7d8c1c4675eccb20e3ca0.md) | 291 | `result-track:71b7d8c1c4675eccb20e3ca0ec400451d06cf4476cf3a9074ccf9489c3fb43c4` |
| 46 | `def` | [smulRight](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/smulright--1099ebe9b4490743b8d79b1d.md) | 308 | `declaration-track:1099ebe9b4490743b8d79b1dde94561b94e815851d821504ae173d2fb88259d1` |
| 47 | `theorem` | [coe_smulRight](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/coe-smulright--ab51c5c445c2f0942c5bd978.md) | 314 | `result-track:ab51c5c445c2f0942c5bd9780b4cac63eec1adc8364bd347e03e083fb2856bab` |
| 48 | `theorem` | [smulRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/smulright-apply--73ad1bb68dd6dde34c1580a8.md) | 317 | `result-track:73ad1bb68dd6dde34c1580a8e81063fb12e7689260700222b6d0ced724aac45e` |
| 49 | `lemma` | [smulRight_zero](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/smulright-zero--fe5d652a9674ae384bf07b6a.md) | 321 | `result-track:fe5d652a9674ae384bf07b6a1c71e0fe3a45860742239f23c0acaba2b5a87b4c` |
| 50 | `lemma` | [zero_smulRight](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/zero-smulright--7cf6f8b6db86de36c0c7a863.md) | 324 | `result-track:7cf6f8b6db86de36c0c7a863cf5ffd5563325165f9638689fdef848023b9f4a0` |
| 51 | `lemma` | [smulRight_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/smulright-apply-eq-zero-iff--f21b4abee571b1257958236f.md) | 327 | `result-track:f21b4abee571b1257958236f4cd3580696764579615ec66d5a84c7b3c4351dc3` |
| 52 | `def` | [applyₗ'](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/apply--3d69b51b5eb071dec2386512.md) | 351 | `declaration-track:3d69b51b5eb071dec2386512fd10f434428e5f4bae712fb3c80a5bc9b9c25cf7` |
| 53 | `def` | [compRight](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/compright--463bb282583831d1d7873383.md) | 369 | `declaration-track:463bb282583831d1d787338349e2d2b717cb5bb3333832a3a5d79f5074998303` |
| 54 | `theorem` | [compRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/compright-apply--6c4c3aef72012067fe8ad4bb.md) | 375 | `result-track:6c4c3aef72012067fe8ad4bb00df3edb0de8d97fa4bb8c170d11302d2f0b5860` |
| 55 | `def` | [applyₗ](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/apply--479e636d2bb21696bdd7dd3d.md) | 383 | `declaration-track:479e636d2bb21696bdd7dd3d3878f5b97a9f9570d819d0322721a5f7c144f599` |
| 56 | `def` | [smulRightₗ](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/smulright--b292002b5ce17679dc52d3db.md) | 391 | `declaration-track:b292002b5ce17679dc52d3dba730ab4db7f9be6263270102b67ddaf0a170b333` |
| 57 | `theorem` | [smulRightₗ_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/smulright-apply--06d9f27494e67514533f3229.md) | 408 | `result-track:06d9f27494e67514533f32293d1b4d8dc505dd56aa4cacedc8f1c153674d44cd` |
| 58 | `lemma` | [commute_id_left](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/commute-id-left--4712152dbbda22b989903f1f.md) | 420 | `result-track:4712152dbbda22b989903f1f82b11573423bbdd1d318420b42315629b4534428` |
| 59 | `lemma` | [commute_id_right](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantec1ed81296b7af48e942da8a9237ee1818c1030a3ee0b854e4f383f16da829fc.lean/declarations/commute-id-right--12dadfde5f0ce3823729f45e.md) | 422 | `result-track:12dadfde5f0ce3823729f45eb58727fedc6f4c8bd19c30e243ecc154919bf515` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
