# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TotalComplexShift.Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cb20a0d6e20d3e0d32d1a074bab30e1b1693cae",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cb20a0d6e20d3e0d32d1a074bab30e1b1693cae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.Shift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.TotalComplex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [shiftFunctor₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/shiftfunctor--2899fdb36c1d999de30fba5c.md) | 54 | `declaration-track:2899fdb36c1d999de30fba5c97d330265b19e3f043973902498d6b6a605f7175` |
| 2 | `abbrev` | [shiftFunctor₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/shiftfunctor--0eb4382cd4a06ef0130e24fb.md) | 60 | `declaration-track:0eb4382cd4a06ef0130e24fbd39e00bd8be97543cae9ff2c7ab4db2876856c84` |
| 3 | `def` | [shiftFunctor₁XXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/shiftfunctor-xxiso--5c8c7c3fd51b25476222730e.md) | 68 | `declaration-track:5c8c7c3fd51b25476222730ec04fde338b850f2e457b0cbccb87c01adc57ee0a` |
| 4 | `def` | [shiftFunctor₂XXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/shiftfunctor-xxiso--1afc56bd4d5d341284d0d518.md) | 72 | `declaration-track:1afc56bd4d5d341284d0d51864df92ce856ab033bf1ff716e54dc101cdc8a685` |
| 5 | `lemma` | [shiftFunctor₁XXIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/shiftfunctor-xxiso-refl--c2fe7be4ce66d44c1d55091a.md) | 76 | `result-track:c2fe7be4ce66d44c1d55091a4ee6517da3ec28c16943bdc6c200c32bdb3aed0b` |
| 6 | `lemma` | [shiftFunctor₂XXIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/shiftfunctor-xxiso-refl--f50c51c19743d4abc9e563cf.md) | 80 | `result-track:f50c51c19743d4abc9e563cf300a821065602b5670f5a25677ca50363f0e0bf4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/instance--5a62dc37d05a0318627f9d65.md) | 85 | `declaration-track:5a62dc37d05a0318627f9d6503f0c0ca7f588c47c176efa40cc9348d8f074a60` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/instance--ca5619ec07a5bc33e6d956a5.md) | 107 | `declaration-track:ca5619ec07a5bc33e6d956a5613eca9d3e2d4de69b7e03e4dd3b45b24089badc` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/instance--a202661901f7515ea2b8fae8.md) | 119 | `declaration-track:a202661901f7515ea2b8fae8ecd14144c865941cd520a1e77d3d3086f17bccf5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/instance--15869aabd63b68b10dd6cf1c.md) | 123 | `declaration-track:15869aabd63b68b10dd6cf1c529b3dada62d6982cb6320ae8e85dbdd682eb36a` |
| 11 | `def` | [totalShift₁XIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-xiso--e8712d7f4914bb6294187abb.md) | 128 | `declaration-track:e8712d7f4914bb6294187abb93b84bf3d5435c62a406042e11ba5f42e9790180` |
| 12 | `lemma` | [D₁_totalShift₁XIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/d-totalshift-xiso-hom--d73750bec373efab8ff91856.md) | 146 | `result-track:d73750bec373efab8ff9185679a21656c21fc569bf8be16aea4d962287e319af` |
| 13 | `lemma` | [D₂_totalShift₁XIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/d-totalshift-xiso-hom--cdb534cf0482520d24313133.md) | 166 | `result-track:cdb534cf0482520d24313133a3d2571ca9b7180957bc05e41bf12b78e42f38e5` |
| 14 | `def` | [totalShift₁Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-iso--92eef6f3a64ac1b0e7182622.md) | 190 | `declaration-track:92eef6f3a64ac1b0e7182622b8072fa515f151b7b488b760ef477e658c19e4aa` |
| 15 | `lemma` | [ι_totalShift₁Iso_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-iso-hom-f--863c4d026f1ef06a926c54a2.md) | 200 | `result-track:863c4d026f1ef06a926c54a2347d28b58cb292c5cb52eb44d26084718d45ef40` |
| 16 | `lemma` | [ι_totalShift₁Iso_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-iso-inv-f--b30c86cb357e79a23a63e228.md) | 210 | `result-track:b30c86cb357e79a23a63e2287c2848b9da958286ac4fccacc068cadde5141ca9` |
| 17 | `lemma` | [totalShift₁Iso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-iso-hom-naturality--40e175e4f1a705dad7370fb6.md) | 224 | `result-track:40e175e4f1a705dad7370fb6b23d061db9f948480ca6b21a9b2a80a63dea980e` |
| 18 | `def` | [totalShift₂XIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-xiso--7a5bbe065429e1b58d63e172.md) | 235 | `declaration-track:7a5bbe065429e1b58d63e172614d26cd9668ad8c55adf4e2873368e302f6e44e` |
| 19 | `lemma` | [D₁_totalShift₂XIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/d-totalshift-xiso-hom--97646a136087de9bd5295670.md) | 256 | `result-track:97646a136087de9bd52956708f66f625dc84de22f71597324a13ebe6d0a4062f` |
| 20 | `lemma` | [D₂_totalShift₂XIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/d-totalshift-xiso-hom--dbeb209a3536a9e1f51aa512.md) | 279 | `result-track:dbeb209a3536a9e1f51aa512cf08cd2a1ff04e3c9b829dea7f64e48ec707e476` |
| 21 | `def` | [totalShift₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-iso--9d19f51be49ee6d2297fba35.md) | 307 | `declaration-track:9d19f51be49ee6d2297fba35ed066022b100208a9e6058a93522a401879a8ebd` |
| 22 | `lemma` | [ι_totalShift₂Iso_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-iso-hom-f--44e533360b84c4209fe01e0d.md) | 317 | `result-track:44e533360b84c4209fe01e0d9fcc00bed649cfa25da4ab8137f89bd0784cfc88` |
| 23 | `lemma` | [ι_totalShift₂Iso_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-iso-inv-f--8996403e2e0884307da7f54c.md) | 328 | `result-track:8996403e2e0884307da7f54c678a60113534f2614d2e267cd1a62ca84b60b656` |
| 24 | `lemma` | [totalShift₂Iso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-iso-hom-naturality--0a1c84988da501f2cf0e89a2.md) | 342 | `result-track:0a1c84988da501f2cf0e89a2c6864ab9f50b0d265bcc7b4d36c593c3387915aa` |
| 25 | `def` | [shiftFunctor₁₂CommIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/shiftfunctor-commiso--d7af3b7f95613c3c59eebf18.md) | 356 | `declaration-track:d7af3b7f95613c3c59eebf18bb2f1401d41c3ab981a4e17a65b480973a775367` |
| 26 | `lemma` | [totalShift₁Iso_trans_totalShift₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-iso-trans-totalshift-iso--0a0dce1fbb39fd61b25fbe3d.md) | 362 | `result-track:0a0dce1fbb39fd61b25fbe3d491afb1c366cf3583fcc3df5e0313ef66147276e` |
| 27 | `lemma` | [totalShift₁Iso_hom_totalShift₂Iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/declarations/totalshift-iso-hom-totalshift-iso-hom--28f70b09109766670331d8fc.md) | 388 | `result-track:28f70b09109766670331d8fcb3a4fbe22e9751906f2558c9783de9b49a29b948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
