# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a72ebc79c35fc3b01126190723e726ada4002ee4",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a72ebc79c35fc3b01126190723e726ada4002ee4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean.json)

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
| 1 | `def` | [minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/minpoly--6ef0504874ecb398ece093fb.md) | 41 | `declaration-track:6ef0504874ecb398ece093fbe31407611a15105e067743229316accc8fefec20` |
| 2 | `theorem` | [monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/monic--52608eb0f0ec10f691c73019.md) | 54 | `result-track:52608eb0f0ec10f691c730196f10d4ca60ee1faec67afede163833c04b3d7ef0` |
| 3 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/ne-zero--1f737dc75cf3c19232bd470e.md) | 60 | `result-track:1f737dc75cf3c19232bd470ec41ff0b8fcad2b5177c2d17e60f2489242643306` |
| 4 | `theorem` | [eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/eq-zero--6366221ec1e50e5ba3b31b1a.md) | 63 | `result-track:6366221ec1e50e5ba3b31b1a2f1db68f7013e5287cdc1645f91fcf15e1157d54` |
| 5 | `theorem` | [ne_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/ne-zero-iff--345ad6eba5861013c58ff710.md) | 66 | `result-track:345ad6eba5861013c58ff710a60ffb77373f918635975cef4e6a3cb943abd1cc` |
| 6 | `theorem` | [algHom_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/alghom-eq--78a1ba57ab050fef4aef9ae6.md) | 69 | `result-track:78a1ba57ab050fef4aef9ae68e96beb07628c14916e151912a5c1e882a5b3eb6` |
| 7 | `theorem` | [algebraMap_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/algebramap-eq--9384e504b1d170bf63827338.md) | 75 | `result-track:9384e504b1d170bf6382733894dec913492c6165a0ed7ae3e29bfdbc81d29b23` |
| 8 | `theorem` | [algEquiv_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/algequiv-eq--9620af99ae37b1fa21faec48.md) | 81 | `result-track:9620af99ae37b1fa21faec48ba303174ea31178aae0e93092de4623830f70d11` |
| 9 | `theorem` | [aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/aeval--7edb27b992de24abfd903134.md) | 89 | `result-track:7edb27b992de24abfd903134c279bf91bcbe67c79cd0a4bfa1163ba742ff05aa` |
| 10 | `theorem` | [aeval_algHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/aeval-alghom--49779a2a4773e6a81408107e.md) | 97 | `result-track:49779a2a4773e6a81408107e723b923949ffe7eb6c8e11f63fc51bf1e0a77a7d` |
| 11 | `theorem` | [ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/ne-one--245e7287d3e0f36292f5d1f2.md) | 101 | `result-track:245e7287d3e0f36292f5d1f21835260b2dc406e85ad76ceabb93f113e13e9d8b` |
| 12 | `theorem` | [map_ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/map-ne-one--9245e9fec9bf2bbce0e19026.md) | 106 | `result-track:9245e9fec9bf2bbce0e19026d23379c98a8e805557dd713f93c6259430129d71` |
| 13 | `theorem` | [not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/not-isunit--6d6938a6375c8064bda84a6c.md) | 114 | `result-track:6d6938a6375c8064bda84a6c1a72f5d08300a8fbba55884916a721f867d86fa3` |
| 14 | `theorem` | [mem_range_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/mem-range-of-degree-eq-one--5204cf72035e8d63808f90c8.md) | 121 | `result-track:5204cf72035e8d63808f90c8588fc2d53716bb8141f8a4b8f84461bdde063cbf` |
| 15 | `theorem` | [min](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/min--9560319b58c0ec141e842f5c.md) | 134 | `result-track:9560319b58c0ec141e842f5cb308591961242050ce16fd6263dfadc9c42671c3` |
| 16 | `theorem` | [unique'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/unique--434e4f520441592322a1955e.md) | 141 | `result-track:434e4f520441592322a1955ecac91f558e66f7f5bf9a2801161a6e00b081b984` |
| 17 | `theorem` | [eq_of_linearIndependent](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/eq-of-linearindependent--f95320562a192db7f182b3f4.md) | 169 | `result-track:f95320562a192db7f182b3f478d00d12b1b878cefa80ba1ce6a6c46d039a1bcb` |
| 18 | `theorem` | [subsingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/subsingleton--ed2780951b089a4add809f18.md) | 180 | `result-track:ed2780951b089a4add809f18d96c5098a58c4c7dd4247d5d2cb9d80143467ba5` |
| 19 | `theorem` | [natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/natdegree-pos--b852782a0f44656e515ad8c8.md) | 192 | `result-track:b852782a0f44656e515ad8c83f3498148de046a7422f49e43d9675a288b13e8b` |
| 20 | `theorem` | [degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/degree-pos--62bf7cbc81f7723b748374d2.md) | 202 | `result-track:62bf7cbc81f7723b748374d2d9789e0533ddcbdf5b2beb95d3e7576cd3802ca0` |
| 21 | `theorem` | [aeval_modByMonic_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/aeval-modbymonic-minpoly--f3c353e9d4b8cd9bcac6eed3.md) | 206 | `result-track:f3c353e9d4b8cd9bcac6eed31c3d312ef679db660f8b8a0d74f48cb464ac5998` |
| 22 | `theorem` | [degree_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/degree-eq-one-iff--2f587722b7df97bbc269bc3b.md) | 213 | `result-track:2f587722b7df97bbc269bc3b4fc5e6088fc9cfa21ea32174faf395dab6375908` |
| 23 | `theorem` | [natDegree_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/natdegree-eq-one-iff--6de8de25439f234deb83fc61.md) | 220 | `result-track:6de8de25439f234deb83fc614565be24b1f134f083af1a7f998e51f05d9b1979` |
| 24 | `theorem` | [two_le_natDegree_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/two-le-natdegree-iff--651a2106ca0dfb8a612e667f.md) | 225 | `result-track:651a2106ca0dfb8a612e667fbb564127e309c0e51c308320922a75833dc2094b` |
| 25 | `theorem` | [two_le_natDegree_subalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/two-le-natdegree-subalgebra--3540df86ec6ecb4256f12d0f.md) | 230 | `result-track:3540df86ec6ecb4256f12d0fbf7c2f40d382aa4ddc92ad76cce2ed979825db98` |
| 26 | `theorem` | [eq_X_sub_C_of_algebraMap_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/eq-x-sub-c-of-algebramap-inj--515a957f2841ce7f5871f317.md) | 239 | `result-track:515a957f2841ce7f5871f3171b1054910183c9ae48e1e9872372b468a4b912b0` |
| 27 | `theorem` | [aeval_ne_zero_of_dvdNotUnit_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/aeval-ne-zero-of-dvdnotunit-minpoly--94d3279ac9fda767388c1883.md) | 251 | `result-track:94d3279ac9fda767388c188366a03fb4d8922bd72ff2bdeab2b83890e2158bdb` |
| 28 | `theorem` | [irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant62da5f62378f41b17f87b91110a97c0c4b514fe4ecce8d63500d78d854fecdda.lean/declarations/irreducible--9907e6d8a143f8f14b2bf0e9.md) | 269 | `result-track:9907e6d8a143f8f14b2bf0e92d9a3f668bcc292f2e8b26496ab4e442fb413216` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
