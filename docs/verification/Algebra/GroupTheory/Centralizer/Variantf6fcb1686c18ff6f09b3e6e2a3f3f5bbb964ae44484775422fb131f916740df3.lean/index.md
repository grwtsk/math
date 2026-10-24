# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d69eedbbaa6aea3acbc9778d6e1be02643b802a3",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d69eedbbaa6aea3acbc9778d6e1be02643b802a3`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean.json)

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
| 1 | `lemma` | [Subgroup.Centralizer.toConjAct_smul_mem_cycleFactorsFinset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/subgroup-centralizer-toconjact-smul-mem-cyclefactorsfinset--ef83bf1dcf7419ea310b19c5.md) | 124 | `result-track:ef83bf1dcf7419ea310b19c54bf30a18d2691de9e6aa336848b21871d3a9738e` |
| 2 | `def` | [Subgroup.Centralizer.cycleFactorsFinset_mulAction](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/subgroup-centralizer-cyclefactorsfinset-mulaction--532941b1e13dafbf55a91c21.md) | 140 | `declaration-track:532941b1e13dafbf55a91c217f3bf4da036cd98ea8afac9d67f14853575b7775` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/instance--7d7877b2668155e5e0a2c1b3.md) | 155 | `declaration-track:7d7877b2668155e5e0a2c1b33391652e5b23a645af78d8ad9e043255f7cd67c5` |
| 4 | `def` | [toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/topermhom--0e156fb3f11280d561fb74eb.md) | 160 | `declaration-track:0e156fb3f11280d561fb74ebe2927cb3bcbf225f5d884a0f6dac73cdc3c54a76` |
| 5 | `theorem` | [centralizer_smul_def](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/centralizer-smul-def--057a74baa2c515cd600cfbce.md) | 162 | `result-track:057a74baa2c515cd600cfbce48361d6c279f87a6d65b1d048e59ad1bfe83d6f5` |
| 6 | `theorem` | [val_centralizer_smul](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/val-centralizer-smul--3d0d4baf39310628d4b488a4.md) | 168 | `result-track:3d0d4baf39310628d4b488a4241509803e4fbbeaceb69758169bb9eb9b68cd03` |
| 7 | `theorem` | [toPermHom_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/topermhom-apply--e80c5902eb648dc4a2c33f74.md) | 172 | `result-track:e80c5902eb648dc4a2c33f7474904a6b070e14e6017a6f5d29969a6048a3eb4b` |
| 8 | `theorem` | [coe_toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/coe-topermhom--1ed0a85ddf9253a2427528b0.md) | 175 | `result-track:1ed0a85ddf9253a2427528b00ec9811b3cc94d71a615d87c4c9434100fbbeac5` |
| 9 | `def` | [range_toPermHom'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/range-topermhom--420ff1acd6dd18e61e8d7308.md) | 181 | `declaration-track:420ff1acd6dd18e61e8d73088df5e50bace86a558b31e6a91acf1b8fd8bfa128` |
| 10 | `theorem` | [mem_range_toPermHom'_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/mem-range-topermhom-iff--7a7b39ac22c368ead8134fec.md) | 196 | `result-track:7a7b39ac22c368ead8134fec6df2a78df92c0998703a1b849bf1b45a79562494` |
| 11 | `theorem` | [mem_ker_toPermHom_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/mem-ker-topermhom-iff--5ca251e13de853c286445c05.md) | 204 | `result-track:5ca251e13de853c286445c059ec039670021c6f394efe10d8eb6d736021f9c0e` |
| 12 | `structure` | [Basis](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/basis--18b2b8fd2f75329bb24a10df.md) | 215 | `declaration-track:18b2b8fd2f75329bb24a10dfa5060b99883223df08bccaceeee7dc1c994c5463` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/instance--3fcb998de8cfb7e027c060e9.md) | 222 | `declaration-track:3fcb998de8cfb7e027c060e963e021238100e53a75d0a20e39f7e5099d88692b` |
| 14 | `theorem` | [nonempty](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/nonempty--55a9ee488c0368fdba04e022.md) | 228 | `result-track:55a9ee488c0368fdba04e0225505abf92caed9fd5fce0be39a6cd1a9d8321671` |
| 15 | `theorem` | [mem_support_self](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/mem-support-self--6d1fc3e7237de622361e10a3.md) | 235 | `result-track:6d1fc3e7237de622361e10a3417093104a82d92a379b40adb1f1036a249f722d` |
| 16 | `theorem` | [injective](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/injective--922acb840999403cf2630257.md) | 238 | `result-track:922acb840999403cf26302571b50c487c2a729e7098df922575e689b3a2cb015` |
| 17 | `theorem` | [cycleOf_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/cycleof-eq--6c8668aaa32aab33075d5c16.md) | 247 | `result-track:6c8668aaa32aab33075d5c16f698bb2d3e17e2610bbe2edd7de70f227ac442c0` |
| 18 | `theorem` | [sameCycle](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/samecycle--95731edc8c62b18395fd0b4d.md) | 250 | `result-track:95731edc8c62b18395fd0b4d778fb5a3e6e686dcef1c38f839ad37b8011c1046` |
| 19 | `def` | [ofPermHomFun](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhomfun--205420f0a19ba8ebb1fe1fdc.md) | 257 | `declaration-track:205420f0a19ba8ebb1fe1fdc0e306198d059efd6c9d49d27afc6bbaecb38032b` |
| 20 | `theorem` | [mem_fixedPoints_or_exists_zpow_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/mem-fixedpoints-or-exists-zpow-eq--f7669d53467a7951eac7946e.md) | 264 | `result-track:f7669d53467a7951eac7946e3504200fe50233282d4493f4fc49d8d043f174a2` |
| 21 | `theorem` | [ofPermHomFun_apply_of_cycleOf_mem](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhomfun-apply-of-cycleof-mem--50cebb350aba048189ed77c7.md) | 275 | `result-track:50cebb350aba048189ed77c796113863cb593f56c643cd38a29e41ca5d7c53bf` |
| 22 | `theorem` | [ofPermHomFun_apply_of_mem_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhomfun-apply-of-mem-fixedpoints--f557708c6bb2127b51433410.md) | 297 | `result-track:f557708c6bb2127b51433410e87dd529fc9cec216574162d81cb29b4d78d8280` |
| 23 | `theorem` | [ofPermHomFun_apply_mem_support_cycle_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhomfun-apply-mem-support-cycle-iff--a91b35993213e686a2fa5bb7.md) | 303 | `result-track:a91b35993213e686a2fa5bb7119451ab3c2ffb1411c0621c552bacee5364293e` |
| 24 | `theorem` | [ofPermHomFun_commute_zpow_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhomfun-commute-zpow-apply--6090be1dfb10852f56979de4.md) | 329 | `result-track:6090be1dfb10852f56979de4b966032ea48fc71ebaa94e79b8ff975d401e81bb` |
| 25 | `theorem` | [ofPermHomFun_mul](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhomfun-mul--d293b3adf04c069f6cb53815.md) | 342 | `result-track:d293b3adf04c069f6cb538154954de5facc5858e2900201056fcb7e7838b6d9c` |
| 26 | `theorem` | [ofPermHomFun_one](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhomfun-one--e8384126ff7a7bd3bd372a83.md) | 352 | `result-track:e8384126ff7a7bd3bd372a83e4d646ab798b6daaa7191e81e00469cdfc0c4ce8` |
| 27 | `def` | [ofPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhom--c0a96f51a30abeb9949bd7f4.md) | 360 | `declaration-track:c0a96f51a30abeb9949bd7f42fa851380bb7d1ebc439a647331997a685a4b0c5` |
| 28 | `theorem` | [ofPermHom_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhom-apply--775eda9852a8bbbea66db831.md) | 369 | `result-track:775eda9852a8bbbea66db831691db17351d47c19ecc764f07b69945b9965a6d9` |
| 29 | `theorem` | [ofPermHom_support](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhom-support--1351d11d9013e725c6f285a5.md) | 371 | `result-track:1351d11d9013e725c6f285a5d217610b6183cd9a18d3850bab3c1b75f1a11be7` |
| 30 | `theorem` | [card_ofPermHom_support](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/card-ofpermhom-support--76aacc7ad0763f69d473b80f.md) | 395 | `result-track:76aacc7ad0763f69d473b80fce937050a0ecfccaf30b9d0ec87f94db95894ae3` |
| 31 | `theorem` | [ofPermHom_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/ofpermhom-mem-centralizer--ec0db4705fd2e929e4918086.md) | 402 | `result-track:ec0db4705fd2e929e49180864081673c0a90795972492fee0ba2fef9f7577c1c` |
| 32 | `def` | [toCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/tocentralizer--b3ee0e2627da86ced01dcf28.md) | 412 | `declaration-track:b3ee0e2627da86ced01dcf28ce1318b34bf7a9b6314a032fdba38946f3ac4e6c` |
| 33 | `theorem` | [toCentralizer_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/tocentralizer-apply--97b5448678d69fb8ff4c7a5f.md) | 418 | `result-track:97b5448678d69fb8ff4c7a5f7c645e9c3fb40ba4077ea871793b7f090df8b15d` |
| 34 | `theorem` | [toCentralizer_equivariant](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/tocentralizer-equivariant--a7bb60b470451c6babee05ff.md) | 420 | `result-track:a7bb60b470451c6babee05ff1021b7a62cbfd4ab9b1800027c8adee6cf92e15f` |
| 35 | `theorem` | [toPermHom_apply_toCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/topermhom-apply-tocentralizer--74ae38e16ac47e1a651928fc.md) | 436 | `result-track:74ae38e16ac47e1a651928fc2d6dd317761d779903460449f4a98db308a29d64` |
| 36 | `theorem` | [mem_range_toPermHom_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/mem-range-topermhom-iff--03e822e3e36506efdf10f947.md) | 448 | `result-track:03e822e3e36506efdf10f947d2da184779d0117837261cdfe1b6f35f6732177d` |
| 37 | `theorem` | [mem_range_toPermHom_iff'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/mem-range-topermhom-iff--2e85458d285799736630d175.md) | 458 | `result-track:2e85458d285799736630d175705861344d0c03e341d530d0437cd24522c3da42` |
| 38 | `theorem` | [range_toPermHom_eq_range_toPermHom'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/range-topermhom-eq-range-topermhom--cdc5fba9b6e1b92fb991b2bb.md) | 465 | `result-track:cdc5fba9b6e1b92fb991b2bb85cb5ecee68a3108f65f422f3f8cb5ab30606122` |
| 39 | `theorem` | [nat_card_range_toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/nat-card-range-topermhom--5e918ac0116e4bbc9276efb2.md) | 470 | `result-track:5e918ac0116e4bbc9276efb25b6e3a6d0ae40f5d8f230cdfb094add12623c8da` |
| 40 | `def` | [kerParam](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/kerparam--9d194053407467013becb2e4.md) | 495 | `declaration-track:9d194053407467013becb2e4062e80c60966b2906eef9dcbb7cad6be83a2b54a` |
| 41 | `theorem` | [kerParam_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/kerparam-apply--2be9deffcfa2bd824dc3041d.md) | 501 | `result-track:2be9deffcfa2bd824dc3041d7e782d1b7c6a4255fba9e5f90b12155ed879aba7` |
| 42 | `theorem` | [kerParam_injective](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/kerparam-injective--b0818085828069152b2c5173.md) | 530 | `result-track:b0818085828069152b2c51739dd79437f909899b2f36109b74fcaf2d4662cc2e` |
| 43 | `theorem` | [kerParam_range_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/kerparam-range-eq--7371e5cd4fe9b677d6ca6335.md) | 550 | `result-track:7371e5cd4fe9b677d6ca6335151c997efdf0198bc44c8ae79fd5c0dc8cefe69d` |
| 44 | `theorem` | [kerParam_range_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/kerparam-range-le-centralizer--2fe6747915b364fceab1f556.md) | 585 | `result-track:2fe6747915b364fceab1f55608f4df880e13590e04da08a2d75736e3d10c0e70` |
| 45 | `theorem` | [kerParam_range_card](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/kerparam-range-card--16f2a87ca3befcf9dd647e25.md) | 590 | `result-track:16f2a87ca3befcf9dd647e25fd14463f493cf20d8081d370f976f7995780e9de` |
| 46 | `theorem` | [sign_kerParam_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/sign-kerparam-apply-apply--fb27f24216deb34bff05f221.md) | 610 | `result-track:fb27f24216deb34bff05f221a156539bb35a4af071ad906d8ea671e001c87664` |
| 47 | `theorem` | [cycleType_kerParam_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/cycletype-kerparam-apply-apply--8392593c92a5bd4d538c195a.md) | 618 | `result-track:8392593c92a5bd4d538c195adeb62f939e45c894602b47de2934fcf8e8b66b84` |
| 48 | `theorem` | [nat_card_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/nat-card-centralizer--55cf0c26702335583068b9e9.md) | 644 | `result-track:55cf0c26702335583068b9e97b681278f1776ddf8c673fa99a9021705b8b6860` |
| 49 | `theorem` | [card_isConj_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/card-isconj-mul-eq--ae4be7b4d9e2bb9dd780f51c.md) | 651 | `result-track:ae4be7b4d9e2bb9dd780f51c57975b990bdf6c3fa4dd43bd762df3bc8648c7d0` |
| 50 | `theorem` | [card_isConj_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/card-isconj-eq--53864cbbb6209d50f7ef6ec9.md) | 666 | `result-track:53864cbbb6209d50f7ef6ec94bfd63fa37fd024b97162cc7865f2d0661853ad4` |
| 51 | `theorem` | [card_of_cycleType_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/card-of-cycletype-eq-zero-iff--ffd5153b0f6e07842fe1d20a.md) | 680 | `result-track:ffd5153b0f6e07842fe1d20a42b470b800e0160f8ee2ede11b7f42ad7110c5f8` |
| 52 | `theorem` | [card_of_cycleType_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/card-of-cycletype-mul-eq--a5d2dab6e145c94e04674596.md) | 687 | `result-track:a5d2dab6e145c94e04674596122cc7a7fd32f05f65842ecf5bebbfaa960ff5ed` |
| 53 | `theorem` | [card_of_cycleType](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/card-of-cycletype--9a82256de4e936cbe2ba3869.md) | 702 | `result-track:9a82256de4e936cbe2ba3869caf7d8df28511a640552c31d54336858eee8114c` |
| 54 | `lemma` | [card_of_cycleType_singleton](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/declarations/card-of-cycletype-singleton--9dca1aa7866ed7dca3c775a5.md) | 721 | `result-track:9dca1aa7866ed7dca3c775a5ed7dbe5f501a80514a1244b5ab76afc15a8058ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
