# Verification target: GRWTSK.Analysis.MeasureTheory.Measurable.Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45f7ae58b0cea587cac1fcb1c53196ad80e5cefb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45f7ae58b0cea587cac1fcb1c53196ad80e5cefb`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Gamma` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/declarations/measurableset--eed7a302422c1a8295d491aa.md) | 13 | `declaration-track:eed7a302422c1a8295d491aa26f8470c96e5c3fa2fcb214671e60366c4e3de75` |
| 2 | `structure` | [MeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/declarations/measurablespace--23137d3a7624453ef140ae04.md) | 15 | `declaration-track:23137d3a7624453ef140ae045ff7d39d29f9d14240de57469eba4ca7749fda3b` |
| 3 | `def` | [Measurable](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/declarations/measurable--727a79fc4a4086244eb594d0.md) | 18 | `declaration-track:727a79fc4a4086244eb594d066ae8f7152ba6e106f1817897334a4951e058fe8` |
| 4 | `structure` | [CertifiedMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/declarations/certifiedmeasurablespace--6d9c6680914289202f0a25b7.md) | 20 | `declaration-track:6d9c6680914289202f0a25b76f9efb58b33c353f95812b9ddc8d464b95e7f39f` |
| 5 | `inductive` | [MeasurableConvergenceMode](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/declarations/measurableconvergencemode--50fe7c8ec1608e524f381444.md) | 24 | `declaration-track:50fe7c8ec1608e524f381444aee2347544b656a66991db5b63f539d6c72a8361` |
| 6 | `structure` | [CertifiedSimpleApproximation](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/declarations/certifiedsimpleapproximation--a2e29075a588a1686e12a207.md) | 32 | `declaration-track:a2e29075a588a1686e12a2078a0bfc2fd664a9f96c9b8079d02fae603f7f8a9e` |
| 7 | `structure` | [CertifiedMeasurableFunction](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/declarations/certifiedmeasurablefunction--e86acefb2632a57fce6aca3b.md) | 40 | `declaration-track:e86acefb2632a57fce6aca3b96988bd2c350399ecb21016e12b77796aeaa4cc2` |
| 8 | `structure` | [CertifiedSimpleApproximationRef](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/declarations/certifiedsimpleapproximationref--db1a6631673e54362bbf8d69.md) | 48 | `declaration-track:db1a6631673e54362bbf8d69c19107e1987983bc5c62eb9a29bcf6c2823aeed6` |
| 9 | `structure` | [CertifiedMeasurableLimitRef](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/declarations/certifiedmeasurablelimitref--2e6663732ed40199d773ed80.md) | 52 | `declaration-track:2e6663732ed40199d773ed80ef5ad0d1e59fb9785e5cd00183bfee08225a0067` |
| 10 | `theorem` | [certifiedMeasurable_has_measurability](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310.lean/declarations/certifiedmeasurable-has-measurability--8e069da1734909a74419ef2e.md) | 56 | `result-track:8e069da1734909a74419ef2e1a7a21d3e25ae3311b02003dca1d9aa8eba2bf8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
