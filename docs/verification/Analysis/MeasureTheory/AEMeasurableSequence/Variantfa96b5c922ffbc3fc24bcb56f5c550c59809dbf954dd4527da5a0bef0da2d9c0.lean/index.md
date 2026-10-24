# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurableSequence.Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e89835c9bdbf280dd953b4c9c963bba704ac7d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e89835c9bdbf280dd953b4c9c963bba704ac7d`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MeasureSpaceDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/aeseqset--e071112c1760d22fecdfcf9c.md) | 32 | `declaration-track:e071112c1760d22fecdfcf9c20b7a89892cc23819cca85b132b746a8a5ff118f` |
| 2 | `def` | [aeSeq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/aeseq--7ee34702217d271351ea0bbc.md) | 38 | `declaration-track:7ee34702217d271351ea0bbc4894d0f0f199fc351aa8b5c140258b45ec1469c4` |
| 3 | `theorem` | [mk_eq_fun_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/mk-eq-fun-of-mem-aeseqset--cb0aadf43fa653998b5cf0fb.md) | 45 | `result-track:cb0aadf43fa653998b5cf0fb0d4d2869af399b6db6fb8f3890912ce201da9946` |
| 4 | `theorem` | [aeSeq_eq_mk_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/aeseq-eq-mk-of-mem-aeseqset--2518ceaa71efc0cfe025539a.md) | 53 | `result-track:2518ceaa71efc0cfe025539aefcf415e0adbf4fa7526e44e39889f5f9aa72559` |
| 5 | `theorem` | [aeSeq_eq_fun_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/aeseq-eq-fun-of-mem-aeseqset--5acaa09a4419cbb0e84a3bf9.md) | 57 | `result-track:5acaa09a4419cbb0e84a3bf99fea1cd9248ae2779d6ca6406cc2e6fc48989e3f` |
| 6 | `theorem` | [prop_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/prop-of-mem-aeseqset--2595593f8a9dd22459582a1a.md) | 61 | `result-track:2595593f8a9dd22459582a1ad368d5137dd836d523220e35eab563bb141f465e` |
| 7 | `theorem` | [fun_prop_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/fun-prop-of-mem-aeseqset--2f3284dd5d1415b85976009f.md) | 72 | `result-track:2f3284dd5d1415b85976009fb8e996009a461cce034c5b88215c1514e25769d0` |
| 8 | `theorem` | [aeSeqSet_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/aeseqset-measurableset--bd6fbe3c9d94a8ad8661c8df.md) | 81 | `result-track:bd6fbe3c9d94a8ad8661c8dfb1649ccbb7ae181cd1d12fa2bad28edb9c1cca82` |
| 9 | `theorem` | [measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/measurable--1965f5bdfee6cc73fd72312a.md) | 84 | `result-track:1965f5bdfee6cc73fd72312adda4ca70af6cacbfa37521a0e5b550500ce7d92d` |
| 10 | `theorem` | [measure_compl_aeSeqSet_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/measure-compl-aeseqset-eq-zero--5b1f00b1b9fed19b6373ecc7.md) | 88 | `result-track:5b1f00b1b9fed19b6373ecc747f4aef7d1c3c7ef25477e6ac1744c8c95b2d6fb` |
| 11 | `theorem` | [aeSeq_eq_mk_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/aeseq-eq-mk-ae--6d1dcf5395b75fe8243b6e88.md) | 95 | `result-track:6d1dcf5395b75fe8243b6e88af38278647e475cd87e8358d3dde8752876714f1` |
| 12 | `theorem` | [aeSeq_eq_fun_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/aeseq-eq-fun-ae--5f42668e40fd05caa0dd1816.md) | 101 | `result-track:5f42668e40fd05caa0dd181690d528b019dae76a22a4c4b2896f4a95941a1355` |
| 13 | `theorem` | [aeSeq_n_eq_fun_n_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/aeseq-n-eq-fun-n-ae--4f3887807d1fa4dd33131c0b.md) | 107 | `result-track:4f3887807d1fa4dd33131c0b054dcbf54438cc1f9ebb187ae961550de4ac3072` |
| 14 | `theorem` | [iSup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/isup--51d660c38a9a2b61e367cd46.md) | 111 | `result-track:51d660c38a9a2b61e367cd462fce3b00646fe379198f93d5259918d0efd23b5d` |
| 15 | `theorem` | [iInf](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantfa96b5c922ffbc3fc24bcb56f5c550c59809dbf954dd4527da5a0bef0da2d9c0.lean/declarations/iinf--4426b26a2b86574474553ad9.md) | 120 | `result-track:4426b26a2b86574474553ad97f49f01b7760fc5895d58ddead4472075902b2dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
