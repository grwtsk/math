# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Core.Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75b217e9a16714109faf8a4fa2eb6c44e77246c7",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75b217e9a16714109faf8a4fa2eb6c44e77246c7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.EquivFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Whiskering` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/core--7723cb72c79e595db30625eb.md) | 31 | `declaration-track:7723cb72c79e595db30625eb4ffe06200cb72b0bce2fce2e3d34f50978404cea` |
| 2 | `structure` | [CoreHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/corehom--3f0b5a26844bd6836e2589f8.md) | 40 | `declaration-track:3f0b5a26844bd6836e2589f88c7e766e612ccff735e9551c1744a0268ece3e2c` |
| 3 | `instance` | [coreCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/corecategory--b28fa6d61e2c8c78d0cbd3e7.md) | 45 | `declaration-track:b28fa6d61e2c8c78d0cbd3e707d4b0d9cfd316f221b8638ca84f053753b42d03` |
| 4 | `lemma` | [coreCategory_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/corecategory-comp-iso--d9fc0d2908e3db65df1b6db3.md) | 52 | `result-track:d9fc0d2908e3db65df1b6db3d738422bc309821a2c9ff0aa017cd3a3064b59ba` |
| 5 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/inclusion--efd277f5de3fb7f7a4dd57fa.md) | 60 | `declaration-track:efd277f5de3fb7f7a4dd57faf6870f22beb053e09dfd0125d2154f8108c6b7be` |
| 6 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/hom-ext--efa0c331ab704472aba45eba.md) | 65 | `result-track:efa0c331ab704472aba45ebae7b026b3e0bdb9b4554a7cb434fe737ab4ca712f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/instance--c368095060fb414b179b5adb.md) | 72 | `declaration-track:c368095060fb414b179b5adbce3c2ed080755f694f7dd1930becf5d724632a6a` |
| 8 | `def` | [functorToCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/functortocore--babf34b8434358bbb23e14d0.md) | 80 | `declaration-track:babf34b8434358bbb23e14d00fd643bc5850811520cf28909b721d4a177b2b27` |
| 9 | `def` | [forgetFunctorToCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/forgetfunctortocore--c7b5aced68f326e6aab41591.md) | 88 | `declaration-track:c7b5aced68f326e6aab415915bcd4346f96f379a6af4b48a7f14ed7f0f4b6ea2` |
| 10 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/core--4c957d74d6e0a8fcc8154a1d.md) | 101 | `declaration-track:4c957d74d6e0a8fcc8154a1d52a32e78e62af71a979a2988417a992b8ca5c403` |
| 11 | `def` | [coreId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/coreid--faa9d0156d470ec5ce6a5641.md) | 106 | `declaration-track:faa9d0156d470ec5ce6a5641a66c31918bf4d4f69da889e4206ab01aaa72954f` |
| 12 | `def` | [coreComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/corecomp--30be61cba7b3df113e320aa4.md) | 110 | `declaration-track:30be61cba7b3df113e320aa4229906ee1308eaf34e9eff9f98023c2524f394a1` |
| 13 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/core--e19c2c35311003e3dc3c22ac.md) | 121 | `declaration-track:e19c2c35311003e3dc3c22ac731bdd7bd804f596d9b4a9348c5e673431f18e4c` |
| 14 | `lemma` | [coreComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/corecomp--80d4e31aa01e7ab5f4dc1453.md) | 126 | `result-track:80d4e31aa01e7ab5f4dc1453a1145bee9a06f6b7b87ea0302ca55a47b5c23f3a` |
| 15 | `lemma` | [coreId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/coreid--dad0733386f1cab72cfae6c8.md) | 129 | `result-track:dad0733386f1cab72cfae6c886affcbc9adb839380591b87aab0f8bbbdd82580` |
| 16 | `lemma` | [coreWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/corewhiskerleft--ce3074eca4fa653807f0116b.md) | 131 | `result-track:ce3074eca4fa653807f0116b860787779dfdd5d3c0b5fd18f554327d5199f31a` |
| 17 | `lemma` | [coreWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/corewhiskerright--cb1805c05ef3600db2a75d69.md) | 136 | `result-track:cb1805c05ef3600db2a75d69b46ffbcbeed7ad03e32de4ab65056c7f29d88f66` |
| 18 | `lemma` | [coreLeftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/coreleftunitor--44a4deb310444930e3e445ac.md) | 141 | `result-track:44a4deb310444930e3e445ac8dc3c5a1b0917504a11ecb633ff45a1cda74cb48` |
| 19 | `lemma` | [coreRightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/corerightunitor--e131348c897e996af157dc73.md) | 146 | `result-track:e131348c897e996af157dc737812d942452760d721a0ccff7cb1287bdf6b9e63` |
| 20 | `lemma` | [coreAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/coreassociator--4976eb94eaddf4221be14968.md) | 151 | `result-track:4976eb94eaddf4221be1496833f5ffac34bfdacc6693a446b04dbb67c4809f2f` |
| 21 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/core--1e9b1043e21f6b92d7caae19.md) | 168 | `declaration-track:1e9b1043e21f6b92d7caae1988af07066c589bccf25f7bd7e93840811866d6e3` |
| 22 | `def` | [coreFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/corefunctor--ebc06848bfcb242d6e224a8a.md) | 180 | `declaration-track:ebc06848bfcb242d6e224a8a3cb580e828b07ba4a3670c83c43a2b4b5e2cb06b` |
| 23 | `def` | [ofEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant775422ac7683813c08bd4e87b98f06ac9735891066695ca6dc3d1076f0534e80.lean/declarations/ofequivfunctor--e1e394c9f97289d45b5f4312.md) | 189 | `declaration-track:e1e394c9f97289d45b5f4312c98b25fc3150f0767b033fa41a52678283fe1717` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
