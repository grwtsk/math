# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterate.Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "309490c0ccba7999c59d993de2e4ad441ed19bbc",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `309490c0ccba7999c59d993de2e4ad441ed19bbc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Conjugate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/nat-iterate--f3f66efc37663cf56ecae7c6.md) | 36 | `declaration-track:f3f66efc37663cf56ecae7c6bc669d8141c43b65ca895feef865ae228b199738` |
| 2 | `theorem` | [iterate_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-zero--03385d481027c45498baa945.md) | 50 | `result-track:03385d481027c45498baa9451d0f1223fcc9575588056309515dc2a701958ecf` |
| 3 | `theorem` | [iterate_zero_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-zero-apply--19c52379732e72f981768a23.md) | 53 | `result-track:19c52379732e72f981768a236852a0532232ebf18191f76a55c209bd13c14a98` |
| 4 | `theorem` | [iterate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-succ--dcf52086cd206019b04293b0.md) | 57 | `result-track:dcf52086cd206019b04293b037c15eb7c218115c988ea25dab612d7106a7d6a5` |
| 5 | `theorem` | [iterate_succ_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-succ-apply--88750580e34bcad8fdf8ff4d.md) | 60 | `result-track:88750580e34bcad8fdf8ff4d9850d5364c11cad67aaf3b7f57d441eca66d56ff` |
| 6 | `theorem` | [iterate_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-id--9e781ca54311df78d144473e.md) | 64 | `result-track:9e781ca54311df78d144473e773f9f74cf9b86f135029e05d58c59669a857952` |
| 7 | `theorem` | [iterate_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-add--e2731265284cbafac54fa38e.md) | 67 | `result-track:e2731265284cbafac54fa38e1edd6cceed6abcff2e2ceb9e3a2d802d437b1ea9` |
| 8 | `theorem` | [iterate_add_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-add-apply--4f3f6e09d6ec9433aae54126.md) | 71 | `result-track:4f3f6e09d6ec9433aae541263c82f56d785775264a2be943bea981eb200e42b7` |
| 9 | `theorem` | [iterate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-one--0aa3d5fd33fded341aec26ea.md) | 77 | `result-track:0aa3d5fd33fded341aec26ea89126b14d49e9f3bc299f5d5e285df4452bb6f29` |
| 10 | `theorem` | [iterate_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-mul--0836a72fe1dcde7890b17b97.md) | 80 | `result-track:0836a72fe1dcde7890b17b970519eac5c12d795b916c0233c86e721121e79c13` |
| 11 | `theorem` | [iterate_fixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-fixed--7458566b13e4698635af02eb.md) | 86 | `result-track:7458566b13e4698635af02ebfd1f1bdd2d14c9812a25e81dbfaf032361ab35c8` |
| 12 | `theorem` | [Injective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/injective-iterate--e652e665bbb4c5d5e71e8c8b.md) | 89 | `result-track:e652e665bbb4c5d5e71e8c8bc26669be73061f6524c6f0211c6c1926c695a144` |
| 13 | `theorem` | [Surjective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/surjective-iterate--904d02beafdfe9c949a10f6b.md) | 92 | `result-track:904d02beafdfe9c949a10f6bab9998388b2cb61a6b4aa6d107cc48ab60ac2894` |
| 14 | `theorem` | [Bijective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/bijective-iterate--c0794aac5929592d8e56ff08.md) | 95 | `result-track:c0794aac5929592d8e56ff08b5de9a724d146fc1b2dc690b4960369892ac9815` |
| 15 | `theorem` | [iterate_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-right--ec354f3220b23af20d66987b.md) | 100 | `result-track:ec354f3220b23af20d66987bb95b1df5d28672915ae01f3d9d3161060d875191` |
| 16 | `theorem` | [iterate_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-left--8e6ec2a00e37b5fd29124a8d.md) | 104 | `result-track:8e6ec2a00e37b5fd29124a8d2e5bc48a46678857e4a23cc87b12376e5376b7fb` |
| 17 | `theorem` | [iterate_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-right--535b5aecb5d568101161f6cd.md) | 120 | `result-track:535b5aecb5d568101161f6cd180d3eddecce9787fece3f84d6534f5ae9fdd60f` |
| 18 | `theorem` | [iterate_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-left--9758c14ad0a27901a8b840ca.md) | 123 | `result-track:9758c14ad0a27901a8b840ca6c4d78dc0c0f08da04a03928b639bfe7619c4523` |
| 19 | `theorem` | [iterate_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-iterate--bc846492b5ebf010e9fbef21.md) | 126 | `result-track:bc846492b5ebf010e9fbef21e8501e6d43a051bc92764c89b12eb81d04dd1050` |
| 20 | `theorem` | [iterate_eq_of_map_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-eq-of-map-eq--296fcab404d2661e259174a2.md) | 129 | `result-track:296fcab404d2661e259174a21b8f9b84c65d06860d0551499367e4747f71fbf2` |
| 21 | `theorem` | [comp_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/comp-iterate--a3c6dfd108e64e9f39d4d2e5.md) | 134 | `result-track:a3c6dfd108e64e9f39d4d2e5180018c8bf1400dbef79d129167f9da99c115a85` |
| 22 | `theorem` | [iterate_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-self--41f4b3e9703ad4669213b937.md) | 143 | `result-track:41f4b3e9703ad4669213b9374a6eb70794af81b633dc3ac1fb750d4d35fc86b7` |
| 23 | `theorem` | [self_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/self-iterate--6a64f26b7c4443b625209004.md) | 146 | `result-track:6a64f26b7c4443b6252090048896d3ab208c3dfdd6be4503973935426285df31` |
| 24 | `theorem` | [iterate_iterate_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-iterate-self--9774712e8768fd0ca1f4854d.md) | 149 | `result-track:9774712e8768fd0ca1f4854ded28461a508d299586117a3b4e8980df4a8388bb` |
| 25 | `theorem` | [Semiconj₂.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/semiconj-iterate--3957450ad83f32e608918d56.md) | 154 | `result-track:3957450ad83f32e608918d56bfb9a6c4c9a4218d31584227a930ddee96bd3b34` |
| 26 | `theorem` | [iterate_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-succ--7183597deeca37f3129d4dff.md) | 160 | `result-track:7183597deeca37f3129d4dffeb32e8a0118c0759161d7cb185da24c8a91dce0b` |
| 27 | `theorem` | [iterate_succ_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-succ-apply--48c4c5a43f574a6f8791386f.md) | 163 | `result-track:48c4c5a43f574a6f8791386fa56200322fac169f2a2563aa1e772ec5718df7a7` |
| 28 | `theorem` | [iterate_pred_comp_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-pred-comp-of-pos--ef25e5f368f25b92b6156083.md) | 167 | `result-track:ef25e5f368f25b92b61560835145283b86934b9644ab8ba5a624244aba30a25b` |
| 29 | `theorem` | [comp_iterate_pred_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/comp-iterate-pred-of-pos--0dd13247d46bb7cc26e11840.md) | 170 | `result-track:0dd13247d46bb7cc26e1184001c0c8431a19208a7929c826099bf12a22c07ae1` |
| 30 | `def` | [Iterate.rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-rec--2a2a6d79ebc9822098eb4f38.md) | 174 | `declaration-track:2a2a6d79ebc9822098eb4f38ada527a5954b0bbbb1629d0b0d343c379ccad6e2` |
| 31 | `theorem` | [Iterate.rec_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-rec-zero--ade7cc58dd864f82449bf65e.md) | 180 | `result-track:ade7cc58dd864f82449bf65e096d8be8dec0faf47ac68db97ba673715f350055` |
| 32 | `theorem` | [LeftInverse.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/leftinverse-iterate--6f4a7114076e6acd6ab3f1ac.md) | 186 | `result-track:6f4a7114076e6acd6ab3f1ac33378c2d224f47bfcaebef981d469c6006b1682e` |
| 33 | `theorem` | [RightInverse.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/rightinverse-iterate--8229c0f09ccad6e7526f0899.md) | 192 | `result-track:8229c0f09ccad6e7526f089974fe549f0ddbb880a92a4f2f122d234b56aa4e5e` |
| 34 | `theorem` | [iterate_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-comm--04bc8c18e80eb2bb9c88dfff.md) | 196 | `result-track:04bc8c18e80eb2bb9c88dfffa4018ba50a8ead7ed38fb8b6d64ce610f38ef4f8` |
| 35 | `theorem` | [iterate_commute](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-commute--c0ae93b1e619e480de2744a9.md) | 199 | `result-track:c0ae93b1e619e480de2744a973c7d60f067f1403a156bfe5974747d79c41ae3c` |
| 36 | `lemma` | [iterate_add_eq_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-add-eq-iterate--854185358bc0a79d88d5e45f.md) | 202 | `result-track:854185358bc0a79d88d5e45fa0402633c6b47cd47dd69dc50a58166d25dab1b8` |
| 37 | `lemma` | [iterate_cancel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/iterate-cancel--8cec4809328517fc407c4161.md) | 207 | `result-track:8cec4809328517fc407c416145d40d972b63075294da2d08cce2d3a8d6e18d72` |
| 38 | `theorem` | [involutive_iff_iter_2_eq_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/involutive-iff-iter-2-eq-id--2f0d9cde67c74403d5357544.md) | 212 | `result-track:2f0d9cde67c74403d5357544fe3a54bb1a6f2fc88d34cdc98c5d41f492fce215` |
| 39 | `theorem` | [foldl_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/foldl-const--5e5315fabf64c03fa66b3709.md) | 221 | `result-track:5e5315fabf64c03fa66b370992b10753d9994c2b37a38ffa957a5760090fecf7` |
| 40 | `theorem` | [foldr_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantd74864eb6b34cda8c09eddd30142c358ed6fb4534a03140c9847f19984445486.lean/declarations/foldr-const--55f68f228bbc845340301807.md) | 227 | `result-track:55f68f228bbc8453403018075f64eabd78b386d6c317b0eab7f74f12e1fd912f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
