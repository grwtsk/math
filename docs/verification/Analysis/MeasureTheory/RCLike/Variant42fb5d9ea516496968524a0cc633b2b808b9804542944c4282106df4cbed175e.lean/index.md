# Verification target: GRWTSK.Analysis.MeasureTheory.RCLike.Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "017da757a4ba72caf5a61074233e1787c50e0b4b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `017da757a4ba72caf5a61074233e1787c50e0b4b`.

Source path: `GRWTSK/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean.json)

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
| 1 | `theorem` | [measurable_re](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/declarations/measurable-re--7f96143c3dce480127363948.md) | 33 | `result-track:7f96143c3dce480127363948d8c015b3c400220d9264010cdc5f97384402f83c` |
| 2 | `theorem` | [measurable_im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/declarations/measurable-im--57f657413dac36ec9297e4f1.md) | 36 | `result-track:57f657413dac36ec9297e4f1b2ad5d25ab86b5c9c30acc3a7b4fff81cda21511` |
| 3 | `theorem` | [Measurable.re](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/declarations/measurable-re--2ecb9f2a05ad152b090c7630.md) | 47 | `result-track:2ecb9f2a05ad152b090c763085ad54ccd564acdfd327b5df0fcdbcec4ac46893` |
| 4 | `theorem` | [AEMeasurable.re](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/declarations/aemeasurable-re--def5d9503c7dc390ba3d4552.md) | 51 | `result-track:def5d9503c7dc390ba3d4552ac7230161d4af4f2e7faeb8e751d2d1d1d18b785` |
| 5 | `theorem` | [Measurable.im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/declarations/measurable-im--d80c5ad972692e5f335057d1.md) | 55 | `result-track:d80c5ad972692e5f335057d16632e3723be1ab30c8dfa0514b7634db8a12f8f3` |
| 6 | `theorem` | [AEMeasurable.im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/declarations/aemeasurable-im--9fecdb81d616a10e70178a73.md) | 59 | `result-track:9fecdb81d616a10e70178a736ffebbbc6ab4e6380ae44e4d86cd26f1ebb6ef9f` |
| 7 | `theorem` | [RCLike.measurable_ofReal](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/declarations/rclike-measurable-ofreal--f831670797833db1c3604a07.md) | 69 | `result-track:f831670797833db1c3604a0745e99230ce53ab3e57f94e8c708ccb4a4c468fee` |
| 8 | `theorem` | [measurable_of_re_im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/declarations/measurable-of-re-im--b2de50279760d3ce55bb905f.md) | 72 | `result-track:b2de50279760d3ce55bb905f492ea4384b7f0decd22209b24dab8e2d60dd52e1` |
| 9 | `theorem` | [aemeasurable_of_re_im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant42fb5d9ea516496968524a0cc633b2b808b9804542944c4282106df4cbed175e.lean/declarations/aemeasurable-of-re-im--fdac981ba121e7f9ec2493e7.md) | 79 | `result-track:fdac981ba121e7f9ec2493e73a386ff4ba0b29f22330b400ac898f80fb17b6b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
