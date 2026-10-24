# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c477f37ff3476694352eec392fdba36e299bc6e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c477f37ff3476694352eec392fdba36e299bc6e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Const` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/tensorobj--64e6365330b19dc82a7212fc.md) | 47 | `declaration-track:64e6365330b19dc82a7212fc4bd657bc02a60a6079c9659c94714d79aa7b2488` |
| 2 | `def` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/tensorhom--d978e8ef3b9f279fe0591a49.md) | 58 | `declaration-track:d978e8ef3b9f279fe0591a492f663a3c4670cadd86296cca2af7a31aa3a28b7d` |
| 3 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/whiskerleft--6c6a9ea780b38eb7648c9ec1.md) | 64 | `declaration-track:6c6a9ea780b38eb7648c9ec1e6ee978cec1f0908fd842bfbd24c3c961d8ec3f0` |
| 4 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/whiskerright--889786157e663b75f3f26f99.md) | 72 | `declaration-track:889786157e663b75f3f26f99e7366fff62b0100d5518e588291e7694ac834af6` |
| 5 | `instance` | [functorCategoryMonoidalStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/functorcategorymonoidalstruct--67592cfe20008159d639f1fe.md) | 86 | `declaration-track:67592cfe20008159d639f1fe201ff0cbdc806bd0c43a6709087639d83f06fbb1` |
| 6 | `theorem` | [tensorUnit_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/tensorunit-obj--f81d08040732615119736843.md) | 97 | `result-track:f81d08040732615119736843e0604279b3479b899d85b85dfab4e8dc22ff1a18` |
| 7 | `theorem` | [tensorUnit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/tensorunit-map--87cd018e67c1a6d419e6c370.md) | 101 | `result-track:87cd018e67c1a6d419e6c370404c135d1196e0d99be1653c41c05fdf2af74459` |
| 8 | `theorem` | [tensorObj_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/tensorobj-obj--c5423d9239ffeb4c53cefc10.md) | 105 | `result-track:c5423d9239ffeb4c53cefc1026122bd7f4470cccdf571a96f07de0a2ebd71589` |
| 9 | `theorem` | [tensorObj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/tensorobj-map--c85c12d4b7260f2210c48a9e.md) | 109 | `result-track:c85c12d4b7260f2210c48a9e856651446920a515ae58d66baf5f33b284fe1301` |
| 10 | `theorem` | [tensorHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/tensorhom-app--3e358b0068afdb6149092014.md) | 113 | `result-track:3e358b0068afdb614909201424ea0139ccd6f1536cad797ab75be4b315a85408` |
| 11 | `theorem` | [whiskerLeft_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/whiskerleft-app--a72680c8ba6c96eba8ef4e4c.md) | 118 | `result-track:a72680c8ba6c96eba8ef4e4cbaffe9100510ed2306529d69b96ee490a2e40a17` |
| 12 | `theorem` | [whiskerRight_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/whiskerright-app--bd0dcc680d878040bcff7d86.md) | 123 | `result-track:bd0dcc680d878040bcff7d86e6f575319a84b24bee89b8a4a9b4472f18739a76` |
| 13 | `theorem` | [leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/leftunitor-hom-app--7409f2c8156eb03d83421d54.md) | 128 | `result-track:7409f2c8156eb03d83421d5444fca648552547eb58f416ba4e4bcb914f48c43d` |
| 14 | `theorem` | [leftUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/leftunitor-inv-app--aa2f87242a8de57ba7af45fa.md) | 133 | `result-track:aa2f87242a8de57ba7af45fa58e290542d5f7503d028c61a0b82d27f8eb68275` |
| 15 | `theorem` | [rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/rightunitor-hom-app--7161818a40f778267a166904.md) | 138 | `result-track:7161818a40f778267a166904f8c4f26fd991cd9da848f68df052f5047a019d52` |
| 16 | `theorem` | [rightUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/rightunitor-inv-app--d6786051bad441e0e7fb0f8e.md) | 143 | `result-track:d6786051bad441e0e7fb0f8e332558854b1260ac18d55d5498184ebe9133d1cd` |
| 17 | `theorem` | [associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/associator-hom-app--b9650a3130a99a257e1f162e.md) | 148 | `result-track:b9650a3130a99a257e1f162ece5817f9b51a4874a65871c6b431ee3a49824648` |
| 18 | `theorem` | [associator_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/associator-inv-app--2369af39ff2f554aeaa1667e.md) | 153 | `result-track:2369af39ff2f554aeaa1667eccd76c8bda06d8ec579d10f431c775708737290f` |
| 19 | `instance` | [functorCategoryMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/functorcategorymonoidal--4405724e4f9c7eb835e8bac8.md) | 161 | `declaration-track:4405724e4f9c7eb835e8bac80b3bf47281536390a2ab78dbf18bac881adafb63` |
| 20 | `instance` | [functorCategoryBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/functorcategorybraided--a5d731ae8fa5d2cdec5d6129.md) | 175 | `declaration-track:a5d731ae8fa5d2cdec5d6129020755e7081178ba90fb4aa1df5d02b65f9cb7aa` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/example--f71d86bdca8e87ac17393182.md) | 180 | `declaration-track:f71d86bdca8e87ac17393182dbbc9971ec3ad75c2ef4c5fdb69c3a116c3401c5` |
| 22 | `instance` | [functorCategorySymmetric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantee74a38d6ab9118212923969d5b4f0b0a9285a0160c3e4edbeffb7db762c57a0.lean/declarations/functorcategorysymmetric--738ad939df7d5c6d5db53190.md) | 195 | `declaration-track:738ad939df7d5c6d5db531905f7456c7e787acbc4231b3af8062e13ab04520e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
