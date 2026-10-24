# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cartesian.Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15dc796849a196504659f79f24a1050e5bfce431",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15dc796849a196504659f79f24a1050e5bfce431`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Exponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/exponentiable--70279e628922c9742f3d2153.md) | 43 | `declaration-track:70279e628922c9742f3d215307148362283b89bcbebcaec008da1269943bdaa9` |
| 2 | `abbrev` | [Exponentiable.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/exponentiable-mk--6fd36453d940b43cca5f7415.md) | 47 | `declaration-track:6fd36453d940b43cca5f7415a48f091d8f4b88580492490a1bd0f6366590d244` |
| 3 | `def` | [binaryProductExponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/binaryproductexponentiable--d4de6a019a62cf665d353f38.md) | 55 | `declaration-track:d4de6a019a62cf665d353f3836c99efca0a41e7a3b9ff3225be47619f7162414` |
| 4 | `def` | [terminalExponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/terminalexponentiable--b86332a3ee9c63eea6dd77ee.md) | 62 | `declaration-track:b86332a3ee9c63eea6dd77ee4c5334572c596d443edb3dbfc69075fe3596c004` |
| 5 | `abbrev` | [CartesianClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/cartesianclosed--f1f8dedf7c0942fc3f0d4bbe.md) | 67 | `declaration-track:f1f8dedf7c0942fc3f0d4bbe98a4857cd76169b1f4f6685cf7dbba38efe0d595` |
| 6 | `def` | [CartesianClosed.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/cartesianclosed-mk--903926c1e8ecf62592518876.md) | 72 | `declaration-track:903926c1e8ecf6259251887658d6a82636aa307c7b71314411103fc9d4d0286a` |
| 7 | `abbrev` | [exp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/exp--2858380e92a80bcedcf47fe3.md) | 78 | `declaration-track:2858380e92a80bcedcf47fe358e2caf5e92e936e9ff8e0becd506b406b9b00d1` |
| 8 | `abbrev` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/adjunction--46341af9e45ef9c564c03847.md) | 84 | `declaration-track:46341af9e45ef9c564c0384726dc872794627fb3490bb2507042057d02cd5b6e` |
| 9 | `abbrev` | [ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/ev--b28e20ca52933db3a70ba708.md) | 88 | `declaration-track:b28e20ca52933db3a70ba7087609255cbcc6f04f99f6f9f00c167e4a217365c0` |
| 10 | `abbrev` | [coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/coev--ceb6b2c90ee7d152c740378e.md) | 92 | `declaration-track:ceb6b2c90ee7d152c740378ed5ceab6081d6db31b78a48283197e77bcde816db` |
| 11 | `def` | [delabPrefunctorObjExp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/delabprefunctorobjexp--7583cf550a5de2f26072eb74.md) | 103 | `declaration-track:7583cf550a5de2f26072eb744665ccd978b6df5ed74c25bf999033ab3800bd59` |
| 12 | `theorem` | [ev_coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/ev-coev--3a455b07ec258c4077914577.md) | 123 | `result-track:3a455b07ec258c4077914577ea8279ca857ba9f859e9b376f56d72518a66fa9a` |
| 13 | `theorem` | [coev_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/coev-ev--dcd841faf264e840d12a54ad.md) | 127 | `result-track:dcd841faf264e840d12a54adc8405137d793ace4296302e0f417c785dacc6731` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/instance--69f1c79030580e1a9d97ab19.md) | 132 | `declaration-track:69f1c79030580e1a9d97ab19da532c0c5c101b05e86af87c57aae80d207a9299` |
| 15 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/curry--70ee4e03dd69127ff27ab714.md) | 141 | `declaration-track:70ee4e03dd69127ff27ab714c4c37a825e8191a46a44369c38b674e2855a8736` |
| 16 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/uncurry--b71d79fef6da65eee3ce223c.md) | 145 | `declaration-track:b71d79fef6da65eee3ce223c1f5f5afaa1ec9e63115ec0a5290ce313b878293f` |
| 17 | `theorem` | [homEquiv_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/homequiv-apply-eq--f4187b913b3395a05273bafd.md) | 148 | `result-track:f4187b913b3395a05273bafda7804ef5ea470f75b7d97f14de0fe7c633d0d93a` |
| 18 | `theorem` | [homEquiv_symm_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/homequiv-symm-apply-eq--94204cb3608ed5edc078ba9f.md) | 151 | `result-track:94204cb3608ed5edc078ba9f6275fa3750fd7a7b86aa68ba128e2c4a7f9793fc` |
| 19 | `theorem` | [curry_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/curry-natural-left--d0db6b44f1cc3d7241f66df9.md) | 156 | `result-track:d0db6b44f1cc3d7241f66df979216ea0f066b4f9b917412b42cfc75a3ffca96e` |
| 20 | `theorem` | [curry_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/curry-natural-right--d70165b10b7905d75d99e387.md) | 161 | `result-track:d70165b10b7905d75d99e387d277d8b7bef5c55a7a59d4764c79a2e048512e03` |
| 21 | `theorem` | [uncurry_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/uncurry-natural-right--05f3a068ce83b7abde2561b9.md) | 166 | `result-track:05f3a068ce83b7abde2561b945866b5a7d251fe391beff76b2117d75b81314d5` |
| 22 | `theorem` | [uncurry_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/uncurry-natural-left--8f0e20276d83ecc716a7981c.md) | 171 | `result-track:8f0e20276d83ecc716a7981c3e498d8ebeef1c24cdc809fe1a67c54b59feebf9` |
| 23 | `theorem` | [uncurry_curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/uncurry-curry--9b74169a51280243f4082cae.md) | 176 | `result-track:9b74169a51280243f4082cae6ee0997100567b2ca7ef6b1fc3484ab65cf98994` |
| 24 | `theorem` | [curry_uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/curry-uncurry--43995672dcda16662538f5b3.md) | 180 | `result-track:43995672dcda16662538f5b352e25206c12459c7f0a48fcd6250ccbea540af77` |
| 25 | `theorem` | [curry_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/curry-eq-iff--6adb21b5e99c546e665a8d15.md) | 183 | `result-track:6adb21b5e99c546e665a8d159921d5ab48b1f541aeca77e771f1f2404e552fd1` |
| 26 | `theorem` | [eq_curry_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/eq-curry-iff--437ea2b893af649521d71b14.md) | 186 | `result-track:437ea2b893af649521d71b142eeb7f0f28d56a1d90a96bca7dca5d72b472cf4f` |
| 27 | `theorem` | [uncurry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/uncurry-eq--b4160612b6eb7e4c4917df20.md) | 190 | `result-track:b4160612b6eb7e4c4917df2067d788cd2aab9e8c74da4a7937b7ca9593b3b440` |
| 28 | `theorem` | [curry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/curry-eq--c5469411dd24905c89fce9b9.md) | 193 | `result-track:c5469411dd24905c89fce9b94db1d49470d8814d59ad0ec022a548d367af1c63` |
| 29 | `theorem` | [uncurry_id_eq_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/uncurry-id-eq-ev--6bd101ab91795d144bcf25d8.md) | 196 | `result-track:6bd101ab91795d144bcf25d804f24ac2f4b68f2496f918543799f360d7663538` |
| 30 | `theorem` | [curry_id_eq_coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/curry-id-eq-coev--6f9c20b90e8067909db4232e.md) | 199 | `result-track:6f9c20b90e8067909db4232eb28596e4d7dbbbc8d6bf0f485d9d2ca08a29c6ab` |
| 31 | `theorem` | [curry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/curry-injective--6490883322cb8d4a103abe69.md) | 202 | `result-track:6490883322cb8d4a103abe6968928a5d106631fe67705ed63d8a39c8a32ae8fa` |
| 32 | `theorem` | [uncurry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/uncurry-injective--74969fbe4bdac0ad9e9f4743.md) | 205 | `result-track:74969fbe4bdac0ad9e9f4743a4f865cdcc9d0050b4cad517b79b98622fba6a27` |
| 33 | `def` | [expUnitNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/expunitnatiso--18df67651ff4eea193eccc26.md) | 214 | `declaration-track:18df67651ff4eea193eccc26b46cfb67739db0ad78d5ecb9a0cde01cdbc74bcf` |
| 34 | `def` | [expUnitIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/expunitisoself--1b9009093ed8cceb1c5bc780.md) | 219 | `declaration-track:1b9009093ed8cceb1c5bc780e0d7fbee7ab03210d6080eef06fc12f1c228dacd` |
| 35 | `def` | [internalizeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/internalizehom--545a40d626e1ee187ae7411f.md) | 223 | `declaration-track:545a40d626e1ee187ae7411fcd7882c65c4104745d141f5c24fa2aca61fac9e9` |
| 36 | `def` | [pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/pre--a7f44a432c1bd27c24ac08ee.md) | 231 | `declaration-track:a7f44a432c1bd27c24ac08eeb14c39ee140e8512228156bbcb8c4fbf0215abb3` |
| 37 | `theorem` | [prod_map_pre_app_comp_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/prod-map-pre-app-comp-ev--364c3c340918fed269a4fe08.md) | 234 | `result-track:364c3c340918fed269a4fe083d0a47c740531252bac7d748fbf5ef63c4e67c04` |
| 38 | `theorem` | [uncurry_pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/uncurry-pre--a5362bcf3d8c22790b6f4a4c.md) | 239 | `result-track:a5362bcf3d8c22790b6f4a4c4b0fb87e456bb5aef5ad744cfb4fc3b1e4bd33fd` |
| 39 | `theorem` | [coev_app_comp_pre_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/coev-app-comp-pre-app--ac7764c64d2106287482ff34.md) | 243 | `result-track:ac7764c64d2106287482ff34c32bf60edae4c03e2f95d2b766538027589bf9a7` |
| 40 | `theorem` | [pre_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/pre-id--09aa034daf76639dafc0d5d0.md) | 250 | `result-track:09aa034daf76639dafc0d5d01db9ab5f3679a15656c906b23376cfa44dc4fb25` |
| 41 | `theorem` | [pre_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/pre-map--abc97acfdd0af477ec41149c.md) | 255 | `result-track:abc97acfdd0af477ec41149ca396a6a6a8dd8f68f69ed82e9f347113654e831c` |
| 42 | `def` | [internalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/internalhom--323b15c517dec1f8818e4c5a.md) | 263 | `declaration-track:323b15c517dec1f8818e4c5a60951c98cff775c07f477dae81ce0e2b197fe56f` |
| 43 | `def` | [zeroMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/zeromul--ce004eb65536f8184e04c7a0.md) | 269 | `declaration-track:ce004eb65536f8184e04c7a068917983203c6c50f514817eceaaebe01c45c73d` |
| 44 | `def` | [mulZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/mulzero--0e0c58cfa7a0689f2156d62c.md) | 281 | `declaration-track:0e0c58cfa7a0689f2156d62c830a59d352b6a7bbd687a08460f7ecebe1f490db` |
| 45 | `def` | [powZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/powzero--ade49cf2c1b4347a2e705ec6.md) | 285 | `declaration-track:ade49cf2c1b4347a2e705ec6b85957e5883cfbac07b5677656bee24a6cfaa2e9` |
| 46 | `def` | [prodCoprodDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/prodcoproddistrib--76d6d5be763aa1cddfa7e8aa.md) | 295 | `declaration-track:76d6d5be763aa1cddfa7e8aa755b5bdcde5059890894cf8a8affe0b81902a0c8` |
| 47 | `theorem` | [strict_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/strict-initial--7236ff952b8fd560092428a9.md) | 318 | `result-track:7236ff952b8fd560092428a9c95dcfc36838e90f32a65c67196b95f4d7fbae27` |
| 48 | `instance` | [to_initial_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/to-initial-isiso--2f64108ff2c2530c02a101ce.md) | 325 | `declaration-track:2f64108ff2c2530c02a101ceaa0e22d96911f52c71ffb85c96b5829959ee6e82` |
| 49 | `theorem` | [initial_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/initial-mono--4f16ff486ad562ee60f70083.md) | 329 | `result-track:4f16ff486ad562ee60f7008369bd5bdb161757e9583b7f04363cdcf15dd741ab` |
| 50 | `instance` | [Initial.mono_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/initial-mono-to--f0cd62338a6d98c27ef7352c.md) | 335 | `declaration-track:f0cd62338a6d98c27ef7352c4724464162eace075dc46a4fa7cf92a6f0a150b9` |
| 51 | `def` | [cartesianClosedOfEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant1e2d7baa1006f0472dbb8f08ceab8832315b7c28646c275ca59c149215fc8803.lean/declarations/cartesianclosedofequiv--19c62a840527c700d33aef1a.md) | 349 | `declaration-track:19c62a840527c700d33aef1a04284b7a4a9a23f8f8518020a509995c67f76340` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
