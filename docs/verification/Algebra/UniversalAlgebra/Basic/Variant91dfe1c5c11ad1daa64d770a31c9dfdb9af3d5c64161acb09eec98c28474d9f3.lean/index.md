# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a89d0f191e70fe78dd0a0a0bfbf91443674663d",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a89d0f191e70fe78dd0a0a0bfbf91443674663d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Units` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Pow` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.LeastGreatest` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [MulArchimedean.comap](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/mularchimedean-comap--509a45c5b802651b5a2717f2.md) | 53 | `result-track:509a45c5b802651b5a2717f2e8708f2efbc0bfd1fdca7b184bdf13b633fcf851` |
| 2 | `instance` | [OrderDual.instMulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/orderdual-instmularchimedean--dab06d62ee7ba34e3ef9cad7.md) | 61 | `declaration-track:dab06d62ee7ba34e3ef9cad787c00ed66a6a2e06e2791f40a6dd2698956c5668` |
| 3 | `instance` | [Additive.instArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/additive-instarchimedean--37c95ff45bc33c6e102c75ae.md) | 69 | `declaration-track:37c95ff45bc33c6e102c75ae4070a560a6c89dfdbc2a98984844eff52959e92f` |
| 4 | `instance` | [Multiplicative.instMulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/multiplicative-instmularchimedean--dde0c963cd7c3088b5d8bcde.md) | 73 | `declaration-track:dde0c963cd7c3088b5d8bcde18346ccbd67baba5ef7fe41f5a34d59f1abb8d22` |
| 5 | `theorem` | [existsUnique_zpow_near_of_one_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/existsunique-zpow-near-of-one-lt--2591717aff1ac8481cd02152.md) | 85 | `result-track:2591717aff1ac8481cd021520176eb82e97983278ce084e26b0e6919aac3d090` |
| 6 | `theorem` | [existsUnique_zpow_near_of_one_lt'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/existsunique-zpow-near-of-one-lt--59d6f95706ee0b0753b8c22b.md) | 105 | `result-track:59d6f95706ee0b0753b8c22baa98d539a9617065f2ba8d1afae6849594877a70` |
| 7 | `theorem` | [existsUnique_div_zpow_mem_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/existsunique-div-zpow-mem-ico--8fb5062c1e94ebf51a9b5b6e.md) | 111 | `result-track:8fb5062c1e94ebf51a9b5b6e745a7e6b098693ce23b2c5903c2e1b70e67d6516` |
| 8 | `theorem` | [existsUnique_mul_zpow_mem_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/existsunique-mul-zpow-mem-ico--6afcd814690928b57cd3d0f2.md) | 117 | `result-track:6afcd814690928b57cd3d0f2a481958cb426b6ae85b78c7510daf8471da077ed` |
| 9 | `theorem` | [existsUnique_add_zpow_mem_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/existsunique-add-zpow-mem-ioc--a56c861b84a9a36433b4a81c.md) | 124 | `result-track:a56c861b84a9a36433b4a81cf676ce47633a584e8a2bf8f05d542f2679b5c414` |
| 10 | `theorem` | [existsUnique_sub_zpow_mem_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/existsunique-sub-zpow-mem-ioc--60a094b51a042285daf869f8.md) | 132 | `result-track:60a094b51a042285daf869f88325c5f6b1dd3732499a7cbe4a5bd91df20d4553` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/instance--2d2c09c36040bbec990a1824.md) | 144 | `declaration-track:2d2c09c36040bbec990a1824cab418d3f613f1ff9207f08e96b7fc49c717a94f` |
| 12 | `theorem` | [add_one_pow_unbounded_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/add-one-pow-unbounded-of-pos--cae7da52dd1c90e41a018c00.md) | 155 | `result-track:cae7da52dd1c90e41a018c009178a07d445bfca5047d796c34fd310465e08ba5` |
| 13 | `lemma` | [pow_unbounded_of_one_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/pow-unbounded-of-one-lt--01d76d89670e414443888d52.md) | 167 | `result-track:01d76d89670e414443888d529d57630282001f786b05a37f6447328f596896dc` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/instance--9d2a600ef26d839ea160fb5d.md) | 178 | `declaration-track:9d2a600ef26d839ea160fb5d67f1238866af18f2d40d6205e72f0d2a7ea6ec58` |
| 15 | `theorem` | [exists_floor](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-floor--31f40f9858982567d15210ed.md) | 191 | `result-track:31f40f9858982567d15210eda79c6eeea342f5c03387e60fcefea99168012dcd` |
| 16 | `theorem` | [exists_nat_pow_near](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-nat-pow-near--9dd7009bd5a380fba3ffc86c.md) | 206 | `result-track:9dd7009bd5a380fba3ffc86c23b6fa3f291f21ce3291e18844dbf331498bba0c` |
| 17 | `lemma` | [exists_nat_one_div_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-nat-one-div-lt--b94dff87d6d541f24247ad56.md) | 222 | `result-track:b94dff87d6d541f24247ad56d449bf9e6867beecd6ad53dda350511bae6e8146` |
| 18 | `theorem` | [exists_mem_Ico_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-mem-ico-zpow--40426a448a84fa7a61b17ba2.md) | 235 | `result-track:40426a448a84fa7a61b17ba2e6ea2ea0436fddfd01033f35d3085d4195cb4265` |
| 19 | `theorem` | [exists_mem_Ioc_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-mem-ioc-zpow--df4d88e78cb3a77442b54fd3.md) | 253 | `result-track:df4d88e78cb3a77442b54fd31f737a2c67c17143e0d42703e6d4daffc616f7c7` |
| 20 | `theorem` | [exists_pow_lt_of_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-pow-lt-of-lt-one--045eed191bbfa74dc514ccee.md) | 260 | `result-track:045eed191bbfa74dc514ccee93b6c0a4b98f991ce73f1b70e8413667abd6f360` |
| 21 | `theorem` | [exists_nat_pow_near_of_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-nat-pow-near-of-lt-one--c45895d00783e65677a7aca5.md) | 270 | `result-track:c45895d00783e65677a7aca54409bcb9d2ee14ec473d7cbffb6976eb0849334e` |
| 22 | `lemma` | [exists_pow_btwn_of_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-pow-btwn-of-lt-mul--b340a67ef3a94d8c2d3d9d24.md) | 280 | `result-track:b340a67ef3a94d8c2d3d9d2418d60977e9132d7cacf917257a508ee5fc5afe9b` |
| 23 | `lemma` | [exists_zpow_btwn_of_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-zpow-btwn-of-lt-mul--7ed82f12440d5ddfa04f4cd7.md) | 295 | `result-track:7ed82f12440d5ddfa04f4cd7e1c841a294e15e819fd84c22eea2c2b697b3b802` |
| 24 | `theorem` | [archimedean_iff_nat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/archimedean-iff-nat-lt--638d167404a587e55270c5a9.md) | 320 | `result-track:638d167404a587e55270c5a95ee8291b9e864e956ca1d63508e8bbb3cc496eeb` |
| 25 | `theorem` | [archimedean_iff_nat_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/archimedean-iff-nat-le--78b4c5a06754c12379f65a50.md) | 325 | `result-track:78b4c5a06754c12379f65a505cfac0cb9242f766b58380349bf628a601001947` |
| 26 | `theorem` | [archimedean_iff_int_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/archimedean-iff-int-lt--3a208c8bd16f5a09c1c4f718.md) | 331 | `result-track:3a208c8bd16f5a09c1c4f71869bfc55661a520db7fc3a0e3f873a366b5f7c75c` |
| 27 | `theorem` | [archimedean_iff_int_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/archimedean-iff-int-le--60669da68b003b2ebaa08be3.md) | 339 | `result-track:60669da68b003b2ebaa08be326b1c8e1ba4532a8686fe17bb51d5ac961de6e00` |
| 28 | `theorem` | [archimedean_iff_rat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/archimedean-iff-rat-lt--96eed0db0282e4e897ad1577.md) | 345 | `result-track:96eed0db0282e4e897ad15775b8792e14eff71e6f8b14f4e044b2c31b3c166c2` |
| 29 | `theorem` | [archimedean_iff_rat_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/archimedean-iff-rat-le--2ed5080a31bc6a7c937e37c9.md) | 352 | `result-track:2ed5080a31bc6a7c937e37c93a80a1a1181a64830b80a6afc5d3642e539bcf9a` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/instance--fad5e92473167cc560b2b6ef.md) | 358 | `declaration-track:fad5e92473167cc560b2b6ef305414a617497f9e0a5dd6f05152ae6fe16b600b` |
| 31 | `theorem` | [exists_rat_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-rat-gt--42915023969ae56545628ad7.md) | 363 | `result-track:42915023969ae56545628ad79d686416eb4c3953c4fd4daf3e787b2d4d0d5228` |
| 32 | `theorem` | [exists_rat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-rat-lt--f2680a3282bc978774abff9c.md) | 365 | `result-track:f2680a3282bc978774abff9c8f7fc8245d0722867efb78b46966d294b4bb5a5f` |
| 33 | `theorem` | [exists_div_btwn](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-div-btwn--cde518607ab00fe8ae0d8987.md) | 369 | `result-track:cde518607ab00fe8ae0d8987f8f83209d239fa45149cf7b8527cb04717200739` |
| 34 | `theorem` | [exists_rat_btwn](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-rat-btwn--a7ad87ca054fb6ade3ef7053.md) | 380 | `result-track:a7ad87ca054fb6ade3ef70531aed4263510d3eac548a2e25d0ae18a93c4ae546` |
| 35 | `theorem` | [exists_rat_mem_uIoo](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-rat-mem-uioo--b19a21831117fe5cc1c11cfa.md) | 385 | `result-track:b19a21831117fe5cc1c11cfa22b45f19f61f7352ffa8a7989b3a285778375e7c` |
| 36 | `theorem` | [exists_pow_btwn](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-pow-btwn--37c857c0cb789478c5b1aa1f.md) | 388 | `result-track:37c857c0cb789478c5b1aa1fd11d95bce21d732a2bde77592ef3e6ffbf10666c` |
| 37 | `theorem` | [exists_rat_pow_btwn](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-rat-pow-btwn--841272b2c61d34edff963d7d.md) | 415 | `result-track:841272b2c61d34edff963d7d91edf2fa5fe2de010b8c3cf0ee83b3e3e98b94c8` |
| 38 | `theorem` | [le_of_forall_rat_lt_imp_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/le-of-forall-rat-lt-imp-le--fb7f460d246441d8bace7a75.md) | 424 | `result-track:fb7f460d246441d8bace7a756f3444bd462deb6e938eae856e3e546a4be1de3d` |
| 39 | `theorem` | [le_of_forall_lt_rat_imp_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/le-of-forall-lt-rat-imp-le--28def1025e4dede65810e627.md) | 429 | `result-track:28def1025e4dede65810e62797957dd860b5ae6343532f4e952253dd2f9d2df4` |
| 40 | `theorem` | [le_iff_forall_rat_lt_imp_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/le-iff-forall-rat-lt-imp-le--a944c36900ea6740af68ac98.md) | 434 | `result-track:a944c36900ea6740af68ac98d637984020a64b66a80fa5375da7698269308644` |
| 41 | `theorem` | [le_iff_forall_lt_rat_imp_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/le-iff-forall-lt-rat-imp-le--8f603d320a93e5c2d4b446e4.md) | 437 | `result-track:8f603d320a93e5c2d4b446e45446dd7782f5f06defb03403511959451439cd2f` |
| 42 | `theorem` | [eq_of_forall_rat_lt_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/eq-of-forall-rat-lt-iff-lt--da1b5161227aa113de3d0ee8.md) | 440 | `result-track:da1b5161227aa113de3d0ee84ab075a74a977ea4e29489e5f5c1f3137f36c5e6` |
| 43 | `theorem` | [eq_of_forall_lt_rat_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/eq-of-forall-lt-rat-iff-lt--d53c2245d2fbc03c641e1aad.md) | 444 | `result-track:d53c2245d2fbc03c641e1aad0e339af940863525ee7dc064a9fd155fc695f156` |
| 44 | `theorem` | [exists_pos_rat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-pos-rat-lt--e48e785363841c95a61f0050.md) | 448 | `result-track:e48e785363841c95a61f005058ada6f89e799b1a82d0c40ed749c3567e660965` |
| 45 | `theorem` | [exists_rat_near](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/exists-rat-near--2c1dd85199fd49b45074baae.md) | 451 | `result-track:2c1dd85199fd49b45074baae49af4f394c0a54b98921a49e58f712019b5a2f5c` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/instance--fce4ec1c5fcf602cbf0e71fc.md) | 458 | `declaration-track:fce4ec1c5fcf602cbf0e71fc0043cfb9da9f0f8c9da85389148b062715f0e5f2` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/instance--8afaa0c34c360fd623ef3d32.md) | 463 | `declaration-track:8afaa0c34c360fd623ef3d32981f650aab402b901cb2021aaa3f4dcb0fe4f387` |
| 48 | `instance` | [Nonneg.instArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/nonneg-instarchimedean--2cfcac15e476f89a677c0706.md) | 470 | `declaration-track:2cfcac15e476f89a677c0706ff81b4fc8fa6e8d38ef801b12b1486fff02e8ccd` |
| 49 | `instance` | [Nonneg.instMulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/nonneg-instmularchimedean--cec475492c57636b745cf683.md) | 477 | `declaration-track:cec475492c57636b745cf68389d5d97501c57b5786e04837211b85baca2cd059` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/instance--c97fbf567f8c3e8037b1870d.md) | 482 | `declaration-track:c97fbf567f8c3e8037b1870d5c79fc13066b2978eab6c8ce3f9dd18454ec7179` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/instance--0740611606c4937c0cf506f1.md) | 483 | `declaration-track:0740611606c4937c0cf506f1357f04ae37211fd92c161397cd95b45d790be0ad` |
| 52 | `def` | [Archimedean.floorRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/archimedean-floorring--b625218c22bcfc403209d4af.md) | 488 | `declaration-track:b625218c22bcfc403209d4af24c2f49dfb01deaecef54888c97de070a2418ed1` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/instance--eec6b437d937afc0f413f165.md) | 494 | `declaration-track:eec6b437d937afc0f413f16513344a88a79a6c8e7152af6105c5f92f145510e5` |
| 54 | `instance` | [Units.instMulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/units-instmularchimedean--a1e0900304295244d6651259.md) | 501 | `declaration-track:a1e0900304295244d66512597d66da7d7959d4aca409495716b2ebc1e60e9108` |
| 55 | `instance` | [WithBot.instArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/withbot-instarchimedean--45bd6846d5154d8eda92b64a.md) | 505 | `declaration-track:45bd6846d5154d8eda92b64aff4c5af86f202dbb6ecb9fbf8d799d6bec5bafba` |
| 56 | `instance` | [WithZero.instMulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/declarations/withzero-instmularchimedean--32565f3624ae837d6f725752.md) | 516 | `declaration-track:32565f3624ae837d6f725752425c4403c59e76bb7df68148daff4af996df3ea4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
