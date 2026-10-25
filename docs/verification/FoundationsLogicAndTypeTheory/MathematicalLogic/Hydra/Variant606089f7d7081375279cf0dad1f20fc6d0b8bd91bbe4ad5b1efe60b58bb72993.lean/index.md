# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hydra.Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "024b52d7eb22b52bbf9e68ffe9bf925f1f13098f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `024b52d7eb22b52bbf9e68ffe9bf925f1f13098f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GameAdd` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand--1a51d6a0c75eeb25e636fa17.md) | 62 | `declaration-track:1a51d6a0c75eeb25e636fa1713dbfd5cda9eb3cda5a49ade5df28aaa925d693e` |
| 2 | `theorem` | [cutExpand_le_invImage_lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-le-invimage-lex--9d17924efeea40df170c30e6.md) | 67 | `result-track:9d17924efeea40df170c30e6e9b83b01f45a66b1f1ef9ddfd7c2fa6ac1db8312` |
| 3 | `theorem` | [cutExpand_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-singleton--15b7f246be6a91a39416366e.md) | 81 | `result-track:15b7f246be6a91a39416366eb51344d87b3b9fc9f9dc49dce09dc278182ab184` |
| 4 | `theorem` | [cutExpand_singleton_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-singleton-singleton--891511fc0cbdf0a3c33f3fe2.md) | 84 | `result-track:891511fc0cbdf0a3c33f3fe200cdab7cc23954b802012a3df8145cfa8d156f77` |
| 5 | `theorem` | [cutExpand_add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-add-left--e06e1a939291d223bc51917f.md) | 87 | `result-track:e06e1a939291d223bc51917fae2347d6007ac961efa71eacf09a01d120146978` |
| 6 | `lemma` | [cutExpand_add_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-add-right--702ac93f30d444b1210d6aae.md) | 90 | `result-track:702ac93f30d444b1210d6aae65fee298285533d8b92b1dc43f168a65e82fddfa` |
| 7 | `theorem` | [cutExpand_add_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-add-single--24a76183519616f0cbf6904b.md) | 93 | `result-track:24a76183519616f0cbf6904b013c2d8ff25df37a0b6eb4f15b47f9a3c8a37335` |
| 8 | `theorem` | [cutExpand_single_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-single-add--a4be93e561b2e2457291394c.md) | 97 | `result-track:a4be93e561b2e2457291394cb0b7c9bae4f4b125964a7c02b2c945ef3310cdd3` |
| 9 | `theorem` | [cutExpand_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-iff--1865ee186825ee9290650790.md) | 101 | `result-track:1865ee186825ee92906507904f0465845bb033990e3aa42807b4032fed92641c` |
| 10 | `theorem` | [not_cutExpand_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/not-cutexpand-zero--8e7ff17c33aef32ecad784a0.md) | 112 | `result-track:8e7ff17c33aef32ecad784a01ea34bf8920fddd9ec4bfa4ff5f0a8de39adee8c` |
| 11 | `lemma` | [cutExpand_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-zero--aeee804bb5ecacd5345d35fc.md) | 117 | `result-track:aeee804bb5ecacd5345d35fc9dcb1fa876c441b7e31ca44d9bd2a4b5dfd77206` |
| 12 | `theorem` | [cutExpand_fibration](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-fibration--47f99e079805e03abf6bf066.md) | 121 | `result-track:47f99e079805e03abf6bf066d1bf0c3ead26928d4b9eefb87904e4dd3e94e63c` |
| 13 | `lemma` | [cutExpand_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-closed--62f5e7728efd46556e91f2c6.md) | 136 | `result-track:62f5e7728efd46556e91f2c651ba322abaa91e4b6eeddba7227364c23f4b8a25` |
| 14 | `lemma` | [cutExpand_double](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-double--0e23d53cf49f966c5b25480e.md) | 145 | `result-track:0e23d53cf49f966c5b25480e5a039ee13d5e2748e60ecebae6ff4c05bf28b78d` |
| 15 | `lemma` | [cutExpand_pair_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-pair-left--9d17d1d0841f8a478b8bc829.md) | 150 | `result-track:9d17d1d0841f8a478b8bc829bdfbd9b10267c14649e5c165a2a0259f633d09f3` |
| 16 | `lemma` | [cutExpand_pair_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-pair-right--71fb464483db637d34ddcf5b.md) | 153 | `result-track:71fb464483db637d34ddcf5ba21ca1e0a9057c53e39f439cd1e2b42926b95eac` |
| 17 | `lemma` | [cutExpand_double_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/cutexpand-double-left--1cb6a62c5f67088f9041f9e7.md) | 156 | `result-track:1cb6a62c5f67088f9041f9e7195473600b364089286273b0d55937e248e2bef6` |
| 18 | `theorem` | [acc_of_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/acc-of-singleton--85a372fa915b11a295de158d.md) | 162 | `result-track:85a372fa915b11a295de158dff33841e5b880c8644909790d4ccdb30ed8d4ac5` |
| 19 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CutExpand.Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.Acc.cutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-cutexpand-va--aea5b8c1ed659ec088235233.md) | 173 | `result-track:aea5b8c1ed659ec088235233ae5a29b5339594de24811d84e865bca4de2584c8` |
| 20 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CutExpand.Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.WellFounded.cutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-cutexpand-va--4d7927cfec99d45e70e0340e.md) | 184 | `result-track:4d7927cfec99d45e70e0340e6bf7f9fb9520a228bf3a8c6d3c2e74a9e63caa78` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/declarations/instance--5a133200edf5aa90d25dbf97.md) | 187 | `declaration-track:5a133200edf5aa90d25dbf97116e05a7b5408067ac36a9a699338e1fe21dde1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
