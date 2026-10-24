# Verification target: GRWTSK.Algebra.RingQuot.Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56fdf476b4b90f00ae150f20a1e526a7eb20cf9e",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56fdf476b4b90f00ae150f20a1e526a7eb20cf9e`.

Source path: `GRWTSK/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--f320cbedf2ead483d961e70d.md) | 48 | `declaration-track:f320cbedf2ead483d961e70d4136dc68553a042431065fae96d5891e04b304ba` |
| 2 | `theorem` | [coe_algebraMap](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/coe-algebramap--69ff3190bc010cf1082b3e06.md) | 55 | `result-track:69ff3190bc010cf1082b3e0662f64309c4a64dad510066b7ee0dc3ac1063c058` |
| 3 | `inductive` | [Rel](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/rel--707a1fc7e17ee9a2215633e3.md) | 68 | `declaration-track:707a1fc7e17ee9a2215633e3e69a68df6102a011fe5871eff43a3745cbde5c79` |
| 4 | `theorem` | [Rel.add_right](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/rel-add-right--49b450d76478cdcf02a0c312.md) | 75 | `result-track:49b450d76478cdcf02a0c312022ca7d24bbed2b0bdca8a37ea78ac990a236d20` |
| 5 | `theorem` | [Rel.neg](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/rel-neg--2d3f2fca94071e3048440637.md) | 80 | `result-track:2d3f2fca94071e3048440637db6b10f1e64c96cce45655e106f5bdb63fd73d7c` |
| 6 | `theorem` | [Rel.sub_left](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/rel-sub-left--154cdf2c6ac93afe56ded009.md) | 84 | `result-track:154cdf2c6ac93afe56ded00935698a913a851b712767c7c7e82f0ac74d4275f5` |
| 7 | `theorem` | [Rel.sub_right](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/rel-sub-right--697977e4c24a62a486d67ad8.md) | 88 | `result-track:697977e4c24a62a486d67ad88c73f9718443f631d360ce30295120d8ed2ed556` |
| 8 | `theorem` | [Rel.smul](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/rel-smul--bd105b46524ed0c3b6584b0c.md) | 92 | `result-track:bd105b46524ed0c3b6584b0c87045dc51972c9f8738e9fa687bb91a976d48ecb` |
| 9 | `def` | [ringCon](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/ringcon--8c9041c5cc528c8b0a42d6dd.md) | 97 | `declaration-track:8c9041c5cc528c8b0a42d6dd7a7455f3d70df1a00a6954e627200d461566bdea` |
| 10 | `theorem` | [eqvGen_rel_eq](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/eqvgen-rel-eq--e28d72274d7ec8922c338386.md) | 134 | `result-track:e28d72274d7ec8922c3383869afa11d2a6482ee22c4d378d86dab1ac265bf372` |
| 11 | `structure` | [RingQuot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/ringquot--0cb41b3d61a8f57953965582.md) | 160 | `declaration-track:0cb41b3d61a8f579539655824dcc2da95e8bbe76df48aa3104f2982a2644c032` |
| 12 | `def` | [natCast](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/natcast--3640dabadaf586e234adb73e.md) | 169 | `declaration-track:3640dabadaf586e234adb73e4d9b2ddadc4ce3f52d1f741078de805fe78cb0c3` |
| 13 | `def` | [smul](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/smul--67c3f716bec8f8c8770241f9.md) | 211 | `declaration-track:67c3f716bec8f8c8770241f9fd4c0968d2e39eb5269fbb89ae835ea6abbbee90` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--68f8d2350c5d3fd23b479c5e.md) | 214 | `declaration-track:68f8d2350c5d3fd23b479c5ef10ccaff4848346129409f3d3afc6142ebb0396b` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--a6802aab6f43b817be034f79.md) | 217 | `declaration-track:a6802aab6f43b817be034f799a19b688b68ec20fd7afd14d074151b7b80430b0` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--b9fc4a687ea9d7459012aab5.md) | 220 | `declaration-track:b9fc4a687ea9d7459012aab5a4e62872c64ff5ceecffa2c7f13301bac311f8e5` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--e051dd9f034c7ad7a4e8df5d.md) | 223 | `declaration-track:e051dd9f034c7ad7a4e8df5df544b1e2d16701c5af3308acbaea07e8cbe9033a` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--b00bdfde2b951f88de2fff06.md) | 226 | `declaration-track:b00bdfde2b951f88de2fff0630eba5364103b0252c4a7d6560c1844a71ddfd51` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--0e6619f4c2358a297a9661d6.md) | 229 | `declaration-track:0e6619f4c2358a297a9661d608748979f57ca922c61c7c4be5eab71e80ba2e06` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--21647249aa7db4b3a7a7271c.md) | 232 | `declaration-track:21647249aa7db4b3a7a7271c90fb1f6af10f5151fda9209a219c1afdfb007a94` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--2e8f7f6277d8c8313bf0834b.md) | 235 | `declaration-track:2e8f7f6277d8c8313bf0834b1d85819e28455d309874349e18d3653c541d7173` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--33efa939bc5248fd41f8106e.md) | 238 | `declaration-track:33efa939bc5248fd41f8106e4a20f692fc7975e32c8038218af9c1a3c248bb36` |
| 23 | `theorem` | [zero_quot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/zero-quot--1955d9f669e2fe6cde289848.md) | 241 | `result-track:1955d9f669e2fe6cde289848a22facdddcbfb36a3ecc6a3012a94b673b78fcb0` |
| 24 | `theorem` | [one_quot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/one-quot--f4809c90b78a9d3f120bd11a.md) | 245 | `result-track:f4809c90b78a9d3f120bd11a5067dfe3f14b838c62fb01177201a75d59ea0b41` |
| 25 | `theorem` | [add_quot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/add-quot--8fe970d7c83285a9dff0d259.md) | 249 | `result-track:8fe970d7c83285a9dff0d259e4f06d65b66d0bab93e7e31c7d49793a9e188ccd` |
| 26 | `theorem` | [mul_quot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/mul-quot--7b686d108b9e3edd181f4392.md) | 255 | `result-track:7b686d108b9e3edd181f439259fbb5a0853ee0c228b27703b69b5a8d0681bf3c` |
| 27 | `theorem` | [pow_quot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/pow-quot--ab9616fbb8db367ae27bd6e1.md) | 261 | `result-track:ab9616fbb8db367ae27bd6e10d32830ceaac674f3cbf132ddbd8f85544113c2f` |
| 28 | `theorem` | [neg_quot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/neg-quot--cd4a047ec270d9d6fde7392e.md) | 266 | `result-track:cd4a047ec270d9d6fde7392e3f89626b67a066e9acf5c761680914033c5f4fc4` |
| 29 | `theorem` | [sub_quot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/sub-quot--212195de5d4acddfb6ad45d7.md) | 273 | `result-track:212195de5d4acddfb6ad45d7cd2e37f25f844a589c2d5bb0d7bc1f59d7f62ee3` |
| 30 | `theorem` | [smul_quot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/smul-quot--b08d5b0ab5524a294398cfa2.md) | 280 | `result-track:b08d5b0ab5524a294398cfa2d8a85be4ba19fdd9605cbd0dd8e4c8a1d5e1169d` |
| 31 | `instance` | [instIsScalarTowerRingQuot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instisscalartowerringquot--803750da75b074ef742a17ac.md) | 287 | `declaration-track:803750da75b074ef742a17ac0ab038a3ea22875a0cd9f771f96782ebc370ea18` |
| 32 | `instance` | [instSMulCommClassRingQuot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instsmulcommclassringquot--6ee85be5d01efedaca5b00b4.md) | 292 | `declaration-track:6ee85be5d01efedaca5b00b423b19ce68d4b451a06837bfa81fe1f49a0784cce` |
| 33 | `instance` | [instAddCommMonoid](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instaddcommmonoid--577a4571b599808c1d05cb7a.md) | 297 | `declaration-track:577a4571b599808c1d05cb7a7343f5743d712a55d978dbd409ee28c10700462e` |
| 34 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instmonoidwithzero--489d3e0abdcac6542cd1d36b.md) | 321 | `declaration-track:489d3e0abdcac6542cd1d36ba1773061259da92e5bec9745a5e0a1daee27b1b7` |
| 35 | `instance` | [instSemiring](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instsemiring--59726b7c372d7213b2527bd8.md) | 345 | `declaration-track:59726b7c372d7213b2527bd84b7e3176454d90043457977b73b60018cd4480e4` |
| 36 | `def` | [intCast](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/intcast--68ecab93b349e959d654dbb7.md) | 367 | `declaration-track:68ecab93b349e959d654dbb7253760cbd735e7c9ab50943a18cb5cf7a0178ca4` |
| 37 | `instance` | [instRing](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instring--8bfa503f7b50ab8c49fcb483.md) | 370 | `declaration-track:8bfa503f7b50ab8c49fcb483e8f6ceeeb8c28338f58b5118d30519d5b6c05398` |
| 38 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instcommsemiring--2717495804a287469cdc9843.md) | 397 | `declaration-track:2717495804a287469cdc98435f29a71dff5c5dc0d86feaeef24700b216388f68` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instance--6ae943e0525cdf7996141b82.md) | 404 | `declaration-track:6ae943e0525cdf7996141b8244d24da7f1b697e138396ecd6a8faf4d93c580c0` |
| 40 | `instance` | [instInhabitedRingQuot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instinhabitedringquot--76f0575b1b9ea4c77e33c268.md) | 407 | `declaration-track:76f0575b1b9ea4c77e33c26832940fc757f4931efac3afae0fc4558da25c322b` |
| 41 | `instance` | [instAlgebraRingQuot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/instalgebraringquot--dddaada9af85fefa1310199c.md) | 410 | `declaration-track:dddaada9af85fefa1310199c10867e43fcd354dd8fce4f8d6fb1af4c20714e23` |
| 42 | `theorem` | [mkRingHom_rel](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/mkringhom-rel--998c1c93e72f6494c888f090.md) | 434 | `result-track:998c1c93e72f6494c888f0908ae484dde36c3b92e46c02b8ff92cc9c769b3fe8` |
| 43 | `theorem` | [mkRingHom_surjective](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/mkringhom-surjective--86edbc42e1a9cb168512d6d7.md) | 438 | `result-track:86edbc42e1a9cb168512d6d7e8fcd1dbd0f3e825bfb286f834b6e031b8d1b49a` |
| 44 | `theorem` | [ringQuot_ext](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/ringquot-ext--03458c68034e1b180a1da4fe.md) | 445 | `result-track:03458c68034e1b180a1da4fe4f6cb9519fc98f5d27299a1ca3d3ea04c1088c97` |
| 45 | `theorem` | [lift_mkRingHom_apply](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/lift-mkringhom-apply--516832d386443caec752afeb.md) | 493 | `result-track:516832d386443caec752afeb35f03ba5e13546c5924253a103a39ea56c1496f0` |
| 46 | `theorem` | [lift_unique](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/lift-unique--07973f40c7c62011ac66a831.md) | 500 | `result-track:07973f40c7c62011ac66a8314ce2fc2e1791867b41d030719350c68aeb56ca8f` |
| 47 | `theorem` | [eq_lift_comp_mkRingHom](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/eq-lift-comp-mkringhom--3c366742e5e0c2220f7a1364.md) | 506 | `result-track:3c366742e5e0c2220f7a136490f62140818ae2dcdfa04abee924e74e859053c4` |
| 48 | `def` | [ringQuotToIdealQuotient](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/ringquottoidealquotient--7b9203ed027e2f30ebf4345b.md) | 524 | `declaration-track:7b9203ed027e2f30ebf4345b75d62c0a0d1eaf7b9705ea8523faa259353ee707` |
| 49 | `theorem` | [ringQuotToIdealQuotient_apply](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/ringquottoidealquotient-apply--1631b56b09589869b0082dac.md) | 531 | `result-track:1631b56b09589869b0082dac9b9f8e0a75f978700ad97375efa3fd3d0ef1ab00` |
| 50 | `def` | [idealQuotientToRingQuot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/idealquotienttoringquot--3f70cb71d63c25f5fa8207ca.md) | 538 | `declaration-track:3f70cb71d63c25f5fa8207ca3aad4525bd4712cbc3ed0b189c855b874bbf16b7` |
| 51 | `theorem` | [idealQuotientToRingQuot_apply](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/idealquotienttoringquot-apply--e205447b32e79fa9a94051d7.md) | 554 | `result-track:e205447b32e79fa9a94051d70e3d13484a9d2f2a0e8c6fab616724e8e58dcbcb` |
| 52 | `def` | [ringQuotEquivIdealQuotient](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/ringquotequividealquotient--473d4e298d8d003e3c155a52.md) | 562 | `declaration-track:473d4e298d8d003e3c155a520fae94536bdb1a19b26d454ddbbd659f8e7f5641` |
| 53 | `theorem` | [Rel.star](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/rel-star--217ab82c0bca35bfec248775.md) | 584 | `result-track:217ab82c0bca35bfec24877502953464c1597c7a164e2d70e264f14a0decc6be` |
| 54 | `theorem` | [star'_quot](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/star-quot--6122b20c37874e05299e2d62.md) | 598 | `result-track:6122b20c37874e05299e2d62bb7d17f3f8c786d1d74074b7d98ddaa8320415bd` |
| 55 | `def` | [starRing](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/starring--e1a61c00b350b568fed6ca21.md) | 603 | `declaration-track:e1a61c00b350b568fed6ca21e22e21904eaa4046fc642cc20e1b165b676228da` |
| 56 | `theorem` | [mkAlgHom_coe](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/mkalghom-coe--2bbbc78ff7a95193f067b434.md) | 631 | `result-track:2bbbc78ff7a95193f067b434c17e6d7627cd45029a0f192c24b8911df7974a92` |
| 57 | `theorem` | [mkAlgHom_rel](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/mkalghom-rel--423b0c2c38880041b77018a7.md) | 636 | `result-track:423b0c2c38880041b77018a7a6f6ea217e866081673549758cb4c7443eeef874` |
| 58 | `theorem` | [mkAlgHom_surjective](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/mkalghom-surjective--b833f0ff711320af4da85a3d.md) | 640 | `result-track:b833f0ff711320af4da85a3ddddb37e21a5adb5f87c6648ae0368aee4eca2b80` |
| 59 | `theorem` | [ringQuot_ext'](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/ringquot-ext--b37976b3b5592c649329d7dc.md) | 650 | `result-track:b37976b3b5592c649329d7dc455f12725c477df31ab835a5fb50d415f9f30568` |
| 60 | `theorem` | [liftAlgHom_mkAlgHom_apply](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/liftalghom-mkalghom-apply--1f6b15021538b6af3e353f20.md) | 700 | `result-track:1f6b15021538b6af3e353f20a9d026d4158594512c46939621db77c4a02f7836` |
| 61 | `theorem` | [liftAlgHom_unique](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/liftalghom-unique--9eb550797078768aa2336c42.md) | 707 | `result-track:9eb550797078768aa2336c4245979349d7049baa9edfa0c36e93759e7d091342` |
| 62 | `theorem` | [eq_liftAlgHom_comp_mkAlgHom](../../../../mathematics/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/declarations/eq-liftalghom-comp-mkalghom--4884d4a4f7e120023bd561f6.md) | 713 | `result-track:4884d4a4f7e120023bd561f6dcfb5a42a0b417e1c42e95cd959888f4a738b7fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
