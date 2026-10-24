# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dd52bc3eb19f5d8d766a0bd5ee772820e05a982",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dd52bc3eb19f5d8d766a0bd5ee772820e05a982`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/instance--db6cb1a07ae7d2471a29ab36.md) | 62 | `declaration-track:db6cb1a07ae7d2471a29ab3662270bee39af82eb0d4c18e588e597300bb15a53` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/instance--24901c0422bb077f24bb9a0f.md) | 70 | `declaration-track:24901c0422bb077f24bb9a0fcff4289d40c9282f04464a9adc6947f53e591d4c` |
| 3 | `lemma` | [smul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-eq-mul--62ba96ae0cbf9b6ee6f60e30.md) | 74 | `result-track:62ba96ae0cbf9b6ee6f60e30d318891eea3203782acb982a86827c461eae6f6f` |
| 4 | `lemma` | [op_smul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/op-smul-eq-mul--acf0ff6784a2be68df85ca18.md) | 77 | `result-track:acf0ff6784a2be68df85ca182524004c0218bffa3b8d08e6500a4d4b9cab12a0` |
| 5 | `lemma` | [MulOpposite.smul_eq_mul_unop](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/mulopposite-smul-eq-mul-unop--fee34ba5d7d84814b1688581.md) | 80 | `result-track:fee34ba5d7d84814b1688581eda285123dd36c64af70b9d5c6e41410ccf34f40` |
| 6 | `class` | [AddAction](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/addaction--aa194e2104e83c9b22936e87.md) | 83 | `declaration-track:aa194e2104e83c9b22936e872b6b2a370f55110a3df8094c75389b6c851f52be` |
| 7 | `class` | [MulAction](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/mulaction--1faca80f13aa402011004f2a.md) | 91 | `declaration-track:1faca80f13aa402011004f2ac031911c197cb501d85b7284f3717cb866b8e384` |
| 8 | `class` | [VAddCommClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/vaddcommclass--4460c1a95674e47064fdf1e6.md) | 100 | `declaration-track:4460c1a95674e47064fdf1e632b953028fbcaf992707b383c4b3937a136cf058` |
| 9 | `class` | [SMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smulcommclass--85a85f3cef300e69f609e488.md) | 106 | `declaration-track:85a85f3cef300e69f609e48876e6ccdbef5fab3d0f05904bd445aa90953f7714` |
| 10 | `lemma` | [SMulCommClass.symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smulcommclass-symm--c17491dd989f514aab0bb94b.md) | 135 | `result-track:c17491dd989f514aab0bb94bc16939dd45c2298fc4d652e4f5cc7cc3de497e18` |
| 11 | `lemma` | [Function.Injective.smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/function-injective-smulcommclass--085ddb522aeaebafb96e3f58.md) | 143 | `result-track:085ddb522aeaebafb96e3f589c3ed51ce34c82c90ee1891d3ae8edb2b20d24a0` |
| 12 | `lemma` | [Function.Surjective.smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/function-surjective-smulcommclass--a365df6145cb553f15f90a35.md) | 149 | `result-track:a365df6145cb553f15f90a35e69effa30aec6ed2a2d074e0ac6818d87f2af8ca` |
| 13 | `instance` | [smulCommClass_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smulcommclass-self--b93a8403ba597ec6af132081.md) | 155 | `declaration-track:b93a8403ba597ec6af132081d6a70fb29a1da087f5e9e4d0c636506bd48337a6` |
| 14 | `class` | [VAddAssocClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/vaddassocclass--7475ffe48ff1cf1b9dbfc5fd.md) | 160 | `declaration-track:7475ffe48ff1cf1b9dbfc5fd37dccb63d2ad518a53c0675341e576094d17bb59` |
| 15 | `class` | [IsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/isscalartower--19e27a6229c81bc5bb44328d.md) | 168 | `declaration-track:19e27a6229c81bc5bb44328d8f39f2731c72da1d42b7d384c1b8235fbfdd0477` |
| 16 | `lemma` | [smul_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-assoc--3e167c096db0309b7af60bf1.md) | 173 | `result-track:3e167c096db0309b7af60bf1d86b4420e1e3c2c7719e0f8ab1e70a8e8191a2ce` |
| 17 | `instance` | [Semigroup.isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/semigroup-isscalartower--ace8c86fe2330d7876b01b8a.md) | 177 | `declaration-track:ace8c86fe2330d7876b01b8a8204ec36e285d39a33c57d81776b2a43e1b8e850` |
| 18 | `class` | [IsCentralVAdd](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/iscentralvadd--e386b598a5f669369038edf2.md) | 182 | `declaration-track:e386b598a5f669369038edf29a8dfa57aad84c40e3f2f25af899b29510ca526b` |
| 19 | `class` | [IsCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/iscentralscalar--e485aae95ec5c3c4730ec18d.md) | 190 | `declaration-track:e485aae95ec5c3c4730ec18dd0397752b0f97fcc4c5857c4277dc951bb57de84` |
| 20 | `lemma` | [IsCentralScalar.unop_smul_eq_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/iscentralscalar-unop-smul-eq-smul--7065f653e02fba9ef87adf36.md) | 195 | `result-track:7065f653e02fba9ef87adf36d94ee00764b73f942183572b1775ecddf6dac577` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/instance--6cecbedf7d93087ec0e59fe1.md) | 206 | `declaration-track:6cecbedf7d93087ec0e59fe170b558b89a94a3bd5673d5278e4aac3d89015c25` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/instance--8b9d9e37888eaed4ef5018d5.md) | 211 | `declaration-track:8b9d9e37888eaed4ef5018d5c90021a38bfb530be5d93b375735ff68adfd9df4` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/instance--e28fe886238fd8be6da17a23.md) | 216 | `declaration-track:e28fe886238fd8be6da17a2313b992381b511f7b56c54df51815d7a1e4b6f9b9` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/instance--0b5c80cf1091d2d43992b48f.md) | 222 | `declaration-track:0b5c80cf1091d2d43992b48f697aa80f1fdec0dc9ca7c71e8b16b7bbb97c9dec` |
| 25 | `def` | [comp.smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/comp-smul--f71fdd41218222416a7d1198.md) | 233 | `declaration-track:f71fdd41218222416a7d1198ca8cc3837aff040a2432ecfd884d328a74473054` |
| 26 | `abbrev` | [comp](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/comp--9f43bf408519e52018b7422e.md) | 243 | `declaration-track:9f43bf408519e52018b7422e11451ed256af7aa2a45fbe5164ea308a7bdd01a5` |
| 27 | `lemma` | [comp.isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/comp-isscalartower--e1641bdc5af5fe98eb719415.md) | 259 | `result-track:e1641bdc5af5fe98eb719415c6d61129052727b4c7219c321075628eb0faf9e7` |
| 28 | `lemma` | [comp.smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/comp-smulcommclass--98e555bbbe5aee87d0309e51.md) | 270 | `result-track:98e555bbbe5aee87d0309e517e1355bc50e83b939f7147c16eed37ad82c5bfca` |
| 29 | `lemma` | [comp.smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/comp-smulcommclass--3b4cc38d15ddd79dd4288dec.md) | 281 | `result-track:3b4cc38d15ddd79dd4288dec757804eb0391e4d612a71e9491747a91dd3ef058` |
| 30 | `lemma` | [mul_smul_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/mul-smul-comm--c64b023c25634361982c8d6f.md) | 293 | `result-track:c64b023c25634361982c8d6f813eea88eb4cd9d60452f0633b549e2f161967c5` |
| 31 | `lemma` | [smul_mul_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-mul-assoc--215794284339cc4c63f2131e.md) | 298 | `result-track:215794284339cc4c63f2131ee91650f9ee0f566125d9651044e93bd60b58d0fb` |
| 32 | `lemma` | [smul_div_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-div-assoc--441715cffb6623475b08c3d4.md) | 303 | `result-track:441715cffb6623475b08c3d4b1f170d04013ee16f47c63feb292ff989caa266f` |
| 33 | `lemma` | [smul_smul_smul_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-smul-smul-comm--6a19062ef0a6d11daae87575.md) | 307 | `result-track:6a19062ef0a6d11daae87575234a0a562ab9ddf1524cd72334430fb52f709e73` |
| 34 | `lemma` | [smul_mul_smul_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-mul-smul-comm--2c8c24709ae6ce00f5205f44.md) | 314 | `result-track:2c8c24709ae6ce00f5205f4467ff7f502eadfabbad591d6111c9c7399a86b6cf` |
| 35 | `lemma` | [mul_smul_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/mul-smul-mul-comm--3a37ea3de463c21cca768aba.md) | 325 | `result-track:3a37ea3de463c21cca768aba045eafecedeb55b0514324515be878b014d8aea9` |
| 36 | `lemma` | [Commute.smul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/commute-smul-right--5a67e025bbbaa2fd3634e23d.md) | 332 | `result-track:5a67e025bbbaa2fd3634e23df3535ad544c2c5c30e50f12428bcbe2850f78400` |
| 37 | `lemma` | [Commute.smul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/commute-smul-left--a4fabd089758db12f8816bce.md) | 337 | `result-track:a4fabd089758db12f8816bcea9519796209855e1ee9abeac2134f4ac10bc0651` |
| 38 | `lemma` | [smul_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-smul--5e31e926179e5cb2583d2fe1.md) | 346 | `result-track:5e31e926179e5cb2583d2fe17e67849d4c2744c2dfaf7d1fb0a28cf5e9d3aa58` |
| 39 | `lemma` | [one_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/one-smul--88fea258b01d8930997a57fe.md) | 351 | `result-track:88fea258b01d8930997a57fe5a0bed464ac168508be45d8142995a979efa36e2` |
| 40 | `lemma` | [one_smul_eq_id](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/one-smul-eq-id--01881af4738d6cbce47b45fc.md) | 355 | `result-track:01881af4738d6cbce47b45fcc2b88d5f0df5ee83e4e999b06a6ef12028d957d3` |
| 41 | `lemma` | [comp_smul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/comp-smul-left--1fecf9df1e004bbf05f01143.md) | 359 | `result-track:1fecf9df1e004bbf05f01143148a59bcd98debf1af03e81205e4ffd5cba114f0` |
| 42 | `theorem` | [smul_iterate](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-iterate--19d0db5067d00f02ae1574e8.md) | 365 | `result-track:19d0db5067d00f02ae1574e8affc30646f922e37fa4c8f4ff6ac984ba1dffca1` |
| 43 | `lemma` | [smul_iterate_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-iterate-apply--3b88454d5b1d470173003415.md) | 370 | `result-track:3b88454d5b1d470173003415a06dde795f39b219404ae34a9309e460da0d619e` |
| 44 | `abbrev` | [Function.Injective.mulAction](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/function-injective-mulaction--dc12de370ab4ce0bf6f73e15.md) | 377 | `declaration-track:dc12de370ab4ce0bf6f73e15bf284a6c2ebb48258de12245758e4a20ce2366cd` |
| 45 | `abbrev` | [Function.Surjective.mulAction](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/function-surjective-mulaction--ea7e45901691810d40c1a283.md) | 387 | `declaration-track:ea7e45901691810d40c1a283a0641ec264969f4dd8ec62e3391694e4132cbadc` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/instance--3ebb5e6d6e2c50fbf6ddf38e.md) | 404 | `declaration-track:3ebb5e6d6e2c50fbf6ddf38ee07d3df4c209572c956168e1d6f71a8844c7e329` |
| 47 | `instance` | [IsScalarTower.left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/isscalartower-left--2a077c0a184ac8445628cb84.md) | 410 | `declaration-track:2a077c0a184ac8445628cb848073e90f531bbe7152a3e19a7ea52fe68b7f3de5` |
| 48 | `lemma` | [smul_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-pow--198ea7236c1123a0804749a1.md) | 418 | `result-track:198ea7236c1123a0804749a136350df68be7c857efd066972b803922a43eea2a` |
| 49 | `lemma` | [inv_smul_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/inv-smul-smul--292f2c7d46d6d629f6cfde4c.md) | 428 | `result-track:292f2c7d46d6d629f6cfde4cf101b0ffb0ed33e69aab7f90a4c3ebef72d73c6e` |
| 50 | `lemma` | [smul_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-inv-smul--b613c7096a43618477eeb3af.md) | 431 | `result-track:b613c7096a43618477eeb3afaf6a1ab71025b6db75355455bba2ff65e852f888` |
| 51 | `lemma` | [inv_smul_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/inv-smul-eq-iff--df09cda12c6e57b3369f9eba.md) | 433 | `result-track:df09cda12c6e57b3369f9ebab5e343464048e7a37da5dce11d77aa9709461248` |
| 52 | `lemma` | [eq_inv_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/eq-inv-smul-iff--da3ee28bf073bf63033288a4.md) | 436 | `result-track:da3ee28bf073bf63033288a4d850a593447f3b9bb6026e681af1a0acdf5d9179` |
| 53 | `lemma` | [Commute.smul_right_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/commute-smul-right-iff--fe2c897b8d3f4d27bbddcf88.md) | 442 | `result-track:fe2c897b8d3f4d27bbddcf8808f14cac40f67652cd51950bee7bcc9586122e34` |
| 54 | `lemma` | [Commute.smul_left_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/commute-smul-left-iff--2a0bf8c8a7340a53e413d849.md) | 445 | `result-track:2a0bf8c8a7340a53e413d84928bb8df2ff5cd8ccfb3bb9b19e36ebad528a0653` |
| 55 | `lemma` | [smul_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-inv--ae797116875b687079801eba.md) | 452 | `result-track:ae797116875b687079801ebaa76a3efe979a9c43310a0ce23611340073326e74` |
| 56 | `lemma` | [smul_zpow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-zpow--090ab4c94b61bf47fdebf956.md) | 455 | `result-track:090ab4c94b61bf47fdebf956d7127455c3660167b9b881a772754d9e06ad2713` |
| 57 | `lemma` | [SMulCommClass.of_commMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smulcommclass-of-commmonoid--b616523c173b7a17ad0dd7d5.md) | 461 | `result-track:b616523c173b7a17ad0dd7d5534cc26f500ba69501b41952406b9ba5ccc9872d` |
| 58 | `lemma` | [smul_one_smul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-one-smul--2ca1ba2364b7f31e5674b519.md) | 474 | `result-track:2ca1ba2364b7f31e5674b51937da91a81fd789207c833ded7d10b0e1b7c431b0` |
| 59 | `lemma` | [smul_one_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-one-mul--703c8546963e845c5beb02bf.md) | 479 | `result-track:703c8546963e845c5beb02bfa6fbf1a3b6d0aa8702e228447c6ae449f74a3321` |
| 60 | `lemma` | [mul_smul_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/mul-smul-one--599297d9db621c1d173be012.md) | 483 | `result-track:599297d9db621c1d173be0123a72635dd7e5a411e26dcf6c630b25a2d72adc3c` |
| 61 | `lemma` | [IsScalarTower.of_smul_one_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/isscalartower-of-smul-one-mul--efb7e12ba4217e19d30f45c4.md) | 487 | `result-track:efb7e12ba4217e19d30f45c4e5efa7ba6121a261f85edf59914ebfc2981f6798` |
| 62 | `lemma` | [SMulCommClass.of_mul_smul_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smulcommclass-of-mul-smul-one--29afe8cc09a20214bc417c3b.md) | 492 | `result-track:29afe8cc09a20214bc417c3b577b0ba1a3b9acf20d5c707602419bcacd69d5a2` |
| 63 | `class` | [MulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/muldistribmulaction--4fe3a2a022fa066ff16ca322.md) | 501 | `declaration-track:4fe3a2a022fa066ff16ca322410aef2d4557289e3f33d6e8ea1f4360a2ee3a80` |
| 64 | `lemma` | [smul_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/declarations/smul-mul--d149abb5cc02f4867ae25d7e.md) | 512 | `result-track:d149abb5cc02f4867ae25d7e7db4bc210081a5a777cbf175d361ff1eaeb802a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
