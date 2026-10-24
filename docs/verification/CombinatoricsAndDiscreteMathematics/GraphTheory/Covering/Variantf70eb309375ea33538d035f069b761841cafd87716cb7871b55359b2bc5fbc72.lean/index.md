# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Covering.Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ca79576a04a2a05b12a41894eb1fbb010f7a237",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ca79576a04a2a05b12a41894eb1fbb010f7a237`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Cast` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Symmetric` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Quiver.Star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-star--6d422aca36d5c6df96eb511b.md) | 55 | `declaration-track:6d422aca36d5c6df96eb511b5161e837035ffa9151dff586409830cb7ccfcee6` |
| 2 | `def` | [Quiver.Star.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-star-mk--7603a511346d38eb6538b527.md) | 61 | `declaration-track:7603a511346d38eb6538b527c1ed73179b0719f47d002e556d8f434f17656df0` |
| 3 | `def` | [Quiver.Costar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-costar--04df4b47e007e668a935cd9a.md) | 68 | `declaration-track:04df4b47e007e668a935cd9abd5fb128339549b7bb5a1bf7db551856b4a49cfb` |
| 4 | `def` | [Quiver.Costar.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-costar-mk--71d5ddc85dbb0d31f801842e.md) | 74 | `declaration-track:71d5ddc85dbb0d31f801842e7b09c4e5edfc951d57bf6e085c43532a9616c049` |
| 5 | `def` | [Prefunctor.star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-star--b43c024df60f219533f61197.md) | 80 | `declaration-track:b43c024df60f219533f611970487c004bc9edd0ddb40fed2bf5824e051e29815` |
| 6 | `def` | [Prefunctor.costar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-costar--e4c04d4611709c3516b29ead.md) | 86 | `declaration-track:e4c04d4611709c3516b29ead6299be29d35ca0d2590cdae42863d8576f17d1a1` |
| 7 | `theorem` | [Prefunctor.star_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-star-apply--f3dd646175241ae734882849.md) | 91 | `result-track:f3dd646175241ae734882849e8a4b52adf6cd13bafc35f45fe7d8f141ae99a00` |
| 8 | `theorem` | [Prefunctor.costar_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-costar-apply--a7486b532dd1ddb1caf0f35a.md) | 97 | `result-track:a7486b532dd1ddb1caf0f35a5e3aa9d47729c742322e115c6535c3cd7004dee7` |
| 9 | `theorem` | [Prefunctor.star_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-star-comp--e22497e15ad421413f7c8e8e.md) | 102 | `result-track:e22497e15ad421413f7c8e8ef7cf7a2c85a42ec4b74c265f835834c2f1c8ccbe` |
| 10 | `theorem` | [Prefunctor.costar_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-costar-comp--19f06d2a2d3beeb006f41cf0.md) | 106 | `result-track:19f06d2a2d3beeb006f41cf0b11a0473bcb3345a1720b80bc193214959adee79` |
| 11 | `structure` | [Prefunctor.IsCovering](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-iscovering--0b554b07e84329f5ab6c95d4.md) | 111 | `declaration-track:0b554b07e84329f5ab6c95d4dd78b7f1f5c2a32185606b85b1daca8e05b78ee5` |
| 12 | `theorem` | [Prefunctor.IsCovering.map_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-iscovering-map-injective--7657ebaf20d33cc1e415aa9d.md) | 117 | `result-track:7657ebaf20d33cc1e415aa9d6fb5b536f83216867ce4acf9996da49e1d34a12d` |
| 13 | `theorem` | [Prefunctor.IsCovering.comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-iscovering-comp--4a59cad9a39774ddcdeb08e5.md) | 124 | `result-track:4a59cad9a39774ddcdeb08e5362e6f20caaedaf1a0f87bb6185d0b3954b1f199` |
| 14 | `theorem` | [Prefunctor.IsCovering.of_comp_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-iscovering-of-comp-right--6536194cece01b578ae384c2.md) | 129 | `result-track:6536194cece01b578ae384c2157091355af6063b5769bd1a71eee1000b515dec` |
| 15 | `theorem` | [Prefunctor.IsCovering.of_comp_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-iscovering-of-comp-left--3e6e903f15888a2fac515e75.md) | 135 | `result-track:3e6e903f15888a2fac515e751b2183a0a1f9c82c41001376f31bba89d2a940ae` |
| 16 | `def` | [Quiver.symmetrifyStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-symmetrifystar--6d1f0e82b2576be1eb2748a4.md) | 144 | `declaration-track:6d1f0e82b2576be1eb2748a40d5a225b3b83957caa816ecc68654e6bc14e44f8` |
| 17 | `def` | [Quiver.symmetrifyCostar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-symmetrifycostar--831dfcb5cef25c4f475c9dfb.md) | 151 | `declaration-track:831dfcb5cef25c4f475c9dfb4c814d8d8b89e72545833b3dc6cd558b8416f848` |
| 18 | `theorem` | [Prefunctor.symmetrifyStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-symmetrifystar--284f0fb265a4862dcbe00609.md) | 156 | `result-track:284f0fb265a4862dcbe00609206c7d679af58604db2e5a0032821f84c6ecd336` |
| 19 | `theorem` | [Prefunctor.symmetrifyCostar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-symmetrifycostar--d637de19b988b4b1a1e6c5b5.md) | 168 | `result-track:d637de19b988b4b1a1e6c5b591dd679d71141a8bede74426b4a7aa503db7306d` |
| 20 | `theorem` | [Prefunctor.IsCovering.symmetrify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-iscovering-symmetrify--107ebfda2e0762399640b876.md) | 180 | `result-track:107ebfda2e0762399640b8760248911770b87acf71c3d3290035b9cde22b5f32` |
| 21 | `def` | [Quiver.PathStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-pathstar--12d87c68289a9ba33335e019.md) | 193 | `declaration-track:12d87c68289a9ba33335e019b35d3e1833a99b89b1c880bc3574b5be6f563ab3` |
| 22 | `def` | [Quiver.PathStar.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-pathstar-mk--7c75ee59ff18c32205494d80.md) | 199 | `declaration-track:7c75ee59ff18c32205494d80d47dde66d02146885cfc4d6a1f2d0fc85f3a7528` |
| 23 | `def` | [Prefunctor.pathStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-pathstar--d71e59ae7f4bf8444be976e3.md) | 204 | `declaration-track:d71e59ae7f4bf8444be976e30e653ed62cc24bc8fbd1619bce93a079d64734f4` |
| 24 | `theorem` | [Prefunctor.pathStar_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-pathstar-apply--458748a8057a6fc165caf124.md) | 209 | `result-track:458748a8057a6fc165caf124b9b0446ecca0a86998beb1f766656a284c4179d0` |
| 25 | `theorem` | [Prefunctor.pathStar_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-pathstar-injective--5f74f80fd97b1fb2c1d32998.md) | 214 | `result-track:5f74f80fd97b1fb2c1d329982c3b7fdb69d9be31e45f53b333b0a0ee7f98b3b2` |
| 26 | `theorem` | [Prefunctor.pathStar_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-pathstar-surjective--79ead5686c7571afc3de6263.md) | 249 | `result-track:79ead5686c7571afc3de6263761ac933e788b2133836cacb4e8bfdc58acd53e3` |
| 27 | `theorem` | [Prefunctor.pathStar_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-pathstar-bijective--d7c0d8c16f0398522a20f92b.md) | 269 | `result-track:d7c0d8c16f0398522a20f92b8fb1cf768dcde24c5855f7fc5266d973678fa8b1` |
| 28 | `theorem` | [pathStar_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/pathstar-bijective--b24b1595772f5d5a85641021.md) | 278 | `result-track:b24b1595772f5d5a85641021467e3870ea7da46b97c9b3ef778212478273797b` |
| 29 | `def` | [Quiver.starEquivCostar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-starequivcostar--d5410aef87e498d585320a12.md) | 291 | `declaration-track:d5410aef87e498d585320a121e74ca8b238de6753ea3d63c76c304f1e083ecb4` |
| 30 | `theorem` | [Quiver.starEquivCostar_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-starequivcostar-apply--fb6eaca7401fec606e0b78d2.md) | 299 | `result-track:fb6eaca7401fec606e0b78d251ff767d32ae68f7b708898332dd4cf435fd7054` |
| 31 | `theorem` | [Quiver.starEquivCostar_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/quiver-starequivcostar-symm-apply--8c1fb1ed12e021763803d7da.md) | 305 | `result-track:8c1fb1ed12e021763803d7da4ace0e83408d629b41087d1c911c7b76423e1d0c` |
| 32 | `theorem` | [Prefunctor.costar_conj_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-costar-conj-star--85b55dcb47f4a84e46c5a09b.md) | 310 | `result-track:85b55dcb47f4a84e46c5a09b512d12810a63028e967158cec5a65e23d60d8b5c` |
| 33 | `theorem` | [Prefunctor.bijective_costar_iff_bijective_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-bijective-costar-iff-bijective-star--ef7f1e361f59e8a0ab9a5dce.md) | 315 | `result-track:ef7f1e361f59e8a0ab9a5dce89231fc6bf3b1cb9ff1107b744de2c33714f1709` |
| 34 | `theorem` | [Prefunctor.isCovering_of_bijective_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-iscovering-of-bijective-star--6f8edb28ae041c984e9be667.md) | 320 | `result-track:6f8edb28ae041c984e9be667d3e70470309f588bedd35433a7f8f76ae359cc25` |
| 35 | `theorem` | [Prefunctor.isCovering_of_bijective_costar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/declarations/prefunctor-iscovering-of-bijective-costar--e5052b1a89c657f0d8f79181.md) | 324 | `result-track:e5052b1a89c657f0d8f791812c8ebdf599964b352a18afc7cd1073428402d19f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
