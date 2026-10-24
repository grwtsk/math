# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurableSequence.Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ce1fc795a86c2679f5f09e0941818235352034f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ce1fc795a86c2679f5f09e0941818235352034f`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MeasureSpaceDef` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/aeseqset--a08fd07a71c16c9b0ad19987.md) | 40 | `declaration-track:a08fd07a71c16c9b0ad199876eb02674f45859a6a46efaaefd2ea4a2e7b4db7f` |
| 2 | `def` | [aeSeq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/aeseq--dd51e9b24cacf7c1a289d7fc.md) | 46 | `declaration-track:dd51e9b24cacf7c1a289d7fc0cd23e70fe3ae8f6a3e067ccaec134ba4b43f803` |
| 3 | `theorem` | [mk_eq_fun_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/mk-eq-fun-of-mem-aeseqset--78be6c002c0d8c188c08c17e.md) | 53 | `result-track:78be6c002c0d8c188c08c17e817c6cc8afa29fa1a91b59c6a7ab617d3f06124d` |
| 4 | `theorem` | [aeSeq_eq_mk_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/aeseq-eq-mk-of-mem-aeseqset--1cdc94a1e7e65cf9996d6ac5.md) | 61 | `result-track:1cdc94a1e7e65cf9996d6ac5e44d1ba6b79f92e4bb93b0b807cd212c2981284a` |
| 5 | `theorem` | [aeSeq_eq_fun_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/aeseq-eq-fun-of-mem-aeseqset--768fdddda8cc0551ef261483.md) | 65 | `result-track:768fdddda8cc0551ef2614839e2317c07a44c4d7fe78343bb34e37163686a595` |
| 6 | `theorem` | [prop_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/prop-of-mem-aeseqset--55a2694cec72c482980742e3.md) | 69 | `result-track:55a2694cec72c482980742e3ea604a0a610abd245ce454aa3c476203165bf8f5` |
| 7 | `theorem` | [fun_prop_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/fun-prop-of-mem-aeseqset--ce444d894527b467d1e8d89c.md) | 80 | `result-track:ce444d894527b467d1e8d89caa3ac48ae9e97280455e36270112df31d99f3147` |
| 8 | `theorem` | [aeSeqSet_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/aeseqset-measurableset--7976314596611b3d62291f99.md) | 89 | `result-track:7976314596611b3d62291f99ddf8f510da26c50720c9095bc9ad2b18644af8e9` |
| 9 | `theorem` | [measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/measurable--012a90e8bd40af832b718ead.md) | 92 | `result-track:012a90e8bd40af832b718eadc6ee41b047b6929fe6ef7c9b7f85ba471849b7ab` |
| 10 | `theorem` | [measure_compl_aeSeqSet_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/measure-compl-aeseqset-eq-zero--4e5d81df4718571476ca5fab.md) | 96 | `result-track:4e5d81df4718571476ca5fab7432ad19823c732f3b4c5a7c200e21782511ca57` |
| 11 | `theorem` | [aeSeq_eq_mk_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/aeseq-eq-mk-ae--7859a1ecdba15c1d3b570c21.md) | 103 | `result-track:7859a1ecdba15c1d3b570c217178b2b401486d2d6779a5c44aa631428d01165c` |
| 12 | `theorem` | [aeSeq_eq_fun_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/aeseq-eq-fun-ae--314b3ea9f15502e8635391af.md) | 109 | `result-track:314b3ea9f15502e8635391afa544cdacc9069f6abbde79653e2a014f0c8a9db5` |
| 13 | `theorem` | [aeSeq_n_eq_fun_n_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/aeseq-n-eq-fun-n-ae--1c70b65187e0b93067f084bf.md) | 115 | `result-track:1c70b65187e0b93067f084bfbe7497764960fa85dbd6c9c100a031c959bce5ba` |
| 14 | `theorem` | [iSup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/isup--b8351c18ed9ab9b124b557e6.md) | 119 | `result-track:b8351c18ed9ab9b124b557e6e14fe8b941f668abe54db327e5247bdbecb3ae6f` |
| 15 | `theorem` | [iInf](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant88a78390350202a93e9a359ee29dff34f48f8eaebefe90030858d00a54be5b3a.lean/declarations/iinf--eea1c474e2217029ab9400ff.md) | 128 | `result-track:eea1c474e2217029ab9400ffd65ffae6cfd24fdaa8401b69b6cdbdbfeafcca63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
