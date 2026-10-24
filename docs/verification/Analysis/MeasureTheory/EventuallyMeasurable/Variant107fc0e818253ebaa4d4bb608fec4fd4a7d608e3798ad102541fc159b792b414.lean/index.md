# Verification target: GRWTSK.Analysis.MeasureTheory.EventuallyMeasurable.Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5255df91e7fae10b26a25d5c3eed50589f82902",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5255df91e7fae10b26a25d5c3eed50589f82902`.

Source path: `GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean.json)

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
| 1 | `def` | [eventuallyMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/eventuallymeasurablespace--61eeaae1009a3e2618ff20d2.md) | 52 | `declaration-track:61eeaae1009a3e2618ff20d21e35a57866fd40e2ed9535a2541822c0f9d9bfd8` |
| 2 | `def` | [EventuallyMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/eventuallymeasurableset--56ba25f21a01ed450136d0d1.md) | 63 | `declaration-track:56ba25f21a01ed450136d0d149ef4b43aa5901ed310787b9ba6b3035a91186a0` |
| 3 | `theorem` | [MeasurableSet.eventuallyMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/measurableset-eventuallymeasurableset--0363e4b895a5a75db69b7a7e.md) | 69 | `result-track:0363e4b895a5a75db69b7a7ea3fd15f6d67f4af1dd96f2729e8119b4c96f6e9d` |
| 4 | `theorem` | [le_eventuallyMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/le-eventuallymeasurablespace--ba800a3a74af00b910a99277.md) | 73 | `result-track:ba800a3a74af00b910a992770cf14b25bf82c86e46a9b65c02ba97db8bd43ca8` |
| 5 | `theorem` | [eventuallyMeasurableSet_of_mem_filter](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/eventuallymeasurableset-of-mem-filter--ee1f933b16c00c2984027e7b.md) | 76 | `result-track:ee1f933b16c00c2984027e7b6dcb1da5aff186b57c467ca4a5be43d63dd08093` |
| 6 | `theorem` | [EventuallyMeasurableSet.congr](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/eventuallymeasurableset-congr--33b3b3bbb127eba7e3bd7b06.md) | 81 | `result-track:33b3b3bbb127eba7e3bd7b064dedd6a23b48b61e178ecc3840518d7396495d16` |
| 7 | `instance` | [eventuallyMeasurableSingleton](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/eventuallymeasurablesingleton--006f6b2395980813f081677b.md) | 88 | `declaration-track:006f6b2395980813f081677b5ceb2cba23e42a3cf188df4592783f3f4e29f411` |
| 8 | `def` | [EventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/eventuallymeasurable--3616eaff4d083970e3ea1042.md) | 106 | `declaration-track:3616eaff4d083970e3ea10424da06af715e7b3606bb703332d34ad3ddd5361dc` |
| 9 | `theorem` | [Measurable.eventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/measurable-eventuallymeasurable--d1ea490c0e00d9b2847ee94c.md) | 110 | `result-track:d1ea490c0e00d9b2847ee94c10a345450899ff9fcb9a4bebfab0c01667dba16f` |
| 10 | `theorem` | [Measurable.comp_eventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/measurable-comp-eventuallymeasurable--c7bedb99a193804bcf8363c5.md) | 113 | `result-track:c7bedb99a193804bcf8363c5e7899a8ca2911b749e05f60dc9f10cca687ebe43` |
| 11 | `theorem` | [EventuallyMeasurable.congr](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/eventuallymeasurable-congr--ade98f175d5dd019cf12c015.md) | 119 | `result-track:ade98f175d5dd019cf12c0158d5ea3b02b919e56b338d0c857c0e5f955539dc2` |
| 12 | `theorem` | [Measurable.eventuallyMeasurable_of_eventuallyEq](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/declarations/measurable-eventuallymeasurable-of-eventuallyeq--3aef9528f2b0fda4634c5f15.md) | 125 | `result-track:3aef9528f2b0fda4634c5f1542b77d85776e69a4f9d45010e4e91c69ad037f76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
