# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurableSequence.Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4bea7630cbc82191b13842f231456c90d6919c9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4bea7630cbc82191b13842f231456c90d6919c9`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean.json)

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
| 1 | `def` | [aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/aeseqset--81756f61f6a837620d2a84d6.md) | 35 | `declaration-track:81756f61f6a837620d2a84d672ae4f250895c5644c4d7a8f810592d25d3fd765` |
| 2 | `def` | [aeSeq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/aeseq--d8eba1caed245a450da37ab7.md) | 41 | `declaration-track:d8eba1caed245a450da37ab76d84b568b8152d387e3ab30d9ee5acb778c18c62` |
| 3 | `theorem` | [mk_eq_fun_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/mk-eq-fun-of-mem-aeseqset--ea8ca1c19853ea7b6928dc81.md) | 48 | `result-track:ea8ca1c19853ea7b6928dc818a89e28478f37daf0d51cc90d3d97cd147ab5eca` |
| 4 | `theorem` | [aeSeq_eq_mk_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/aeseq-eq-mk-of-mem-aeseqset--98f8628111dbe8c1d0bc5c59.md) | 56 | `result-track:98f8628111dbe8c1d0bc5c59024f84589d3015395162d1e7781d2fe9060d4587` |
| 5 | `theorem` | [aeSeq_eq_fun_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/aeseq-eq-fun-of-mem-aeseqset--05bd224d71bb3af6a035db5c.md) | 60 | `result-track:05bd224d71bb3af6a035db5cd724081fa72c57fb3412d91a195ffbcbc3b824d2` |
| 6 | `theorem` | [prop_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/prop-of-mem-aeseqset--d2c2c3d6962501322e99bf74.md) | 64 | `result-track:d2c2c3d6962501322e99bf7470514ae14c3f7af16a868d234d9e33418ce25a2e` |
| 7 | `theorem` | [fun_prop_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/fun-prop-of-mem-aeseqset--b9d2a3bddfff8b38049e8601.md) | 75 | `result-track:b9d2a3bddfff8b38049e8601ec5a88142daf056f85d3c35f1f68772215362793` |
| 8 | `theorem` | [aeSeqSet_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/aeseqset-measurableset--66858916567d9c6b49f1f972.md) | 84 | `result-track:66858916567d9c6b49f1f972265818465c76f694738f1e5ddd815fb2552d903c` |
| 9 | `theorem` | [measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/measurable--a9d1d9b8d3ac887739feb6fe.md) | 87 | `result-track:a9d1d9b8d3ac887739feb6fe049d39e506dd77fa72264a9d6b0b10b2c64fc8ea` |
| 10 | `theorem` | [measure_compl_aeSeqSet_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/measure-compl-aeseqset-eq-zero--8478cab7a024774c97291f87.md) | 91 | `result-track:8478cab7a024774c97291f872095d11b594f5c445bb0db8f6f36f24cd28dd72c` |
| 11 | `theorem` | [aeSeq_eq_mk_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/aeseq-eq-mk-ae--8d6e2e0a03826e5eb5fcac5d.md) | 98 | `result-track:8d6e2e0a03826e5eb5fcac5da93037e3ece92d88f4d1b93c18197edb997ff0eb` |
| 12 | `theorem` | [aeSeq_eq_fun_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/aeseq-eq-fun-ae--7301d723e5ff5876a172ed1d.md) | 104 | `result-track:7301d723e5ff5876a172ed1daf5aeee717bba4d2dc0355fe8a83f081f778162b` |
| 13 | `theorem` | [aeSeq_n_eq_fun_n_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/aeseq-n-eq-fun-n-ae--54da4a11ff533a94b3b744dd.md) | 110 | `result-track:54da4a11ff533a94b3b744ddf91019af4b3e8f0b1675a2cc48a82ecd382f4160` |
| 14 | `theorem` | [iSup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/isup--b955f8c58e5bf79e15851c06.md) | 114 | `result-track:b955f8c58e5bf79e15851c06cfde459e880352faf85507e2440e2a26f6edfa22` |
| 15 | `theorem` | [iInf](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variant8031952940ecd59de1e17482764abf9d3959f5eb7447bfc1b9b2a519a9da5b1d.lean/declarations/iinf--edbb1c1ef6d5fa59b1597790.md) | 119 | `result-track:edbb1c1ef6d5fa59b159779062a4c20ad1706bee522364bbae9b17887de19921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
