# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoCoprod.Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c01bdcefde8d40d47586c3fe09320442e5848071",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c01bdcefde8d40d47586c3fe09320442e5848071`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonoCoprod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/monocoprod--5b18e525b1a92f6f6b63bcb1.md) | 45 | `declaration-track:5b18e525b1a92f6f6b63bcb1be73f23aa8612bd8920bb6c3d2176d705fd65876` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/instance--ab38020d71a9e5e6f5480c51.md) | 51 | `declaration-track:ab38020d71a9e5e6f5480c512e91d78a9a40f004f29a7ae7cc9001ba53b079db` |
| 3 | `theorem` | [binaryCofan_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/binarycofan-inr--6acab1d3e7a95dcf3f97fb37.md) | 59 | `result-track:6acab1d3e7a95dcf3f97fb376d9b914065375fc02c8ddd86a68b4f8bc486b924` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/instance--6893d2d8c53c753fbdf16bdf.md) | 67 | `declaration-track:6893d2d8c53c753fbdf16bdf2575beb2663c78a37754a0d639b397d0da47010b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/instance--89b3da59599ace9a2154b2a1.md) | 70 | `declaration-track:89b3da59599ace9a2154b2a1a16b0f94db0208d1aa486a64c4879744b07490e6` |
| 6 | `theorem` | [mono_inl_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono-inl-iff--33886ef1e3477289351f7dfd.md) | 73 | `result-track:33886ef1e3477289351f7dfd8665ac645c093d385941b3bc5c35d68b7a379f61` |
| 7 | `theorem` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mk--d75dfae49fc1d0c4adeb2a7d.md) | 84 | `result-track:d75dfae49fc1d0c4adeb2a7d01613ee0eada76be71af4a34a2f06df6e533e721` |
| 8 | `instance` | [monoCoprodType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/monocoprodtype--5b77a030c9d473345d6da4a5.md) | 89 | `declaration-track:5b77a030c9d473345d6da4a5f05791f243b82316c2e890608c4e8a88c7d96260` |
| 9 | `def` | [binaryCofanSum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/binarycofansum--ec45048485dcc6f55f1bddbf.md) | 118 | `declaration-track:ec45048485dcc6f55f1bddbf096f103c14f6a228df188ac277f0ec6f653683a8` |
| 10 | `def` | [isColimitBinaryCofanSum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/iscolimitbinarycofansum--b2b41740e1b00221c51ebba5.md) | 123 | `declaration-track:b2b41740e1b00221c51ebba5cfcca0629ffadabcc9c5a6af347c1fd49a3d554b` |
| 11 | `lemma` | [mono_binaryCofanSum_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono-binarycofansum-inl--b3378907938209678550d2ad.md) | 133 | `result-track:b3378907938209678550d2ad31dfa022afa69f5be697b2afbaa1220081dfc57e` |
| 12 | `lemma` | [mono_binaryCofanSum_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono-binarycofansum-inr--bf0acb8ed4ee03df7e456888.md) | 137 | `result-track:bf0acb8ed4ee03df7e45688897a1e35b10e9ff9f4700364b986fa205355e0786` |
| 13 | `lemma` | [mono_binaryCofanSum_inl'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono-binarycofansum-inl--3b1189b3867853d2c9fdff5c.md) | 141 | `result-track:3b1189b3867853d2c9fdff5c2e420caba2461fc6527bd990b10b7454a69df624` |
| 14 | `lemma` | [mono_binaryCofanSum_inr'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono-binarycofansum-inr--3c758732228b9aff5ca4ca95.md) | 149 | `result-track:3c758732228b9aff5ca4ca95f1deebd92243964e7e9e02b449173114c0ac914a` |
| 15 | `lemma` | [mono_of_injective_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono-of-injective-aux--36aee38045a9bdaacdb36570.md) | 163 | `result-track:36aee38045a9bdaacdb3657058487d2229fb132f4190d6345b74f11302378b4c` |
| 16 | `lemma` | [mono_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono-of-injective--0b57d6fcee87dcdb5c2b2719.md) | 179 | `result-track:0b57d6fcee87dcdb5c2b27193b7867746cf733277445288ffdb8f1081eeaf616` |
| 17 | `lemma` | [mono_of_injective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono-of-injective--45bf31321b6266407ceaf324.md) | 183 | `result-track:45bf31321b6266407ceaf324d85c5e824d18c5735154505c1cc205782c4b19e9` |
| 18 | `lemma` | [mono_map'_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono-map-of-injective--08cfd05912c35308bbf7a356.md) | 188 | `result-track:08cfd05912c35308bbf7a356591283f55549f2a1f45764c9c61ff872e2c2cb09` |
| 19 | `lemma` | [mono_inj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono-inj--6d1bb1edef31a1e9194132ab.md) | 203 | `result-track:6d1bb1edef31a1e9194132abaca3fd2c550494aced08b5a76de82b68620d085c` |
| 20 | `instance` | [mono_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/mono--bacb1b921398bcee6572e857.md) | 211 | `declaration-track:bacb1b921398bcee6572e8573665a03671c22236759a365c4ad30737b3769a71` |
| 21 | `theorem` | [monoCoprod_of_preservesCoprod_of_reflectsMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/monocoprod-of-preservescoprod-of-reflectsmono--de9e86750ed5d16bbfe69298.md) | 224 | `result-track:de9e86750ed5d16bbfe69298b82a84626a825f616eabcececb9ec52a65c2f8c1` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/instance--50f9acb15f84f1ec1c4a3995.md) | 242 | `declaration-track:50f9acb15f84f1ec1c4a3995e837c3c49d86de4b384f35d69a69ab18fc07854a` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Variant422ccffbe60895c4121235a1c6a30b54c606239dbabe9737d37ff94d7d8fcd5f.lean/declarations/instance--f22a6d0fd3d06ac5297e9121.md) | 250 | `declaration-track:f22a6d0fd3d06ac5297e91217ee417994bf34e0f0756e99a0109d848a15046a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
