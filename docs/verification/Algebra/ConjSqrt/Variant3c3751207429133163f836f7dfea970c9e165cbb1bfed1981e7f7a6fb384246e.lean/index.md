# Verification target: GRWTSK.Algebra.ConjSqrt.Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9c6cf68f86e3b26b19aac1e1e227fb6be92e4e7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/index.md) · [Full source](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9c6cf68f86e3b26b19aac1e1e227fb6be92e4e7`.

Source path: `GRWTSK/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean.json)

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
| 1 | `def` | [conjSqrt](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/conjsqrt--be8d1387ab2f4658715780fc.md) | 32 | `declaration-track:be8d1387ab2f4658715780fc27904870c6532a9285c269da5c798a3fef9b40c4` |
| 2 | `lemma` | [toLinearMap_conjSqrt](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/tolinearmap-conjsqrt--586aa54345e5717082abc194.md) | 35 | `result-track:586aa54345e5717082abc1941c898049d2b40ff618393c60096680f0fcb0f14d` |
| 3 | `lemma` | [conjSqrt_apply](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/conjsqrt-apply--47953cdf148ad22b76cec4ea.md) | 38 | `result-track:47953cdf148ad22b76cec4ea54a1a4c5915af54985f71cdbfcddcc66a28cba4b` |
| 4 | `lemma` | [conjSqrt_of_not_nonneg](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/conjsqrt-of-not-nonneg--0d798868ab2171ac7e748bab.md) | 40 | `result-track:0d798868ab2171ac7e748bab88c028ddb2f323f6f76113f3e8be5aa866223079` |
| 5 | `lemma` | [conjSqrt_monotone](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/conjsqrt-monotone--1bae69be09725c68cb58abb1.md) | 43 | `result-track:1bae69be09725c68cb58abb157a0803ac71d3273244978d9b9997ad0a36edce4` |
| 6 | `lemma` | [conjSqrt_le_conjSqrt](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/conjsqrt-le-conjsqrt--b1a50682fac45d4751b92537.md) | 50 | `result-track:b1a50682fac45d4751b925370df04f465319c9955138edbba11043c244b689a0` |
| 7 | `lemma` | [isStrictlyPositive_conjSqrt_iff](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/isstrictlypositive-conjsqrt-iff--9841a4235b522d1369d27484.md) | 58 | `result-track:9841a4235b522d1369d27484e2e2a84de92b58e6db751c635625ad6ed0edcc0b` |
| 8 | `lemma` | [ringInverse_conjSqrt](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/ringinverse-conjsqrt--cb59ea95af96e6a009cf828c.md) | 65 | `result-track:cb59ea95af96e6a009cf828c70ab36e4507ebf9c06a44b20adfaf9e8fc397964` |
| 9 | `lemma` | [conjSqrt_ringInverse_conjSqrt](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/conjsqrt-ringinverse-conjsqrt--8a6dcbf3a4f7487ca7f013dc.md) | 73 | `result-track:8a6dcbf3a4f7487ca7f013dcb7a89f8738f1e91f2a2e3cd25bd3dad13bb56930` |
| 10 | `lemma` | [conjSqrt_conjSqrt_ringInverse](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/conjsqrt-conjsqrt-ringinverse--8a64533f118699cacb16005a.md) | 82 | `result-track:8a64533f118699cacb16005aa91fff89fc8fc778641bcc90a4f2c9b6cfc76562` |
| 11 | `lemma` | [conjSqrt_one](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/conjsqrt-one--97ac8ec39e9c1a873a6e809e.md) | 87 | `result-track:97ac8ec39e9c1a873a6e809e96dc406f266824fa7e3d7e7b9e153f8faca13318` |
| 12 | `lemma` | [conjSqrt_ringInverse_self](../../../../mathematics/Algebra/ConjSqrt/Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e.lean/declarations/conjsqrt-ringinverse-self--f3b712fbf0db68bfbc3d3a44.md) | 91 | `result-track:f3b712fbf0db68bfbc3d3a44ca4e8cb03c30afa35123e08cb59cbd3809579080` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
