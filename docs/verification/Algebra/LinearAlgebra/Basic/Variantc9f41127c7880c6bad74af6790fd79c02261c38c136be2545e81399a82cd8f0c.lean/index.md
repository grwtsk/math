# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1fb8da23505f21f17be9d4eb3fa064410ff8046",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1fb8da23505f21f17be9d4eb3fa064410ff8046`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Contraction` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Representation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/representation--86f9fabaabd94bc3ed89b4ec.md) | 46 | `declaration-track:86f9fabaabd94bc3ed89b4ecaa086af3467d636b093d9e807e97445f5258fad8` |
| 2 | `def` | [trivial](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/trivial--c5a9da28d1ec93a823729cc9.md) | 60 | `declaration-track:c5a9da28d1ec93a823729cc90b6b28f7ac99ce1c95357ccaa432fd8ed33be1c9` |
| 3 | `theorem` | [trivial_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/trivial-def--d5010357f84f1657b30916fa.md) | 66 | `result-track:d5010357f84f1657b30916fa830e720cab81d82f74ce68ea1c7da8d2037824b8` |
| 4 | `def` | [asAlgebraHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asalgebrahom--d2787d66aad87e0b693b9e63.md) | 81 | `declaration-track:d2787d66aad87e0b693b9e632cfbb5bb2ca477e4904f0f4abde88dbb02982665` |
| 5 | `theorem` | [asAlgebraHom_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asalgebrahom-def--21d2e36dded369b7c1c68197.md) | 85 | `result-track:21d2e36dded369b7c1c68197266c034fab62bd510077a514343aa6d279fce433` |
| 6 | `theorem` | [asAlgebraHom_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asalgebrahom-single--e7c4083b3def5db16dec68ee.md) | 90 | `result-track:e7c4083b3def5db16dec68eec80a04b73bf70afa23956b50f3cd3bd1be6705ce` |
| 7 | `theorem` | [asAlgebraHom_single_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asalgebrahom-single-one--5c944c89a182ef191115f920.md) | 94 | `result-track:5c944c89a182ef191115f9209262f2587b9c92246ffee5f21d29dc49ee1ad086` |
| 8 | `theorem` | [asAlgebraHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asalgebrahom-of--42dd829067e4d91063a1f426.md) | 97 | `result-track:42dd829067e4d91063a1f426e90699017a78402eec0596be76c42dc1bc9eea34` |
| 9 | `def` | [asModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asmodule--8fe37929edce31822fee40fe.md) | 107 | `declaration-track:8fe37929edce31822fee40febc77132f4dd55728d0c974676b0ad1eb255c4119` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/instance--a52d38b1a402411944a8d8f8.md) | 112 | `declaration-track:a52d38b1a402411944a8d8f8e863c948cd8f070763e01395f87e18693dcd11e2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/instance--fbf0f131effcfe2411891d71.md) | 114 | `declaration-track:fbf0f131effcfe2411891d713c120ec05326a4d1154d011c8ec21baaa06882fb` |
| 12 | `instance` | [asModuleModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asmodulemodule--ca3f38f4347f1c4794c22e03.md) | 120 | `declaration-track:ca3f38f4347f1c4794c22e03a3a5c936cd457aa7fc9aeaa983de7856460431d2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/instance--7ae3dec4e0f4ec222a30138c.md) | 125 | `declaration-track:7ae3dec4e0f4ec222a30138c30ab21598eaf7c2b36a734b08de0f3cab1be2d1f` |
| 14 | `def` | [asModuleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asmoduleequiv--156234c95d715c80b4898372.md) | 132 | `declaration-track:156234c95d715c80b489837249d7adedfadb8c7ab1db4e3cbff4f3d1e26fa2e1` |
| 15 | `theorem` | [asModuleEquiv_map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asmoduleequiv-map-smul--e648699a0e6529d55e6de487.md) | 137 | `result-track:e648699a0e6529d55e6de487a3c15ea9ad489e77d142c23b7fcef2506d380da3` |
| 16 | `theorem` | [asModuleEquiv_symm_map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asmoduleequiv-symm-map-smul--452082f0b3788ad15ae4b77e.md) | 143 | `result-track:452082f0b3788ad15ae4b77e278a4dec0e913ade2a8e3638ec4a2497706cfb3a` |
| 17 | `theorem` | [asModuleEquiv_symm_map_rho](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asmoduleequiv-symm-map-rho--1672a28d68f8bcc6d7898f69.md) | 150 | `result-track:1672a28d68f8bcc6d7898f6951a198227addf2f6242e371ea11ba64ae8f2bd17` |
| 18 | `def` | [ofModule'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/ofmodule--deebc508755c265f11ada5b6.md) | 165 | `declaration-track:deebc508755c265f11ada5b6ae3b1556e8e1e38adc2039c3f28b3ca383d55572` |
| 19 | `def` | [ofModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/ofmodule--8d2c075a36ef3dd0e1343d53.md) | 179 | `declaration-track:8d2c075a36ef3dd0e1343d536cff2423ba9e8f8ce3c9985a1b8c5465e4ca3309` |
| 20 | `theorem` | [ofModule_asAlgebraHom_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/ofmodule-asalgebrahom-apply-apply--80e17169cedcfce139f0c609.md) | 205 | `result-track:80e17169cedcfce139f0c60988499088b375792580eb6de0e650b0565d8fb205` |
| 21 | `theorem` | [ofModule_asModule_act](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/ofmodule-asmodule-act--d8d34835659207d0e17bf87e.md) | 222 | `result-track:d8d34835659207d0e17bf87ecd294b3163437875f8a525877d26e546a2d77e49` |
| 22 | `theorem` | [smul_ofModule_asModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/smul-ofmodule-asmodule--6d43c7e16d5a2fa94467bd91.md) | 232 | `result-track:6d43c7e16d5a2fa94467bd9151720069d761de9c30c45c32effb6a21ad124678` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/instance--667c89e44d0ba3d46cd6190b.md) | 249 | `declaration-track:667c89e44d0ba3d46cd6190b9bcadc2ee8d13e9f05e1f97f8d011ec57c0de465` |
| 24 | `def` | [ofMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/ofmulaction--4e8af405b751b20093c48dad.md) | 259 | `declaration-track:4e8af405b751b20093c48dadce1ded91ba076e802adf9da36b554dd2e5ab7d25` |
| 25 | `theorem` | [ofMulAction_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/ofmulaction-def--69f63e15a698219714a70f25.md) | 272 | `result-track:69f63e15a698219714a70f253761b796af5bd2cb381b94a197b04ab192375cc7` |
| 26 | `theorem` | [ofMulAction_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/ofmulaction-single--3e96259f99d843341ccda5ff.md) | 276 | `result-track:3e96259f99d843341ccda5ff19bd9241f5e49a75f99ec8cd44370af155461a7d` |
| 27 | `theorem` | [ofMulAction_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/ofmulaction-apply--835b4c7a1385fec4663a0bb1.md) | 290 | `result-track:835b4c7a1385fec4663a0bb1c5a4f38ab1c9830beea8d4c94666fca838e7420c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/instance--a3150905061a98c239cfc608.md) | 302 | `declaration-track:a3150905061a98c239cfc608ab0287809e16685fa25cdac739eadb630b0d5946` |
| 29 | `theorem` | [ofMulAction_self_smul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/ofmulaction-self-smul-eq-mul--0d2e59f9e999f37edc96971e.md) | 306 | `result-track:0d2e59f9e999f37edc96971e50a0d728287b871bcd9622a5048ff358eed8d00e` |
| 30 | `def` | [ofMulActionSelfAsModuleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/ofmulactionselfasmoduleequiv--17ee2f57775ba99d62da7fc3.md) | 328 | `declaration-track:17ee2f57775ba99d62da7fc39991830d96c485578a550a343531142f47081d4c` |
| 31 | `def` | [asGroupHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asgrouphom--ebdd7aa2c818ccbd433356e1.md) | 336 | `declaration-track:ebdd7aa2c818ccbd433356e103c0d6c6167ee8f38c004d023fcf1ae585c196ca` |
| 32 | `theorem` | [asGroupHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/asgrouphom-apply--3d322a73293f56ef1d8ed0b2.md) | 340 | `result-track:3d322a73293f56ef1d8ed0b2ca88cfe50a0fef61853311fe7ee5e35397e044df` |
| 33 | `def` | [tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/tprod--a04215edd0ec3e2c91feda6f.md) | 359 | `declaration-track:a04215edd0ec3e2c91feda6f4d6cf2107b8b4e00ef083cbb7ec2ccefee131349` |
| 34 | `theorem` | [tprod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/tprod-apply--afd41adc8a235d35cfba7bff.md) | 368 | `result-track:afd41adc8a235d35cfba7bff822b78bb15c05fa40142d0cee78d0b867d9f2d1a` |
| 35 | `theorem` | [smul_tprod_one_asModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/smul-tprod-one-asmodule--fce581467f6ae6a3c4462bf1.md) | 372 | `result-track:fce581467f6ae6a3c4462bf1d0d596d473a601b26c19e1805e4dc9b89c831ff2` |
| 36 | `theorem` | [smul_one_tprod_asModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/smul-one-tprod-asmodule--4f84ce4bedcddd212269df9c.md) | 384 | `result-track:4f84ce4bedcddd212269df9cfd5a84805f4e2a4db53ab7f21689663544d18afb` |
| 37 | `def` | [linHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/linhom--80dcdcbec558b268ab114f19.md) | 408 | `declaration-track:80dcdcbec558b268ab114f19b8f75758ddc96889ff9fc1aa05cf980a476d3355` |
| 38 | `theorem` | [linHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/linhom-apply--50fe0931c50c16cb99e25abc.md) | 424 | `result-track:50fe0931c50c16cb99e25abcde88a5402b993fbabb271f9fa66b460d03665253` |
| 39 | `def` | [dual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/dual--c0deb44a6dc0fbd0f6ca8a3e.md) | 431 | `declaration-track:c0deb44a6dc0fbd0f6ca8a3e0713f913926cbcb716896e4738e4ff428ad18b1d` |
| 40 | `theorem` | [dual_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/dual-apply--77e2878571f5060798b3cd64.md) | 449 | `result-track:77e2878571f5060798b3cd6473e551c470b5c9e67d848939b2f3c6e3a1d8ae15` |
| 41 | `theorem` | [dualTensorHom_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc9f41127c7880c6bad74af6790fd79c02261c38c136be2545e81399a82cd8f0c.lean/declarations/dualtensorhom-comm--625c528a89d483e3d23b98ea.md) | 459 | `result-track:625c528a89d483e3d23b98ea02de852ee26f5c582293a0b882b86039439ef43f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
