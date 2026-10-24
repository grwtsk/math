# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BinaryEntropy.Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd975be22dd84dc7e31fd48fcd7435094d4f75aa",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd975be22dd84dc7e31fd48fcd7435094d4f75aa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy--1a4d538bd3dcae749336b0c4.md) | 71 | `declaration-track:1a4d538bd3dcae749336b0c49bfce2fafa90677efca065f1b5ce74a019b7b5d1` |
| 2 | `lemma` | [binEntropy_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-zero--a3f385e7f992659260852d2f.md) | 73 | `result-track:a3f385e7f992659260852d2fed1a0e66690229d165b55e85f63e68f6973557e5` |
| 3 | `lemma` | [binEntropy_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-one--96d0aa9ac4bfcfb0b482497e.md) | 75 | `result-track:96d0aa9ac4bfcfb0b482497e0eedc4242c9ec70ed121c6a7a59d2fd6a48cd9b8` |
| 4 | `lemma` | [binEntropy_two_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-two-inv--2ba306e27238fc54e14d853b.md) | 77 | `result-track:2ba306e27238fc54e14d853bd650ae78a3e08f10a8eb14267a6cd1f855d946a1` |
| 5 | `lemma` | [binEntropy_eq_negMulLog_add_negMulLog_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-eq-negmullog-add-negmullog-one-sub--7e483f75c77058d9d1456499.md) | 79 | `result-track:7e483f75c77058d9d1456499a7f033419efeb688633791c360baf4d82ddf363e` |
| 6 | `lemma` | [binEntropy_eq_negMulLog_add_negMulLog_one_sub'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-eq-negmullog-add-negmullog-one-sub--f3738af5c809de24649d1010.md) | 82 | `result-track:f3738af5c809de24649d101063010bab7e398b293932d464bd17609dde6db243` |
| 7 | `lemma` | [binEntropy_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-one-sub--d7487aa9f7b161314758892f.md) | 87 | `result-track:d7487aa9f7b161314758892fef58df2fc22faed87583d8f26a4d420d91a61a29` |
| 8 | `lemma` | [binEntropy_two_inv_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-two-inv-add--6541f6b3f1d7828f4bf7f6de.md) | 91 | `result-track:6541f6b3f1d7828f4bf7f6de01dfb6847b52b580fa8066be3f00e71630a906df` |
| 9 | `lemma` | [binEntropy_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-pos--1eacfe54362342b0562f08af.md) | 94 | `result-track:1eacfe54362342b0562f08af2a63b10004915e10c287efb0ea83fdb58551da7a` |
| 10 | `lemma` | [binEntropy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-nonneg--050929e70ab32937e2fc5522.md) | 101 | `result-track:050929e70ab32937e2fc55223564b7612e1abdcf00efc66d9ac4bbc9bdeef0d7` |
| 11 | `lemma` | [binEntropy_neg_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-neg-of-neg--bca2a31e61bae5c33bd5c097.md) | 109 | `result-track:bca2a31e61bae5c33bd5c09787cc3ebde1d4f8baf2d639c6ef5a30e317760821` |
| 12 | `lemma` | [binEntropy_nonpos_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-nonpos-of-nonpos--80c3998584587b3b5f50992c.md) | 124 | `result-track:80c3998584587b3b5f50992c3afe2b9bc7aa065974d82b5fa3039bcbf12e3ef6` |
| 13 | `lemma` | [binEntropy_neg_of_one_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-neg-of-one-lt--812f810a0734148a897d70d2.md) | 130 | `result-track:812f810a0734148a897d70d29a3637c93cc92c3454dfeb70dfb31fd9a73bb8c6` |
| 14 | `lemma` | [binEntropy_nonpos_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-nonpos-of-one-le--d3843ddfed993fbf6e237cee.md) | 134 | `result-track:d3843ddfed993fbf6e237ceed3c9dd6eae0d08f6b9b5af6749c47d2ec49a7faf` |
| 15 | `lemma` | [binEntropy_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-eq-zero--0bb2f618f4413f6fb3f00151.md) | 137 | `result-track:0bb2f618f4413f6fb3f001517eedff2baed3c30bf250875e5b97b3e316f9350f` |
| 16 | `lemma` | [binEntropy_lt_log_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-lt-log-two--a7f5b8aabd63ede9b9755335.md) | 147 | `result-track:a7f5b8aabd63ede9b97553356047a97dcbd6cf2c7c352b648598a6ebcda6919f` |
| 17 | `lemma` | [binEntropy_le_log_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-le-log-two--5717173c0fcc5ca951b0cc00.md) | 165 | `result-track:5717173c0fcc5ca951b0cc000ee9fbcdb1f3d1897323c51d4fab77c72c868d5b` |
| 18 | `lemma` | [binEntropy_eq_log_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-eq-log-two--333bc9242766ecb55616a767.md) | 170 | `result-track:333bc9242766ecb55616a767b8b6e7b3010e06d5fe46226b42b9f287d433c6c0` |
| 19 | `lemma` | [binEntropy_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-continuous--31e5d0299cedecdb34d81a7d.md) | 175 | `result-track:31e5d0299cedecdb34d81a7d026810514d58e2900be4a5852f8fe6dcb9c5a121` |
| 20 | `lemma` | [differentiableAt_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/differentiableat-binentropy--5eeed9837d82c08c5604c0b2.md) | 178 | `result-track:5eeed9837d82c08c5604c0b278e79f775910349e2eb83a588ad1be151373b93b` |
| 21 | `lemma` | [differentiableAt_binEntropy_iff_ne_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/differentiableat-binentropy-iff-ne-zero-one--12a3cda1c5d9fbce831fdd6b.md) | 185 | `result-track:12a3cda1c5d9fbce831fdd6b794103eb3f499fbf46cc8ea0d7d82dac48b1ef5e` |
| 22 | `lemma` | [deriv_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/deriv-binentropy--cd8a745fa870f364629cdca8.md) | 198 | `result-track:cd8a745fa870f364629cdca8b444d3da49baefaff5bc3df5c091a58626e51270` |
| 23 | `def` | [qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy--863ab9c5cf889e4d448fa65b.md) | 221 | `declaration-track:863ab9c5cf889e4d448fa65bef43304df6524804683023df3b7043d533475a53` |
| 24 | `lemma` | [qaryEntropy_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy-zero--2ad21be415d68ed64d5f7f06.md) | 223 | `result-track:2ad21be415d68ed64d5f7f06aaf2b2202b3aba7df61a1c06fc3774640b66f786` |
| 25 | `lemma` | [qaryEntropy_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy-one--3f98330d5337607aee5e9410.md) | 224 | `result-track:3f98330d5337607aee5e9410a2004d13f51e6a40a90f89b2379096200149e0ad` |
| 26 | `lemma` | [qaryEntropy_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy-two--99d934f190cc43e1fcd84dc0.md) | 225 | `result-track:99d934f190cc43e1fcd84dc040cd5b3fb6c4afb63b869dcb3738cdd5bbb7b3fd` |
| 27 | `lemma` | [qaryEntropy_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy-pos--ffd643089e3192242c74c513.md) | 227 | `result-track:ffd643089e3192242c74c5134d4c2c425cc44ebe0913153a43dff768580a41c5` |
| 28 | `lemma` | [qaryEntropy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy-nonneg--edd69f79342bbeaa25e7f5f8.md) | 231 | `result-track:edd69f79342bbeaa25e7f5f878c44aec75a30080ab5a97210e506ed50bacc612` |
| 29 | `lemma` | [qaryEntropy_neg_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy-neg-of-neg--168bd1d9ff62fa4e08a3a593.md) | 239 | `result-track:168bd1d9ff62fa4e08a3a593483c5398c7e7cfa44bbdeef471cc3a88c4c4573d` |
| 30 | `lemma` | [qaryEntropy_nonpos_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy-nonpos-of-nonpos--57a2e8939f038adca5c3b1e0.md) | 244 | `result-track:57a2e8939f038adca5c3b1e066cae472cb00528e6dc993ca8576bd71fe3d7436` |
| 31 | `lemma` | [qaryEntropy_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy-continuous--7dd2729d05d1c974b33251f6.md) | 250 | `result-track:7dd2729d05d1c974b33251f64f2c7ba411dbb597c3aaa74970401663fdb8629d` |
| 32 | `lemma` | [differentiableAt_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/differentiableat-qaryentropy--c586007f36dc5ac73538552c.md) | 253 | `result-track:c586007f36dc5ac73538552ca466e2ef8e730288ac88e10ada8b5ee5b4105da0` |
| 33 | `lemma` | [deriv_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/deriv-qaryentropy--76965cd98844a8b179b5793a.md) | 256 | `result-track:76965cd98844a8b179b5793a52fccfdc4f3c74207c3bffb251adf49b794eb996` |
| 34 | `lemma` | [hasDerivAt_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/hasderivat-binentropy--4ab94e2477dd349d5471c1c9.md) | 265 | `result-track:4ab94e2477dd349d5471c1c95939a94aa8dd87fa3c3eadfcd2b2a9e77c4b961d` |
| 35 | `lemma` | [hasDerivAt_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/hasderivat-qaryentropy--f009c3146d959c4e82e6a650.md) | 269 | `result-track:f009c3146d959c4e82e6a6508eaf83338be3cc8e8944e1286f774c4fb0dc915c` |
| 36 | `lemma` | [tendsto_log_one_sub_sub_log_nhdsGT_atAtop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/tendsto-log-one-sub-sub-log-nhdsgt-atatop--f093ba39e2045e6013c9e388.md) | 277 | `result-track:f093ba39e2045e6013c9e388a936785b89549d6c6b576e46b440312b79c992b5` |
| 37 | `lemma` | [tendsto_log_one_sub_sub_log_nhdsLT_one_atBot](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/tendsto-log-one-sub-sub-log-nhdslt-one-atbot--60f608baa8c4a04510c86cca.md) | 286 | `result-track:60f608baa8c4a04510c86cca36ae29090cc03d4cff983b277bcdb11893ecb4d0` |
| 38 | `lemma` | [not_continuousAt_deriv_qaryEntropy_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/not-continuousat-deriv-qaryentropy-one--cc8dfb9ffc09fea6e5554e2d.md) | 302 | `result-track:cc8dfb9ffc09fea6e5554e2dd1eb174ae1bdeb7da3f2afadc5815732a2e9cf8e` |
| 39 | `lemma` | [not_continuousAt_deriv_qaryEntropy_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/not-continuousat-deriv-qaryentropy-zero--9235fdf262095f454d3a15b6.md) | 322 | `result-track:9235fdf262095f454d3a15b608ee1a29321c2db204fd91ca8df1c4a196e3110c` |
| 40 | `lemma` | [deriv2_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/deriv2-qaryentropy--7476b318f578be98f2a59ea8.md) | 340 | `result-track:7476b318f578be98f2a59ea8e655ed1dd5ae157fd39a8ffd71d765e9b5a2bc46` |
| 41 | `lemma` | [deriv2_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/deriv2-binentropy--13fab55bbee582cffcecacbb.md) | 370 | `result-track:13fab55bbee582cffcecacbb4a824a895ddce3acf996a8e17f997fd68d5cd03d` |
| 42 | `lemma` | [qaryEntropy_strictMonoOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy-strictmonoon--0ec2d3711567c64be6def53c.md) | 376 | `result-track:0ec2d3711567c64be6def53cdd17acdb4796ba73837a6fcab7430a848ccfaaf8` |
| 43 | `lemma` | [qaryEntropy_strictAntiOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/qaryentropy-strictantion--eda1861a9208bb52ef6ee994.md) | 404 | `result-track:eda1861a9208bb52ef6ee9947264c36d1c375e7725f22a73682550d9964bd06c` |
| 44 | `lemma` | [binEntropy_strictMonoOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-strictmonoon--cdfc8d00833fa33cbe6a746f.md) | 432 | `result-track:cdfc8d00833fa33cbe6a746f955c7d86dda030ab296f923f1bbde5a4d157cb94` |
| 45 | `lemma` | [binEntropy_strictAntiOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/binentropy-strictantion--5dfd38e833ea03b9bd3bf477.md) | 437 | `result-track:5dfd38e833ea03b9bd3bf4775cf6649cbdf088c4c92a79e247822f40942b26ab` |
| 46 | `lemma` | [strictConcaveOn_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/strictconcaveon-qaryentropy--9206887c9d16799882a9c686.md) | 444 | `result-track:9206887c9d16799882a9c686f968399fcf6816b1d5c5be0ee60ba9cdf84dd108` |
| 47 | `lemma` | [strictConcave_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Varianta2603c87b49022af807717d625dbbee7ed314819048c37253ced14a18ed5d330.lean/declarations/strictconcave-binentropy--c46d2964e6ad0f614c998034.md) | 453 | `result-track:c46d2964e6ad0f614c99803465c17062765a6e68b2968d8eac0edf1f56732843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
