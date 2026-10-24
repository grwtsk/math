# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad6c4a4c138fe2e78385c19099d60aa379202874",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad6c4a4c138fe2e78385c19099d60aa379202874`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean.json)

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
| 1 | `abbrev` | [Comonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/comonad--5820f3317ee0db10a4ef6e65.md) | 47 | `declaration-track:5820f3317ee0db10a4ef6e65d3802e1683eb981cc8fe363110bfeccc9a4f6a89` |
| 2 | `abbrev` | [Comonad.counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/comonad-counit--6a9c4759fb72d6c18e73d0e0.md) | 50 | `declaration-track:6a9c4759fb72d6c18e73d0e0f74997bedb886e4667e03d30002e831c32736a17` |
| 3 | `abbrev` | [Comonad.comul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/comonad-comul--8647987538e51ad436eaa178.md) | 53 | `declaration-track:8647987538e51ad436eaa17818d52f164df7fb794a1eed70da13c193244afe2d` |
| 4 | `theorem` | [counit_comul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/counit-comul--c218124fb07fea8a1f3193f4.md) | 70 | `result-track:c218124fb07fea8a1f3193f49615d952dd46bf3aa3dd79da7338d76c073ec568` |
| 5 | `theorem` | [comul_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/comul-counit--7cad257c8babd9413e073c7b.md) | 73 | `result-track:7cad257c8babd9413e073c7b0fefa38ed5ff38a6b866f11d7fdf6013a901dd94` |
| 6 | `theorem` | [comul_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/comul-assoc--f98534570aa54332cb1fb92b.md) | 76 | `result-track:f98534570aa54332cb1fb92b3df81868c660e698920eeb44a1769d873ef224f5` |
| 7 | `theorem` | [comul_assoc_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/comul-assoc-flip--fcb755596066a23c9d342225.md) | 79 | `result-track:fcb755596066a23c9d34222576093cd21302a41d08ae81a69eb2cd9a47d61ba4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/instance--39f05879dbefcc1271d3e67c.md) | 84 | `declaration-track:39f05879dbefcc1271d3e67c33d8d04bebf352e11ccdb54d1fa0715c097d50c2` |
| 9 | `def` | [ofOplaxFromUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/ofoplaxfromunit--c140dbaa4fabde33d1fa567b.md) | 89 | `declaration-track:c140dbaa4fabde33d1fa567bba89e5e209566004afccf38a005f2b05372fe087` |
| 10 | `def` | [toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/tooplax--5f0dba171aaf2c6cc149ff1c.md) | 107 | `declaration-track:5f0dba171aaf2c6cc149ff1ccff96eaef8fd3ec939996ee7e76470a15904b5cc` |
| 11 | `def` | [ComonadBicat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/comonadbicat--85b28a58cbd793ccebac4afe.md) | 126 | `declaration-track:85b28a58cbd793ccebac4afe216469415b23c5dc522e1309631816d50e656336` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/instance--a7b2157194a5202b38fea697.md) | 133 | `declaration-track:a7b2157194a5202b38fea697a7887066f17ef7b8eaf7fe47216d921083419f6c` |
| 13 | `def` | [toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/tooplax--ad7cb0fbf30b12236a3eed14.md) | 137 | `declaration-track:ad7cb0fbf30b12236a3eed145634c7c6439bbf396085f938f280d9fe14a2e4e2` |
| 14 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/obj--a8ca74422f88e4a54a978fdf.md) | 141 | `declaration-track:a8ca74422f88e4a54a978fdfd24f16288d4abccc8c592bf5523fa7dade31f09d` |
| 15 | `def` | [hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/hom--dd1063855983ce4e996a71c4.md) | 145 | `declaration-track:dd1063855983ce4e996a71c4c8222bf81742a59ac901c8179c454ec209165fb7` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/instance--874c9cab0495fe327f9fd0c6.md) | 148 | `declaration-track:874c9cab0495fe327f9fd0c61b50e571a5d74b8dcabd7cb340cf769b98bf8860` |
| 17 | `def` | [mkOfComonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/mkofcomonad--d80522ca8aa11fafe675a222.md) | 152 | `declaration-track:d80522ca8aa11fafe675a2229d12e5ead9074a5c3fd4a28119b0b9096fc414ea` |
| 18 | `theorem` | [mkOfComonad_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/mkofcomonad-hom--bb89918bd6ad820e09f5e77d.md) | 159 | `result-track:bb89918bd6ad820e09f5e77dbad742775b67d4b2eef280599b5aba555de26bfc` |
| 19 | `theorem` | [mkOfComonad_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/mkofcomonad-counit--39bd60e631c36a67c8c0a93f.md) | 161 | `result-track:39bd60e631c36a67c8c0a93fc2d8de0e77f228e94dbaadfcd833a443854a35ab` |
| 20 | `theorem` | [mkOfComonad_comul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/declarations/mkofcomonad-comul--ac848d190f9c671993d24ec0.md) | 163 | `result-track:ac848d190f9c671993d24ec0f87435257e3bf5179f4d0af02a7e33bdf70657e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
