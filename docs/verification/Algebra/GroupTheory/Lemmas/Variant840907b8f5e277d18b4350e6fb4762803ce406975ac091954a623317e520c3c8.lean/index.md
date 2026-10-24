# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c09ec846e10e42650083fe01cdd3d7eba3eae90a",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c09ec846e10e42650083fe01cdd3d7eba3eae90a`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Instances` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Torsion` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Piecewise` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.range_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/set-range-one--53a1bf56bf8dd4275c5224d9.md) | 31 | `result-track:53a1bf56bf8dd4275c5224d9374529c4964c78eab7c7bcf0f5fb5e584931f81e` |
| 2 | `theorem` | [Set.preimage_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/set-preimage-one--9b7912cfb4cc0d5bc741c46d.md) | 35 | `result-track:9b7912cfb4cc0d5bc741c46d7dbb5ad11fec7a12a7a71ef6f82becbb492c8c86` |
| 3 | `instance` | [instIsMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/instismultorsionfree--ce678474207a41b87801d8af.md) | 41 | `declaration-track:ce678474207a41b87801d8afbf538b97a017d1461e422d4eb0bf2186efed6738` |
| 4 | `lemma` | [one_mono](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/one-mono--91e11e360f598d6431d050a5.md) | 47 | `result-track:91e11e360f598d6431d050a54d6f1ea19ec0322c4593c7a743d26834b79ab4a8` |
| 5 | `lemma` | [one_anti](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/one-anti--0d4d0df2bf6b3a2acf118659.md) | 48 | `result-track:0d4d0df2bf6b3a2acf1186598d0ef504a9ca1ac1777a1f0f5040d0f382fef9d4` |
| 6 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/coe-mul--242f9d0808ee74716fe1ba68.md) | 55 | `result-track:242f9d0808ee74716fe1ba689af77d7a918c3b0d1f3fa56f4d18f4cc339820be` |
| 7 | `def` | [Pi.mulHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulhom--8a1d6f651d10d85f5193d862.md) | 67 | `declaration-track:8a1d6f651d10d85f5193d8621e4854206a71e71194dbbb3fb45837aa8759a03e` |
| 8 | `theorem` | [Pi.mulHom_injective](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulhom-injective--4cbf589a559181510517f241.md) | 72 | `result-track:4cbf589a559181510517f2418201828bd01949bb8a6e670e512deb222a5b71dd` |
| 9 | `def` | [Pi.monoidHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-monoidhom--ba5d9f74bec90dfe702dc3b9.md) | 82 | `declaration-track:ba5d9f74bec90dfe702dc3b91f5423abbe97f4398a85731ff618570949a1c4c2` |
| 10 | `theorem` | [Pi.monoidHom_injective](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-monoidhom-injective--a1d1ea832471df6b390339f2.md) | 89 | `result-track:a1d1ea832471df6b390339f2d1df135267ec16cbc9760d06a90a666dc4b00cf2` |
| 11 | `def` | [Pi.evalMulHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-evalmulhom--2ce4692cd2145cc9f175cbe8.md) | 103 | `declaration-track:2ce4692cd2145cc9f175cbe814d49b45af0cef659c083ef7d78f51d4157fa628` |
| 12 | `def` | [Pi.constMulHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-constmulhom--a8af8b978b017538d60e2483.md) | 109 | `declaration-track:a8af8b978b017538d60e2483d2b90891a0815079b0461e721210f670a7795032` |
| 13 | `def` | [MulHom.coeFn](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/mulhom-coefn--4cd70135ade578113d1c4f66.md) | 120 | `declaration-track:4cd70135ade578113d1c4f6606ab61a22ac478026164ae3d35cb68c0502078aa` |
| 14 | `def` | [MulHom.compLeft](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/mulhom-compleft--257f42e897fff75ddceda403.md) | 129 | `declaration-track:257f42e897fff75ddceda403d2bdc56d125c5f79f85c2a1a46e112108913cb43` |
| 15 | `def` | [Pi.evalMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-evalmonoidhom--26ae880bd4bdc8893741ab4b.md) | 147 | `declaration-track:26ae880bd4bdc8893741ab4b20bd7c2d0daa4ed914574d485a911e77844fd49a` |
| 16 | `def` | [Pi.constMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-constmonoidhom--ce7b317a953f5de26a1c4334.md) | 154 | `declaration-track:ce7b317a953f5de26a1c4334f300b09a75ea5348663a33783f09c8d6efafa8e3` |
| 17 | `def` | [MonoidHom.coeFn](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/monoidhom-coefn--bef1da70ff2cf53fd3cbc3b3.md) | 166 | `declaration-track:bef1da70ff2cf53fd3cbc3b31c47a9940fd47d11b251870a2ccc8fd0c0bad3ba` |
| 18 | `def` | [MonoidHom.compLeft](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/monoidhom-compleft--b5e9605072816fa7ec867341.md) | 176 | `declaration-track:b5e9605072816fa7ec8673416285434d84a9dd6c7df76d1abccb6a2e48c72988` |
| 19 | `def` | [OneHom.mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/onehom-mulsingle--fabb911ff37ed58e424401a3.md) | 201 | `declaration-track:fabb911ff37ed58e424401a31cadbb146a59330d6f137101bd4ab0bea3d8f86c` |
| 20 | `theorem` | [OneHom.mulSingle_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/onehom-mulsingle-apply--c7c4b99bc412e60ff3394e2f.md) | 206 | `result-track:c7c4b99bc412e60ff3394e2f66d281b8c8b7c7b07a501e876eeb5b3799ecb500` |
| 21 | `def` | [MonoidHom.mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/monoidhom-mulsingle--11ea1ba9fdc283dd44fb0efa.md) | 218 | `declaration-track:11ea1ba9fdc283dd44fb0efa6fc2e64a62d75868a01756a325a0d6183fafd9f2` |
| 22 | `theorem` | [MonoidHom.mulSingle_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/monoidhom-mulsingle-apply--e7ff704a6d4baf86ffa9f3fd.md) | 222 | `result-track:e7ff704a6d4baf86ffa9f3fd0c9dddc41e118050df4cdac4e781920ce60334f8` |
| 23 | `theorem` | [Pi.mulSingle_sup](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulsingle-sup--7ccbe45e6db61beb0a3fd729.md) | 229 | `result-track:7ccbe45e6db61beb0a3fd7295c02f5a32c8cc8a121a9392a430805c836a9df4e` |
| 24 | `theorem` | [Pi.mulSingle_inf](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulsingle-inf--5322f4e45e6d0afce99acdb4.md) | 234 | `result-track:5322f4e45e6d0afce99acdb48388de4d3609f1f3b6c1720b53dd3e4c9bb7e3c3` |
| 25 | `theorem` | [Pi.mulSingle_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulsingle-mul--e97a7452405442ae0df29cb9.md) | 239 | `result-track:e97a7452405442ae0df29cb9fbab53bf8207f19d888da09f9e7bcae583774fcb` |
| 26 | `theorem` | [Pi.mulSingle_inv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulsingle-inv--111d879b63054ae38d2db05c.md) | 244 | `result-track:111d879b63054ae38d2db05c3914c4c3c133451491b5e99cbb3073e83f28e1ff` |
| 27 | `theorem` | [Pi.mulSingle_div](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulsingle-div--d4a1f0e1c748669793c1c155.md) | 249 | `result-track:d4a1f0e1c748669793c1c155b19975f35d7ed97db7047e4dfc3b8032f19c541e` |
| 28 | `theorem` | [Pi.mulSingle_pow](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulsingle-pow--c7db3d6996434f24d4d3a873.md) | 254 | `result-track:c7db3d6996434f24d4d3a873818bd9d71b780d9b1a6cbce7c279f49976381056` |
| 29 | `theorem` | [Pi.mulSingle_zpow](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulsingle-zpow--74a8b7c43586ccbcea4fc2f7.md) | 259 | `result-track:74a8b7c43586ccbcea4fc2f770f1a231b6b0686a73b736ea87bceb8fa47a4f5e` |
| 30 | `theorem` | [Pi.mulSingle_commute](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulsingle-commute--61a90d0e0ef7dd270d271820.md) | 270 | `result-track:61a90d0e0ef7dd270d271820c6951bc032c4cf5804c77858fc94239e9cdbf075` |
| 31 | `theorem` | [Pi.mulSingle_apply_commute](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulsingle-apply-commute--1bd11931041d6d9e7f5a3800.md) | 283 | `result-track:1bd11931041d6d9e7f5a380056ab3500d5d35da1f4d17c853ea4252353fbaa95` |
| 32 | `theorem` | [Pi.update_eq_div_mul_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-update-eq-div-mul-mulsingle--f3686f281e266ba088bd9ef8.md) | 290 | `result-track:f3686f281e266ba088bd9ef806eb5d76ebb8fe3e2ae1fb9794918da3fafc4b4e` |
| 33 | `theorem` | [Pi.mulSingle_mul_mulSingle_eq_mulSingle_mul_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-mulsingle-mul-mulsingle-eq-mulsingle-mul-mulsingle--063b2da019f7f3eab51889ea.md) | 298 | `result-track:063b2da019f7f3eab51889ea29f67c7dd82e87e78db41df17f27e5a3e3c5766c` |
| 34 | `theorem` | [SemiconjBy.pi](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/semiconjby-pi--8475911bd867487a6ad89ad2.md) | 336 | `result-track:8475911bd867487a6ad89ad2707819f09ec56545a01fb07c9b8152809344eaa1` |
| 35 | `theorem` | [Pi.semiconjBy_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-semiconjby-iff--5b059a0a39d2f05b343648ba.md) | 341 | `result-track:5b059a0a39d2f05b343648ba45fbc00e95b0b1597ff64b3e9d517f966f3ed319` |
| 36 | `theorem` | [Commute.pi](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/commute-pi--b7f81860980e2a35235479f1.md) | 345 | `result-track:b7f81860980e2a35235479f1704c0aa1bb5ea657de5c85106975d97ca01735cb` |
| 37 | `theorem` | [Pi.commute_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/pi-commute-iff--134ffaaafa84f106e66b899c.md) | 348 | `result-track:134ffaaafa84f106e66b899c5c5bcdb583c488008947393c7edf4b461fd05a78` |
| 38 | `theorem` | [update_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/update-one--ab95644cd72bda68dbc4be3f.md) | 355 | `result-track:ab95644cd72bda68dbc4be3f5cd8e8da645cae3ff74e07402db4fc6b7866d975` |
| 39 | `theorem` | [update_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/update-mul--e574e5a86804f04d2ed12f0e.md) | 359 | `result-track:e574e5a86804f04d2ed12f0e476906b4485381dfbc2289e2efe1817dcff25603` |
| 40 | `theorem` | [update_inv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/update-inv--fce747fd7f1820bf97c3c5d7.md) | 364 | `result-track:fce747fd7f1820bf97c3c5d71546b248c8f8dcb627946026b9167843a1d0ea31` |
| 41 | `theorem` | [update_div](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/update-div--7e7b02026547d5a9960b04d9.md) | 369 | `result-track:7e7b02026547d5a9960b04d929c526d925a21aa2fcb965da46bf5507785bed77` |
| 42 | `theorem` | [const_eq_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/const-eq-one--90c3ae34c7fc3bc1049f65a6.md) | 376 | `result-track:90c3ae34c7fc3bc1049f65a69c3816266bb1bddd0785fe5ba96ed89702de0245` |
| 43 | `theorem` | [const_ne_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/const-ne-one--719e39cead767ddb17b28f7b.md) | 380 | `result-track:719e39cead767ddb17b28f7b8999b56204bf7ab68a47a0caff23955d0f5fe924` |
| 44 | `theorem` | [Set.piecewise_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/set-piecewise-mul--d9a130a593dca6c42cfb586d.md) | 388 | `result-track:d9a130a593dca6c42cfb586d0de89d4f8c8289b1a49b94069405aa2bb5ed18ce` |
| 45 | `theorem` | [Set.piecewise_inv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/set-piecewise-inv--313ef2ffae820ccafee51622.md) | 394 | `result-track:313ef2ffae820ccafee51622a0067b8ee0ad225ca6fdb6ede25ca59ad15bb1f5` |
| 46 | `theorem` | [Set.piecewise_div](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/set-piecewise-div--700ee3bab5afffd0d1a91b77.md) | 399 | `result-track:700ee3bab5afffd0d1a91b7754f288088eb8a51b483b63284fc9f0e4bdb7d3d7` |
| 47 | `def` | [Function.ExtendByOne.hom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/function-extendbyone-hom--8bd521d1ba0dc0e7cfa22bf7.md) | 412 | `declaration-track:8bd521d1ba0dc0e7cfa22bf7a0b1212e437cb3f8d48d11630e6cc17863bfa1d9` |
| 48 | `theorem` | [mulSingle_mono](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/mulsingle-mono--6e22abd1f3509f883f2f009d.md) | 425 | `result-track:6e22abd1f3509f883f2f009db82ec2f82452e39100da4ec15ddeb19baee43b65` |
| 49 | `theorem` | [mulSingle_strictMono](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/mulsingle-strictmono--ab5525fed7c34ac3f4498e94.md) | 429 | `result-track:ab5525fed7c34ac3f4498e94e6c951c66a8f59cccfc0f0da4494e287d3ace3da` |
| 50 | `lemma` | [mulSingle_comp_equiv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/mulsingle-comp-equiv--c25005322abaf199715f0058.md) | 433 | `result-track:c25005322abaf199715f00585d0c5a3efa7a3a569d222801c58fdc45783582f4` |
| 51 | `theorem` | [curry_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/curry-one--98d62573636d6deea9029c68.md) | 445 | `result-track:98d62573636d6deea9029c68c4b4ce091ddd7a2f41b7917ee6746d12e3e20539` |
| 52 | `theorem` | [uncurry_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/uncurry-one--ed585adcd9da97bfb06deaa1.md) | 449 | `result-track:ed585adcd9da97bfb06deaa1d1382ba641dcbbf5d8f1b900f22c9c7aa6de7945` |
| 53 | `theorem` | [curry_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/curry-mul--251532d8204ae694631edaa4.md) | 453 | `result-track:251532d8204ae694631edaa4d1479eda10d26199d0ed0cda392b5283be7e4dd3` |
| 54 | `theorem` | [uncurry_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/uncurry-mul--d033ba51b6692e2f4153dca3.md) | 458 | `result-track:d033ba51b6692e2f4153dca37f2c58980dd015bfa1e253a62eb4af5cbbd6657f` |
| 55 | `theorem` | [curry_inv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/curry-inv--bb348f48b91ccec8198e87b2.md) | 463 | `result-track:bb348f48b91ccec8198e87b278a981c992522eb584f5b1c3faa4cade98089da4` |
| 56 | `theorem` | [uncurry_inv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/uncurry-inv--156aba6ee23b308b881d6082.md) | 468 | `result-track:156aba6ee23b308b881d6082bb240c88c09ec890cde1527cd9097e936ce9bcdf` |
| 57 | `theorem` | [curry_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/curry-mulsingle--9af1c1730203b7bb9d6955c3.md) | 473 | `result-track:9af1c1730203b7bb9d6955c39c317cba254a7c74dc32803ff82ef5d2e8ed855c` |
| 58 | `theorem` | [uncurry_mulSingle_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/declarations/uncurry-mulsingle-mulsingle--dc04152c66d7d9937a861b02.md) | 479 | `result-track:dc04152c66d7d9937a861b02bf7e38713e1a54ae89d57336fc5589bb46058958` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
