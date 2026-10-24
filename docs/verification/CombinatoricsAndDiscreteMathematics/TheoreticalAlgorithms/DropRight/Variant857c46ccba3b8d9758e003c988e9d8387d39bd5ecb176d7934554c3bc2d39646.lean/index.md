# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropRight.Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "731e80d6284807e106791bc19ab086b29b59fd08",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `731e80d6284807e106791bc19ab086b29b59fd08`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean.json)

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
| 1 | `def` | [rdrop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdrop--703855d53af213911cc5290c.md) | 46 | `declaration-track:703855d53af213911cc5290c6f0615e24ccf8ceeb8b3c8d2fc9fe7122c93c2e5` |
| 2 | `theorem` | [rdrop_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdrop-nil--7b43f97ba5ed3c858a4c442f.md) | 50 | `result-track:7b43f97ba5ed3c858a4c442fb5e68c590e3b5c108ee2de094ab3a758a8c3be7c` |
| 3 | `theorem` | [rdrop_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdrop-zero--26001ee04364a6e411786cbb.md) | 53 | `result-track:26001ee04364a6e411786cbbb2f35a20d2929bd0e3c3a79cd4ade50007d99208` |
| 4 | `theorem` | [rdrop_eq_reverse_drop_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdrop-eq-reverse-drop-reverse--c330a32d443bf6836a37b50c.md) | 55 | `result-track:c330a32d443bf6836a37b50c5612c8e563a7f2b1cfaa94206431f243f3be0bd5` |
| 5 | `theorem` | [rdrop_concat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdrop-concat-succ--273e983b61267597557091da.md) | 65 | `result-track:273e983b61267597557091da0a6aac7964049806cb3ac00de84addfd3df423fc` |
| 6 | `def` | [rtake](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtake--400a8b5046743fc53a10b401.md) | 69 | `declaration-track:400a8b5046743fc53a10b4010111142493a71f3b872064981ad27d7777400920` |
| 7 | `theorem` | [rtake_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtake-nil--cf186df8349c67d94b8a7a13.md) | 73 | `result-track:cf186df8349c67d94b8a7a1393bb7b30cd04c4b8e554468487d72eef8d052227` |
| 8 | `theorem` | [rtake_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtake-zero--71efc44dee797d42514c9b48.md) | 76 | `result-track:71efc44dee797d42514c9b4886c9197b26ccaf11a35f87dabcccc969ec68a8f8` |
| 9 | `theorem` | [rtake_eq_reverse_take_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtake-eq-reverse-take-reverse--8952a9c425d5fb4f670a4d79.md) | 78 | `result-track:8952a9c425d5fb4f670a4d791847590dd8083fea3d514928dc97ea07f0d8ef54` |
| 10 | `theorem` | [rtake_concat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtake-concat-succ--18a683b1da67c4312a061345.md) | 88 | `result-track:18a683b1da67c4312a0613459d9fc58cff88abb51a2ce2a35482cf36f5194c81` |
| 11 | `def` | [rdropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile--ac172a3eb5aaf479cf768542.md) | 93 | `declaration-track:ac172a3eb5aaf479cf7685425820bcc6c918b513e7bc056f680bec6224c7df6a` |
| 12 | `theorem` | [rdropWhile_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-nil--51beccd9afa689d08e5e619a.md) | 97 | `result-track:51beccd9afa689d08e5e619a30f695fcf37c7b2b6ad372578c99a618d11b58a9` |
| 13 | `theorem` | [rdropWhile_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-concat--92bc186a33092375c39daaac.md) | 99 | `result-track:92bc186a33092375c39daaacf70b8e64cd2279ec32a461b4ae57c769a35a7691` |
| 14 | `theorem` | [rdropWhile_concat_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-concat-pos--478ac71d9f157a7ec032c9a5.md) | 105 | `result-track:478ac71d9f157a7ec032c9a5e83dcbbae781a793acae106ee181024a8f3c2b0c` |
| 15 | `theorem` | [rdropWhile_concat_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-concat-neg--5519274c1f0fe25ae4e0c6fd.md) | 109 | `result-track:5519274c1f0fe25ae4e0c6fded1d9ca15636c1b066ab33454be999394213b60b` |
| 16 | `theorem` | [rdropWhile_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-singleton--6ca660eb9e9ecf9249141630.md) | 112 | `result-track:6ca660eb9e9ecf9249141630b88a3508a23c645f5df5d73bdabcb76a5f282693` |
| 17 | `theorem` | [rdropWhile_last_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-last-not--8f9db77f9c164a8d020905c6.md) | 115 | `result-track:8f9db77f9c164a8d020905c6ef6f10e97622490402b796e08978f38eca12a935` |
| 18 | `theorem` | [rdropWhile_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-prefix--738514ebf5ba37b55b29de98.md) | 120 | `result-track:738514ebf5ba37b55b29de98eb04cf5e258c0cbd554f7e61fee74d7368bb679e` |
| 19 | `theorem` | [rdropWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-eq-nil-iff--779ee96c6c2ced77fb57dea6.md) | 127 | `result-track:779ee96c6c2ced77fb57dea6fdef421a768f5d3af5ad546f081215d7d0dfabff` |
| 20 | `theorem` | [rdropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-eq-self-iff--8d6216af40b5a490af8ef680.md) | 130 | `result-track:8d6216af40b5a490af8ef680e3357e78dfa4f0416a34498048d37cd69a183983` |
| 21 | `theorem` | [dropWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/dropwhile-idempotent--40755ec47217030e356cb6b2.md) | 135 | `result-track:40755ec47217030e356cb6b22937ee8bc5c28f0b9f560b8027e4395df8cf1b11` |
| 22 | `theorem` | [rdropWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-idempotent--8f82a56b036d750214898ed9.md) | 139 | `result-track:8f82a56b036d750214898ed92c977e78b8090d8373994780a59d23063d2be373` |
| 23 | `theorem` | [rdropWhile_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-reverse--317d93f135eac3cecf4c5021.md) | 142 | `result-track:317d93f135eac3cecf4c50213c68a4ce23a40dfbaeb0a36a48f115c8c0ffbcbc` |
| 24 | `def` | [rtakeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtakewhile--94ed81784cb301cf1b246cd2.md) | 147 | `declaration-track:94ed81784cb301cf1b246cd28ca4d1db5e5392560f92a1910e6be1888dbf091e` |
| 25 | `theorem` | [rtakeWhile_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtakewhile-nil--bea83cba0a89f41e3d87f693.md) | 151 | `result-track:bea83cba0a89f41e3d87f69351fc6aa7a820f97691b573c233f6cbf3a0f85f19` |
| 26 | `theorem` | [rtakeWhile_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtakewhile-concat--42957db75f37f38d72d4a977.md) | 153 | `result-track:42957db75f37f38d72d4a9779e40efcf083df55768e6a1d52fe0bd639b7e2266` |
| 27 | `theorem` | [rtakeWhile_concat_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtakewhile-concat-pos--83db1848f633ff126bf1e78a.md) | 159 | `result-track:83db1848f633ff126bf1e78a2dfc5643f1d9e1fb0427d9066726f4dd642b3a06` |
| 28 | `theorem` | [rtakeWhile_concat_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtakewhile-concat-neg--a48462e379abcc8215b99008.md) | 163 | `result-track:a48462e379abcc8215b990084a5a45d378fa2fb308570e140366eff6fec98d78` |
| 29 | `theorem` | [rtakeWhile_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtakewhile-suffix--a143cc8c4d743cc1e95371ea.md) | 166 | `result-track:a143cc8c4d743cc1e95371ea0213176701eb7d1569ec5cb9c37dc4af17887716` |
| 30 | `theorem` | [rtakeWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtakewhile-eq-self-iff--316243011249dcbf79916472.md) | 173 | `result-track:316243011249dcbf79916472062a909d45586c5b6d271a8f0008122b276536df` |
| 31 | `theorem` | [rtakeWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtakewhile-eq-nil-iff--5411b2f6f9827d6fb4032ada.md) | 177 | `result-track:5411b2f6f9827d6fb4032ada1b3477857ca8ec5e71a1e9fbf28b554fd3e42a1f` |
| 32 | `theorem` | [mem_rtakeWhile_imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/mem-rtakewhile-imp--4d3c7a2ca47e35baa8bb303b.md) | 180 | `result-track:4d3c7a2ca47e35baa8bb303b3a2b608023fdba13f6cd2552f11be3923d04717d` |
| 33 | `theorem` | [rtakeWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtakewhile-idempotent--fc8ebe719ac53c53880431b7.md) | 184 | `result-track:fc8ebe719ac53c53880431b7add6d4e8bdebc6ce9d1eae382111ef53a0dd01d6` |
| 34 | `theorem` | [rtakeWhile_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rtakewhile-reverse--def973bcf6cb18a7e8e31290.md) | 188 | `result-track:def973bcf6cb18a7e8e3129058355e7f89b34a088a3e92f4380fd4b4e4062a46` |
| 35 | `theorem` | [rdropWhile_append_rtakeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdropwhile-append-rtakewhile--60dd5afb906a7ee0695059bf.md) | 192 | `result-track:60dd5afb906a7ee0695059bff3943dff58e75fb0b1c4447dae202a3642ccdff8` |
| 36 | `lemma` | [rdrop_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdrop-add--abbf884289a537c1d59e5c27.md) | 197 | `result-track:abbf884289a537c1d59e5c277c2c960ef1f07274b0bd08b6934dad86031a023c` |
| 37 | `lemma` | [rdrop_append_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdrop-append-length--b9d5c6f913fe5a73cbceeea6.md) | 201 | `result-track:b9d5c6f913fe5a73cbceeea655d48174fca38d4109c61db58cfd7690da637abc` |
| 38 | `lemma` | [rdrop_append_of_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdrop-append-of-le-length--4d3242d0e8c824a4e2d273c0.md) | 206 | `result-track:4d3242d0e8c824a4e2d273c03c06b6005c408f295b4f96c0af7bfad3c4aa7aaa` |
| 39 | `lemma` | [rdrop_append_length_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean/declarations/rdrop-append-length-add--52557f27f036ce4eb0471fed.md) | 214 | `result-track:52557f27f036ce4eb0471fedaf2192b6b790715c32bd8a77745f735552b98afb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
