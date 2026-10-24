# Verification target: GRWTSK.Geometry.DifferentialGeometry.SmoothFunctions.Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa50aeb1bd9d06f3baac27589adf30c1791f6c46",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa50aeb1bd9d06f3baac27589adf30c1791f6c46`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.Structures` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/instmul--a8c72e6c087d7d690e4a9aed.md) | 40 | `declaration-track:a8c72e6c087d7d690e4a9aed2c94e1f0d3101d690f6394898d5950860fb0a087` |
| 2 | `theorem` | [coe_mul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/coe-mul--222b6997a0b512ebce44f0ed.md) | 45 | `result-track:222b6997a0b512ebce44f0ed1b19c3c6bef709110aeb6bdc8e24385dd7e6612c` |
| 3 | `theorem` | [mul_comp](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/mul-comp--627162a0cd2a18b2ce3a9eda.md) | 50 | `result-track:627162a0cd2a18b2ce3a9edaf1cda9efe97ac90a09f5c4cfaa46fd9d5906b1a4` |
| 4 | `instance` | [instOne](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/instone--12eee36a34fd951e218fe256.md) | 55 | `declaration-track:12eee36a34fd951e218fe256587798c40006f0845b9b1ff046f2e3d5231bd8c8` |
| 5 | `theorem` | [coe_one](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/coe-one--6f63c2559b09ea00fc4a688e.md) | 60 | `result-track:6f63c2559b09ea00fc4a688eb3b80928961ec4c8549a625cc7ddbae99360582a` |
| 6 | `instance` | [instNSMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/instnsmul--2c6b3fb0d170adb2f73fa2fd.md) | 64 | `declaration-track:2c6b3fb0d170adb2f73fa2fd48bbc1f9c8c3e48b39a238a76ca090b349660c08` |
| 7 | `instance` | [instPow](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/instpow--bc2fb3076893f2e77f6740f3.md) | 69 | `declaration-track:bc2fb3076893f2e77f6740f3a7859a82df9334d9f46b9663796381951a285172` |
| 8 | `theorem` | [coe_pow](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/coe-pow--db11f14b604418ff5a76ebca.md) | 75 | `result-track:db11f14b604418ff5a76ebcacc4f085f67b35cc447d9d1448a31c644982ccbe0` |
| 9 | `instance` | [semigroup](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/semigroup--1ce402d16b912940d18bbe45.md) | 90 | `declaration-track:1ce402d16b912940d18bbe459ded0bcd492dfbf6d15aaec430f06162dae7a0dc` |
| 10 | `instance` | [monoid](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/monoid--de3a0d153ea652a4f0dbde9e.md) | 95 | `declaration-track:de3a0d153ea652a4f0dbde9e4bd8daa90891c29fcf12967d834ac506a0ef6193` |
| 11 | `def` | [coeFnMonoidHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/coefnmonoidhom--96292a3f99366b193731aabf.md) | 102 | `declaration-track:96292a3f99366b193731aabfe3e382a35ed6bdbbf38199b556a850822f4fd806` |
| 12 | `def` | [compLeftMonoidHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/compleftmonoidhom--61f754c48ba9abd061c7440a.md) | 115 | `declaration-track:61f754c48ba9abd061c7440a12d13b1ff20e3c452e474782e0ff28ffe1c5dd19` |
| 13 | `def` | [restrictMonoidHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/restrictmonoidhom--5c105708b0aa13e87f185329.md) | 131 | `declaration-track:5c105708b0aa13e87f18532932d8924a7ae48a86b07bcade647c502d50e96125` |
| 14 | `instance` | [commMonoid](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/commmonoid--77fe9cbd2051a44aaca006aa.md) | 140 | `declaration-track:77fe9cbd2051a44aaca006aa541551491dabdaab9b6eff2b04b792ac067ce8dd` |
| 15 | `instance` | [group](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/group--37f52cb9152a7acc6ec2aa66.md) | 145 | `declaration-track:37f52cb9152a7acc6ec2aa668a086108ce67d6382c5a5721730768d050bf9390` |
| 16 | `theorem` | [coe_inv](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/coe-inv--7ad905352316856caf33a142.md) | 154 | `result-track:7ad905352316856caf33a14266db9d03e1680b372c05bb2195a52a3ef4f3d71e` |
| 17 | `theorem` | [coe_div](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/coe-div--fece9951dd3778768342e6b4.md) | 159 | `result-track:fece9951dd3778768342e6b414e971c36caee9f6db5179c62d9acafc131bd792` |
| 18 | `instance` | [commGroup](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/commgroup--107027a21c091d246926b79c.md) | 164 | `declaration-track:107027a21c091d246926b79c442ca3f2e1c676b665ec93ea3b37301b62e009e6` |
| 19 | `instance` | [semiring](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/semiring--725ee9df584baa251ce8b829.md) | 180 | `declaration-track:725ee9df584baa251ce8b829457a7b966f68dad0db6d51147bc82381e6f3ca09` |
| 20 | `instance` | [ring](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/ring--400c29e75423ef450c7a2add.md) | 189 | `declaration-track:400c29e75423ef450c7a2add1b50636f13e27c0d99ca0a9e1b98985798b809c3` |
| 21 | `instance` | [commRing](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/commring--b0796feeba10b2efe9674985.md) | 193 | `declaration-track:b0796feeba10b2efe96749859b3ef5fcbfdd6549e850962b2641494e315058db` |
| 22 | `def` | [compLeftRingHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/compleftringhom--6289dd7f8e33b1eaa0c956d2.md) | 201 | `declaration-track:6289dd7f8e33b1eaa0c956d2c8fa2e41e47a2f57aff183e60bc85b960c22d3e8` |
| 23 | `def` | [restrictRingHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/restrictringhom--2623a35eee0f85d766825eaf.md) | 213 | `declaration-track:2623a35eee0f85d766825eaf0d7006d211210dfcc9c9eaa693d04eabb13ec02f` |
| 24 | `def` | [coeFnRingHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/coefnringhom--92b6de84228f9783817ca8f1.md) | 223 | `declaration-track:92b6de84228f9783817ca8f1f71da65ae309a4511389b43e8489f217899817e8` |
| 25 | `def` | [evalRingHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/evalringhom--ce476076239b268036c51c2a.md) | 229 | `declaration-track:ce476076239b268036c51c2afdea606a07d84c33a868d95ac6c877bdd871b5e2` |
| 26 | `instance` | [instSMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/instsmul--c42af718c7637bc3f4a77c87.md) | 245 | `declaration-track:c42af718c7637bc3f4a77c8776400f58d4aaa95898baed378506357010286687` |
| 27 | `theorem` | [coe_smul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/coe-smul--fdfffc530d56550af76232f5.md) | 250 | `result-track:fdfffc530d56550af76232f5c4b2b2687fb6005e56a9c86ed2931c72a7f77b9c` |
| 28 | `theorem` | [smul_comp](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/smul-comp--4c711e3d0a4aed2d3831e2b7.md) | 255 | `result-track:4c711e3d0a4aed2d3831e2b72b48aec2cc7fd79582a5adffca011f4b55d6a1fb` |
| 29 | `instance` | [module](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/module--7c581ae58418f974f46b3c28.md) | 259 | `declaration-track:7c581ae58418f974f46b3c289a79e892245226ef736a4b28018204672fcd4016` |
| 30 | `def` | [coeFnLinearMap](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/coefnlinearmap--2cddc5b6119764b36aa77b54.md) | 265 | `declaration-track:2cddc5b6119764b36aa77b5468afa569db027c970040620f1d745cba8ca24802` |
| 31 | `def` | [C](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/c--7c8a8e600d243caf77d429bc.md) | 286 | `declaration-track:7c8a8e600d243caf77d429bc613a9d69de3fccb8a4406894245f3863ad446986` |
| 32 | `instance` | [algebra](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/algebra--304f1f7eb8e800fc46b421f5.md) | 293 | `declaration-track:304f1f7eb8e800fc46b421f548bafb240fc0a3326d9ae2c210d9840f74e62b56` |
| 33 | `def` | [coeFnAlgHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/coefnalghom--30f770ff617aedd372fd5f42.md) | 301 | `declaration-track:30f770ff617aedd372fd5f42280dcbbf62d600a43b7729219e781fefd77fd391` |
| 34 | `instance` | [instSMul'](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/instsmul--3b1c86d91205377bfcc4e322.md) | 321 | `declaration-track:3b1c86d91205377bfcc4e3225d373d76c513e69d4f4c6a087b80725429619539` |
| 35 | `theorem` | [smul_comp'](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/smul-comp--4e9d7e1986ffc3cb6cbbfcfc.md) | 327 | `result-track:4e9d7e1986ffc3cb6cbbfcfcea4d13c05b6a670572d1af9b47fbdc25f711c225` |
| 36 | `instance` | [module'](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/declarations/module--f42e9ae93e005d5d43783472.md) | 334 | `declaration-track:f42e9ae93e005d5d4378347235e24c9bf94131f9372c5bb9f81e304b813fbc24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
