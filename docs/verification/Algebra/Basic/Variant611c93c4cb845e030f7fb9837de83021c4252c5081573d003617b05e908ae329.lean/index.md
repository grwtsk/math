# Verification target: GRWTSK.Algebra.Basic.Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec6bc9b0fb7ccfc7c048d6fa7f7260d8164a7559",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec6bc9b0fb7ccfc7c048d6fa7f7260d8164a7559`.

Source path: `GRWTSK/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean.json)

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
| 1 | `def` | [ord](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord--badd1fe5ce743782d827c0d1.md) | 44 | `declaration-track:badd1fe5ce743782d827c0d1b21bdd0b11178170490f67c87cffd1f4f90dd83b` |
| 2 | `lemma` | [ord_one](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-one--ab13741bc910de567bc182b9.md) | 47 | `result-track:ab13741bc910de567bc182b9e49693d0f4555c03c8ae781abd9109645f2c2848` |
| 3 | `def` | [Ideal.mulQuot](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ideal-mulquot--2547645951899ecadc450497.md) | 58 | `declaration-track:2547645951899ecadc450497848d3b4768895add4e76a5ca121d3cc7630d4d8b` |
| 4 | `lemma` | [Ideal.mulQuot_injective](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ideal-mulquot-injective--b707d6688f64cdd92cb65f1c.md) | 66 | `result-track:b707d6688f64cdd92cb65f1ccbbf22c18e49a2968cb4458c3a9d425b91e54244` |
| 5 | `def` | [Ideal.quotOfMul](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ideal-quotofmul--4f87c291eb979338fae40914.md) | 81 | `declaration-track:4f87c291eb979338fae40914e4e6ef4da17c2184d639d919f57c383482834e6d` |
| 6 | `lemma` | [Ideal.quotOfMul_surjective](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ideal-quotofmul-surjective--463a6b95943894ad867ab129.md) | 88 | `result-track:463a6b95943894ad867ab129fba253cab0e38bba765376f8d331fe07e5bc3235` |
| 7 | `lemma` | [Ideal.exact_mulQuot_quotOfMul](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ideal-exact-mulquot-quotofmul--ec9ff9b09a04aeaafc10aeb9.md) | 99 | `result-track:ec9ff9b09a04aeaafc10aeb952d6b187e2629449b4d1096a970b71e9735796fa` |
| 8 | `theorem` | [ord_mul](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-mul--32f670c34838ca8bcb726705.md) | 115 | `result-track:32f670c34838ca8bcb726705e179af17650c244b7549126ebe95453c3cabac29` |
| 9 | `lemma` | [ord_mul'](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-mul--3affac8feea5f9d8eedb755e.md) | 133 | `result-track:3affac8feea5f9d8eedb755e67fa879b9804770187ccf70f9c82edfc4d13c29e` |
| 10 | `lemma` | [ord_zero](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-zero--9be1c7f5215fd6614e38c4a9.md) | 141 | `result-track:9be1c7f5215fd6614e38c4a992a5a6ff142844ee6ebcca43dd1168841e5f612d` |
| 11 | `theorem` | [ord_pow](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-pow--99659e6c9cb3472905468c97.md) | 152 | `result-track:99659e6c9cb3472905468c97104a70b0592d6564b6fefc88792e4c08ff5d232d` |
| 12 | `lemma` | [ord_mul_of_isUnit_left](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-mul-of-isunit-left--9edd7eefcd437772b8fac6fd.md) | 160 | `result-track:9edd7eefcd437772b8fac6fdaebe31a92296081f2f42f491fdcef48c5a4cff37` |
| 13 | `lemma` | [ord_mul_of_isUnit_right](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-mul-of-isunit-right--82173f1d7a144354cf49af62.md) | 164 | `result-track:82173f1d7a144354cf49af62176b8ad84afbcbd565e5cc730ded54a7e68f96ab` |
| 14 | `lemma` | [ord_eq_of_associated](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-eq-of-associated--ae0320de377f8d778eee50b7.md) | 167 | `result-track:ae0320de377f8d778eee50b7a574b2d7613b25c09d4e7eae43f18d28f116052c` |
| 15 | `lemma` | [ord_neg](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-neg--6ee87932ce064c40bc55c2db.md) | 172 | `result-track:6ee87932ce064c40bc55c2dbf082132016fb64a6d2e0cc792a488c23a9a06163` |
| 16 | `lemma` | [ord_smul_of_isUnit](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-smul-of-isunit--3a08ca73e7e77d4528192ccd.md) | 180 | `result-track:3a08ca73e7e77d4528192ccdb2217c636c213eac5585f1c0e17e313c52e0fa50` |
| 17 | `lemma` | [ord_le_ord_mul](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-le-ord-mul--f64db5e046f38b7ceae421b7.md) | 189 | `result-track:f64db5e046f38b7ceae421b7a4b3695abe6b6464c224bc786bd77b0a8b6ef30d` |
| 18 | `lemma` | [ord_le_ord_of_dvd](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-le-ord-of-dvd--709a4477364e6a13f26caf32.md) | 197 | `result-track:709a4477364e6a13f26caf32f77803ce4e64ff700132494f18dd5aeb9c7bc2f4` |
| 19 | `lemma` | [ord_le_smul](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-le-smul--60593c058197bf987521de56.md) | 207 | `result-track:60593c058197bf987521de56c700e24cdc28ef8436809ac910d5ed8bf5348a80` |
| 20 | `lemma` | [ord_of_isUnit](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-of-isunit--10994b8932d1149ff84893ef.md) | 214 | `result-track:10994b8932d1149ff84893ef658a3486887481a8070290e5ad91112d6747d939` |
| 21 | `theorem` | [ord_of_irreducible](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-of-irreducible--c10fbe832e95a409a85d4602.md) | 224 | `result-track:c10fbe832e95a409a85d46023f5ccbe14216c0bb5bd8852cdd1b33023760eab7` |
| 22 | `def` | [ordMonoidWithZeroHom](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ordmonoidwithzerohom--9932cf9e64d60d6ca7d957a3.md) | 247 | `declaration-track:9932cf9e64d60d6ca7d957a3589c1419a6369b442cedc0e26791e6abf0c1eeb0` |
| 23 | `lemma` | [ordMonoidWithZeroHom_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ordmonoidwithzerohom-eq-zero-iff--1c20e52239b28be4c2740aad.md) | 266 | `result-track:1c20e52239b28be4c2740aad1cd0d30130959a94818457839cb52aea96992dbe` |
| 24 | `theorem` | [ordMonoidWithZeroHom_eq_ord](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ordmonoidwithzerohom-eq-ord--c23576fac9df6e92b183505f.md) | 279 | `result-track:c23576fac9df6e92b183505fc3bb09f6928217cc06b36221127c5ebd98a215a3` |
| 25 | `lemma` | [ordMonoidWithZeroHom_eq_coe](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ordmonoidwithzerohom-eq-coe--a7107ea2bf7b057af02b463c.md) | 283 | `result-track:a7107ea2bf7b057af02b463ca04b33963d17b2b67e5e9f4fe7201394d78f863c` |
| 26 | `theorem` | [ordMonoidWithZeroHom_eq_zero](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ordmonoidwithzerohom-eq-zero--9088dc25c11647cc00165108.md) | 293 | `result-track:9088dc25c11647cc00165108ba327e90c329cf8540c9ae4e390e9cea85706e02` |
| 27 | `theorem` | [_root_.GRWTSK.Algebra.Ord.Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.isFiniteLength_quotient_span_singleton](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/root-grwtsk-algebra-ord-variantf56ce3420038a9706673ae8c2acc37064a79e12c0--63e8f789a922ad8312343170.md) | 300 | `result-track:63e8f789a922ad8312343170d9f4a52cd7c235155fa5f9663f63355f92b8a0d1` |
| 28 | `lemma` | [ord_ne_top](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-ne-top--e9045a04e0c48129b2e98ef9.md) | 315 | `result-track:e9045a04e0c48129b2e98ef941c171fd4f4553b3cd1eb20dd5343d28e1f7f17b` |
| 29 | `lemma` | [ord_lt_top](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ord-lt-top--c925c2227fa186dbbc108f77.md) | 319 | `result-track:c925c2227fa186dbbc108f77792823b7046b115b864041cf6ba3757a1bcd7520` |
| 30 | `lemma` | [ordMonoidWithZeroHom_isUnit](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ordmonoidwithzerohom-isunit--c04910a44b8182a9d3dc479f.md) | 323 | `result-track:c04910a44b8182a9d3dc479fae52e4bf7dbf7940ab65f2178bf8e88d76526a66` |
| 31 | `def` | [ordFrac](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ordfrac--a9a2e56cc71943491caa3797.md) | 332 | `declaration-track:a9a2e56cc71943491caa3797faa47e377d995283c977a79fad0366e8cc049851` |
| 32 | `lemma` | [ordFrac_eq_ord](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ordfrac-eq-ord--b4219025ae868198b8fe576d.md) | 336 | `result-track:b4219025ae868198b8fe576d4c92eff8e895b8a8d5b860a96b859edf6c246abf` |
| 33 | `lemma` | [ordFrac_eq_div](../../../../mathematics/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean/declarations/ordfrac-eq-div--73ca6243014988c4bc653ac7.md) | 342 | `result-track:73ca6243014988c4bc653ac7326dc5da4a5638d4a4b298871a630f99c094b4ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
