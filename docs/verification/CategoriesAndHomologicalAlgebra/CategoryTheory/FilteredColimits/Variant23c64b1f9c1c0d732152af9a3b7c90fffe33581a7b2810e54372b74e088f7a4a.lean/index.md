# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e3ab1334eb33505b0874bb54c94df6cd1a8375c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e3ab1334eb33505b0874bb54c94df6cd1a8375c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.FilteredColimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/m--65e3542fd0409ac571664f25.md) | 52 | `declaration-track:65e3542fd0409ac571664f2537f42a6e27b3eba60a35ae08b2cca3f9758bca25` |
| 2 | `abbrev` | [M.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/m-mk--5886205009de15938debba25.md) | 57 | `declaration-track:5886205009de15938debba2584b1155f8903042a14d2e25046800da546e6c3d3` |
| 3 | `theorem` | [M.mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/m-mk-eq--8c9377089066bd6d73c1ef97.md) | 60 | `result-track:8c9377089066bd6d73c1ef97d53c0df01d6926f47a1763836da773d62867fcd4` |
| 4 | `def` | [colimitSMulAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimitsmulaux--f845026335486c06182b319e.md) | 65 | `declaration-track:f845026335486c06182b319e8347f5064ee98a426ec87d70797335e3d7a8aecc` |
| 5 | `theorem` | [colimitSMulAux_eq_of_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimitsmulaux-eq-of-rel--ce8828f8a91109343594c628.md) | 68 | `result-track:ce8828f8a91109343594c628952d850cab57ec88609216f99a686192334e5f08` |
| 6 | `instance` | [colimitHasSMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimithassmul--092dfc1ee779d4c6a36118b6.md) | 78 | `declaration-track:092dfc1ee779d4c6a36118b60df3c98a8289080eac4c7f30453f204e3909746b` |
| 7 | `theorem` | [colimit_smul_mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimit-smul-mk-eq--8e269443bc0513521fdf6693.md) | 87 | `result-track:8e269443bc0513521fdf6693aa5f76a36bec5365ddd80bb95ee6046b716e25b5` |
| 8 | `theorem` | [colimitModule.one_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimitmodule-one-smul--a6c091764403c4387ecf8627.md) | 90 | `result-track:a6c091764403c4387ecf8627923a4f68eb694dbbfb197a19f63d78c263d0ae58` |
| 9 | `instance` | [colimitMulAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimitmulaction--4917ed4c4d45fab82006ffe5.md) | 97 | `declaration-track:4917ed4c4d45fab82006ffe5e50b1a61182e1453300525082412d255a324303a` |
| 10 | `instance` | [colimitSMulWithZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimitsmulwithzero--3c7701ee4b2acdb9aeadb036.md) | 107 | `declaration-track:3c7701ee4b2acdb9aeadb036fefa190a8cdc5278a68dee9e5c29663110b70ded` |
| 11 | `theorem` | [colimitModule.add_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimitmodule-add-smul--acb0e093c35014675fe1b477.md) | 117 | `result-track:acb0e093c35014675fe1b47707da51f71508893766585c51d602bf113230c1fa` |
| 12 | `instance` | [colimitModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimitmodule--cd65cc0909389332cf3cc3c2.md) | 125 | `declaration-track:cd65cc0909389332cf3cc3c2dd71c4fa2a6512ba1c325d885f3186bc7dc88d81` |
| 13 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimit--0ff8fe159d40575f32ae8c42.md) | 138 | `declaration-track:0ff8fe159d40575f32ae8c42edcaa4491d6959a2639a8c555231ca203738dda2` |
| 14 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/coconemorphism--20206d014f62a4a2b6c8661e.md) | 142 | `declaration-track:20206d014f62a4a2b6c8661edb1808a384ffbf1cb00dcc84ca4ff489e10dfebb` |
| 15 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimitcocone--411171601dcf70eadac19f1d.md) | 149 | `declaration-track:411171601dcf70eadac19f1d1c00d53100766464380c22c997a19fa09960c2fd` |
| 16 | `def` | [colimitDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimitdesc--1f364c45eae59278b416eb58.md) | 161 | `declaration-track:1f364c45eae59278b416eb58ff27602efc8986261b20e214af478ffb479b058a` |
| 17 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/colimitcoconeiscolimit--85b9aa44ed705a2af05ed26b.md) | 172 | `declaration-track:85b9aa44ed705a2af05ed26b8c5d9b35513551c21feda52b8dbe51f2fbccedc9` |
| 18 | `instance` | [forget₂AddCommGroup_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/forget-addcommgroup-preservesfilteredcolimits--a940b0a1534733f73783cf23.md) | 184 | `declaration-track:a940b0a1534733f73783cf23d2f5130695212cec9d0de6b66852e4828cd0a2f4` |
| 19 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/forget-preservesfilteredcolimits--e7c779808b6803d342cfba46.md) | 192 | `declaration-track:e7c779808b6803d342cfba46b583e47976957066077e29327ed9fe73f24fae07` |
| 20 | `instance` | [forget_reflectsFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant23c64b1f9c1c0d732152af9a3b7c90fffe33581a7b2810e54372b74e088f7a4a.lean/declarations/forget-reflectsfilteredcolimits--9630586d250b68ba54fbaef0.md) | 196 | `declaration-track:9630586d250b68ba54fbaef0dd9ad421e3c41881e326ce3968b74a06b3f1dd72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
