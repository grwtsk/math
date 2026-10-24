# Verification target: GRWTSK.Analysis.ComplexAnalysis.HasPrimitives.Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "915083d4986cf499f5095d7598bb19dc9d72e36a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `915083d4986cf499f5095d7598bb19dc9d72e36a`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean.json)

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
| 1 | `lemma` | [re_add_im_mul_mem_ball](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/re-add-im-mul-mem-ball--2de5a11ef5726abee2351de0.md) | 54 | `result-track:2de5a11ef5726abee2351de0256b6346d104dbd4459393e723f8755b86f97b6a` |
| 2 | `lemma` | [mem_ball_re_aux](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/mem-ball-re-aux--91f27d36e3b03399fde17b43.md) | 61 | `result-track:91f27d36e3b03399fde17b4380eb7114c242e56abe7d06a32f98656be904f1be` |
| 3 | `lemma` | [mem_closedBall_aux](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/mem-closedball-aux--e9ebb0fbae9cc8bc5bd34245.md) | 72 | `result-track:e9ebb0fbae9cc8bc5bd34245190a1bcc0016bbe6b4773a9349e9be9afcee3b70` |
| 4 | `lemma` | [mem_ball_of_map_re_aux](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/mem-ball-of-map-re-aux--0bea38770a8f20a95115f37d.md) | 80 | `result-track:0bea38770a8f20a95115f37dfd42b9c11cc68ce07b2b6d12f8f6ee1f0ef30957` |
| 5 | `lemma` | [mem_ball_of_map_im_aux₁](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/mem-ball-of-map-im-aux--dc9e0c1762788514154525e4.md) | 85 | `result-track:dc9e0c1762788514154525e4e6d6ee23325a69aad0f4733f53b5f45f05728e36` |
| 6 | `lemma` | [mem_ball_of_map_im_aux₂](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/mem-ball-of-map-im-aux--c22c1cf912fe83875433041b.md) | 90 | `result-track:c22c1cf912fe83875433041bf9c4a3a14917f1668844ec921cbf31380726470d` |
| 7 | `def` | [wedgeIntegral](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/wedgeintegral--c908abf460ced6c000297716.md) | 103 | `declaration-track:c908abf460ced6c0002977164d6ac9f2c9b45648944eee4adccd05581adc4bf1` |
| 8 | `lemma` | [wedgeIntegral_add_wedgeIntegral_eq](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/wedgeintegral-add-wedgeintegral-eq--acb76a9d0ed748a5f51890af.md) | 106 | `result-track:acb76a9d0ed748a5f51890af27b8b6862c6b121ca6e5c6e3cbbd9af8e29a7758` |
| 9 | `def` | [IsConservativeOn](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/isconservativeon--e0873db346d423bf533d52ee.md) | 118 | `declaration-track:e0873db346d423bf533d52eec6db8c679ee5a80f66e716224d3b3c2c3d292de1` |
| 10 | `def` | [IsExactOn](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/isexacton--07eea8e8c4ec9370b092afee.md) | 124 | `declaration-track:07eea8e8c4ec9370b092afeed11e808d1174c88286534e5eb03756494b4b70f9` |
| 11 | `lemma` | [IsExactOn.with_val_at](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/isexacton-with-val-at--db734a910625145090ce3f4e.md) | 127 | `result-track:db734a910625145090ce3f4eacfa97db57a40a13b34bb295a2b51b6754f9c78c` |
| 12 | `lemma` | [IsConservativeOn.mono](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/isconservativeon-mono--cb1045270bad0020c9b03832.md) | 134 | `result-track:cb1045270bad0020c9b038320a1f7af4fa22a273d0eaaa7190ef678b77a38de3` |
| 13 | `theorem` | [_root_.GRWTSK.Analysis.ComplexAnalysis.ReAddImMulMemBall.Variant330915b98ba9fef080fb4b250357a0b329c8b20ffa6f18a12d55e612f10f9c1e.DifferentiableOn.isConservativeOn](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/root-grwtsk-analysis-complexanalysis-readdimmulmemball-variant330915b98b--929096d9003a51b9b2872ea8.md) | 138 | `result-track:929096d9003a51b9b2872ea86d7541f62803ecfdf2bcd041bd90e5b33725e1d6` |
| 14 | `lemma` | [IsExactOn.differentiableOn](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/isexacton-differentiableon--225e4eb037f8d85371096454.md) | 146 | `result-track:225e4eb037f8d85371096454e201abac8323d9cc552b50b0370ba9b03e647150` |
| 15 | `lemma` | [IsConservativeOn.eventually_nhds_wedgeIntegral_sub_wedgeIntegral](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/isconservativeon-eventually-nhds-wedgeintegral-sub-wedgeintegral--3c725dce772651b1bb56b399.md) | 161 | `result-track:3c725dce772651b1bb56b399a609fd5068a99cc6a628a660d841c43584c84e8b` |
| 16 | `lemma` | [hasDerivAt_wedgeIntegral_re_aux](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/hasderivat-wedgeintegral-re-aux--f0a8a4d939206aea2c5643aa.md) | 208 | `result-track:f0a8a4d939206aea2c5643aab80a1043bf112ad3c0647633f883c26e35cb5de2` |
| 17 | `lemma` | [hasDerivAt_wedgeIntegral_im_aux](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/hasderivat-wedgeintegral-im-aux--aec8b44ba485371ed563e904.md) | 230 | `result-track:aec8b44ba485371ed563e904c6a34e86d10e87af09d5dec88cbeb0e9e9ffa3cd` |
| 18 | `theorem` | [IsConservativeOn.hasDerivAt_wedgeIntegral](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/isconservativeon-hasderivat-wedgeintegral--6bc258a87f3c38294cf8828d.md) | 259 | `result-track:6bc258a87f3c38294cf8828d4d9996982e6e3b50a2e721e3f50df473ba52ddf4` |
| 19 | `theorem` | [IsConservativeOn.isExactOn_ball](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/isconservativeon-isexacton-ball--59fa00daa031413ca92c7c32.md) | 283 | `result-track:59fa00daa031413ca92c7c322115ce83ac5543145722959812c88fbaaa1f4b8a` |
| 20 | `theorem` | [isConservativeOn_and_continuousOn_iff_isDifferentiableOn](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/isconservativeon-and-continuouson-iff-isdifferentiableon--2a1ef1b4c605371df8c6119e.md) | 288 | `result-track:2a1ef1b4c605371df8c6119ea983763a17631c516e64eac852a0957811498049` |
| 21 | `theorem` | [_root_.GRWTSK.Analysis.ComplexAnalysis.ReAddImMulMemBall.Variant330915b98ba9fef080fb4b250357a0b329c8b20ffa6f18a12d55e612f10f9c1e.DifferentiableOn.isExactOn_ball](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/root-grwtsk-analysis-complexanalysis-readdimmulmemball-variant330915b98b--dc911f73077bef7b79d26a83.md) | 299 | `result-track:dc911f73077bef7b79d26a836d159e4981d83956c187ad545bc50afca84db2f1` |
| 22 | `theorem` | [IsConservativeOn.isExactOn_univ](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/isconservativeon-isexacton-univ--32aa8b06ec9e4aa07b8729e3.md) | 307 | `result-track:32aa8b06ec9e4aa07b8729e367fc90e7faa703ad9a29896df9790b62b2e9b9e6` |
| 23 | `theorem` | [_root_.GRWTSK.Analysis.ComplexAnalysis.ReAddImMulMemBall.Variant330915b98ba9fef080fb4b250357a0b329c8b20ffa6f18a12d55e612f10f9c1e.Differentiable.isExactOn_univ](../../../../../mathematics/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/declarations/root-grwtsk-analysis-complexanalysis-readdimmulmemball-variant330915b98b--1cf277812a2bb4b59402f61a.md) | 318 | `result-track:1cf277812a2bb4b59402f61ab0162ba65e7439c9642467bcf62cacfbf77a468d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
