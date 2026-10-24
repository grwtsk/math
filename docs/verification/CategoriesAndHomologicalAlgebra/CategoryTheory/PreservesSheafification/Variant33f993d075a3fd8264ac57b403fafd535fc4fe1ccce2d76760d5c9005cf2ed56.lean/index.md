# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesSheafification.Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2936abf8d5476b6d1a9caff19d89aa5506d45a28",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2936abf8d5476b6d1a9caff19d89aa5506d45a28`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Localization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CompatibleSheafification` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesSheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/preservessheafification--3187a03448d78af39a3b0ddd.md) | 65 | `declaration-track:3187a03448d78af39a3b0ddd0c9806cde4447606259416747a86ca796d535d4b` |
| 2 | `lemma` | [W_of_preservesSheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/w-of-preservessheafification--819ab12ce997af4c53cf6c35.md) | 70 | `result-track:819ab12ce997af4c53cf6c3541f66fffc82b8a21dbb370f5a1c9fd43caabf49f` |
| 3 | `lemma` | [W_isInvertedBy_whiskeringRight_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/w-isinvertedby-whiskeringright-presheaftosheaf--de66c30426cf7d109c16fc8b.md) | 77 | `result-track:de66c30426cf7d109c16fc8bda9f013be27ee978ef424cce9f80fc5cb1b6d263` |
| 4 | `abbrev` | [Sheaf.composeAndSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/sheaf-composeandsheafify--04ea5ffd7228a3d533c00d79.md) | 92 | `declaration-track:04ea5ffd7228a3d533c00d79e51b22745744ff492aabdc1f8a6b1dd6f31d5ead` |
| 5 | `def` | [toPresheafToSheafCompComposeAndSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/topresheaftosheafcompcomposeandsheafify--b27e7291c9b4e426c65299a1.md) | 101 | `declaration-track:b27e7291c9b4e426c65299a1f10f2d792b0eec4caf128c47532616942abf5d88` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/instance--7e9f1adac164e73fd90379a5.md) | 109 | `declaration-track:7e9f1adac164e73fd90379a5a71403ee885974a5e364cd4e0b3a493130bad7c7` |
| 7 | `def` | [presheafToSheafCompComposeAndSheafifyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/presheaftosheafcompcomposeandsheafifyiso--653db53725f93eb8b024dc30.md) | 119 | `declaration-track:653db53725f93eb8b024dc3020242238ad5bd09d980cb7693980af3f114b5b78` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/instance--96996645bf94000102a71379.md) | 124 | `declaration-track:96996645bf94000102a71379b2250fc0e267525d8421a313331cfa423cd5b364` |
| 9 | `lemma` | [GrothendieckTopology.preservesSheafification_iff_of_adjunctions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/grothendiecktopology-preservessheafification-iff-of-adjunctions--e6308d3ec6d866c90396ba64.md) | 135 | `result-track:e6308d3ec6d866c90396ba6418afd065f94fa9ee06f761ca632f959d163444a1` |
| 10 | `def` | [sheafComposeNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/sheafcomposenattrans--b8d769e0d6f7891f765af9fb.md) | 164 | `declaration-track:b8d769e0d6f7891f765af9fb2df0108a5ade6f9a44d4e6f9414935f208ce2a2d` |
| 11 | `lemma` | [sheafComposeNatTrans_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/sheafcomposenattrans-fac--f4490ad6b5854fa60fc2e085.md) | 176 | `result-track:f4490ad6b5854fa60fc2e085c864aa1efc149a72a1b3dc5538f076c67e14d3db` |
| 12 | `lemma` | [sheafComposeNatTrans_app_uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/sheafcomposenattrans-app-uniq--76a3c57468e87568d278e701.md) | 183 | `result-track:76a3c57468e87568d278e7017a9be65cc3d68e9f7caf8e4218be9021577c6b2c` |
| 13 | `lemma` | [GrothendieckTopology.preservesSheafification_iff_of_adjunctions_of_hasSheafCompose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/grothendiecktopology-preservessheafification-iff-of-adjunctions-of-hassh--9b440b166eaecf80e6e0690a.md) | 194 | `result-track:9b440b166eaecf80e6e0690af1664652d7d7d3923f81e831160c4c6525e7f00f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/instance--301b1d510ab3fb1f54592dfb.md) | 206 | `declaration-track:301b1d510ab3fb1f54592dfb57a85d4c8607e789dd0ee0c9bf05ab6a4a3382fb` |
| 15 | `def` | [sheafComposeNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/sheafcomposenatiso--f6c03750135fadee283873f7.md) | 214 | `declaration-track:f6c03750135fadee283873f7ee42f6626d57e3510bb24c634f1e77ca92e0ef25` |
| 16 | `def` | [sheafifyComposeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/sheafifycomposeiso--bb29594c3a726940dc8f2219.md) | 229 | `declaration-track:bb29594c3a726940dc8f2219b44c102f9c594d739f14c3988aeaa44bed3fdf91` |
| 17 | `lemma` | [sheafComposeIso_hom_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/sheafcomposeiso-hom-fac--cac43ddd05bb15f8d11822de.md) | 235 | `result-track:cac43ddd05bb15f8d11822de91ed3275a52cad0a295e7061d706ee1c683f8d6a` |
| 18 | `lemma` | [sheafComposeIso_inv_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/sheafcomposeiso-inv-fac--0f35d46ea89a7ca86ad98213.md) | 241 | `result-track:0f35d46ea89a7ca86ad98213484811a8f894d63fc4b8144101b250bfff6b7535` |
| 19 | `lemma` | [sheafToPresheaf_map_sheafComposeNatTrans_eq_sheafifyCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/sheaftopresheaf-map-sheafcomposenattrans-eq-sheafifycompiso-inv--a6293cd0143e9df12271e4bd.md) | 268 | `result-track:a6293cd0143e9df12271e4bdc0fc414283a82df11040ea94489f4e419c9b5458` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/instance--7684e3234ba0b736b705e57b.md) | 281 | `declaration-track:7684e3234ba0b736b705e57b04618f4983085d288d0ed22a7d7078b8be915d44` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/instance--31fdec299621054fdf87d80d.md) | 287 | `declaration-track:31fdec299621054fdf87d80d7c868c74f6d7eb837c08aeaf9c676e47e4ff1380` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/instance--2410ab3fc43ed2802c8887a0.md) | 290 | `declaration-track:2410ab3fc43ed2802c8887a0feb727d0a0f06fd53674488f1f699c416c2116bd` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant33f993d075a3fd8264ac57b403fafd535fc4fe1ccce2d76760d5c9005cf2ed56.lean/declarations/example--0ffdfc098074a4407355125a.md) | 298 | `declaration-track:0ffdfc098074a4407355125a0dc0bcda5447672d9bdbabcc66308f5e69a19c41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
