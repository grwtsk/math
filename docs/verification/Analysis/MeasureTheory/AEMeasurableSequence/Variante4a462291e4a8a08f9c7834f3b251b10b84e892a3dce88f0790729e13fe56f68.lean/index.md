# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurableSequence.Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80a9c6d1e3a780506578ef71629d8c284524b8a9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80a9c6d1e3a780506578ef71629d8c284524b8a9`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean.json)

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
| 1 | `def` | [aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/aeseqset--dfc985bb16d55961b2a77589.md) | 43 | `declaration-track:dfc985bb16d55961b2a77589c0303fb23b94e62a57523c14c0440ede6cee21a4` |
| 2 | `def` | [aeSeq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/aeseq--24815cf9d1116bcb9a4d5661.md) | 49 | `declaration-track:24815cf9d1116bcb9a4d5661c7e87c8695779ffe49f3af3d0f6345a57e8c03a4` |
| 3 | `theorem` | [mk_eq_fun_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/mk-eq-fun-of-mem-aeseqset--d6790e04fd9deeecaa61aceb.md) | 56 | `result-track:d6790e04fd9deeecaa61aceb76de21db5d4149408affe2caafcc34f27663a07b` |
| 4 | `theorem` | [aeSeq_eq_mk_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/aeseq-eq-mk-of-mem-aeseqset--cf63fc0a92305b6cf4086c42.md) | 64 | `result-track:cf63fc0a92305b6cf4086c429b799c4984bbafdede1fe56fbae37ab0c2d95473` |
| 5 | `theorem` | [aeSeq_eq_fun_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/aeseq-eq-fun-of-mem-aeseqset--c6e91da2385eeb714fa9192f.md) | 68 | `result-track:c6e91da2385eeb714fa9192f8d48931b5c186ac80a16f10f7717e1fd11d4e48d` |
| 6 | `theorem` | [prop_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/prop-of-mem-aeseqset--fc896d63f15f535ceb18f88f.md) | 72 | `result-track:fc896d63f15f535ceb18f88f39b3349d3951d396b270a3a3b1327792dc26c141` |
| 7 | `theorem` | [fun_prop_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/fun-prop-of-mem-aeseqset--b8d642d7814f2ee51fc87e1f.md) | 83 | `result-track:b8d642d7814f2ee51fc87e1fa07b59c06eff2c71934241a4d7fe69f8ff15a077` |
| 8 | `theorem` | [aeSeqSet_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/aeseqset-measurableset--ac28927c519ef9c0552cb8c6.md) | 92 | `result-track:ac28927c519ef9c0552cb8c6d668d9cdf0a374fabc7810827c16804525b6ec6e` |
| 9 | `theorem` | [measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/measurable--a4b7847164cdb588af356115.md) | 95 | `result-track:a4b7847164cdb588af35611546bcc733969e77e0a07ce379d75cd5364958d66d` |
| 10 | `theorem` | [measure_compl_aeSeqSet_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/measure-compl-aeseqset-eq-zero--7d6c91a32264d094bf5987e5.md) | 99 | `result-track:7d6c91a32264d094bf5987e5bc168dd2eb1eb4e1af2599ebeb3451cf78e0685f` |
| 11 | `theorem` | [aeSeq_eq_mk_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/aeseq-eq-mk-ae--add14c3cdc2476f0a1f2f8d4.md) | 106 | `result-track:add14c3cdc2476f0a1f2f8d44c19bd60ab95401e166274726d08c3045b972e1c` |
| 12 | `theorem` | [aeSeq_eq_fun_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/aeseq-eq-fun-ae--ba2577cc79b48acebbfcb750.md) | 112 | `result-track:ba2577cc79b48acebbfcb750016bde32a8defc3c71f97a21f50bf8970a21e360` |
| 13 | `theorem` | [aeSeq_n_eq_fun_n_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/aeseq-n-eq-fun-n-ae--900a865154e8037aa1a7bdd3.md) | 118 | `result-track:900a865154e8037aa1a7bdd336d28bfb3e71755d31455403a6d7b885fcd8e54c` |
| 14 | `theorem` | [iSup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/isup--f77e3837a7cbafc313b6711f.md) | 122 | `result-track:f77e3837a7cbafc313b6711ff94e716a2b018dde6ac9fcd63fee5c7f23f2150d` |
| 15 | `theorem` | [iInf](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variante4a462291e4a8a08f9c7834f3b251b10b84e892a3dce88f0790729e13fe56f68.lean/declarations/iinf--6767741306a4727aee47eaae.md) | 127 | `result-track:6767741306a4727aee47eaae6f62c4aafb3c997eaa3aa8800eb0a5cf08a06ac5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
