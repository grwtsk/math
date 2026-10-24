# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GradedObject.Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4564642b88c2c18e7b10f42c5d425688ac5fac4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4564642b88c2c18e7b10f42c5d425688ac5fac4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Pi.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/gradedobject--e4afb554bcd46373294d74ca.md) | 48 | `declaration-track:e4afb554bcd46373294d74caec55b1239fab35d28c8685a1ed3b9decccdc2f8d` |
| 2 | `instance` | [inhabitedGradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/inhabitedgradedobject--8683c1bc7816d8991c4525ac.md) | 53 | `declaration-track:8683c1bc7816d8991c4525ac12ea3fbe5360072e35e81982acb8141ad981df8d` |
| 3 | `abbrev` | [GradedObjectWithShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/gradedobjectwithshift--a10742000fee304113b04474.md) | 63 | `declaration-track:a10742000fee304113b04474c9eef9b4ba063d6f0ec2a3c0bc3c32af720172af` |
| 4 | `instance` | [categoryOfGradedObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/categoryofgradedobjects--fe750cbbbb82b0a619ec48ef.md) | 72 | `declaration-track:fe750cbbbb82b0a619ec48ef247abee852cea5520d9208de864f89c3d55b8112` |
| 5 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/hom-ext--69605af5f4dc8601ff0cd8ca.md) | 78 | `result-track:69605af5f4dc8601ff0cd8caf405ec121a0daf488d539bd303a697adbbfdbc11` |
| 6 | `def` | [eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/eval--788a6b96ba55a54816943ae9.md) | 84 | `declaration-track:788a6b96ba55a54816943ae92a8948e8d38a55f9d9aef90c6eae95517c75251e` |
| 7 | `abbrev` | [comap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/comap--1009d0b4bc2410a641c0ce21.md) | 95 | `declaration-track:1009d0b4bc2410a641c0ce219b487672a823f7b38d933a7c5c19fc94d2e03144` |
| 8 | `theorem` | [eqToHom_proj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/eqtohom-proj--f86ba2854375ee4f8d5ea282.md) | 100 | `result-track:f86ba2854375ee4f8d5ea282b26e939c309dc5a4c35df9ec8e7e9d65b5b450dd` |
| 9 | `def` | [comapEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/comapeq--0bc78d012a79e93216736d7b.md) | 109 | `declaration-track:0bc78d012a79e93216736d7bbaeceedc91bb7d96c3b4e48e5cd11aa83eb29602` |
| 10 | `theorem` | [comapEq_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/comapeq-symm--534bbec7b8db879adda8cd11.md) | 114 | `result-track:534bbec7b8db879adda8cd1136f3dcb7bdb8482149186a8f061a0117c26a60f9` |
| 11 | `theorem` | [comapEq_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/comapeq-trans--31e426f5e854108dc058db37.md) | 118 | `result-track:31e426f5e854108dc058db37c9b13f68157cd29a044442300ce0c924d51cbc15` |
| 12 | `theorem` | [eqToHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/eqtohom-apply--9fbb852021233de4f5dd4b10.md) | 123 | `result-track:9fbb852021233de4f5dd4b10b1e81eb6b6069b9ba38fd90f5f35dfc635dd05bb` |
| 13 | `def` | [comapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/comapequiv--70c1e239cd2b98d52d919dbb.md) | 133 | `declaration-track:70c1e239cd2b98d52d919dbb0f497febc4ab4c6b9d5de4f6a47870abbf4ef9eb` |
| 14 | `instance` | [hasShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/hasshift--a516b875cf426d72a1069a0c.md) | 145 | `declaration-track:a516b875cf426d72a1069a0c79cb36bd8eb3f4704d5599ce687689ac5683ea84` |
| 15 | `theorem` | [shiftFunctor_obj_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/shiftfunctor-obj-apply--c7bff156aefeff0ec00bbdec.md) | 154 | `result-track:c7bff156aefeff0ec00bbdecf38554f1c33887469f108d57226ea72455548630` |
| 16 | `theorem` | [shiftFunctor_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/shiftfunctor-map-apply--ee96a283e6df4f4321853442.md) | 160 | `result-track:ee96a283e6df4f43218534421a5d8896e056667e4764ea0a3e1659bd00a1a9e4` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/instance--67adb3a8865a977cf58e91b0.md) | 166 | `declaration-track:67adb3a8865a977cf58e91b0beb59b36d109d88c16b148af9868f0d20c7d3d5c` |
| 18 | `theorem` | [zero_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/zero-apply--34d55e5ede69a04e1690caf5.md) | 170 | `result-track:34d55e5ede69a04e1690caf5435304a2afc80502324ebc2ce2dca417d2747508` |
| 19 | `instance` | [hasZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/haszeromorphisms--b2d63bca5dd195dfaae77169.md) | 175 | `declaration-track:b2d63bca5dd195dfaae77169d5a5f00ff01eef7815babbfc08c2df7c24489815` |
| 20 | `instance` | [hasZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/haszeroobject--0a19ed6f539e1d9e7346646d.md) | 183 | `declaration-track:0a19ed6f539e1d9e7346646dfb3899eaf62e62d8abc2d01a9867fa86d90ee476` |
| 21 | `def` | [total](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/total--70657c9696a463ea6a0f351f.md) | 208 | `declaration-track:70657c9696a463ea6a0f351f64dcc28769e533d22e5f3f388bec36fbc2ccb8e2` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/instance--67998c4ec2b8d6b2a2c9b4d9.md) | 222 | `declaration-track:67998c4ec2b8d6b2a2c9b4d9aea9889ccf4a51e6cdbfa98e598f09ffe8c196c3` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/instance--030892fd612bbd0e27bcfec3.md) | 241 | `declaration-track:030892fd612bbd0e27bcfec3001b5063f670a9dbd96a49d7767d6c87d06dc351` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/declarations/instance--41a24a44dae506d1419f68f3.md) | 243 | `declaration-track:41a24a44dae506d1419f68f331f61a1e2d63bcbb7d6b270d23f55d9afcbde8ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
