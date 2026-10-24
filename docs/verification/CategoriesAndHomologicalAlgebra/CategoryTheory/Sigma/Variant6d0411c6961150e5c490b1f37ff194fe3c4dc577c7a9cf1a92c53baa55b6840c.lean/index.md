# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sigma.Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b8bb2b48d1193d7767833cfe8ff1594d66f054e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b8bb2b48d1193d7767833cfe8ff1594d66f054e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sigma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/sigma--edb0e691125d3e7ed844f66f.md) | 36 | `declaration-track:edb0e691125d3e7ed844f66ff26bb79689fc3da71683afbaba775a7e749480e8` |
| 2 | `def` | [Pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/pi--149abbdaf352878f90207c46.md) | 42 | `declaration-track:149abbdaf352878f90207c46027cb6d93ea28e2554caa9663afc57c0f2b670fc` |
| 3 | `instance` | [Sigma.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/sigma-inhabited--c5ef19986be6f292ac66389c.md) | 46 | `declaration-track:c5ef19986be6f292ac66389ca04882fc6b58d3ca8b2277b8e88af2476422f7b8` |
| 4 | `instance` | [Pi.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/pi-inhabited--8af66905f30fe1a3533b9810.md) | 50 | `declaration-track:8af66905f30fe1a3533b98102657b44a88b848978e5fddb5b565cd440ee5dbcc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/instance--febfaa39f9a018d01e89efd1.md) | 58 | `declaration-track:febfaa39f9a018d01e89efd105ecce9612767c2de4bda305539775e2f04acb62` |
| 6 | `def` | [P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/p--afcdcac00e8f506db56b1673.md) | 63 | `declaration-track:afcdcac00e8f506db56b16731073136c49697ec6e9a3d5666f5eb637ad4c28ae` |
| 7 | `def` | [abs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/abs--93a21bf10dfc2533b3cbaa85.md) | 69 | `declaration-track:93a21bf10dfc2533b3cbaa85241b34d0a29acba641ae2febfe09f4f9f9b102e6` |
| 8 | `def` | [repr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/repr--238fef38ea4e7feedb5f3868.md) | 74 | `declaration-track:238fef38ea4e7feedb5f3868cd8bc4d9391bfafe8db7304b70a8ac8b5fe5ace5` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/instance--f529b9bf3906c9950e811985.md) | 80 | `declaration-track:f529b9bf3906c9950e811985e303f35f16b71906d7f33b427472db7882e66360` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/instance--073b628dce8fcc65d32ceac4.md) | 92 | `declaration-track:073b628dce8fcc65d32ceac4f8891813a4e1f1c1b9665a10f14f4141640ee0f2` |
| 11 | `def` | [P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/p--b57a3d5d62e2c5fbb1e79dd9.md) | 97 | `declaration-track:b57a3d5d62e2c5fbb1e79dd9a7074fbebe74c246991d9ae3ac3d6e5e59f0cfbe` |
| 12 | `def` | [abs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/abs--6f7a58895d59f44ee2fea459.md) | 103 | `declaration-track:6f7a58895d59f44ee2fea459f0e6fd5218de013497a98dbe537921d93bb33397` |
| 13 | `def` | [repr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/repr--20f780ef138c33fee309b963.md) | 108 | `declaration-track:20f780ef138c33fee309b963e6b7b52fbe2c897b9c65053dd73e7369630950ba` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant6d0411c6961150e5c490b1f37ff194fe3c4dc577c7a9cf1a92c53baa55b6840c.lean/declarations/instance--8325208f712e6dc23dc3deb9.md) | 112 | `declaration-track:8325208f712e6dc23dc3deb9c840732db3f261b49d1c07faac0a8989c44f3962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
