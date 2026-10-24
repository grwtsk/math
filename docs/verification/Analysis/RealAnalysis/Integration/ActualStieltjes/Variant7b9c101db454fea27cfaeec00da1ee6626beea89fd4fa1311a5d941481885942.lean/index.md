# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualStieltjes.Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3de419064f36051eeac7d479dc4bf466b32f828",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3de419064f36051eeac7d479dc4bf466b32f828`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_stieltjes_20261004.CountKernel` — import line 1; external provider; requires a separately pinned dependency.
- `scratch.common_mean_stieltjes_20261004.OrdinateKernel` — import line 2; external provider; requires a separately pinned dependency.
- `scratch.common_mean_stieltjes_20261004.OrdinateSummability` — import line 3; external provider; requires a separately pinned dependency.
- `scratch.common_mean_stieltjes_20261004.KernelSeries` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.Continuation` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [positiveOccurrence_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/positiveoccurrence-countable--6bce62edfcfc54f1503a98a7.md) | 23 | `declaration-track:6bce62edfcfc54f1503a98a7c80f008b8e5f651fb1f3b7742d2cf6917f4d02bf` |
| 2 | `def` | [actualClosedOrdinateKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actualclosedordinatekernel--cf4a26a1180a3160824e78a5.md) | 27 | `declaration-track:cf4a26a1180a3160824e78a5b32d297bcb138568c00b2c4284a85ac57acd7723` |
| 3 | `theorem` | [actual_closed_ordinate_kernel_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-closed-ordinate-kernel-eq--cb0b47ba01dda2fa4ed8d8e8.md) | 30 | `result-track:cb0b47ba01dda2fa4ed8d8e8a52bccc992a8ccc3a789a417006240f79b8031ec` |
| 4 | `theorem` | [actual_closed_ordinate_kernel_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-closed-ordinate-kernel-nonnegative--bc16a1381f87fd9a2375d450.md) | 35 | `result-track:bc16a1381f87fd9a2375d450cc89f50bc4ba87fcde965ac0832c130c8900f212` |
| 5 | `theorem` | [actual_closed_ordinate_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-closed-ordinate-kernel-integrable--894e98c80804f6aaee58c908.md) | 45 | `result-track:894e98c80804f6aaee58c908dd43412b957a36706f069445bc2ebbcb921ec38e` |
| 6 | `theorem` | [actual_closed_ordinate_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-closed-ordinate-kernel-integral--6fadd1581724827e0e3a05a8.md) | 49 | `result-track:6fadd1581724827e0e3a05a8e3228fb6c781aae0e38a5e04d93c0f91aaf4f567` |
| 7 | `theorem` | [actual_closed_ordinate_kernel_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-closed-ordinate-kernel-summable--c704b29caf1a40a0ab0a245b.md) | 55 | `result-track:c704b29caf1a40a0ab0a245be447dfa5442cdf89652beeacafaf766798c732ea` |
| 8 | `theorem` | [actual_closed_ordinate_kernel_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-closed-ordinate-kernel-tsum--3cbf0065a9fb4ac3f71d67c2.md) | 60 | `result-track:3cbf0065a9fb4ac3f71d67c21c6ba9d06fde2a2ba124e0458330c36cccf17402` |
| 9 | `theorem` | [actual_closed_ordinate_kernel_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-closed-ordinate-kernel-integrals-summable--732440f9ef1b7fe947c89084.md) | 67 | `result-track:732440f9ef1b7fe947c890848720b3da7590bdc05d6c603808cda66f859e74cb` |
| 10 | `theorem` | [actual_closed_ordinate_kernel_series_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-closed-ordinate-kernel-series-integrable--7faa46d4d54f42a2423b5739.md) | 74 | `result-track:7faa46d4d54f42a2423b57390ec4a14436e798980571e4dd70eef209fd728cb9` |
| 11 | `theorem` | [actual_positive_count_seventh_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-positive-count-seventh-integrable--904175fe3b6955dc9e76a7e1.md) | 83 | `result-track:904175fe3b6955dc9e76a7e1af2612b1446af2166748b6163faf036b90fef482` |
| 12 | `theorem` | [actual_positive_count_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-positive-count-kernel-integral--d6c920f3173366a43211c26c.md) | 94 | `result-track:d6c920f3173366a43211c26ce24c0cec199aa33a4f7765684ecc19c2d79328de` |
| 13 | `theorem` | [actual_positive_sixth_stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/declarations/actual-positive-sixth-stieltjes--4e066696d69d7f83db698c15.md) | 112 | `result-track:4e066696d69d7f83db698c156b38e7a7ee2d4475f57c14ad46bab886e03d76ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
