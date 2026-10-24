# Verification target: GRWTSK.Analysis.MeasureTheory.Egorov.Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cfce191c2daec0ea6807a3df2233b70375c562f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cfce191c2daec0ea6807a3df2233b70375c562f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean.json)

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
| 1 | `def` | [notConvergentSeq](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/notconvergentseq--73261c8ea2bb8c0e5bf3ca22.md) | 45 | `declaration-track:73261c8ea2bb8c0e5bf3ca228a0e2d5efecfc19acbbefaa61e4d0461bb82370f` |
| 2 | `theorem` | [mem_notConvergentSeq_iff](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/mem-notconvergentseq-iff--5139ec3537e16cd3d0014e7c.md) | 50 | `result-track:5139ec3537e16cd3d0014e7cd11a385bf5a5f50946fc3d29a028bf5f205f0128` |
| 3 | `theorem` | [notConvergentSeq_antitone](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/notconvergentseq-antitone--7053ac3b833e6c357df71247.md) | 54 | `result-track:7053ac3b833e6c357df7124701b381f549f32c104764496f5c9fa21d5f5b4bdc` |
| 4 | `theorem` | [measure_inter_notConvergentSeq_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/measure-inter-notconvergentseq-eq-zero--514b39eb44d786a68af73213.md) | 57 | `result-track:514b39eb44d786a68af73213d1985b0fed693e62f5bce6decfc54aed4f810ee2` |
| 5 | `theorem` | [notConvergentSeq_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/notconvergentseq-measurableset--08cc4a28c6025e7d65163e7c.md) | 70 | `result-track:08cc4a28c6025e7d65163e7cda0115561c703436274cba2a32ee4ac9651f0e01` |
| 6 | `theorem` | [measure_notConvergentSeq_tendsto_zero](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/measure-notconvergentseq-tendsto-zero--ba9917fa6f3d844048a07f0e.md) | 76 | `result-track:ba9917fa6f3d844048a07f0e14824ee1aefc710f8f5f37ab9dfd4e3bae904683` |
| 7 | `theorem` | [exists_notConvergentSeq_lt](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/exists-notconvergentseq-lt--005fa0fb95a8d4eb272176c9.md) | 93 | `result-track:005fa0fb95a8d4eb272176c9ebaa28605c67b92d3a2dd6747c61da33a71579a7` |
| 8 | `def` | [notConvergentSeqLTIndex](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/notconvergentseqltindex--dd0e3669905f8b86489e43db.md) | 108 | `declaration-track:dd0e3669905f8b86489e43db96d5f484cfc4355e08eba05d88d22ffb63351b6e` |
| 9 | `theorem` | [notConvergentSeqLTIndex_spec](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/notconvergentseqltindex-spec--fccf5d66df58d18df03d381a.md) | 114 | `result-track:fccf5d66df58d18df03d381a95af52c9ede592deac777f8b9879162b19ee7a04` |
| 10 | `def` | [iUnionNotConvergentSeq](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/iunionnotconvergentseq--3c85f73e2dd1c112ecfcf3dd.md) | 125 | `declaration-track:3c85f73e2dd1c112ecfcf3dd92c5bceac6427a6dc3a742b6a99ae7c11edf87c8` |
| 11 | `theorem` | [iUnionNotConvergentSeq_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/iunionnotconvergentseq-measurableset--2ca38bcc5b4e8c3a12b5f7cd.md) | 131 | `result-track:2ca38bcc5b4e8c3a12b5f7cd53ef3f6a87747495d12aac5c87377bca83bd96a0` |
| 12 | `theorem` | [measure_iUnionNotConvergentSeq](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/measure-iunionnotconvergentseq--45cf91ab1fe13eea9cc64c0e.md) | 138 | `result-track:45cf91ab1fe13eea9cc64c0e128844e7b4e70ae176c050565b51a70785614c96` |
| 13 | `theorem` | [iUnionNotConvergentSeq_subset](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/iunionnotconvergentseq-subset--6facba93038b06d2ad21a1e8.md) | 148 | `result-track:6facba93038b06d2ad21a1e85d37739ac30d5a8f8ec5c8b895cc6427ec4bdac8` |
| 14 | `theorem` | [tendstoUniformlyOn_sdiff_iUnionNotConvergentSeq](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/tendstouniformlyon-sdiff-iunionnotconvergentseq--1eeb1da068660262dab71895.md) | 156 | `result-track:1eeb1da068660262dab7189566c67466f17182b4a33393ebf74d1f35d77b52f0` |
| 15 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto_of_measurable_edist](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/tendstouniformlyon-of-ae-tendsto-of-measurable-edist--eaec908cbbb15d2c4601da0b.md) | 187 | `result-track:eaec908cbbb15d2c4601da0b855c6144dee3db2944908b542213d8a119972105` |
| 16 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/tendstouniformlyon-of-ae-tendsto--7b8be767dd055f0c16fc8f0d.md) | 205 | `result-track:7b8be767dd055f0c16fc8f0d33ed5db057ede176f446c4ad12768498d4cce134` |
| 17 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto_of_measurable_edist'](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/tendstouniformlyon-of-ae-tendsto-of-measurable-edist--398afbe0b75b0d0465c6372c.md) | 214 | `result-track:398afbe0b75b0d0465c6372c0a4b5011d0c1fbc61d73eb3afe4543cceb5b3abf` |
| 18 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto'](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variantcc84e2b7944458a38cb170e660873157f650b9c3d0ac5bf87dba237a06f065d1.lean/declarations/tendstouniformlyon-of-ae-tendsto--749f7ae6a952e0c938de4f56.md) | 225 | `result-track:749f7ae6a952e0c938de4f56dd8d868472cf83f33d90577d5e53d8195d620faa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
