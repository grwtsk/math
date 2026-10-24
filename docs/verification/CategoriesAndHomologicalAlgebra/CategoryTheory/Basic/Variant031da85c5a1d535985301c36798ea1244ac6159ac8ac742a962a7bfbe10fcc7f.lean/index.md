# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e6451ec0604cb71ff2a6de8cfa377a357bb852e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e6451ec0604cb71ff2a6de8cfa377a357bb852e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EffectiveEpiStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepistruct--a22aa7774e22b15723571a5a.md) | 53 | `declaration-track:a22aa7774e22b15723571a5a8796b070728a8a14f1b70ce03eca3ae1fd50a42f` |
| 2 | `class` | [EffectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepi--621343095f8d6db777448156.md) | 75 | `declaration-track:621343095f8d6db777448156b179bb1b97954cc73ec87ea3f95adfcf961444b3` |
| 3 | `def` | [EffectiveEpi.getStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepi-getstruct--6792a779bfe5836ab91c2e8e.md) | 81 | `declaration-track:6792a779bfe5836ab91c2e8e14f787288004635bfbfcf5e826382f6d03f93206` |
| 4 | `def` | [EffectiveEpi.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepi-desc--c1ac76a6f2b8bc392f9219e7.md) | 86 | `declaration-track:c1ac76a6f2b8bc392f9219e7e45827cad89022e98c8c1e0234c5a2e849b6e4b2` |
| 5 | `lemma` | [EffectiveEpi.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepi-fac--5cefbc6875935ee40f8518b4.md) | 91 | `result-track:5cefbc6875935ee40f8518b4334b5e2f38892443562b0011d8156573f9aeb7a3` |
| 6 | `lemma` | [EffectiveEpi.uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepi-uniq--92d0f4d0b744062420eab240.md) | 96 | `result-track:92d0f4d0b744062420eab2401828c607bd71146f4bbfb5f72d9f76bce9e4d4c7` |
| 7 | `instance` | [epiOfEffectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/epiofeffectiveepi--0e289df4fa8b6ac3c86372f1.md) | 102 | `declaration-track:0e289df4fa8b6ac3c86372f15a1d95105bc6b0c2ccd2ef18b0b651016c056266` |
| 8 | `structure` | [EffectiveEpiFamilyStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamilystruct--9585c2e75218a497d06571fa.md) | 113 | `declaration-track:9585c2e75218a497d06571fa8051d3e83f1f2dd20da76e435171f64c3edd508b` |
| 9 | `class` | [EffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamily--800b7529f14cfabacdcf7bad.md) | 139 | `declaration-track:800b7529f14cfabacdcf7badd0cf6b9b25d6fd4274abb6290c852fa103296fea` |
| 10 | `def` | [EffectiveEpiFamily.getStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamily-getstruct--a65b023e1ecfdc2c3ecc7f2d.md) | 145 | `declaration-track:a65b023e1ecfdc2c3ecc7f2ddbafecb24a11844528597da2c83fbfd6fcb4feef` |
| 11 | `def` | [EffectiveEpiFamily.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamily-desc--19cce0d39d0337529c8fd07a.md) | 151 | `declaration-track:19cce0d39d0337529c8fd07af016b922a85aa5c473e9ea24930934ed9005bcc3` |
| 12 | `lemma` | [EffectiveEpiFamily.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamily-fac--1cc4e3e40937e513035ff73a.md) | 158 | `result-track:1cc4e3e40937e513035ff73a87bccbeb07bf75255752cf9b16995135be36e710` |
| 13 | `lemma` | [EffectiveEpiFamily.uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamily-uniq--65d5a89837b7fbbf7fd575ff.md) | 165 | `result-track:65d5a89837b7fbbf7fd575ff2c3a11c1f606e9c9bc4950c2c2a31f0fb1e98745` |
| 14 | `lemma` | [EffectiveEpiFamily.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamily-hom-ext--d21913095a9ae0f9d07a2c1e.md) | 174 | `result-track:d21913095a9ae0f9d07a2c1eb99c5203c34b5dea4aac9820f1b3e09f0360bc4d` |
| 15 | `def` | [effectiveEpiFamilyStructSingletonOfEffectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamilystructsingletonofeffectiveepi--5a529ca72b42fb6dc0b95b63.md) | 187 | `declaration-track:5a529ca72b42fb6dc0b95b6345619be019c3988a1f50d3bc30ad180e37656dd0` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/instance--d37c5e50cd9320f8aee72f11.md) | 193 | `declaration-track:d37c5e50cd9320f8aee72f1148074f2dce4dc56ad4435cafd524215b433ca17d` |
| 17 | `def` | [effectiveEpiStructOfEffectiveEpiFamilySingleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepistructofeffectiveepifamilysingleton--0623d2a8f13bdab037a64f3a.md) | 200 | `declaration-track:0623d2a8f13bdab037a64f3aecee55c823ccba59d8b78b9981bdad30347b1305` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/instance--3bf8bed21cc4a9ffadcc733f.md) | 210 | `declaration-track:3bf8bed21cc4a9ffadcc733f3f334ae7a40934d2af2cd9ee033cea8dee1bbade` |
| 19 | `theorem` | [effectiveEpi_iff_effectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepi-iff-effectiveepifamily--e6fbe1fa8837ddca41a7a579.md) | 214 | `result-track:e6fbe1fa8837ddca41a7a5791e77e59ce60b0e16b36b71c53fc3915bae1a3277` |
| 20 | `def` | [effectiveEpiFamilyStructOfIsIsoDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamilystructofisisodesc--bb20d809983840f5efd5bbf8.md) | 223 | `declaration-track:bb20d809983840f5efd5bbf886f97494067d2d01932dc79907741903c380c2dd` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/instance--46c9b96a5d0e61dcd062c1e7.md) | 241 | `declaration-track:46c9b96a5d0e61dcd062c1e7085fd0d9682ac999329d367181cfcc7b08a14303` |
| 22 | `def` | [effectiveEpiStructOfIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepistructofisiso--7d28aa4382754dcc40ed0d94.md) | 247 | `declaration-track:7d28aa4382754dcc40ed0d942149f9d3074722410bdef203da47183b43c42df9` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/instance--d70834fbd8938a3036ee41db.md) | 252 | `declaration-track:d70834fbd8938a3036ee41dba6a6dd554c7924177f1315131403f825f0c53912` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/example--b1e637ee3d55ccb4d52e55dd.md) | 254 | `declaration-track:b1e637ee3d55ccb4d52e55dd9f5ec128236b1270b80df1b7785ab20f4a3b0d3f` |
| 25 | `def` | [EffectiveEpiFamilyStruct.reindex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamilystruct-reindex--ac9214514af94a7418be68a4.md) | 259 | `declaration-track:ac9214514af94a7418be68a4e7e1092bc82c14e04c291f7e43cf26b56bc74351` |
| 26 | `lemma` | [EffectiveEpiFamily.reindex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/declarations/effectiveepifamily-reindex--9bdb1444c64d863b08843d35.md) | 275 | `result-track:9bdb1444c64d863b08843d35c2e4a904f5dbdfa6871e509f04cc855116f2862f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
