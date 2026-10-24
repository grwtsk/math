# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasColimits.Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7db7da682256d494c648bbe4712d21cc9a08a1a5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7db7da682256d494c648bbe4712d21cc9a08a1a5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.OpenImmersion` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isColimit_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/iscolimit-exists-rep--1d8b3a3c7a3732649b9cb088.md) | 34 | `result-track:1d8b3a3c7a3732649b9cb088f2eed9843a30f8a230ddd87ea236f4eee9699bf5` |
| 2 | `theorem` | [colimit_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/colimit-exists-rep--e7b47e7e134e92047d8774cf.md) | 39 | `result-track:e7b47e7e134e92047d8774cf76838521c2cdc55a666e5d762b3ec5c6d61ba5fe` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/instance--28db26454640ae8cb0f2f802.md) | 44 | `declaration-track:28db26454640ae8cb0f2f8026986448bd7cee66bd91190c378ed46bfaf35b2e0` |
| 4 | `def` | [coproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/coproduct--59c3c9ff8f744032459c5ce9.md) | 59 | `declaration-track:59c3c9ff8f744032459c5ce9cbba84c4eb7a1b9d0ceffca51d18b8b00dc06753` |
| 5 | `def` | [coproductCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/coproductcofan--6b21389ad2b8e2bfd29fff4d.md) | 71 | `declaration-track:6b21389ad2b8e2bfd29fff4d1747080c4ef62756f1e5cd95e35397dfd65d61b1` |
| 6 | `def` | [coproductCofanIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/coproductcofaniscolimit--5062a49aca698b550af36aee.md) | 79 | `declaration-track:5062a49aca698b550af36aee7f4775a547c11403b0b50f7401fcc53f030cf09b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/instance--d4fc6dfcf4c4033789016330.md) | 107 | `declaration-track:d4fc6dfcf4c4033789016330f9e64d9502b2b7b0f37884a182c96ca946aea053` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/instance--be69eb4ba7e3617eb5f1559a.md) | 110 | `declaration-track:be69eb4ba7e3617eb5f1559a24e8a63fe014bbb66a22b8b927ebbee547684e74` |
| 9 | `theorem` | [coequalizer_π_app_isLocalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/coequalizer-app-islocalhom--c0bed7d5617d785c705c97e0.md) | 125 | `result-track:c0bed7d5617d785c705c97e0e8ce1b4013f43f6d58c49452cdf4a8cc658f242f` |
| 10 | `def` | [imageBasicOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/imagebasicopen--c2e4a5bea2d30ebc44a7556a.md) | 167 | `declaration-track:c2e4a5bea2d30ebc44a7556a215b57aaee9a2537f270e8d4db23a6eb8e294813` |
| 11 | `theorem` | [imageBasicOpen_image_preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/imagebasicopen-image-preimage--5792ce5244fc7bfb7eca312b.md) | 171 | `result-track:5792ce5244fc7bfb7eca312b2de30bbe609756bef70e35e9d867d2d45f34ff3c` |
| 12 | `theorem` | [imageBasicOpen_image_open](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/imagebasicopen-image-open--8a8dbb2066fa408c4bc15ae6.md) | 200 | `result-track:8a8dbb2066fa408c4bc15ae62c19083909cd60a4f1aa61f68fa8b913dc083a72` |
| 13 | `theorem` | [coequalizer_π_stalk_isLocalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/coequalizer-stalk-islocalhom--8cbb53a96407b0349ec59e21.md) | 211 | `result-track:8cbb53a96407b0349ec59e2101fb71d0e88c37256bafc4cadd4bd45ae1abb015` |
| 14 | `def` | [coequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/coequalizer--1624eb4611457293627b9299.md) | 246 | `declaration-track:1624eb4611457293627b9299aea89aa0de666473f4bd7206f3cb4e307f421b08` |
| 15 | `def` | [coequalizerCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/coequalizercofork--0f1fef0744e5bf91e7582fe6.md) | 254 | `declaration-track:0f1fef0744e5bf91e7582fe691af23f886181d52a8875ea1eb29326e50ecb2ed` |
| 16 | `theorem` | [isLocalHom_stalkMap_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/islocalhom-stalkmap-congr--83da9ff2aa479cd883ee9460.md) | 260 | `result-track:83da9ff2aa479cd883ee94601a452e6ee4d6d6f0a56a1d3dea5ba4642ee37f8f` |
| 17 | `def` | [coequalizerCoforkIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/coequalizercoforkiscolimit--b6044026b00dfa7f42892c55.md) | 266 | `declaration-track:b6044026b00dfa7f42892c5558780069a020bad83810d40fb95a55920d3d8d2e` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/instance--1ef18342b7c21042929daed3.md) | 298 | `declaration-track:1ef18342b7c21042929daed3f21df1965eb281118f9830ed31508bf0f1e92ead` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/instance--104d0d4d3ef412aed24fb66c.md) | 301 | `declaration-track:104d0d4d3ef412aed24fb66c1f78b07c5a795b24ae006154f776dd67af08f757` |
| 20 | `instance` | [preservesCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/preservescoequalizer--ddff9d4de0c14ebcdd476ba4.md) | 304 | `declaration-track:ddff9d4de0c14ebcdd476ba45909f53928f2ce643b990856582ed5cdb6925612` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/instance--4b6f7b56a5555bcd39599b0c.md) | 319 | `declaration-track:4b6f7b56a5555bcd39599b0c7d37f7a8c510eac2fdac654f2fe354e15428a78c` |
| 22 | `instance` | [preservesColimits_forgetToSheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/declarations/preservescolimits-forgettosheafedspace--de82ccd72a0263cb9c5b780d.md) | 322 | `declaration-track:de82ccd72a0263cb9c5b780d901f870403fbb56a2a623913aa468c3dc2194ffe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
