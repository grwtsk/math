# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be00387ecfb3415fc88be0a58a8d4d2e23ee7b14",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be00387ecfb3415fc88be0a58a8d4d2e23ee7b14`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BoundedOrder.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [top_sup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/top-sup-eq--a57f007d31018d5e907b2bf7.md) | 37 | `result-track:a57f007d31018d5e907b2bf7ed81ba5d18d80018afb265f85202856363431434` |
| 2 | `theorem` | [sup_top_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/sup-top-eq--b95dea20a51dfcc8818474c0.md) | 40 | `result-track:b95dea20a51dfcc8818474c0d4217330266eb3b7d081f1681e4248b8230c157f` |
| 3 | `theorem` | [bot_sup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/bot-sup-eq--0f223f8fda34834b6a7ff9b1.md) | 49 | `result-track:0f223f8fda34834b6a7ff9b191a84052d39e30f39301d3dd0afc2ed0ceea3a30` |
| 4 | `theorem` | [sup_bot_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/sup-bot-eq--f0055d27d18812a5e0179ca5.md) | 52 | `result-track:f0055d27d18812a5e0179ca535e00c2866ee74bdcb0de335a7777eda59db7352` |
| 5 | `theorem` | [sup_eq_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/sup-eq-bot-iff--3ed433020e8113d8faa0bcd8.md) | 56 | `result-track:3ed433020e8113d8faa0bcd85d64132f27afb308771d077d7ee112e9b087fefe` |
| 6 | `lemma` | [top_inf_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/top-inf-eq--071d99d988e55c209c3f10f4.md) | 64 | `result-track:071d99d988e55c209c3f10f4442d426c9f7ce5f0b119f64c811c985c58789c19` |
| 7 | `lemma` | [inf_top_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/inf-top-eq--54f0047df2e90dc186a06331.md) | 66 | `result-track:54f0047df2e90dc186a06331ad42467d318a0c2ba4b14d98ffcc13c6cfd77473` |
| 8 | `theorem` | [inf_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/inf-eq-top-iff--8eafdb0b5ecac9225364369e.md) | 69 | `result-track:8eafdb0b5ecac9225364369e5187ead6c4e3d90e1b2fee01284a243a5082f952` |
| 9 | `lemma` | [bot_inf_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/bot-inf-eq--17b1ac8c131883dcd4430d6f.md) | 78 | `result-track:17b1ac8c131883dcd4430d6fab0a40966beec5394c40fe3c6dd44de87ad7be3f` |
| 10 | `lemma` | [inf_bot_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/inf-bot-eq--7c04b43b5a5a9a27ec22a473.md) | 80 | `result-track:7c04b43b5a5a9a27ec22a4737f8f4cc452862b1b6737d70595d9bae84837aaf7` |
| 11 | `theorem` | [exists_ge_and_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/exists-ge-and-iff-exists--58dee7afb6c069bd817b5708.md) | 94 | `result-track:58dee7afb6c069bd817b57080348ab298b653ba00d7c83e157857da716f52f51` |
| 12 | `lemma` | [exists_and_iff_of_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/exists-and-iff-of-monotone--a6bc1b372d5cec106e519b16.md) | 98 | `result-track:a6bc1b372d5cec106e519b16178944660b17cbeb22bc8c7be68aed027c8faa34` |
| 13 | `theorem` | [exists_le_and_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/exists-le-and-iff-exists--da8a8d0b346b7c23210ec6a0.md) | 109 | `result-track:da8a8d0b346b7c23210ec6a0e7be62a168a744e4e33c9d834bffd3d4d25194f1` |
| 14 | `lemma` | [exists_and_iff_of_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/exists-and-iff-of-antitone--d5cd70b464df73ca12089a6f.md) | 113 | `result-track:d5cd70b464df73ca12089a6fce65455321325d35766ef1cca87c701b16ce6846` |
| 15 | `theorem` | [min_bot_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/min-bot-left--e4b53e848928a3043734fca5.md) | 127 | `result-track:e4b53e848928a3043734fca56141d9d67de451f2bc359e4a651db6794ebb9572` |
| 16 | `theorem` | [max_top_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/max-top-left--5e9b6a29d2ca5cf7136cd8c7.md) | 129 | `result-track:5e9b6a29d2ca5cf7136cd8c77af2290f441e08e56c0b123adb08461cf0293797` |
| 17 | `theorem` | [min_top_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/min-top-left--aeed2da48fa0827292ceb082.md) | 131 | `result-track:aeed2da48fa0827292ceb082ee33131d7f3a113a235d78cce5e90267a901b93f` |
| 18 | `theorem` | [max_bot_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/max-bot-left--08fec1c7fcd8e004add54a33.md) | 133 | `result-track:08fec1c7fcd8e004add54a338559ac9613552e767a972a266106c77a4f00b1ec` |
| 19 | `theorem` | [min_top_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/min-top-right--19007114a9dd24c7bba71ca2.md) | 135 | `result-track:19007114a9dd24c7bba71ca2876a4b61d3784e63dfd8e922a4ca3da2538fa8b1` |
| 20 | `theorem` | [max_bot_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/max-bot-right--4a03b22477dad534c19d35cc.md) | 137 | `result-track:4a03b22477dad534c19d35cc84fa6e0846b20c9e024092687b322d359095e700` |
| 21 | `theorem` | [min_bot_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/min-bot-right--11834e19c4dfb9508c9c5532.md) | 139 | `result-track:11834e19c4dfb9508c9c5532228f05725a592a2b7a383d5c6432774d594fcde5` |
| 22 | `theorem` | [max_top_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/max-top-right--b871dc960e4324f13f74e3ba.md) | 141 | `result-track:b871dc960e4324f13f74e3badcd0a3679aa500927a0c0d4f24b885b9880c229f` |
| 23 | `theorem` | [max_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/max-eq-bot--a26ff72025842e18cdae9352.md) | 143 | `result-track:a26ff72025842e18cdae9352f2580d3899685bd60c9fd13efb50d9e78a31edc2` |
| 24 | `theorem` | [min_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/min-eq-top--e2ccfc0edc7ff8073ac775bb.md) | 146 | `result-track:e2ccfc0edc7ff8073ac775bbd8f9c3ea16bda21e468ef7e40e9bd9c86a5afb3f` |
| 25 | `theorem` | [min_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/min-eq-bot--a7fdefaf0e6f71500d28a387.md) | 150 | `result-track:a7fdefaf0e6f71500d28a3874ae43ba1e8a3224e6904d585cf9c174541920d88` |
| 26 | `theorem` | [max_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/max-eq-top--6106e602ee0389a24de17223.md) | 154 | `result-track:6106e602ee0389a24de17223e158532c897d4a0d012dc590f9614f8471b97965` |
| 27 | `theorem` | [WellFoundedGT.induction_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/wellfoundedgt-induction-top--cd5139fffa71f3d50c0f637b.md) | 164 | `result-track:cd5139fffa71f3d50c0f637bfca55847746da68d662199440a6a0a2a5e46d9ae` |
| 28 | `theorem` | [WellFoundedLT.induction_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9888bc7cc9a9e685d0bb14ccf48fe1bb327ffaa19efeac47dcf90c2f8ed3a085.lean/declarations/wellfoundedlt-induction-bot--b2a7a8de4f6003ab3e8affc9.md) | 177 | `result-track:b2a7a8de4f6003ab3e8affc92f4b19e88c91a8d36579067acdf70b4e20313228` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
