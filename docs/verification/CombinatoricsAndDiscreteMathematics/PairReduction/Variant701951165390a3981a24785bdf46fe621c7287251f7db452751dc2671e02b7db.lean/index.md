# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PairReduction.Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa9a0345e8f8bb40ece9f794eeb8fc539879f458",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa9a0345e8f8bb40ece9f794eeb8fc539879f458`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_radius_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/exists-radius-le--a3a81e3a7b03535fa3e48fa3.md) | 113 | `result-track:a3a81e3a7b03535fa3e48fa33573dc799ed940a2a651d1d7c4b0e5d6ab9f048d` |
| 2 | `def` | [logSizeRadius](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/logsizeradius--33a69c34b3cd2821857a7e2f.md) | 125 | `declaration-track:33a69c34b3cd2821857a7e2f8452f19c2ad7b510b28867b6656ec09a09010b9b` |
| 3 | `lemma` | [one_le_logSizeRadius](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/one-le-logsizeradius--d3cb7a52d3a97534f34ac6a3.md) | 128 | `result-track:d3cb7a52d3a97534f34ac6a3003548ddb0052386f365c9a4601caed711233877` |
| 4 | `lemma` | [card_le_logSizeRadius_le_pow_logSizeRadius](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/card-le-logsizeradius-le-pow-logsizeradius--d316607421b20a2036b68586.md) | 133 | `result-track:d316607421b20a2036b68586aafd6a1f2d87c36cd273c0be46a829c2300e1baf` |
| 5 | `lemma` | [pow_logSizeRadius_le_card_le_logSizeRadius](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/pow-logsizeradius-le-card-le-logsizeradius--663f0bb66d8960af8d7a301a.md) | 138 | `result-track:663f0bb66d8960af8d7a301afc3645279f5dc25a564c4b10f0005102a1477a4b` |
| 6 | `structure` | [logSizeBallStruct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/logsizeballstruct--0b035340089aa76a7bb9bb62.md) | 153 | `declaration-track:0b035340089aa76a7bb9bb624ca1cd63c5ac802b1edef7fc36233d4c92be890b` |
| 7 | `def` | [logSizeBallStruct.smallBall](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/logsizeballstruct-smallball--b8ccc7937a1c08dc689890a0.md) | 166 | `declaration-track:b8ccc7937a1c08dc689890a090e65352db8ece072ee03643af0be478d3a6dc31` |
| 8 | `def` | [logSizeBallStruct.ball](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/logsizeballstruct-ball--45f3eb3c17d6b8cf8abcc090.md) | 173 | `declaration-track:45f3eb3c17d6b8cf8abcc090e2ea430a39bc67a155c51591945885ebfce1ea34` |
| 9 | `def` | [logSizeBallSeq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/logsizeballseq--ccab790b362f4d1630a15bba.md) | 184 | `declaration-track:ccab790b362f4d1630a15bba5be833f037596894d8f15911e128c1e71f71347d` |
| 10 | `lemma` | [finset_logSizeBallSeq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/finset-logsizeballseq-zero--1af97e10a242ea09280fec92.md) | 193 | `result-track:1af97e10a242ea09280fec92a663228b0ea6fa796ea5353922abbfff1dd78e44` |
| 11 | `lemma` | [point_logSizeBallSeq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/point-logsizeballseq-zero--a28154678d41da4e45ac76fa.md) | 196 | `result-track:a28154678d41da4e45ac76fa5643e3700a4db6bd2fd56a089fec16ede5ce1c72` |
| 12 | `lemma` | [radius_logSizeBallSeq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/radius-logsizeballseq-zero--1d19c36d4bb32f68ca001c00.md) | 199 | `result-track:1d19c36d4bb32f68ca001c004bf1dd952aab7a4ee9718384ea40d4493a72b60a` |
| 13 | `lemma` | [finset_logSizeBallSeq_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/finset-logsizeballseq-add-one--b3a500ed04f7676df85471c3.md) | 202 | `result-track:b3a500ed04f7676df85471c3332f28c359080a3946582ebf440800e247c08f1f` |
| 14 | `lemma` | [point_logSizeBallSeq_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/point-logsizeballseq-add-one--4a417be17268676dcaa25bc7.md) | 206 | `result-track:4a417be17268676dcaa25bc782254057ad884be2a9f58a5be62686d5bf5b2d2f` |
| 15 | `lemma` | [radius_logSizeBallSeq_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/radius-logsizeballseq-add-one--7303575953183079c4e20f42.md) | 211 | `result-track:7303575953183079c4e20f42cbfd61304feb6330b3b8df065e2aa55b059a44de` |
| 16 | `lemma` | [finset_logSizeBallSeq_add_one_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/finset-logsizeballseq-add-one-subset--3e41e0832d5919b6628af2fc.md) | 216 | `result-track:3e41e0832d5919b6628af2fc6bf0ce6f06358494a3a8b044648cd678acc016c3` |
| 17 | `lemma` | [antitone_logSizeBallSeq_add_one_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/antitone-logsizeballseq-add-one-subset--cccebea9b1342382e585b9e0.md) | 220 | `result-track:cccebea9b1342382e585b9e0a96d230f0dadc8385042af59240f997a3a3afdab` |
| 18 | `lemma` | [finset_logSizeBallSeq_subset_logSizeBallSeq_init](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/finset-logsizeballseq-subset-logsizeballseq-init--606f0f361d780bebb687e4b5.md) | 224 | `result-track:606f0f361d780bebb687e4b5b030d3c2b38238f3d5f8c193167864763b16d9c2` |
| 19 | `lemma` | [radius_logSizeBallSeq_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/radius-logsizeballseq-le--b1be556675add092dd8934f1.md) | 229 | `result-track:b1be556675add092dd8934f1443c901ca7435ded8cd222891602b0fd4b4a1b07` |
| 20 | `lemma` | [one_le_radius_logSizeBallSeq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/one-le-radius-logsizeballseq--1bb85bbf08c463b010a1530e.md) | 241 | `result-track:1bb85bbf08c463b010a1530e72498bbc317b2993e5e5ce852499277f4763cae4` |
| 21 | `lemma` | [point_mem_finset_logSizeBallSeq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/point-mem-finset-logsizeballseq--3df7133a4ca0af272a10eeb5.md) | 248 | `result-track:3df7133a4ca0af272a10eeb588586d774df28b80b3ecab6c176aa31f09d78804` |
| 22 | `lemma` | [point_mem_logSizeBallSeq_init](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/point-mem-logsizeballseq-init--20852a63045374d16e0b9e6f.md) | 255 | `result-track:20852a63045374d16e0b9e6f62b32402c0da9aafb7679c26357f543095272c7f` |
| 23 | `lemma` | [point_notMem_finset_logSizeBallSeq_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/point-notmem-finset-logsizeballseq-add-one--ebf4184b9df168445f287213.md) | 265 | `result-track:ebf4184b9df168445f28721348ee98d81a825ee9cd1e2ce5563cce92a48ee172` |
| 24 | `lemma` | [finset_logSizeBallSeq_add_one_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/finset-logsizeballseq-add-one-ssubset--de6dcc840b4ad4e1e9e35700.md) | 269 | `result-track:de6dcc840b4ad4e1e9e35700419d76e43c43f320f1e77917905ae4ec0410d3de` |
| 25 | `lemma` | [card_finset_logSizeBallSeq_add_one_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/card-finset-logsizeballseq-add-one-lt--cde4e800504f465d3b522381.md) | 278 | `result-track:cde4e800504f465d3b5223812fac355603386655f29a896f94897fb81da5b17a` |
| 26 | `lemma` | [card_finset_logSizeBallSeq_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/card-finset-logsizeballseq-le--e4cb98984f3a887134d75d19.md) | 283 | `result-track:e4cb98984f3a887134d75d19494641bd54135ead993d55fd2ba2ab12f27b9ce1` |
| 27 | `lemma` | [card_finset_logSizeBallSeq_card_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/card-finset-logsizeballseq-card-eq-zero--b728931722cde4341addad0c.md) | 295 | `result-track:b728931722cde4341addad0cfdd8c58cdaa3641987d7dbef58447eab3bf64bd6` |
| 28 | `lemma` | [disjoint_smallBall_logSizeBallSeq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/disjoint-smallball-logsizeballseq--2a7a6af00417265ff7e2f0ec.md) | 300 | `result-track:2a7a6af00417265ff7e2f0ec9463e4922c856dc92fb8669f677505a294af3945` |
| 29 | `def` | [pairSetSeq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/pairsetseq--d39cb481617134c54bd395c6.md) | 312 | `declaration-track:d39cb481617134c54bd395c6621b76e21514c79914813650c3cf68a4c4ab2943` |
| 30 | `def` | [pairSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/pairset--7b7035aa6fc23bb6222a03da.md) | 319 | `declaration-track:7b7035aa6fc23bb6222a03da5eba8883e28211e1237cb84d64d98e8834b080a1` |
| 31 | `lemma` | [pairSet_empty_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/pairset-empty-eq-empty--86a6567f757e97bed71aa1f5.md) | 322 | `result-track:86a6567f757e97bed71aa1f520a4c91878e73b074512fd952ec7872728f5d7d5` |
| 32 | `lemma` | [pairSet_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/pairset-subset--dd12c4a7048124ff743e4385.md) | 324 | `result-track:dd12c4a7048124ff743e4385021961988a3326051c949e5da4e67df5c18dc1d6` |
| 33 | `lemma` | [card_pairSetSeq_le_logSizeRadius_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/card-pairsetseq-le-logsizeradius-mul--ceb41ba8216cb10f87a74691.md) | 335 | `result-track:ceb41ba8216cb10f87a746917090d623cfd8f1da9948e4d0f715177ada198fed` |
| 34 | `lemma` | [logSizeRadius_le_card_smallBall](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/logsizeradius-le-card-smallball--2a5c42a65f6e7ae0de3fd8a6.md) | 348 | `result-track:2a5c42a65f6e7ae0de3fd8a6c4c574d960936cb9d86fe4fcc9ddc0cca18f0397` |
| 35 | `lemma` | [card_pairSet_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/card-pairset-le--4d5fa9999e4929ada17ba3e6.md) | 363 | `result-track:4d5fa9999e4929ada17ba3e6808e645a50f161527c7421d0f5a1f690b45573a9` |
| 36 | `lemma` | [edist_le_of_mem_pairSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/edist-le-of-mem-pairset--9efa56de39b438edd1d7fe90.md) | 381 | `result-track:9efa56de39b438edd1d7fe9025159415f13c6824a90eeb1ff58a210d56883216` |
| 37 | `lemma` | [iSup_edist_pairSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/isup-edist-pairset--f071ede2fa5d7acb2f7feb2f.md) | 396 | `result-track:f071ede2fa5d7acb2f7feb2fa5a4f233bd140b47dbce25fa084a9f6ab4a879ef` |
| 38 | `theorem` | [EMetric.pair_reduction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/declarations/emetric-pair-reduction--94218a1f462956a031fbdad2.md) | 478 | `result-track:94218a1f462956a031fbdad235115f615dd4018ff93432bccd234108a94eb067` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
