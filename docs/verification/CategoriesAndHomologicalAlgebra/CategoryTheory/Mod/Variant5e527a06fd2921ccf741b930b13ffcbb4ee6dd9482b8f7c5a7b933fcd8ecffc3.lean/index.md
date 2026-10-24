# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mod.Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b886160b5fd764a06157d9f9d7bb82341cc8fa9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b886160b5fd764a06157d9f9d7bb82341cc8fa9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Mod_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/mod--ebff302899db1352babaed9e.md) | 20 | `declaration-track:ebff302899db1352babaed9e71dbe5229fe730d6b2b5c664f702a71714e8c643` |
| 2 | `theorem` | [assoc_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/assoc-flip--95cb716dbe3c911a21b69d26.md) | 34 | `result-track:95cb716dbe3c911a21b69d26d5dbb8080eefcc239c24619e1a2ecca0a4f30a16` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/hom--0c9e07aaedba7c37424f26fb.md) | 39 | `declaration-track:0c9e07aaedba7c37424f26fbd08a5adbfd02053bac4ddd777f6063381fd26dda` |
| 4 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/id--32e037ac845408e82ddcc8b4.md) | 48 | `declaration-track:32e037ac845408e82ddcc8b43e7f833c3ed60318fc11aeb75fd28614f5e5c52b` |
| 5 | `instance` | [homInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/hominhabited--0714f84fad13685d77933dcd.md) | 50 | `declaration-track:0714f84fad13685d77933dcd0b21db80bc689319fd64f692c10785c2aa3ea640` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/comp--9f00f1c33b4bb12a36baaa31.md) | 55 | `declaration-track:9f00f1c33b4bb12a36baaa31d66b03c99f6dab78aa2b66bbddc74648db22248f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/instance--e1a88170aee1268d5ec189c7.md) | 57 | `declaration-track:e1a88170aee1268d5ec189c7d3f2c5ac57b388a3ba5b2938005b92c1a854ed7c` |
| 8 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/hom-ext--484e5d90603b1f8d71410370.md) | 63 | `result-track:484e5d90603b1f8d7141037025487daf0938e49d9d255889f33f58cb0879b122` |
| 9 | `theorem` | [id_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/id-hom--c5e1811c8377c6f1f7fb0f03.md) | 67 | `result-track:c5e1811c8377c6f1f7fb0f0336f0ef0e4298a17901f378dde936bb9e891a5f56` |
| 10 | `theorem` | [comp_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/comp-hom--591315ab2d1f3b4f19e602a6.md) | 71 | `result-track:591315ab2d1f3b4f19e602a613025aa7cc6b109d35e325650d6ffcaa1e713444` |
| 11 | `def` | [regular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/regular--d6ff3e4f550cbf453aeaa07d.md) | 79 | `declaration-track:d6ff3e4f550cbf453aeaa07db46f2c1731e0eb1baf2dc4a064e436fd8ba697cd` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/instance--f9f707528f5fb51e922b0725.md) | 83 | `declaration-track:f9f707528f5fb51e922b072513a1a75e9f8d4de0d4263da7ab77cb3171115547` |
| 13 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/forget--42021f1d08723457244d5c05.md) | 87 | `declaration-track:42021f1d08723457244d5c05decc3580d133a9a8392f5db0d407556f5cb307f0` |
| 14 | `def` | [comap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/comap--ba77aad1dd263db05000e82d.md) | 102 | `declaration-track:ba77aad1dd263db05000e82dcfc79d3d706b68822b373acb8c084dd242e8d15b` |
| 15 | `class` | [Mod_Class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/mod-class--71909c7fa2e40149eedfd26e.md) | 142 | `declaration-track:71909c7fa2e40149eedfd26e4669a58f2da26bba6f86da1c1cebe6658122232a` |
| 16 | `theorem` | [assoc_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/assoc-flip--73e1155ad724a198316dbde6.md) | 159 | `result-track:73e1155ad724a198316dbde6c73597f814aefa669f75fa87b7ef4302b76a7b17` |
| 17 | `abbrev` | [regular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/regular--d6f8d1ee276b09762882db6a.md) | 164 | `declaration-track:d6f8d1ee276b09762882db6a14335a3324abfa2beaeb162ea6589cb189a4b8ee` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/instance--3991663e09d2318a8f99842a.md) | 166 | `declaration-track:3991663e09d2318a8f99842a034f6c54a4c6be97cbb98c708415e5db3c28eeab` |
| 19 | `def` | [Mod_.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/declarations/mod-mk--202143e7cac90f956190490c.md) | 176 | `declaration-track:202143e7cac90f956190490cc61178d80cc83609b8ac4edc0cfe143be26d67ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
