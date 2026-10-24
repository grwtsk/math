# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt04.Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc6eee31a9635358fe6bdaf5a339f18124d935cb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc6eee31a9635358fe6bdaf5a339f18124d935cb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/positivemeasure--c6f6aab2d3ca9caeeca7ebfc.md) | 23 | `declaration-track:c6f6aab2d3ca9caeeca7ebfcda6772dc78a06a872cea58d591e7c61c3908640a` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/positivel2--7fdec60f4abed8ab8d929da4.md) | 24 | `declaration-track:7fdec60f4abed8ab8d929da4baa942c63e945807c9e3a905272681f84e79e94d` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilatefunc--914d51665b0da50d3dc4cc7f.md) | 26 | `declaration-track:914d51665b0da50d3dc4cc7fd7d4149e2012c5ced66c39a83a04b60f1c942275` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/positivemeasure-map-mul--21c95492eaf04a88dae3cdd5.md) | 28 | `result-track:21c95492eaf04a88dae3cdd5073dd0df4bc42ed30f8f8ae57e610fc7007cc1ee` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/positive-mul-quasi--f6f1f8b372f8a346ce60b57f.md) | 37 | `result-track:f6f1f8b372f8a346ce60b57f6e2ec3b744fd05e403c1782e668e2ef62604fead` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilatefunc-memlp--551a634cceb44aebc23e2eb2.md) | 43 | `result-track:551a634cceb44aebc23e2eb28d8e9c2c41bb19b12e7ca14e8101946d68f16b7b` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilate--de3935ff435f1309c7254340.md) | 50 | `declaration-track:de3935ff435f1309c7254340e9a1a2be8bb972c55511db8cb3200cc5fe1451fe` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilate-ae--cd201c1ab6a3e97f50da109d.md) | 53 | `result-track:cd201c1ab6a3e97f50da109d46c929519048c4ce128af6000d874f0168df62d3` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/norm-sq-integral--39e0518542877b0e0e0c7840.md) | 57 | `result-track:39e0518542877b0e0e0c7840da6a6bbd51d0773896bbf62e52fc58b6c6c76bfa` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilate-norm-sq--d4321023f55c0503426d831b.md) | 72 | `result-track:d4321023f55c0503426d831ba7a09686b60102d92371c10ec48d1ce8657768dd` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilate-norm--00ad3f37ea3badd0cfd3acf4.md) | 86 | `result-track:00ad3f37ea3badd0cfd3acf4cce73a7bc570a35d0d4566bc04cf496d5e5e7ff4` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilate-one--3b32dd8a3a0207d15a91749a.md) | 89 | `result-track:3b32dd8a3a0207d15a91749a9b4b8741b7f58be1e5b0d33f8a9747426b09110a` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilate-comp--8a064dcb20f5de0aeeaf0650.md) | 94 | `result-track:8a064dcb20f5de0aeeaf06503c5b54e51e6515a1a0e64401abd7fb016f763d19` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilate-inverse--aa649e74811ffa48242c6b7d.md) | 106 | `result-track:aa649e74811ffa48242c6b7d56bddaf8fe31668f1c4e46b38ac92759026405dd` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilate-add--8aaf21e501a912dea956a756.md) | 111 | `result-track:8aaf21e501a912dea956a756386d8f8c6c36870668ddb0ddb5cb85b2784588e2` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilate-smul--d28936cdcc910a4846c1c57a.md) | 121 | `result-track:d28936cdcc910a4846c1c57aac2f66f3eb5e6f8fa91d3e55cf8888f853ab044a` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilationisometry--6e809e628b630e4e3042031f.md) | 132 | `declaration-track:6e809e628b630e4e3042031f502824022c070660e36545d1439496fc76070150` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/declarations/dilationequiv--4414459b9fb7615aecfb044c.md) | 138 | `declaration-track:4414459b9fb7615aecfb044cad68e695a7bb98d1dd0b9f6b80ba497f18620bf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
