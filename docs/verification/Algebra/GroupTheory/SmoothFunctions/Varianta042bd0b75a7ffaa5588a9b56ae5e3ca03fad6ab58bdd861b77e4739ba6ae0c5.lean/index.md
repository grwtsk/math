# Verification target: GRWTSK.Algebra.GroupTheory.SmoothFunctions.Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f5616d6e61c5aa67750f017b422887f367f9f15",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f5616d6e61c5aa67750f017b422887f367f9f15`.

Source path: `GRWTSK/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.Structures` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMul](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/instmul--53d54edf39617dc79a0c0d92.md) | 33 | `declaration-track:53d54edf39617dc79a0c0d922f51a04d04c51f0fef3667eb6eba6b6e676c63ca` |
| 2 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/coe-mul--995871481a67f23e5037cb86.md) | 40 | `result-track:995871481a67f23e5037cb86b5909f7ad9947cd8c1251e95a6f0630c2f02be8d` |
| 3 | `theorem` | [mul_comp](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/mul-comp--285a6cf760fbb792c432aefb.md) | 47 | `result-track:285a6cf760fbb792c432aefb24635bccfc0ebc768e142ecc54bb21540d62d05e` |
| 4 | `instance` | [instOne](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/instone--d9a7a529cb5cc7c09c8e79d1.md) | 54 | `declaration-track:d9a7a529cb5cc7c09c8e79d14e6cee0082d9a5c7e1845a19b40210e1b126f212` |
| 5 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/coe-one--12af36815054eb792f8a451c.md) | 61 | `result-track:12af36815054eb792f8a451cf5de177600bfff52f31fa98853a451bd4dc02d3f` |
| 6 | `instance` | [instNSMul](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/instnsmul--cda3530351668b259e2ded1e.md) | 67 | `declaration-track:cda3530351668b259e2ded1e3de35d676d2a9b92fb830b58b3ceb4b52927d4f8` |
| 7 | `instance` | [instPow](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/instpow--5ca8b41e09f747cf1975d80a.md) | 72 | `declaration-track:5ca8b41e09f747cf1975d80aec28e52c82989f261fa21b60b3f736a252177769` |
| 8 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/coe-pow--ea4d10cd8943635c44239d5a.md) | 77 | `result-track:ea4d10cd8943635c44239d5a5a834839e0367865c63d326acaabbee341b83af6` |
| 9 | `instance` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/semigroup--1250e0b057aad82bfd62a6de.md) | 92 | `declaration-track:1250e0b057aad82bfd62a6ded58d6cd66db2c3ac0e3df0eaf4cc84a1008bcd34` |
| 10 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/monoid--dde0b38daa6ed0922b17b56a.md) | 99 | `declaration-track:dde0b38daa6ed0922b17b56a24f8a33601089f475b048f90cd371c94c42e173a` |
| 11 | `def` | [coeFnMonoidHom](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/coefnmonoidhom--19d4fd18af8100d6e2269ed3.md) | 108 | `declaration-track:19d4fd18af8100d6e2269ed3532840fe0840fcb0afba36da6169a8f23fc58097` |
| 12 | `def` | [compLeftMonoidHom](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/compleftmonoidhom--59ba73d248386f7b7c230fb0.md) | 123 | `declaration-track:59ba73d248386f7b7c230fb0dcd960453d035f09905d98e189d63a0479130259` |
| 13 | `def` | [restrictMonoidHom](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/restrictmonoidhom--8024cba5b9a8b997fe5db3c7.md) | 140 | `declaration-track:8024cba5b9a8b997fe5db3c7c097443a9a402729747ee6fb7ff852fe72d45abd` |
| 14 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/commmonoid--ac3f256d579db4e7a4f83e87.md) | 151 | `declaration-track:ac3f256d579db4e7a4f83e87a9ca3df92c2e97bb6dbd684f1b213abd2026db4a` |
| 15 | `instance` | [group](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/group--8d25a18535666a9a739adb4e.md) | 158 | `declaration-track:8d25a18535666a9a739adb4e67dcc4fa48e62fdc8adde94ac9932db8eeaaf954` |
| 16 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/coe-inv--89de463b5b2a9c72077fbc75.md) | 169 | `result-track:89de463b5b2a9c72077fbc7597b9917ed52a80472001348a2088bfc20e42eb4a` |
| 17 | `theorem` | [coe_div](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/coe-div--84cf35357ddc534c847361c4.md) | 176 | `result-track:84cf35357ddc534c847361c4d3dbbe4c7a590060189c98b3c2b77380356369cd` |
| 18 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/commgroup--2b0460a48b3b29bb92abe143.md) | 183 | `declaration-track:2b0460a48b3b29bb92abe143db93c2da62ec0d59d6e17439a59926c8c6c61f32` |
| 19 | `instance` | [semiring](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/semiring--247653bc76b85f6e9af63350.md) | 201 | `declaration-track:247653bc76b85f6e9af633500f4d906711b9fdfc3df0a5da83ae9d8bc2f1e51a` |
| 20 | `instance` | [ring](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/ring--b9e8285c2f296d14599c9279.md) | 211 | `declaration-track:b9e8285c2f296d14599c927962690ed2a8589ea0ce1349442cecc40b1e9de14c` |
| 21 | `instance` | [commRing](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/commring--f7dc0b76d91a7e89108e92e4.md) | 216 | `declaration-track:f7dc0b76d91a7e89108e92e4a56cb47715d73f899c698edbf16c0c2d1b08e07a` |
| 22 | `def` | [compLeftRingHom](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/compleftringhom--d2718a6d0553e20f3ba72438.md) | 225 | `declaration-track:d2718a6d0553e20f3ba72438412c111ad42a5ddc491aabebefcc1ac293cbc47c` |
| 23 | `def` | [restrictRingHom](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/restrictringhom--4105292e42a359e0a3e0496f.md) | 238 | `declaration-track:4105292e42a359e0a3e0496f662db477a03c54f17886d936e9da4375f4d38571` |
| 24 | `def` | [coeFnRingHom](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/coefnringhom--bf1531127b63147aac5b7ff2.md) | 248 | `declaration-track:bf1531127b63147aac5b7ff24f9cd0818e624e11cd7e5e5cd8b0edbd181da870` |
| 25 | `def` | [evalRingHom](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/evalringhom--11f117820fbc40f3b6ce8fa2.md) | 255 | `declaration-track:11f117820fbc40f3b6ce8fa2f733e8b425932940c0f3a2ee1c2fe2a6ff5af244` |
| 26 | `instance` | [hasSmul](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/hassmul--0378cc36fb2180402a9f27bd.md) | 272 | `declaration-track:0378cc36fb2180402a9f27bd4c2736ad75241b394e02c5b056064fb6688abef7` |
| 27 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/coe-smul--d1207953c67b4458a777c625.md) | 278 | `result-track:d1207953c67b4458a777c625e4b6d353bec656bcf181cba7b668152520d1eab6` |
| 28 | `theorem` | [smul_comp](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/smul-comp--c0bcc860f31d03e6960a7f41.md) | 284 | `result-track:c0bcc860f31d03e6960a7f4109285297c13791eb52211adf10f9badf2786a0e0` |
| 29 | `instance` | [module](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/module--9d0a58bf091c2932841e5290.md) | 289 | `declaration-track:9d0a58bf091c2932841e52908d4ff596afd86a4723fd04e40c8912db643da85b` |
| 30 | `def` | [coeFnLinearMap](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/coefnlinearmap--3789a416d1622dcd93094e05.md) | 296 | `declaration-track:3789a416d1622dcd93094e05dcb35ce7dbdc509b00b70eb54be4177238ed3030` |
| 31 | `def` | [C](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/c--d2db8d6d48e13373d2db3b39.md) | 318 | `declaration-track:d2db8d6d48e13373d2db3b3930b392857e07599f728806a530f1765d0e79e33b` |
| 32 | `instance` | [algebra](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/algebra--cc155e8f2919c926fd9d1b38.md) | 327 | `declaration-track:cc155e8f2919c926fd9d1b3841c27871ad401f12922a88673dadc7c9a1b60f44` |
| 33 | `def` | [coeFnAlgHom](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/coefnalghom--c82a24c364c4bb67f6817639.md) | 337 | `declaration-track:c82a24c364c4bb67f6817639ad3dbbb5cb6af842ba75a9a9822d2e3fdb924ec9` |
| 34 | `instance` | [instSmul'](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/instsmul--361e9604377b15577c5a6099.md) | 358 | `declaration-track:361e9604377b15577c5a6099ae46e3a17fe16d95545165c9584417dfbe9a2fdf` |
| 35 | `theorem` | [smul_comp'](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/smul-comp--009f5a974a4dff5ff4071a61.md) | 364 | `result-track:009f5a974a4dff5ff4071a6147737a2a4fb9f582af07997740e93785d33ab6fe` |
| 36 | `instance` | [module'](../../../../../mathematics/Algebra/GroupTheory/SmoothFunctions/Varianta042bd0b75a7ffaa5588a9b56ae5e3ca03fad6ab58bdd861b77e4739ba6ae0c5.lean/declarations/module--ca2d78bec58eb6fb7eb55c3b.md) | 370 | `declaration-track:ca2d78bec58eb6fb7eb55c3b1b6d77eb75f3228452beb18c5b978a38b693aea4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
