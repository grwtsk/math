# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hydra.Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ce3d2a4339fd55b11be144e9906c908259b2ca8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ce3d2a4339fd55b11be144e9906c908259b2ca8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand--ab1e19355084d6be2bec56c4.md) | 58 | `declaration-track:ab1e19355084d6be2bec56c45729b80d99c1b7857b1e9a718f037fd5b71edd2c` |
| 2 | `theorem` | [cutExpand_le_invImage_lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-le-invimage-lex--a2790fd596922270881934da.md) | 63 | `result-track:a2790fd596922270881934da2a32fbc24cc66edb71cc9c08c3231b68effd394e` |
| 3 | `theorem` | [cutExpand_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-singleton--b4cbe4f03da2f580b919c744.md) | 76 | `result-track:b4cbe4f03da2f580b919c7442dcbda0001b598f29bdc2e453f629ae56558b7d6` |
| 4 | `theorem` | [cutExpand_singleton_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-singleton-singleton--ce9cd981687fb25427eb5068.md) | 79 | `result-track:ce9cd981687fb25427eb5068b7a711e4c9711d996f49bd79285c12abbbf057a5` |
| 5 | `theorem` | [cutExpand_add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-add-left--b85f2d70d0df7862824175e4.md) | 82 | `result-track:b85f2d70d0df7862824175e40fbf4fc6052d43189f53d4dc022fac4a3b93ff57` |
| 6 | `lemma` | [cutExpand_add_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-add-right--0975a3057a6fa82abb9384a7.md) | 85 | `result-track:0975a3057a6fa82abb9384a7a079b46837e76463fac2c9865c543d77dda1bd8d` |
| 7 | `theorem` | [cutExpand_add_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-add-single--b7eea1912a5aa9d76bf896ab.md) | 88 | `result-track:b7eea1912a5aa9d76bf896abd74f6ce32e2412b0c65f0baf8a2b3f49edaa263c` |
| 8 | `theorem` | [cutExpand_single_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-single-add--a67fc526b8f390bf3a26c283.md) | 92 | `result-track:a67fc526b8f390bf3a26c28334f257e919202837dd822c310f8f760a19b8259c` |
| 9 | `theorem` | [cutExpand_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-iff--6677dc8dd3d4ac259ad8d1c4.md) | 96 | `result-track:6677dc8dd3d4ac259ad8d1c42a92c6023d1322dfc3af366508b6d4193170987e` |
| 10 | `theorem` | [not_cutExpand_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/not-cutexpand-zero--6232fc0e178e7de37dfec78e.md) | 107 | `result-track:6232fc0e178e7de37dfec78e40fa52f1c08f7119798b1da9f1b47ee332a93803` |
| 11 | `lemma` | [cutExpand_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-zero--8cf7eb3a7f9169978b07cfeb.md) | 112 | `result-track:8cf7eb3a7f9169978b07cfebaa5b3ee5db94a37b1b4f4725691cf4208bbbb14f` |
| 12 | `theorem` | [cutExpand_fibration](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-fibration--1a6f385773df11d23cc6b925.md) | 116 | `result-track:1a6f385773df11d23cc6b925243c2715df40773907dc50ec48d733a596233e81` |
| 13 | `lemma` | [cutExpand_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-closed--55e70084262cac812b8c26bc.md) | 131 | `result-track:55e70084262cac812b8c26bce7ff7ee95f0e8d4babe37a9716a5d9d6531dd519` |
| 14 | `lemma` | [cutExpand_double](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-double--fc76e805721bac9636e0162b.md) | 140 | `result-track:fc76e805721bac9636e0162b7b8e5de465ed8cfad539ba061a48047931143517` |
| 15 | `lemma` | [cutExpand_pair_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-pair-left--834d35ab92e64c811cb3b656.md) | 145 | `result-track:834d35ab92e64c811cb3b656b9132f4108ab02828066587fff4b4303f3d3b7d0` |
| 16 | `lemma` | [cutExpand_pair_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-pair-right--26a3f072d833a5a514f961c9.md) | 148 | `result-track:26a3f072d833a5a514f961c94d736f16e99b21cea5e237e60dc8771da3007cbb` |
| 17 | `lemma` | [cutExpand_double_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/cutexpand-double-left--0025ebbec5438f0cf7bfab64.md) | 151 | `result-track:0025ebbec5438f0cf7bfab64b6379682f24b3f11bc339855791923b5fe9f0a40` |
| 18 | `theorem` | [acc_of_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/acc-of-singleton--0ee503b7f806e02e1393e969.md) | 157 | `result-track:0ee503b7f806e02e1393e9692c814e95ed29aeee5a9def3b2cf359d513609043` |
| 19 | `theorem` | [_root_.Acc.cutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/root-acc-cutexpand--da018858e73fb0ba21153139.md) | 168 | `result-track:da018858e73fb0ba211531396dec3d5d7e0b26bb5833194daa418631b6322b82` |
| 20 | `instance` | [_root_.WellFounded.cutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/declarations/root-wellfounded-cutexpand--6f6eb17eeefa2ab5caecc228.md) | 179 | `declaration-track:6f6eb17eeefa2ab5caecc22863611516a885fe04f352178f66746b6a3801ed69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
