# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Generator.Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dffe284b027ad6e7e8ca46b6c04d1e4c89cb1604",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dffe284b027ad6e7e8ca46b6c04d1e4c89cb1604`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Free` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elements` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeYonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/freeyonedaequiv--a83987c38da87d77751589ab.md) | 54 | `declaration-track:a83987c38da87d77751589abd412e364eebbc1d3342946ee9ff049557b8ea5ba` |
| 2 | `lemma` | [freeYonedaEquiv_symm_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/freeyonedaequiv-symm-app--2faf841f1cc7266f8c25ba6d.md) | 58 | `result-track:2faf841f1cc7266f8c25ba6df7e3fba89bfa7fba3315977a5fb2233e87084ab5` |
| 3 | `lemma` | [freeYonedaEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/freeyonedaequiv-comp--391ed9990078ef2cf1989428.md) | 65 | `result-track:391ed9990078ef2cf198942855446afcf36fad05fa3ebc27f8abe40c25c160f7` |
| 4 | `def` | [freeYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/freeyoneda--a3900f8d84573950092c9a98.md) | 72 | `declaration-track:a3900f8d84573950092c9a983fbeabb12f155f6846332efc1de7518e23e9b180` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/instance--82ea75e95088ee241f75fbda.md) | 76 | `declaration-track:82ea75e95088ee241f75fbdaa507a546d17bcabcbd2aa31b49cd923adcd10304` |
| 6 | `lemma` | [isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/isseparating--2066777c36afcf5dd4f831cb.md) | 83 | `result-track:2066777c36afcf5dd4f831cb7a73f57e481831e89cb82b335a9a32053c63b4b8` |
| 7 | `lemma` | [isDetecting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/isdetecting--8f5fe79b3a9e4c33216c0eab.md) | 89 | `result-track:8f5fe79b3a9e4c33216c0eabb648f3fe75e8ca51e6905edd28f074fc8dc45575` |
| 8 | `instance` | [wellPowered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/wellpowered--6e89e9bd322882617e6047c1.md) | 94 | `declaration-track:6e89e9bd322882617e6047c1745b3be3f85119142f6361921a43ff0b1e683cb3` |
| 9 | `abbrev` | [Elements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/elements--3eb0fda39a750954d803895f.md) | 100 | `declaration-track:3eb0fda39a750954d803895f6c02628bb47c271b7faafd386edb2de33612f15f` |
| 10 | `abbrev` | [elementsMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/elementsmk--894c560710214ab38cd45cb0.md) | 104 | `declaration-track:894c560710214ab38cd45cb0a635691f12bde08057d781d9826e40956dff2365` |
| 11 | `abbrev` | [freeYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/freeyoneda--13323a9a4e0408d827181f2c.md) | 115 | `declaration-track:13323a9a4e0408d827181f2cf39303d45c6bd5ee9d0f25ae02eeda812d8bf9bb` |
| 12 | `abbrev` | [fromFreeYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/fromfreeyoneda--a151d46692388842fb742180.md) | 120 | `declaration-track:a151d46692388842fb742180cf582d26261893c80e79d247919a24af798a7ec8` |
| 13 | `lemma` | [fromFreeYoneda_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/fromfreeyoneda-app-apply--529c39083d875113b1545399.md) | 124 | `result-track:529c39083d875113b154539959b8fc04ae2dc3aa721ff5ebd0cd619b8897489e` |
| 14 | `abbrev` | [freeYonedaCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/freeyonedacoproduct--225e205515fb74fd47c9ddad.md) | 136 | `declaration-track:225e205515fb74fd47c9ddad20b224216066cf18398ddb924af50f4e33531a2d` |
| 15 | `abbrev` | [ιFreeYonedaCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/freeyonedacoproduct--9282c441456090f8cf51e1ef.md) | 141 | `declaration-track:9282c441456090f8cf51e1ef08404de14fc54f9af667176b43c36c6131ef9b1b` |
| 16 | `def` | [fromFreeYonedaCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/fromfreeyonedacoproduct--a79115c33a07ebac3ca743b9.md) | 147 | `declaration-track:a79115c33a07ebac3ca743b9bcb9d27c45375b1a50ad2f6a5ac6b09a912b0f5d` |
| 17 | `def` | [freeYonedaCoproductMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/freeyonedacoproductmk--3dda359d6a47fe0b1df017b3.md) | 153 | `declaration-track:3dda359d6a47fe0b1df017b335f0455f12806db443e41f0fca1385952d7b73f3` |
| 18 | `lemma` | [ι_fromFreeYonedaCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/fromfreeyonedacoproduct--b205febf5fa4bc0be7b2d258.md) | 158 | `result-track:b205febf5fa4bc0be7b2d258e6c5933362662990aea17f82829dc1aa71286a89` |
| 19 | `lemma` | [ι_fromFreeYonedaCoproduct_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/fromfreeyonedacoproduct-apply--abc14ba0c469cfe4373be9e3.md) | 162 | `result-track:abc14ba0c469cfe4373be9e30a020f91f3d80d8d1d61643a20b3da71c4c1d7f1` |
| 20 | `lemma` | [fromFreeYonedaCoproduct_app_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/fromfreeyonedacoproduct-app-mk--56a0df345f2a7a74ab95877c.md) | 168 | `result-track:56a0df345f2a7a74ab95877cab9208f554e67e926ad3119bc725a2520343cc6a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/instance--6de32b91c2fd48dd68e54650.md) | 174 | `declaration-track:6de32b91c2fd48dd68e54650d04a5cbf2ce92995e6be2b573aca15c7546c507d` |
| 22 | `def` | [toFreeYonedaCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/tofreeyonedacoproduct--e766fde3fbc6d945e8cd6ffd.md) | 181 | `declaration-track:e766fde3fbc6d945e8cd6ffd96dec08af9eb85e4562fd3ec791aea4b8c41e455` |
| 23 | `lemma` | [toFreeYonedaCoproduct_fromFreeYonedaCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/tofreeyonedacoproduct-fromfreeyonedacoproduct--13de073a80d21eb1641c0cf6.md) | 186 | `result-track:13de073a80d21eb1641c0cf6fd7aad81f3d3ad1acc963e0e03e2fc136aa6e159` |
| 24 | `abbrev` | [freeYonedaCoproductsCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/freeyonedacoproductscokernelcofork--4e2fc9fdf8280f3d7c657df6.md) | 192 | `declaration-track:4e2fc9fdf8280f3d7c657df6c3d1a459fbee0768b987a7a16d85ca4cde666b89` |
| 25 | `def` | [isColimitFreeYonedaCoproductsCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant45bae4b06628deaccaba0ebe1657cd3a67c6e6f29602be4f69e67826ad93468a.lean/declarations/iscolimitfreeyonedacoproductscokernelcofork--dfbc833f1288e9e0394045e5.md) | 200 | `declaration-track:dfbc833f1288e9e0394045e5b13a3b998aa7197fa90979a6711489080fc37dcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
