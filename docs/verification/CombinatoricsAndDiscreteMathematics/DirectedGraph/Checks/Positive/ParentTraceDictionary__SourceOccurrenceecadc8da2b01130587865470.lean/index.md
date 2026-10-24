# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.ParentTraceDictionary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8369a330ad79d25f773c72ccd8d00e7a1881fbe4",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/ParentTraceDictionary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8369a330ad79d25f773c72ccd8d00e7a1881fbe4`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/ParentTraceDictionary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/ParentTraceDictionary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/looptagdecidableeq--52f774f2456f6bd89bbbbe93.md) | 14 | `declaration-track:52f774f2456f6bd89bbbbe93fa547dc81204affd71021d8854f5031640ff8ec1` |
| 2 | `def` | [falseTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/falsetag--9d2b2dd84317f0cd4555f004.md) | 17 | `declaration-track:9d2b2dd84317f0cd4555f004a943c0ef2da5474cd76c90048576fc1bc0758d40` |
| 3 | `def` | [trueTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/truetag--65a260bc6a5d7c4dce2e88a6.md) | 20 | `declaration-track:65a260bc6a5d7c4dce2e88a614deeeef86327da2358fdece791e6b8e69ec3c82` |
| 4 | `def` | [falseOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/falseoccurrence--755bfd1a596fff52183c3255.md) | 23 | `declaration-track:755bfd1a596fff52183c32551d86d7d29292529854be778a814f1479d86143d8` |
| 5 | `def` | [trueOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/trueoccurrence--6268a94ca92b2d14c5a8eb6c.md) | 26 | `declaration-track:6268a94ca92b2d14c5a8eb6cfef7e5f33088b59b0f0fdc0f608a5522ca2fe239` |
| 6 | `def` | [twiceOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/twiceoccurrence--b81a352560e8e59f04737cad.md) | 29 | `declaration-track:b81a352560e8e59f04737cadbcb8eb0373d092a8d0430642591ddd1e9d9b7a14` |
| 7 | `def` | [backwardRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/backwardrows--d5e1a3bc10e9768964a844c2.md) | 32 | `declaration-track:d5e1a3bc10e9768964a844c21abc7dd31a0088b8e3ba27a0e1ef7504b27f3be1` |
| 8 | `theorem` | [backward_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/backward-inventory--dd3e5648bc02839d1a19650a.md) | 36 | `result-track:dd3e5648bc02839d1a19650a0324c865922d2e583db5a51eabbbc1b45840753e` |
| 9 | `theorem` | [backward_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/backward-nodes--72df46941cad1128a3bbbee9.md) | 41 | `result-track:72df46941cad1128a3bbbee9f89d105b6fb2086910e24546f8423b2badadb29a` |
| 10 | `theorem` | [actual_parent_index_later](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/actual-parent-index-later--386997c3ab4a8fb0ea30266c.md) | 45 | `result-track:386997c3ab4a8fb0ea30266ca4d44039c82bb51c9e024b75ce9adff30d5494ac` |
| 11 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--e96c67f9b025cab89c471de0.md) | 50 | `declaration-track:e96c67f9b025cab89c471de0592839f3af755539c822f7f81de8823d3d6d47f0` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--75ad10861bb208ae5db3eed8.md) | 52 | `declaration-track:75ad10861bb208ae5db3eed892714e82cb7276f06153a37ebf3277d6ebdc1267` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--43dc56ed7ac8e02028424693.md) | 56 | `declaration-track:43dc56ed7ac8e02028424693b6141acddcbdb4c4837fe83b17394b74c8d80704` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--e6aa4ac6f983efd428f91491.md) | 60 | `declaration-track:e6aa4ac6f983efd428f9149174d893a02267aabc33f6c2fc2812bb894ca56bc6` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--be46b4bacc930e9e3c89163e.md) | 63 | `declaration-track:be46b4bacc930e9e3c89163e033b3c6a02cb14d80933f47dd603b6a00ffd44c3` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--fb7b3b2c76abe99cae354dde.md) | 68 | `declaration-track:fb7b3b2c76abe99cae354dde776676cb7db594a9cba8de1abffd828c3d7cbf69` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--bf849a777dd58243e9d58842.md) | 70 | `declaration-track:bf849a777dd58243e9d5884224dac504d87f0fbea996e5cd322b17f535c03d81` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--efb6166e303dde80fc7b36df.md) | 73 | `declaration-track:efb6166e303dde80fc7b36df7cacf803c36eb0e7e590edd2ec1ff90eea4b9db0` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--6a5afc248cfe5e11bdfe776e.md) | 76 | `declaration-track:6a5afc248cfe5e11bdfe776e14e4fc6d7eab7d3b9eff8dbbc89d2ac9010de57e` |
| 20 | `def` | [repeatedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/repeatedrows--5fccd8a609c12372becdaa04.md) | 79 | `declaration-track:5fccd8a609c12372becdaa04dc9c7daea1816634c4f1d6a266b0df7f8b28e2de` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--ff569fa06271772b4ffbac4c.md) | 82 | `declaration-track:ff569fa06271772b4ffbac4cf9665b961dd1942ec5fcd69376a9e8fe5eb87b76` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--b1b230890019a78a8871bab5.md) | 86 | `declaration-track:b1b230890019a78a8871bab5963d0839db5f6eebbfa938cc9156b488cabb15d4` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--06f285d40082e530d1555f5f.md) | 88 | `declaration-track:06f285d40082e530d1555f5f0098bd93be9354adc780bb0bd233d53f374a04de` |
| 24 | `theorem` | [parallel_identity_preserved](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/parallel-identity-preserved--523903aaee8f082a8c4ece45.md) | 93 | `result-track:523903aaee8f082a8c4ece45b72d16a373e5d93a6da946d27543afbff74080af` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--3b804b75d8149638323ff40e.md) | 98 | `declaration-track:3b804b75d8149638323ff40e0a362f47dcb959a2da040998f698a14238fbc6bf` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--2569eeee67cd29a0dc6d4c35.md) | 100 | `declaration-track:2569eeee67cd29a0dc6d4c35e7c2a8ade191ae893626b0d1d3ede3f5c6c77cc4` |
| 27 | `theorem` | [missing_parent_rejected](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/missing-parent-rejected--6037c43c9bcbcfcc2051c027.md) | 103 | `result-track:6037c43c9bcbcfcc2051c02742ca01aae227f79d8f7e06ac07f415b6b6068968` |
| 28 | `theorem` | [self_cycle_rejected](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/self-cycle-rejected--f4e3c0f7c49b0ddec1855f83.md) | 106 | `result-track:f4e3c0f7c49b0ddec1855f8360ef07c012428d2ff027eda7407ee345f251d8e5` |
| 29 | `theorem` | [self_cycle_not_validRanks](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/self-cycle-not-validranks--590337dcbddd9aaf4b6b2769.md) | 108 | `result-track:590337dcbddd9aaf4b6b27696be66b59b509d0f7c6c9eb4d64ac9f59c96f0a16` |
| 30 | `theorem` | [increasing_rank_rejected](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/increasing-rank-rejected--2311ce460a945d4678fa5323.md) | 116 | `result-track:2311ce460a945d4678fa532324924a048100a9865e301f822ff4d5a0efe0b962` |
| 31 | `theorem` | [nonzero_empty_rejected](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/nonzero-empty-rejected--7f8c2d832cd5227e263b1227.md) | 120 | `result-track:7f8c2d832cd5227e263b1227dc5008e21a58532073832d72a836e7e67aed4a57` |
| 32 | `instance` | [boolQuiver](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/boolquiver--f55d7ff454bff89b979c04ea.md) | 122 | `declaration-track:f55d7ff454bff89b979c04ea1b3548332ca59e917a307fba95a0f39654e0c0be` |
| 33 | `instance` | [boolTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/booltagdecidableeq--30c0052768ba981d522b15a7.md) | 124 | `declaration-track:30c0052768ba981d522b15a76893bf9977330e348cccda860c6278153c838211` |
| 34 | `theorem` | [same_empty_words](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/same-empty-words--4e3d6e11a7d019246e99659d.md) | 128 | `result-track:4e3d6e11a7d019246e99659d2172b5a3b4145301e5362baa622fe9e43d7b6781` |
| 35 | `theorem` | [empty_roots_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/empty-roots-distinct--e14260c9cb50fa980c4dc21f.md) | 130 | `result-track:e14260c9cb50fa980c4dc21fe3cd45eaa6d2be74dd9e7d336686649abc1aaca4` |
| 36 | `theorem` | [root_loss_counterexample](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/root-loss-counterexample--4573f5ab404d71f8fe4311a2.md) | 133 | `result-track:4573f5ab404d71f8fe4311a25e89fb16100fa703c886dec2bada7ee21793878b` |
| 37 | `theorem` | [no_empty_word_root_decoder](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/no-empty-word-root-decoder--3c6fccccc068eb946cce1035.md) | 138 | `result-track:3c6fccccc068eb946cce1035f3c8619cb41b7d8a499f9193c3709bd5f7f0fc9d` |
| 38 | `theorem` | [explicit_roots_retained](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/explicit-roots-retained--a60c742b1afa59a0216834fb.md) | 144 | `result-track:a60c742b1afa59a0216834fb38f6adeb423a14c3d9a416cb6a225c3181bd0689` |
| 39 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/ParentTraceDictionary__SourceOccurrenceecadc8da2b01130587865470.lean/declarations/example--4048419fb81a84bd8bb5c0ef.md) | 148 | `declaration-track:4048419fb81a84bd8bb5c0ef56a63311437fc8e572d0c2264e3ae22439c0bb87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
