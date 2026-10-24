# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Homology.Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d75b716963237edb952d3ce9629e60ec47e2079f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d75b716963237edb952d3ce9629e60ec47e2079f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Pseudoelements` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Images` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [homologyC](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/homologyc--4a522685c1af5c30bbe926cf.md) | 47 | `declaration-track:4a522685c1af5c30bbe926cfd7c37b130b95d5a4a6c62c6ecebd4321bf746405` |
| 2 | `abbrev` | [homologyK](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/homologyk--a63d49c7379147e8cad55445.md) | 53 | `declaration-track:a63d49c7379147e8cad5544599aebc196ea1f8480d780f7c11917d251767c890` |
| 3 | `abbrev` | [homologyCToK](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/homologyctok--105952f8f04796b66c5466e8.md) | 60 | `declaration-track:105952f8f04796b66c5466e8e979a52a7ce4c6a01750c95bf1b06b8e3ebd3d16` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/instance--eba260551085a57ca929400c.md) | 66 | `declaration-track:eba260551085a57ca929400cb285660a476699e2137b32ad0cd089ecab4eab9e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/instance--ec0b6323963a360c2b454b3a.md) | 82 | `declaration-track:ec0b6323963a360c2b454b3a850883e28568dab4a8dce41ddefddef5afd37822` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/instance--27ce7410130a04e70ea8e86b.md) | 100 | `declaration-track:27ce7410130a04e70ea8e86b1c33058e44432e1946f398d6e7249df9612d91b1` |
| 7 | `def` | [homologyIsoKernelDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/homologyisokerneldesc--8b4fa8d73ad30b457a32f4de.md) | 106 | `declaration-track:8b4fa8d73ad30b457a32f4dec4324eef1f7cd03d3abf57f7066d83d62b2468f5` |
| 8 | `def` | [π'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/anonymous--58513889528a7c31f46f3734.md) | 114 | `declaration-track:58513889528a7c31f46f37346f6199a88fab54efb4ebf44438f608fe8a21da70` |
| 9 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/anonymous--ffd573b5c9e18dd3dfce76cd.md) | 119 | `declaration-track:ffd573b5c9e18dd3dfce76cd687445152b6d716564ac4e2233ac0e210fed7f44` |
| 10 | `def` | [desc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/desc--08cf1da1095f7232c1c23e1e.md) | 124 | `declaration-track:08cf1da1095f7232c1c23e1e2dcca78daa3387fee924907690143ef1750487b0` |
| 11 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/lift--182e9b45db3bceea634c0df2.md) | 129 | `declaration-track:182e9b45db3bceea634c0df2bd250f2e837224b05464761505915065593452a1` |
| 12 | `theorem` | [π'_desc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/desc--cf6de18a41b6c0e0dda4083c.md) | 134 | `result-track:cf6de18a41b6c0e0dda4083c52744cbc827dd8e49542cb320d6555c3c8f40841` |
| 13 | `theorem` | [lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/lift--e7fefecc9b744c80ebe26ffa.md) | 141 | `result-track:e7fefecc9b744c80ebe26ffa6be868c38ab7ff9e55c4088fc8f14d08634293a8` |
| 14 | `theorem` | [condition_π'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/condition--351da5d07b48b1df3b04fe83.md) | 148 | `result-track:351da5d07b48b1df3b04fe83ef44d2d8ad3f78006a94ea2596ba55813664e8ad` |
| 15 | `theorem` | [condition_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/condition--bf46bcbbec83e98ddce83777.md) | 154 | `result-track:bf46bcbbec83e98ddce8377760e044198f98eef093ee5264cbd0d2b95e20b288` |
| 16 | `theorem` | [hom_from_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/hom-from-ext--f46328e26bab077067ca5f36.md) | 160 | `result-track:f46328e26bab077067ca5f361b4e918ed0f45bdb6e3441991c9171d6dc3bd512` |
| 17 | `theorem` | [hom_to_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/hom-to-ext--dfa24dbd40a78898d4c89b96.md) | 173 | `result-track:dfa24dbd40a78898d4c89b9646e6c60d4673a4e57fe8d1790f9cfa43fbb2417b` |
| 18 | `theorem` | [π'_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/anonymous--2a5e9af5350baff943722b54.md) | 185 | `result-track:2a5e9af5350baff943722b54a430b0cb0e8ee8b6d0db860b8797c07d8d4d1d7c` |
| 19 | `theorem` | [π'_eq_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/eq--25acbd7012cdeb9ffb93fc42.md) | 191 | `result-track:25acbd7012cdeb9ffb93fc429fb6fc398cd007a3f97633944d0462376e76b653` |
| 20 | `theorem` | [π'_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/map--61c8a8e6ce2d972cc6b7bedb.md) | 204 | `result-track:61c8a8e6ce2d972cc6b7bedbae5f7fd3a2073fbf6f7bdff00880bb5e2eb7bf0d` |
| 21 | `theorem` | [map_eq_desc'_lift_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/map-eq-desc-lift-left--968478b29bc9d0b3c278da7b.md) | 236 | `result-track:968478b29bc9d0b3c278da7bff6ed826e326fb4c8e86fbb51255d793f9ac5883` |
| 22 | `theorem` | [map_eq_lift_desc'_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/map-eq-lift-desc-left--23ae3885611404dba63d783a.md) | 253 | `result-track:23ae3885611404dba63d783ae6c62fe26f09dbf81ad7fbda3259704d2a226a6a` |
| 23 | `theorem` | [map_eq_desc'_lift_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/map-eq-desc-lift-right--31a87c379e03a6b898d918e7.md) | 272 | `result-track:31a87c379e03a6b898d918e71542fdcca2bacbdb69abcfebbf6483cfe3f2519b` |
| 24 | `theorem` | [map_eq_lift_desc'_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/map-eq-lift-desc-right--e77958ac8e17bcb4c8ecb78e.md) | 286 | `result-track:e77958ac8e17bcb4c8ecb78ef563ada8865f1ecfccbd588362887fcfb743c6a2` |
| 25 | `theorem` | [map_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/map--ef127221101b22bcd0e68bab.md) | 306 | `result-track:ef127221101b22bcd0e68bab0611e05160fa34ff668f74d158b2054ea19e9b68` |
| 26 | `def` | [homologyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/homologyiso--d0b63c013d5cbca91728e48d.md) | 326 | `declaration-track:d0b63c013d5cbca91728e48df545d7e6e3211ed49122abd6c541f74641d6d092` |
| 27 | `def` | [homologyFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/declarations/homologyfunctoriso--8390ca42f551dfcb648be9aa.md) | 343 | `declaration-track:8390ca42f551dfcb648be9aad539f467ad9fd0dbd80309cbb41f46c139fcbd39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
