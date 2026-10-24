# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b65bcedfbd90230574cb96c5fccba236c4cef2b3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b65bcedfbd90230574cb96c5fccba236c4cef2b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Over` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.ReflectsIso` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GroupCatMax.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/groupcatmax--ea08f77d71d8ac23baf4f2d4.md) | 44 | `declaration-track:ea08f77d71d8ac23baf4f2d4575304951bf0614e159704c65424eb595926207c` |
| 2 | `instance` | [groupObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/groupobj--bf60645853a9b9610ffe4251.md) | 50 | `declaration-track:bf60645853a9b9610ffe4251a054e70a022de63f1d85a090fdcf5bfa4acd48f3` |
| 3 | `def` | [sectionsSubgroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/sectionssubgroup--64f4bfe91fa0d6c0786bd5d0.md) | 62 | `declaration-track:64f4bfe91fa0d6c0786bd5d0367bc9c894843d42759f25b46346e34569a281e1` |
| 4 | `instance` | [limitGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/limitgroup--44da8e58375e9635fa119c0f.md) | 75 | `declaration-track:44da8e58375e9635fa119c0f508481d092045d60035c58dcadde8a8296a9eda1` |
| 5 | `instance` | [Forget₂.createsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forget-createslimit--c7bc69624546c94f88543061.md) | 92 | `declaration-track:c7bc69624546c94f8854306135fe50cc33a57c1a58edc37ea0415aac15baad59` |
| 6 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/limitcone--02c2c12e4fa2a87f5203c203.md) | 120 | `declaration-track:02c2c12e4fa2a87f5203c203b9bc3920d0e4307c0a5031725eff903c9d2e3e4d` |
| 7 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/limitconeislimit--698a8e24cde08f85375d877e.md) | 136 | `declaration-track:698a8e24cde08f85375d877e773e0ae0a78fed1850e3f446d8c44ff4fe26a9a7` |
| 8 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/haslimitsofsize--c38247d13147b567bf472e33.md) | 145 | `declaration-track:c38247d13147b567bf472e33423496d24768c3d96dfe33343766eb9a604d3b7c` |
| 9 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/haslimits--628008d6c85eade15f3cbbb8.md) | 158 | `declaration-track:628008d6c85eade15f3cbbb824ddc0b63375001b7fc80751d09c13aff5fe1c37` |
| 10 | `instance` | [forget₂MonPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forget-monpreserveslimitsofsize--c256864753f4a5f23e04310b.md) | 174 | `declaration-track:c256864753f4a5f23e04310bc59f170fa24b158d866aeb98d227a38af4cf3ed2` |
| 11 | `instance` | [forget₂MonPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forget-monpreserveslimits--d0d799bb94c1325b256b35b7.md) | 187 | `declaration-track:d0d799bb94c1325b256b35b71b60a1d6e64800b6cc2f9193a155974a65fd019e` |
| 12 | `instance` | [forgetPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forgetpreserveslimitsofsize--b92098c6c5859efe23f9cd7e.md) | 202 | `declaration-track:b92098c6c5859efe23f9cd7ecb45854d5564f79d78ea5d8dbfb678a3dc7dc9da` |
| 13 | `instance` | [forgetPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forgetpreserveslimits--66aa73b629fff992a3493392.md) | 220 | `declaration-track:66aa73b629fff992a3493392142523fe4850c7244e2d50304225fdb252ab29fd` |
| 14 | `abbrev` | [CommGroupCatMax.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/commgroupcatmax--b7c96aab575921f4c25382bb.md) | 233 | `declaration-track:b7c96aab575921f4c25382bb408f7a47c7b63eab235ca29564c227efadaab9bc` |
| 15 | `instance` | [commGroupObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/commgroupobj--2f2f2c583e1201209764b374.md) | 238 | `declaration-track:2f2f2c583e1201209764b3745b3708f52af37dc46f8e5566e708a70f91c4ae6c` |
| 16 | `instance` | [limitCommGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/limitcommgroup--80e2197503d0ce5f64df1453.md) | 248 | `declaration-track:80e2197503d0ce5f64df145329844ce9e6c21577e2e491a4c09f9cb637621937` |
| 17 | `instance` | [Forget₂.createsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forget-createslimit--0be194d8a2e3977761c6e5ce.md) | 267 | `declaration-track:0be194d8a2e3977761c6e5cefeada0d13d5af3ad10df4bfaa754776e09a82461` |
| 18 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/limitcone--515dfaef924ad0fb23cca0d5.md) | 293 | `declaration-track:515dfaef924ad0fb23cca0d5ab988918c24c4083b9fa11d97f4213cab203a00e` |
| 19 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/limitconeislimit--28714c96b785e8dcdec70e5e.md) | 306 | `declaration-track:28714c96b785e8dcdec70e5e86fdb867798a9f9d6b92da3b97ee92eeeefa2ca4` |
| 20 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/haslimitsofsize--588c7048a5621204e7c1573e.md) | 316 | `declaration-track:588c7048a5621204e7c1573ed630b328f877537588df71a47181f3d803ece2ab` |
| 21 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/haslimits--99d85eb61dd9b281133cf4ff.md) | 326 | `declaration-track:99d85eb61dd9b281133cf4ffbd80a259c3cc5131422646e79cab50143e353488` |
| 22 | `instance` | [forget₂GroupPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forget-grouppreserveslimitsofsize--d4b0eff03b568c5f5e02da6b.md) | 341 | `declaration-track:d4b0eff03b568c5f5e02da6b08af168c459d0512db76618498865ff31d56a846` |
| 23 | `instance` | [forget₂GroupPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forget-grouppreserveslimits--954d2e51aa353b60a17b7a25.md) | 350 | `declaration-track:954d2e51aa353b60a17b7a25af00f5963734b071fc12fd49e380728c6e17510b` |
| 24 | `def` | [forget₂CommMonPreservesLimitsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forget-commmonpreserveslimitsaux--a33bd655165f08854336f62e.md) | 362 | `declaration-track:a33bd655165f08854336f62e80b5018fe7e3b9b45c37bf9f1e2f0dad1a3f0f95` |
| 25 | `instance` | [forget₂CommMonPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forget-commmonpreserveslimitsofsize--857cbbf601375136052814f1.md) | 378 | `declaration-track:857cbbf601375136052814f1b07bddbcbad3853d6aece3510a26b2cb23e339ef` |
| 26 | `instance` | [forgetPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/forgetpreserveslimitsofsize--8bd577a2430ffeceecc68943.md) | 396 | `declaration-track:8bd577a2430ffeceecc689430b53c3793bde759dcd78986a7038dca04c9e7340` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/example--c8accdb87ab984edfc33a057.md) | 412 | `declaration-track:c8accdb87ab984edfc33a057d1f225622f5f680c7d81a3aaff51146893a1d4f0` |
| 28 | `def` | [kernelIsoKer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/kernelisoker--0c85ce8ba2a80788a05ad13a.md) | 421 | `declaration-track:0c85ce8ba2a80788a05ad13abe1f815102ba31c33ec67e46e5c7b51758dd6be5` |
| 29 | `theorem` | [kernelIsoKer_hom_comp_subtype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/kernelisoker-hom-comp-subtype--23f2590ce878da1d7c839c97.md) | 460 | `result-track:23f2590ce878da1d7c839c9752b4686cc8e00f90ea9263281b80ead5fbec8172` |
| 30 | `theorem` | [kernelIsoKer_inv_comp_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/kernelisoker-inv-comp--f28c5af70010b20d83bf61df.md) | 466 | `result-track:f28c5af70010b20d83bf61df17b5297d30f0d3e4f534be19f41ff77806a840ba` |
| 31 | `def` | [kernelIsoKerOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/declarations/kernelisokerover--b94bbabeb45bedc3b194d04d.md) | 479 | `declaration-track:b94bbabeb45bedc3b194d04d1508e090e7330863580bc5b83ffcd83295eadc45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
