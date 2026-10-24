# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommMon.Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92edee0a4201ed6a323a0c62e1ae58a1ff521976",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92edee0a4201ed6a323a0c62e1ae58a1ff521976`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CommMon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/commmon--37ea993ef780c2c5736688a9.md) | 29 | `declaration-track:37ea993ef780c2c5736688a9ed2a8963d1cdfd4abb0af6008ef0f7ab579ea816` |
| 2 | `def` | [trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/trivial--ebf10cbc2ecbd330ab60333c.md) | 39 | `declaration-track:ebf10cbc2ecbd330ab60333cbfb79c86da957515d97bae3c8336c9ae682caec2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/instance--0f7ca03b2d77d8308f355fe2.md) | 42 | `declaration-track:0f7ca03b2d77d8308f355fe2f64f322d41586ca1d95b0a4550258a149a6797aa` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/instance--217b4cc9d0407fe0bdfe34ea.md) | 48 | `declaration-track:217b4cc9d0407fe0bdfe34ea434e28706a7329a8e60b51dfde1f805079b64449` |
| 5 | `theorem` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/id-hom--93d6eaf9e098eff4078e6537.md) | 52 | `result-track:93d6eaf9e098eff4078e653712c37700cca386a770a43a2926e3091bee881704` |
| 6 | `theorem` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/comp-hom--19e76a941860d5cb6f8fc653.md) | 56 | `result-track:19e76a941860d5cb6f8fc653ea3b67e8bbda0e9992c47a7e0429f16d7510c6c3` |
| 7 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/hom-ext--2304e490218d7c408fcecabf.md) | 61 | `result-track:2304e490218d7c408fcecabf8c44880f69d53b084eb0f3349b50a02201dfed17` |
| 8 | `lemma` | [id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/id--2295bca7ad3ee5261e66a720.md) | 67 | `result-track:2295bca7ad3ee5261e66a720915362ee62e9a1b3234408d274db4bfda2876651` |
| 9 | `lemma` | [comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/comp--6ba753cae044141bdcbeda38.md) | 70 | `result-track:6ba753cae044141bdcbeda386502b8ff538bdda26cd7ec5ae1d294e50a4429a9` |
| 10 | `def` | [forget₂Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/forget-mon--7364c1605dc053e42ca0200f.md) | 78 | `declaration-track:7364c1605dc053e42ca0200f2453550f3e151c38c8d799b15efa440e7f91ea67` |
| 11 | `def` | [fullyFaithfulForget₂Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/fullyfaithfulforget-mon--37a53c79a5b109d54dfb7bf9.md) | 83 | `declaration-track:37a53c79a5b109d54dfb7bf970e79b2ad5c8bade5f278c7f3a850c19dd34027a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/instance--f81e04ebb72b1e71d9b34669.md) | 88 | `declaration-track:f81e04ebb72b1e71d9b34669febdc6541ee2b467bb1c2227a940d9dde6a7a744` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/instance--792135d3099b8c2a9426433e.md) | 89 | `declaration-track:792135d3099b8c2a9426433e61b6155153e07c02853d304d3b287612c251536e` |
| 14 | `theorem` | [forget₂Mon_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/forget-mon-obj-one--767abeb74a604a266dff44b5.md) | 92 | `result-track:767abeb74a604a266dff44b5af2e8d496067fea97c0d968bafab5f1dcc69c5d1` |
| 15 | `theorem` | [forget₂Mon_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/forget-mon-obj-mul--2e2972180a7d4748fd0a61df.md) | 96 | `result-track:2e2972180a7d4748fd0a61df5545f0d1d6cb72c9c997ad03e0d1a85a06abab79` |
| 16 | `theorem` | [forget₂Mon_map_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/forget-mon-map-hom--1b9fc488e1640f0bd01e7198.md) | 100 | `result-track:1b9fc488e1640f0bd01e7198c9ce3310ed9c76decfea08e8739cf61e47cfa1f6` |
| 17 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/forget--4c2a78315581968101524f30.md) | 109 | `declaration-track:4c2a78315581968101524f30347b691f956a62af3d3139e66e7f45216127cfee` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/instance--6099f7ae32d3d5f5ac446303.md) | 112 | `declaration-track:6099f7ae32d3d5f5ac4463030b3183372816004a68ea32680bb67ccf518c59d9` |
| 19 | `theorem` | [forget₂Mon_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/forget-mon-comp-forget--d6ddbcd550c641df363a0647.md) | 115 | `result-track:d6ddbcd550c641df363a0647b39059c15df6e30c33224aa3a223ece1da9fc4b9` |
| 20 | `def` | [mkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mkiso--00a0fe77cf3f93135409ea4a.md) | 125 | `declaration-track:00a0fe77cf3f93135409ea4a38447f2898d7ea3cc3d4b735e9952974f41b331a` |
| 21 | `lemma` | [mkIso_hom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mkiso-hom-hom--ae89bf172c6c1ef64ebf9e9b.md) | 128 | `result-track:ae89bf172c6c1ef64ebf9e9b8014d3b6bef93f966619396060b1d01399c6d3f3` |
| 22 | `lemma` | [mkIso_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mkiso-inv-hom--896fd208e072ef3763bf7394.md) | 129 | `result-track:896fd208e072ef3763bf7394fc003ceca0631a9e93a0a1af1159c4d9c9ad7166` |
| 23 | `instance` | [uniqueHomFromTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/uniquehomfromtrivial--7e2b42e71d0cd4429ac14b56.md) | 133 | `declaration-track:7e2b42e71d0cd4429ac14b5687d7bfe610ac0289b0393f3a89da8ee7057ea98f` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/instance--acbcf4dce0a245cf931ad38c.md) | 138 | `declaration-track:acbcf4dce0a245cf931ad38c009a9587ea8a1c7fb73ddd4fab338951c1c9ea8c` |
| 25 | `def` | [mapCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mapcommmon--1c9c0584fb31e0dd7298e217.md) | 157 | `declaration-track:1c9c0584fb31e0dd7298e217ac6beefddf115bbc3c43e72f29363db0cfa65fdd` |
| 26 | `def` | [mapCommMonIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mapcommmonidiso--30a1a07edd51f632e1448540.md) | 167 | `declaration-track:30a1a07edd51f632e14485404ac052de3aa082732bf602657a6d15023079be18` |
| 27 | `def` | [mapCommMonCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mapcommmoncompiso--321bde84b4a1d6433c84dd6e.md) | 172 | `declaration-track:321bde84b4a1d6433c84dd6e211dad597a5225aabdd42a0a6a3aa74619d8d7b7` |
| 28 | `def` | [mapCommMonFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mapcommmonfunctor--627dfc3c54c23ca8b0561601.md) | 178 | `declaration-track:627dfc3c54c23ca8b0561601cfc0c61952f07bc03843cbdb5a9b3a5ec92e6b40` |
| 29 | `def` | [mapCommMonNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mapcommmonnattrans--2c8502a0c44d2535644b7620.md) | 185 | `declaration-track:2c8502a0c44d2535644b76202e7fa347287b82961d48ec42de290434523671e3` |
| 30 | `def` | [mapCommMonNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mapcommmonnatiso--88a3399c59110b346e5aab3d.md) | 191 | `declaration-track:88a3399c59110b346e5aab3d425dcb673e3048c5b66ca030cc5a900ff25d4980` |
| 31 | `def` | [mapCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mapcommmon--d93a85a2926e565bda1b1c62.md) | 204 | `declaration-track:d93a85a2926e565bda1b1c62955887808ab9b5799086b0dcaaff7b4b9e183195` |
| 32 | `def` | [mapCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mapcommmon--de3bad86079c4245ddb81103.md) | 214 | `declaration-track:de3bad86079c4245ddb811033f6c0119a4bc24a6a2b095c31cf6b8b532451309` |
| 33 | `def` | [laxBraidedToCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/laxbraidedtocommmon--cfae83e5b7047d432f2a4441.md) | 231 | `declaration-track:cfae83e5b7047d432f2a4441e508b9ff48fa86040679306e92c5a060ac9e14d7` |
| 34 | `def` | [commMonToLaxBraidedObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/commmontolaxbraidedobj--0cd817e58393327d368752aa.md) | 239 | `declaration-track:0cd817e58393327d368752aa2cd378a8b8c36d42f6874f4b024f0808b9aec5c7` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/instance--94249476048e33318a4d4c0b.md) | 242 | `declaration-track:94249476048e33318a4d4c0bde902afc805f59f50e88e3ecaea9e1b408bf97e8` |
| 36 | `lemma` | [commMonToLaxBraidedObj_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/commmontolaxbraidedobj--7b5a0631f248b657da4845eb.md) | 249 | `result-track:7b5a0631f248b657da4845eb01dab63bc360233d5c4c9d17ae7c31808ca84572` |
| 37 | `lemma` | [commMonToLaxBraidedObj_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/commmontolaxbraidedobj--99e0044276788ed1245dc61a.md) | 253 | `result-track:99e0044276788ed1245dc61a4eb6ecb0d4e50960922b944fade9fe53dfec4c2e` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/instance--00f4b4fb6df4c2f793dc9495.md) | 256 | `declaration-track:00f4b4fb6df4c2f793dc9495dfc5adb7404930e1607303c9c1bbbfa12851b979` |
| 39 | `def` | [commMonToLaxBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/commmontolaxbraided--5ae44a45f1792f1c72c01ed2.md) | 261 | `declaration-track:5ae44a45f1792f1c72c01ed297d8a661b99d66a2514ea3f54dd2d8d8baa05d77` |
| 40 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/unitiso--37a6a2425053a623064497ec.md) | 269 | `declaration-track:37a6a2425053a623064497ec091930fcf793900864781ee49918ce7526fcb0e9` |
| 41 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/counitiso--1139e7e0e3ed0eea3780cd9f.md) | 278 | `declaration-track:1139e7e0e3ed0eea3780cd9f847b87d6cec028ba7d9e962cd098a5621cae52eb` |
| 42 | `def` | [equivLaxBraidedFunctorPUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/equivlaxbraidedfunctorpunit--35f307cf06f492cf1043c688.md) | 289 | `declaration-track:35f307cf06f492cf1043c6882aa6c3249ced6d485b8fbe650bf73bddd8499ef2` |
| 43 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/mk--a5691b38e1051cbee72ddab7.md) | 303 | `declaration-track:a5691b38e1051cbee72ddab70cf0aed671672cb5d03845eb60d386bccd17eb1f` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant3ac13e12cce27af83ed55380182c5d391e3a8fc9950a0d7080c8993e755d779b.lean/declarations/instance--306e60ba5c10b14057bc48e3.md) | 307 | `declaration-track:306e60ba5c10b14057bc48e36b2d4e48b1e97135f9f54dd76eb66d0163bacc13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
