# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4895732bc02295bd81bdbd90c82982e89af2fef6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4895732bc02295bd81bdbd90c82982e89af2fef6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/image--590d5f0b394806b078069f9f.md) | 35 | `declaration-track:590d5f0b394806b078069f9f135609ed81e38c3b463cbfb56815e5981d29917c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/instance--10d181a00fa2c538b3c988a5.md) | 38 | `declaration-track:10d181a00fa2c538b3c988a5f980a4c097b046175c5b0dc4ce67bb19ccc875c6` |
| 3 | `def` | [Image.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/image--4632aed67bfce4c5b7e505ff.md) | 41 | `declaration-track:4632aed67bfce4c5b7e505ff78901fd083c07bc07fa9d22cc4d3b70b144b0fa9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/instance--b30e89ffdb18557ca1ac9a79.md) | 44 | `declaration-track:b30e89ffdb18557ca1ac9a797f4d5481602c76ffc6a67b548169aada0cbda191` |
| 5 | `def` | [Image.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/image-lift--4790e792224082aebe173b54.md) | 50 | `declaration-track:4790e792224082aebe173b54c76ad5f4bfeb4fec77a95050ceaf57f5d39bdfa5` |
| 6 | `theorem` | [Image.lift_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/image-lift-fac--39a73a0370831b8548430ef9.md) | 53 | `result-track:39a73a0370831b8548430ef91bf0685f5f08f02815bedd7f43e03b3fdfd12f44` |
| 7 | `def` | [monoFactorisation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/monofactorisation--6ded7d785ce494dfedf2163d.md) | 62 | `declaration-track:6ded7d785ce494dfedf2163dee2407bdf1ff1e3d64d58cd9546f474d17c36b14` |
| 8 | `def` | [isImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/isimage--4485a733c1927736b648254d.md) | 68 | `declaration-track:4485a733c1927736b648254db3688c05ad33b988ba8ed3d6efb0c11c48c70f16` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/instance--a4f142023ef2629438ee45bf.md) | 72 | `declaration-track:a4f142023ef2629438ee45bf29f612823a5fc2c1f9bb392927e424be03e02c72` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/instance--eac8b40f1a6d0ed8e915fba0.md) | 75 | `declaration-track:eac8b40f1a6d0ed8e915fba04fadcc075f7c8f4bacc3c427fb0f82fdb93fba74` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/instance--abfb7f24851f0cd39f7df7f9.md) | 78 | `declaration-track:abfb7f24851f0cd39f7df7f9ea2fe60f1ab78369b1b7d4af97f89fb21ad1272c` |
| 12 | `def` | [limitOfSurjectionsSurjective.preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/limitofsurjectionssurjective-preimage--23a3905b2b78289041f1ab21.md) | 90 | `declaration-track:23a3905b2b78289041f1ab2151035b4cdae4604e63b6359c87d3e413b7eb698a` |
| 13 | `lemma` | [surjective_π_app_zero_of_surjective_map_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/surjective-app-zero-of-surjective-map-aux--e2e8e74b7505a7c631a7d816.md) | 98 | `result-track:e2e8e74b7505a7c631a7d816d8289f524f324b8055eb9104f6167a8dbedd15ed` |
| 14 | `lemma` | [surjective_π_app_zero_of_surjective_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/declarations/surjective-app-zero-of-surjective-map--53f86bca2ff23d2403d4d2b6.md) | 116 | `result-track:53f86bca2ff23d2403d4d2b66fa32a8f8f5466975007dc4f73ed0ef695c5ec50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
