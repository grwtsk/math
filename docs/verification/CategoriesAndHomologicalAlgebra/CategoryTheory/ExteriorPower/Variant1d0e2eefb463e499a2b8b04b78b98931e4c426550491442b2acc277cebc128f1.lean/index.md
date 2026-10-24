# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExteriorPower.Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c70a2fd2a181770d21cf0eac0acc676b4439eab1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c70a2fd2a181770d21cf0eac0acc676b4439eab1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ExteriorPower.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exteriorPower](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/exteriorpower--53278f88d03e6c5b48fa5809.md) | 26 | `declaration-track:53278f88d03e6c5b48fa58096f50be957122463fae966c44fd3417b9299cd7c6` |
| 2 | `def` | [AlternatingMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/alternatingmap--2499917ac135f92aa28da939.md) | 31 | `declaration-track:2499917ac135f92aa28da939469f0ca375d3f3fdec62f9282670217bbbf4311d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/instance--60f40c7215adbe2ef208c2b0.md) | 34 | `declaration-track:60f40c7215adbe2ef208c2b0bacc3720d8fb7bdd99f2b2c4e3385eafd315dcc2` |
| 4 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/ext--b31512569c144671dcf73924.md) | 43 | `result-track:b31512569c144671dcf7392434573b04771d00dbbbd43130eefb8cb9e93bc7f1` |
| 5 | `def` | [postcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/postcomp--f5fc07400bc2d3fde8aed0e5.md) | 50 | `declaration-track:f5fc07400bc2d3fde8aed0e5824aac3367c4b47aa39e9f8cd45677bc7e9f5a11` |
| 6 | `lemma` | [postcomp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/postcomp-apply--7639451d4bca4fb8493fd41c.md) | 54 | `result-track:7639451d4bca4fb8493fd41c12256f93740a25ab0b95ac1556a4ae6eea40dcdd` |
| 7 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/mk--e4a63a294d151d346ba20477.md) | 63 | `declaration-track:e4a63a294d151d346ba20477fcd19c2fa90176308e7a611ab740991046576d6d` |
| 8 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/hom-ext--9750814bf431ff0cae229cdc.md) | 68 | `result-track:9750814bf431ff0cae229cdceed1950be54ec0f24c91cd8b8f97035defbd1270` |
| 9 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/desc--f607618d4066231f5ece10a3.md) | 75 | `declaration-track:f607618d4066231f5ece10a3fdb44cb36ad15b677c30ad52785bad1b0839d943` |
| 10 | `lemma` | [desc_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/desc-mk--77e59d82fb1aedf41cfe99cc.md) | 80 | `result-track:77e59d82fb1aedf41cfe99ccf7d6ea467247c2d0cb33482b2b52a7990b5df81f` |
| 11 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/map--0ddf68886e57eeae1d71ed65.md) | 87 | `declaration-track:0ddf68886e57eeae1d71ed651ee9c8202d9cc00e03b65f508ce3b533b889a375` |
| 12 | `lemma` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/map-mk--08ad51ada6bd5584a8a4d9c4.md) | 92 | `result-track:08ad51ada6bd5584a8a4d9c456e9882164f6b02a94b9665204c95611e1ee3bc1` |
| 13 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/functor--c54ca5d875ed44f86a8e58cb.md) | 100 | `declaration-track:c54ca5d875ed44f86a8e58cb802960f5e3a876d70a0ecdc7c664119920d8aeda` |
| 14 | `def` | [iso₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/iso--577b25a7fbd54c4529ade2e2.md) | 105 | `declaration-track:577b25a7fbd54c4529ade2e29d7dd683998a37d6700b38a32184940b3f0a3101` |
| 15 | `lemma` | [iso₀_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/iso-hom-apply--4b934d03af6b89a4831d17b0.md) | 109 | `result-track:4b934d03af6b89a4831d17b089e8d5f44da0b2b545b73c97c006f4e38c1a07f0` |
| 16 | `lemma` | [iso₀_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/iso-hom-naturality--869e08eae1b0f51e8c38968c.md) | 114 | `result-track:869e08eae1b0f51e8c38968c59870052d2b27a31b2ca67679e4bde6152da00a1` |
| 17 | `def` | [iso₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/iso--a7526ea20333b1e2cb9eb1db.md) | 119 | `declaration-track:a7526ea20333b1e2cb9eb1dbdbc1501f896c8bfdc196b1ae3262a1d3d25df364` |
| 18 | `lemma` | [iso₁_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/iso-hom-apply--933cd5438b69e6b966217d23.md) | 123 | `result-track:933cd5438b69e6b966217d23138f72880a917f00978d76bc5bea0c0a53a11363` |
| 19 | `lemma` | [iso₁_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/iso-hom-naturality--2539a255cd330c609060d7ac.md) | 128 | `result-track:2539a255cd330c609060d7acea5177846857bac9877f6f0748ef3570375938ee` |
| 20 | `def` | [natIso₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/natiso--9d9a7346ee3bea579ff42111.md) | 135 | `declaration-track:9d9a7346ee3bea579ff421116f95c9342aa4a8882d31e542c93bf11c589048fd` |
| 21 | `def` | [natIso₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant1d0e2eefb463e499a2b8b04b78b98931e4c426550491442b2acc277cebc128f1.lean/declarations/natiso--baff36349dbd579b6d31ee73.md) | 139 | `declaration-track:baff36349dbd579b6d31ee735c82f1b77dc1fb408c1fc8c4e67d1b464a17b9d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
