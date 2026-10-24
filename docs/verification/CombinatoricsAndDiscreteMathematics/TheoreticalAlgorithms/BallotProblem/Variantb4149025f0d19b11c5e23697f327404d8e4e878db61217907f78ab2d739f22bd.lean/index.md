# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BallotProblem.Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "745da5c8bcbf758fde0c90300daaab0033f54405",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `745da5c8bcbf758fde0c90300daaab0033f54405`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean.json)

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
| 1 | `def` | [staysPositive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/stayspositive--a52bac2bfd4eef0492789dae.md) | 50 | `declaration-track:a52bac2bfd4eef0492789dae08e5151486712d36fa4cdf0ac052eab955880c13` |
| 2 | `theorem` | [staysPositive_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/stayspositive-nil--b8f8b4d04659ab0258f283aa.md) | 54 | `result-track:b8f8b4d04659ab0258f283aad472d2976cf04b08b5e2aceee000ba7aa4cc7120` |
| 3 | `theorem` | [staysPositive_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/stayspositive-suffix--0e6de0c1c05b7c2a81e3569d.md) | 57 | `result-track:0e6de0c1c05b7c2a81e3569d6d6b9104a857b5c4c3c583cbdd756e716de0fb71` |
| 4 | `theorem` | [staysPositive_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/stayspositive-cons--e4f112a1673c749fd028a0a0.md) | 60 | `result-track:e4f112a1673c749fd028a0a0fda285296143d2202a106407e0b3d2165150ad36` |
| 5 | `theorem` | [sum_nonneg_of_staysPositive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/sum-nonneg-of-stayspositive--587da12db0c65823d9c457a6.md) | 64 | `result-track:587da12db0c65823d9c457a6b9ffa52a22987b1c2fc3e127e86e319b382c5b31` |
| 6 | `theorem` | [staysPositive_cons_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/stayspositive-cons-pos--a56b8be74ed0e405584886c4.md) | 68 | `result-track:a56b8be74ed0e405584886c43ef48ca524ae07b929f82801d88b17be6f2ef4e2` |
| 7 | `def` | [countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/countedsequence--cff1a5c7c0c8216a1e230de8.md) | 80 | `declaration-track:cff1a5c7c0c8216a1e230de8c61956e7729f721d874f9b5b84b9e1a6be27a14b` |
| 8 | `theorem` | [mem_countedSequence_iff_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/mem-countedsequence-iff-perm--59de62b6ba3246f0941ceb44.md) | 85 | `result-track:59de62b6ba3246f0941ceb44a31ac7031dc028ee5f3b8789994a2bbbf30bbcb4` |
| 9 | `theorem` | [counted_right_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/counted-right-zero--d5a3097a0442f10633de22f1.md) | 93 | `result-track:d5a3097a0442f10633de22f13a92536bf368272f41e2a3fa1515b59eb638995c` |
| 10 | `theorem` | [counted_left_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/counted-left-zero--94dad8651f62fff991d99b42.md) | 97 | `result-track:94dad8651f62fff991d99b427cf60754e41440d63f310dba256cf818538d5cf8` |
| 11 | `theorem` | [mem_of_mem_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/mem-of-mem-countedsequence--0683edf46aa223f48b62ef20.md) | 100 | `result-track:0683edf46aa223f48b62ef20ffa93ea2c59e0387542d5a8482f64bbbc7332533` |
| 12 | `theorem` | [length_of_mem_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/length-of-mem-countedsequence--8680888b97164e6704691ee4.md) | 104 | `result-track:8680888b97164e6704691ee4dd52a9d7db2e3a17770b7012f1432f5971875894` |
| 13 | `theorem` | [counted_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/counted-eq-nil-iff--882332156bd3168ca70bb75a.md) | 107 | `result-track:882332156bd3168ca70bb75a90d96f2ea87a1dc0119046bc30f08c85407c3e01` |
| 14 | `theorem` | [counted_ne_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/counted-ne-nil-left--116bcbed5fdde41806d16be1.md) | 111 | `result-track:116bcbed5fdde41806d16be14e8d99ef25faa13c7f2ed5a3982f5892cc479ae6` |
| 15 | `theorem` | [counted_ne_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/counted-ne-nil-right--2535a876d30f1b53db948f9b.md) | 114 | `result-track:2535a876d30f1b53db948f9b4182b6ce0986edea02749ee7849db6bf94413de4` |
| 16 | `theorem` | [counted_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/counted-succ-succ--848dff9f2265fb338f2af341.md) | 117 | `result-track:848dff9f2265fb338f2af3413384bcedfff3ee6b58bd194f7d43fde10cd12ff8` |
| 17 | `theorem` | [countedSequence_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/countedsequence-finite--953d5c1a8be413f7a0e5d794.md) | 153 | `result-track:953d5c1a8be413f7a0e5d79472888d13960b9bfbb82411cfbfbe6296ecbeee1a` |
| 18 | `theorem` | [countedSequence_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/countedsequence-nonempty--8d2467ac23a838e906cc7503.md) | 161 | `result-track:8d2467ac23a838e906cc75033180d2f1193dc39a1597479b393b893e32f006cf` |
| 19 | `theorem` | [sum_of_mem_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/sum-of-mem-countedsequence--c632d20bceb309595772705d.md) | 168 | `result-track:c632d20bceb309595772705df3ae9bc610b86d65c2e8970f0c604080ddfa3a9f` |
| 20 | `theorem` | [disjoint_bits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/disjoint-bits--ce3a61edacfb9ec87500c8cc.md) | 171 | `result-track:ce3a61edacfb9ec87500c8ccbdbefb3335739d924820cb6dd08347ba7571d7b6` |
| 21 | `instance` | [measurableSpace_list_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/measurablespace-list-int--9aa2639e1b3674f6f64e5519.md) | 180 | `declaration-track:9aa2639e1b3674f6f64e5519125b08a37e9cc15023afc15fdb634b3a5253a8ea` |
| 22 | `instance` | [measurableSingletonClass_list_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/measurablesingletonclass-list-int--2e8b5fa7bf7af5bffd1a09bb.md) | 182 | `declaration-track:2e8b5fa7bf7af5bffd1a09bbcd86f4889b373e01dae906d6417a511db1bf58fb` |
| 23 | `theorem` | [list_int_measurableSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/list-int-measurableset--fd8c808fb44678f957d118e7.md) | 185 | `result-track:fd8c808fb44678f957d118e746c313ea3191c09008e0f32c3be3717d56927faa` |
| 24 | `theorem` | [count_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/count-countedsequence--d56bbf57be7bf02d9a4c96b3.md) | 187 | `result-track:d56bbf57be7bf02d9a4c96b3b3d587d0c6cc90afa24ca4538762226e0fffbae0` |
| 25 | `theorem` | [first_vote_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/first-vote-pos--d146b9406c6684d99b9e8aaa.md) | 197 | `result-track:d146b9406c6684d99b9e8aaa0506ea1f9c029a6034b7f9f3d2293b412b7c2020` |
| 26 | `theorem` | [headI_mem_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/headi-mem-of-nonempty--0cf44e4f450502c87083f77d.md) | 234 | `result-track:0cf44e4f450502c87083f77da574fda95510ced6573b1403838febf060d4eb65` |
| 27 | `theorem` | [first_vote_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/first-vote-neg--cd31ee6fa055351fca26d9c8.md) | 238 | `result-track:cd31ee6fa055351fca26d9c831849be049962e1d318db0f8b19bc4ebf0f80726` |
| 28 | `theorem` | [ballot_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/ballot-same--75641d9375a6d6871b0f0084.md) | 248 | `result-track:75641d9375a6d6871b0f00840540099d5562ce0bd517d728eac22e50b73f9f35` |
| 29 | `theorem` | [ballot_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/ballot-edge--9defde2cb7e6b0884ded907b.md) | 257 | `result-track:9defde2cb7e6b0884ded907b9e04e2e98d2c3ed21a244fb9ba7e15c7ad851fd8` |
| 30 | `theorem` | [countedSequence_int_pos_counted_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/countedsequence-int-pos-counted-succ-succ--1cf65263122dd5489060a405.md) | 264 | `result-track:1cf65263122dd5489060a40533bb754445ea432650ad794ad7fbf5ef3a6b15dc` |
| 31 | `theorem` | [ballot_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/ballot-pos--cf164bec377b692ccfd2b418.md) | 275 | `result-track:cf164bec377b692ccfd2b4184e426b636e37b062b0c45d3c8c18fe3349966772` |
| 32 | `theorem` | [countedSequence_int_neg_counted_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/countedsequence-int-neg-counted-succ-succ--9ce715e7610c5514f6bb90e5.md) | 290 | `result-track:9ce715e7610c5514f6bb90e56d0f91d391cc8cfb0ba6ff94f7e09e2f08990ab5` |
| 33 | `theorem` | [ballot_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/ballot-neg--8861615f55a01dc0b58c4622.md) | 302 | `result-track:8861615f55a01dc0b58c46222db2835c872ace07cb2e6d2cb52b8f7f436aa89e` |
| 34 | `theorem` | [ballot_problem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/ballot-problem--32befe6df12e631b8fbe4a15.md) | 318 | `result-track:32befe6df12e631b8fbe4a15b74154f5ba79028f7d78c19ccaaa7b1994784a36` |
| 35 | `theorem` | [ballot_problem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/declarations/ballot-problem--0f04154a6dadac6c11d8c311.md) | 356 | `result-track:0f04154a6dadac6c11d8c31102a04bbb718a87a1f269d0e9a66ffe37f6d18989` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
