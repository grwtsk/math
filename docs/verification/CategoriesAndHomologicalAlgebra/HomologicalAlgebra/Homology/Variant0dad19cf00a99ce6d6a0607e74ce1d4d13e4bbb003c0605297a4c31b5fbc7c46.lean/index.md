# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Homology.Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49b89d1159d2b34f0f051d28abfb6a9e0024c5a8",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49b89d1159d2b34f0f051d28abfb6a9e0024c5a8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ImageToKernel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GradedObject` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [cycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cycles--3f557011a7b1fd0596d7252f.md) | 55 | `declaration-track:3f557011a7b1fd0596d7252f788e2387e3b3623ca0129923eae7a00a357a429a` |
| 2 | `theorem` | [cycles_eq_kernelSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cycles-eq-kernelsubobject--47750868a3222d5ad7a89ade.md) | 59 | `result-track:47750868a3222d5ad7a89ade8aa79f28cfcd2a5adce6b9d8f753ead936731424` |
| 3 | `def` | [cyclesIsoKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cyclesisokernel--0fecd22c79e2b2ff60a2d353.md) | 66 | `declaration-track:0fecd22c79e2b2ff60a2d3536c07ae0c6f32ef3855ff8c805d9847de5e0f545f` |
| 4 | `theorem` | [cycles_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cycles-eq-top--c9f6f014b1192a7ac28beb4e.md) | 70 | `result-track:c9f6f014b1192a7ac28beb4e5dba05646aef6cde5e1d6a77fe6bef25b1378b9e` |
| 5 | `abbrev` | [boundaries](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/boundaries--12e2179f96687d7b4bdab1e8.md) | 83 | `declaration-track:12e2179f96687d7b4bdab1e82b036d224b423b15260f12202f2212c74379561b` |
| 6 | `theorem` | [boundaries_eq_imageSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/boundaries-eq-imagesubobject--51093424f0582c9f900265ca.md) | 87 | `result-track:51093424f0582c9f900265ca6aad505db43add51492988faf84f251ecee2db46` |
| 7 | `def` | [boundariesIsoImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/boundariesisoimage--54606054d627b6f7577a8b83.md) | 94 | `declaration-track:54606054d627b6f7577a8b83150534d4860f894580daca9f769ca6635a69d906` |
| 8 | `theorem` | [boundaries_eq_bot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/boundaries-eq-bot--c7cb96d77a21a63512f93979.md) | 99 | `result-track:c7cb96d77a21a63512f93979e196475dd31b2714417fcdec26b43a4c8c29533b` |
| 9 | `theorem` | [boundaries_le_cycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/boundaries-le-cycles--748ded12221f9fbe8df94ecd.md) | 111 | `result-track:748ded12221f9fbe8df94ecd61792f10f1acd96ee053c7a1206f3ba4a7760247` |
| 10 | `abbrev` | [boundariesToCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/boundariestocycles--48cdafa6822f6c37ecd72ab3.md) | 116 | `declaration-track:48cdafa6822f6c37ecd72ab30654b9989ad1bfe0cc3f3a2b290c30937ea0d2bf` |
| 11 | `theorem` | [imageToKernel_as_boundariesToCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/imagetokernel-as-boundariestocycles--f8a9f5db1ed3965817afb24a.md) | 123 | `result-track:f8a9f5db1ed3965817afb24ab8f0de336f2ca0feeec9cee201474ccf12f4268c` |
| 12 | `abbrev` | [homology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/homology--25d89d6d2cdf08512e9ca963.md) | 130 | `declaration-track:25d89d6d2cdf08512e9ca96334c52360c31c87afd13e5332a05a3fd3267bc8b4` |
| 13 | `def` | [homologyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/homologyiso--022b29c9d1e8c51369df259b.md) | 137 | `declaration-track:022b29c9d1e8c51369df259b41cf5afffe71e55f147311da2b73e39e480f1cfe` |
| 14 | `def` | [ChainComplex.homologyZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/chaincomplex-homologyzeroiso--22dd04977d12b80b6e37f9d2.md) | 152 | `declaration-track:22dd04977d12b80b6e37f9d2dc4ca134bf6a3230c8c0663ec0a22c2ea637866a` |
| 15 | `def` | [CochainComplex.homologyZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cochaincomplex-homologyzeroiso--2edabd42a1d5184310a0920c.md) | 167 | `declaration-track:2edabd42a1d5184310a0920c0f542790e01330b382ca28affaad86c32d1a676a` |
| 16 | `def` | [ChainComplex.homologySuccIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/chaincomplex-homologysucciso--6a1c7adf1aee39a80d0e3085.md) | 181 | `declaration-track:6a1c7adf1aee39a80d0e30850edd397526354c1b7883844e59ff3fc0bd504b69` |
| 17 | `def` | [CochainComplex.homologySuccIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cochaincomplex-homologysucciso--fd4529127a31d9751d66a834.md) | 190 | `declaration-track:fd4529127a31d9751d66a834c629d4cb11fb3ff8b234d4d998f956990cf30ab1` |
| 18 | `abbrev` | [cyclesMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cyclesmap--b548687c521456d9979b273c.md) | 208 | `declaration-track:b548687c521456d9979b273cf5a291d1c6c1166b10ed3faad34e592b15b0976a` |
| 19 | `theorem` | [cyclesMap_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cyclesmap-arrow--dc4b0d4c975485117fb51a94.md) | 214 | `result-track:dc4b0d4c975485117fb51a94edd536f5e4c37992959bd9947b3dd5f2640741e2` |
| 20 | `theorem` | [cyclesMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cyclesmap-id--55fbfd4881f10f5765891699.md) | 222 | `result-track:55fbfd4881f10f57658916995d4e7ee63d496c9a8d9606ed3d8fbb37171564a3` |
| 21 | `theorem` | [cyclesMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cyclesmap-comp--99b8a6732ce8b7211882add0.md) | 228 | `result-track:99b8a6732ce8b7211882add0aac120c26cfa1eec7dcc0d37a11ee7fff91dc01b` |
| 22 | `def` | [cyclesFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/cyclesfunctor--73122b884df1a4912dbcc167.md) | 238 | `declaration-track:73122b884df1a4912dbcc167ee395d01b9bb1c971a445adf8b2ebb2444840f33` |
| 23 | `abbrev` | [boundariesMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/boundariesmap--1c3e6af583594c085c37149e.md) | 255 | `declaration-track:1c3e6af583594c085c37149e513484b78d47138bd1b32c4f657c86ca72dfeeb7` |
| 24 | `def` | [boundariesFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/boundariesfunctor--140b6d3b9ec14444a6acd504.md) | 263 | `declaration-track:140b6d3b9ec14444a6acd504b5c6a2af5a496b30560a55e8d514b4dead5df759` |
| 25 | `theorem` | [boundariesToCycles_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/boundariestocycles-naturality--93c653f6a22e2aaa6ef33f14.md) | 281 | `result-track:93c653f6a22e2aaa6ef33f14ffb6d02e46b1e22943716fc8c9aac29dc2bf074f` |
| 26 | `def` | [boundariesToCyclesNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/boundariestocyclesnattrans--c6ebc00f5010278b6aa27042.md) | 291 | `declaration-track:c6ebc00f5010278b6aa2704213337dc2b87760ee7f11bf777da5f371a8550d1c` |
| 27 | `def` | [homologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/homologyfunctor--006c1323d0129f713468797a.md) | 298 | `declaration-track:006c1323d0129f713468797a00d100124b53eff491712c14246d844727237306` |
| 28 | `def` | [gradedHomologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/declarations/gradedhomologyfunctor--56982edbaa65d224ac5ecc92.md) | 318 | `declaration-track:56982edbaa65d224ac5ecc9232eba062ce1ea917a15bb477b0fcd2fcba3de2c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
