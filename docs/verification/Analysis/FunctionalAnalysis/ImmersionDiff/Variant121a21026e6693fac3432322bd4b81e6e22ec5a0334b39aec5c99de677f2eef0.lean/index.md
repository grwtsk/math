# Verification target: GRWTSK.Analysis.FunctionalAnalysis.ImmersionDiff.Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bea9969446b772c975bd5fa5ab099acaab0b8ded",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bea9969446b772c975bd5fa5ab099acaab0b8ded`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean.json)

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
| 1 | `def` | [IsDiffImmersionAt](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/isdiffimmersionat--a463bb2c156feb2c9877eb46.md) | 66 | `declaration-track:a463bb2c156feb2c9877eb46f29da842c24e6764220b613b35ac56df4582b38a` |
| 2 | `lemma` | [isDiffImmersionAt_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/isdiffimmersionat-iff--d0b0159880e31f1ac40b04a6.md) | 70 | `result-track:d0b0159880e31f1ac40b04a60cab1fdbde2d11a117be69db503b72e706db04ce` |
| 3 | `lemma` | [mfderiv_injective](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/mfderiv-injective--5faedf4b79124772e1d5a34e.md) | 74 | `result-track:5faedf4b79124772e1d5a34e902f72581397d5194a4a6632fe4c7cfbcd34386f` |
| 4 | `lemma` | [mdifferentiableAt](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/mdifferentiableat--8fbcbeb8a7a4ab719c4b9c73.md) | 77 | `result-track:8fbcbeb8a7a4ab719c4b9c7357503fab8c5cb9733c7aac063ca77f30c7a42b79` |
| 5 | `lemma` | [continuousAt](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/continuousat--f52d310591fcb05d282128ec.md) | 80 | `result-track:f52d310591fcb05d282128ec1ac97547774273d588c7865de0a6c816c664e406` |
| 6 | `lemma` | [congr](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/congr--3f778a3d556d2a3d16a33408.md) | 83 | `result-track:3f778a3d556d2a3d16a33408ebdb73b7cadefd5b243e09ef64fc18e7de554955` |
| 7 | `lemma` | [prodMap](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/prodmap--02b25a3140db78c3da8839bf.md) | 88 | `result-track:02b25a3140db78c3da8839bf22e96e8e041f6f726f11fa6f954ce77e48291a37` |
| 8 | `lemma` | [of_mfderiv_isInvertible](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/of-mfderiv-isinvertible--0b04f2a7529a4373072a81dd.md) | 95 | `result-track:0b04f2a7529a4373072a81dd2609adebe5a7e9d9ae0bf830223c6131e89ba45f` |
| 9 | `lemma` | [_root_.IsLocalDiffeomorphAt.isDiffImmersionAt](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/root-islocaldiffeomorphat-isdiffimmersionat--c7cf060618ec61347b053d98.md) | 101 | `result-track:c7cf060618ec61347b053d9867aaef24d7d24a5556acefd0e9e871932883ccdb` |
| 10 | `lemma` | [_root_.ContinuousLinearEquiv.isDiffImmersionAt](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/root-continuouslinearequiv-isdiffimmersionat--b8a1dc4911ce41c3979137fa.md) | 107 | `result-track:b8a1dc4911ce41c3979137fa529be9b4c2bdd7a14790de52818c31b4cc57a67e` |
| 11 | `lemma` | [comp](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/comp--9e91e267d56edc254fd270ea.md) | 113 | `result-track:9e91e267d56edc254fd270ea5e8174c96b9dd307e444eaf22c9f5eac70dc7b4c` |
| 12 | `lemma` | [of_comp](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/of-comp--8df38685604ff1a598cbec66.md) | 121 | `result-track:8df38685604ff1a598cbec66c71a74efbf97f12a9e30ddb9a74dbf8019fc1d44` |
| 13 | `lemma` | [comp_isInvertible_mfderiv_left](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/comp-isinvertible-mfderiv-left--878ef7c65132d59c4998cc6f.md) | 126 | `result-track:878ef7c65132d59c4998cc6f684b3f91e92e905d65feed8368fc72286811ddc3` |
| 14 | `lemma` | [comp_isLocalDiffeomorphAt_left](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/comp-islocaldiffeomorphat-left--48bfc92452ec174700ae0871.md) | 131 | `result-track:48bfc92452ec174700ae08711b550753b1ea35547d0c80f585e0b59e7ceb3186` |
| 15 | `lemma` | [comp_isLocalDiffeomorphAt_left_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/comp-islocaldiffeomorphat-left-iff--d464cbdaa03d9d51f2d97a3e.md) | 136 | `result-track:d464cbdaa03d9d51f2d97a3e741d04435700dd4947a428fe2e746ef1fba32b30` |
| 16 | `lemma` | [comp_isInvertible_mfderiv_right](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/comp-isinvertible-mfderiv-right--52f2daf93fd3f2eb7e27d176.md) | 146 | `result-track:52f2daf93fd3f2eb7e27d176a56755570597d70dc208189b367415a78d0c4a68` |
| 17 | `lemma` | [comp_isLocalDiffeomorphAt_right](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/comp-islocaldiffeomorphat-right--c0536fd2df5e60d5a94f4472.md) | 151 | `result-track:c0536fd2df5e60d5a94f4472e9ffd6d5d93dfe1a64492b97145c75bdc1ba03b7` |
| 18 | `lemma` | [comp_isLocalDiffeomorphAt_right_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/comp-islocaldiffeomorphat-right-iff--5ffcd276f11d3387b7fda9e9.md) | 156 | `result-track:5ffcd276f11d3387b7fda9e9dc73bf4f85bb88899791f4fb1b5ae132e35c6bae` |
| 19 | `lemma` | [of_injective_of_finiteDimensional](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.lean/declarations/of-injective-of-finitedimensional--05d94fb16622f8df633adda8.md) | 166 | `result-track:05d94fb16622f8df633adda8a36d05514395efbc7ecf0733e9e7a67b8507d38e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
