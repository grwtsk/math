# Verification target: GRWTSK.Algebra.Ring.Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "596c7e80795a972468850fe67211c18a087215e5",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `596c7e80795a972468850fe67211c18a087215e5`.

Source path: `GRWTSK/Algebra/Ring/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GradedMonoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gnonunitalnonassocsemiring--900d93e87936dcaf16018169.md) | 92 | `declaration-track:900d93e87936dcaf160181694cbf0243a3f61b40f1f2dd58f729249373b1b7d0` |
| 2 | `class` | [GSemiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gsemiring--d4e3f657d2486b72f08cc3ca.md) | 112 | `declaration-track:d4e3f657d2486b72f08cc3ca3a99514b657335494de33573f6ea6fe95e87b4be` |
| 3 | `class` | [GCommSemiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gcommsemiring--9e5f4d29c55b5c4382c30434.md) | 123 | `declaration-track:9e5f4d29c55b5c4382c3043487477e5268789636121f2fef53c4ba59de511b68` |
| 4 | `class` | [GRing](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gring--7ccb160a9a55e619676c6d8b.md) | 128 | `declaration-track:7ccb160a9a55e619676c6d8b3f1f3c18830109a6a1b548891b93ced9cb0e6326` |
| 5 | `class` | [GCommRing](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gcommring--585115f7dc0969c69a1d7d04.md) | 141 | `declaration-track:585115f7dc0969c69a1d7d0426a991d7d7ddafaeff19994d1e6c25274dd4c79c` |
| 6 | `theorem` | [of_eq_of_gradedMonoid_eq](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/of-eq-of-gradedmonoid-eq--6d714151802b8845a4712063.md) | 146 | `result-track:6d714151802b8845a4712063e2e1112857243ea27364fee264a63ac87a2ec39f` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/instance--2a8704da32bb731d35390746.md) | 161 | `declaration-track:2a8704da32bb731d35390746a2406685deccb00e9daf27693884eea3edd399b3` |
| 8 | `def` | [gMulHom](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gmulhom--f53a043ac1318fead0b0ddd9.md) | 173 | `declaration-track:f53a043ac1318fead0b0ddd98f04dfb7730e0a9fddc3ccc03eed1c26099318c5` |
| 9 | `def` | [mulHom](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/mulhom--3bf632f1a49d98b244de20e9.md) | 183 | `declaration-track:3bf632f1a49d98b244de20e9b0860dc3e244700414bdaf7aba4bb4aea54ad911` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/instance--bb246a819218ccbe56667a9f.md) | 190 | `declaration-track:bb246a819218ccbe56667a9f2ab6a92f135b7f01cdd8473fa53ac3a5130ef5d8` |
| 11 | `theorem` | [mulHom_apply](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/mulhom-apply--a6ebde41e66d90483947ffe7.md) | 204 | `result-track:a6ebde41e66d90483947ffe72f84cb8f77a102821d9959d9e7015d1308360f98` |
| 12 | `theorem` | [mulHom_of_of](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/mulhom-of-of--5c79680e77105a3857e90689.md) | 206 | `result-track:5c79680e77105a3857e9068947df9112277cf1c1e783ae5acbb65ba7595c1cb9` |
| 13 | `theorem` | [of_mul_of](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/of-mul-of--84d9272b02ba2239164c2f56.md) | 213 | `result-track:84d9272b02ba2239164c2f5664084636ae8a8b177cf03e119fd689546c6e7980` |
| 14 | `theorem` | [one_mul](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/one-mul--119714e316bd0d7b08f713a3.md) | 226 | `result-track:119714e316bd0d7b08f713a33629de3108725b5cf72c54e7f662bf9583d42022` |
| 15 | `theorem` | [mul_one](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/mul-one--bc0f99ee2796a972f73f57d1.md) | 235 | `result-track:bc0f99ee2796a972f73f57d1b190accb7743fce5133d739423e7b7fe9256f9f8` |
| 16 | `theorem` | [mul_assoc](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/mul-assoc--3534440f007e19140b74987d.md) | 245 | `result-track:3534440f007e19140b74987d950b63d48c7ce09ef48677e2cea5e41d7f058148` |
| 17 | `instance` | [semiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/semiring--14bde778ede9072817c1eddf.md) | 262 | `declaration-track:14bde778ede9072817c1eddf1a12be6d75e4d5de17af7e58938cc6a6e84c30ab` |
| 18 | `theorem` | [ofPow](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/ofpow--ca4d286e4bccde7b6cec2a2b.md) | 280 | `result-track:ca4d286e4bccde7b6cec2a2bc06da936f9303d4d3174d4ce58bffc28e26c693a` |
| 19 | `theorem` | [ofList_dProd](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/oflist-dprod--14586ec5309609b1d0592d74.md) | 288 | `result-track:14586ec5309609b1d0592d7460f927aa40484ce5532da041684c4a633ef5f7de` |
| 20 | `theorem` | [list_prod_ofFn_of_eq_dProd](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/list-prod-offn-of-eq-dprod--322b3af383c5b3505ec28452.md) | 299 | `result-track:322b3af383c5b3505ec2845227268f0a90e908d7b99782eff03abe8c9276257b` |
| 21 | `theorem` | [mul_eq_dfinsupp_sum](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/mul-eq-dfinsupp-sum--17aa0bc4538e9f1fd6fa8173.md) | 306 | `result-track:17aa0bc4538e9f1fd6fa8173e6f91e04614991c81c6024712303862e5e946bfc` |
| 22 | `theorem` | [mul_eq_sum_support_ghas_mul](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/mul-eq-sum-support-ghas-mul--dc7e3835d74abbb6f280e14f.md) | 324 | `result-track:dc7e3835d74abbb6f280e14f44c660792dd8aa9332bc0de87873893f7b9a5a8d` |
| 23 | `theorem` | [mul_comm](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/mul-comm--e232559d3b587670c48425ed.md) | 337 | `result-track:e232559d3b587670c48425edc7a8674e528a8897c01a77ec82aeeea6bc92fa28` |
| 24 | `instance` | [commSemiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/commsemiring--3c2804ea640fabf801bee312.md) | 346 | `declaration-track:3c2804ea640fabf801bee312aa33c1479940d91cf1f3acbac7b199b88d8fb8ed` |
| 25 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/nonassocring--62e1a61f017e20f75b726ba7.md) | 362 | `declaration-track:62e1a61f017e20f75b726ba70fb26d11fcf7b9644e919a1fb103e25eced68df7` |
| 26 | `instance` | [ring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/ring--a289a01bd2b93c262310853e.md) | 379 | `declaration-track:a289a01bd2b93c262310853e6616b373594adaa0628005663ce2ded785182802` |
| 27 | `instance` | [commRing](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/commring--7109efcab15f4ba2bb70f3bc.md) | 395 | `declaration-track:7109efcab15f4ba2bb70f3bcbcb536bb99da21f6c16578088c26cb1eb3bf40d6` |
| 28 | `theorem` | [of_zero_one](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/of-zero-one--46941859ed9b1395fa35e5bf.md) | 421 | `result-track:46941859ed9b1395fa35e5bf9d1c02f9233e19cb92cf1ae3766d3b2aade5f1c9` |
| 29 | `theorem` | [of_zero_smul](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/of-zero-smul--1ae03fe6af53007318d4650c.md) | 432 | `result-track:1ae03fe6af53007318d4650ce49bf59533a356e9ce1a4f2488ec8c27226de748` |
| 30 | `theorem` | [of_zero_mul](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/of-zero-mul--c33a3d41f7f7c6a586713f6b.md) | 437 | `result-track:c33a3d41f7f7c6a586713f6be77aa041af83294f7b08464fb7fc8b148e3dc310` |
| 31 | `instance` | [GradeZero.nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gradezero-nonunitalnonassocsemiring--f7553090eb95b02556b6caaa.md) | 441 | `declaration-track:f7553090eb95b02556b6caaa724a6e0fa67b2675f5dfd1ab36f89fcf8052efea` |
| 32 | `instance` | [GradeZero.smulWithZero](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gradezero-smulwithzero--7eb9ac019db2ba9a26473ef9.md) | 446 | `declaration-track:7eb9ac019db2ba9a26473ef9cfde510c01ee47449c04cb5e964db755d209b79c` |
| 33 | `theorem` | [of_zero_pow](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/of-zero-pow--ef0a0b6efbc88028e30b2d7c.md) | 459 | `result-track:ef0a0b6efbc88028e30b2d7cb19565adb8e52cd5b3790ccb3281451e82090d20` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/instance--bd136c3238c955a7abce017a.md) | 465 | `declaration-track:bd136c3238c955a7abce017acb560f8491e276a50ed34049e2b79f57b07f1637` |
| 35 | `theorem` | [ofNatCast](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/ofnatcast--3da18785342732fec027dcf2.md) | 469 | `result-track:3da18785342732fec027dcf2e7c8a335c3d3d5a08e6ce64404d14eb2d79ed944` |
| 36 | `instance` | [GradeZero.semiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gradezero-semiring--fb493b91d7da47b569d104e3.md) | 474 | `declaration-track:fb493b91d7da47b569d104e309fa867c9d9becddc22690274df21759be0a9784` |
| 37 | `def` | [ofZeroRingHom](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/ofzeroringhom--0ef1c6453930d25810d89ae6.md) | 481 | `declaration-track:0ef1c6453930d25810d89ae6adae68d194197bedb0ce9e15a424ee1dee5a420e` |
| 38 | `instance` | [GradeZero.module](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gradezero-module--341c6180f485d9337bbc281a.md) | 490 | `declaration-track:341c6180f485d9337bbc281a5ee288ea55587e063fab000ceaa5161a0dea635d` |
| 39 | `instance` | [GradeZero.commSemiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gradezero-commsemiring--2843b844db735dec345a2c40.md) | 502 | `declaration-track:2843b844db735dec345a2c4078c52826f8fe951ed1973bc025653c2766f6bbaa` |
| 40 | `instance` | [GradeZero.nonUnitalNonAssocRing](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gradezero-nonunitalnonassocring--19c0b64f87a28b16dd569afe.md) | 515 | `declaration-track:19c0b64f87a28b16dd569afebafa932af6d5cf1dc2bb3e497db59b8421b3afb4` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/instance--a1142aa972512d851fdd420a.md) | 532 | `declaration-track:a1142aa972512d851fdd420a64fb9fca7a6d2581d1d323fdf91316eb2ad76358` |
| 42 | `theorem` | [ofIntCast](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/ofintcast--80c21507f162d3e1c1cc6b64.md) | 536 | `result-track:80c21507f162d3e1c1cc6b6401a37150375e226531804a32b3d02ccc5cb72c94` |
| 43 | `instance` | [GradeZero.ring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gradezero-ring--fca6e55d74c287e147227191.md) | 541 | `declaration-track:fca6e55d74c287e147227191bb2d5fb2f2dbb3c8f6be9370721cb37d62fda516` |
| 44 | `instance` | [GradeZero.commRing](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/gradezero-commring--a9dcf58d008285e91504ca4a.md) | 560 | `declaration-track:a9dcf58d008285e91504ca4a3fddd850c84458eda6a7c0c014a412f0194b9a20` |
| 45 | `theorem` | [ringHom_ext'](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/ringhom-ext--91e91107211bb25d5a72c9d8.md) | 587 | `result-track:91e91107211bb25d5a72c9d83c69a8458776c64d00050f4421a84352109e7a6c` |
| 46 | `theorem` | [ringHom_ext](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/ringhom-ext--ef403704481ed9aad680e150.md) | 593 | `result-track:ef403704481ed9aad680e150f8c7325f1e4880c9706d0df782ac804bcea4ac16` |
| 47 | `def` | [toSemiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/tosemiring--5442efde5aa150869c22e82e.md) | 605 | `declaration-track:5442efde5aa150869c22e82eb28626bfcec2966c5b88082d39e0ef560e2985d7` |
| 48 | `theorem` | [toSemiring_of](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/tosemiring-of--b026fdbec56b1efe972bc752.md) | 626 | `result-track:b026fdbec56b1efe972bc752494d10e491c8c2b636f386c79c437d818cc1e836` |
| 49 | `theorem` | [toSemiring_coe_addMonoidHom](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/tosemiring-coe-addmonoidhom--60eb4cd95869887a0e2ad571.md) | 632 | `result-track:60eb4cd95869887a0e2ad571747b690fc6b2d0fb7e03129d833e2891d6610c69` |
| 50 | `def` | [liftRingHom](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/liftringhom--c71700c717eae0ba94426f01.md) | 641 | `declaration-track:c71700c717eae0ba94426f01e2cc89712da6fa23577ca9a7af255bf6edf12007` |
| 51 | `instance` | [NonUnitalNonAssocSemiring.directSumGNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/nonunitalnonassocsemiring-directsumgnonunitalnonassocsemiring--a8669acede1031b01b41a0dd.md) | 679 | `declaration-track:a8669acede1031b01b41a0dd8d8b367cc30651d3d564e3df267370e73506c659` |
| 52 | `instance` | [Semiring.directSumGSemiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/semiring-directsumgsemiring--b53bad1ec575dfd0dd8fc3ab.md) | 689 | `declaration-track:b53bad1ec575dfd0dd8fc3ab31b007ddbf7029370ecde1c715a511b7536e20de` |
| 53 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/example--ed50cdf959b12362f1786406.md) | 701 | `declaration-track:ed50cdf959b12362f1786406aa92c3475b4ea1e3945d515673c0889a1a253fa6` |
| 54 | `instance` | [CommSemiring.directSumGCommSemiring](../../../../mathematics/Algebra/RingTheory/Variant797a063fc6ce810265f3ac4f49b5b1f01531b50f5f7f8a7ffff16545d234faf2.lean/declarations/commsemiring-directsumgcommsemiring--7d0adae347d356226b299e8d.md) | 707 | `declaration-track:7d0adae347d356226b299e8dd29cb0f1aaa31ae32d99a4350ff1ebfac2e145b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
