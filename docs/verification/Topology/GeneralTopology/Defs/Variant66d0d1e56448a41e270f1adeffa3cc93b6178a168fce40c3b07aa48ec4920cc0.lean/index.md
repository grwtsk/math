# Verification target: GRWTSK.Topology.GeneralTopology.Defs.Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "152af2a0f1d01191aec9e84866bd14b2a0136247",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `152af2a0f1d01191aec9e84866bd14b2a0136247`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Monoid.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousNeg](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuousneg--d3186a0668c3d620f5a3e3b4.md) | 37 | `declaration-track:d3186a0668c3d620f5a3e3b4ffc242cffe593843750ff839515d240e754d27f0` |
| 2 | `class` | [ContinuousInv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuousinv--3ecc0a4828deebc16a0d249c.md) | 46 | `declaration-track:3ecc0a4828deebc16a0d249c91de7e5190e0850d117b0d70d0507cfa7ce6c654` |
| 3 | `theorem` | [Filter.Tendsto.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/filter-tendsto-inv--6fdeb4c17d67f7daf7ac003e.md) | 65 | `result-track:6fdeb4c17d67f7daf7ac003e86c92a6376a8d216b3fa6e699a3592fa45055bbb` |
| 4 | `theorem` | [Continuous.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuous-inv--05f02fdf262f6c6aa35982e8.md) | 72 | `result-track:05f02fdf262f6c6aa35982e8afc408af7c23c0268267506a50eb26382cdd8071` |
| 5 | `theorem` | [ContinuousWithinAt.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuouswithinat-inv--00077787cfccc7f69f1acafa.md) | 76 | `result-track:00077787cfccc7f69f1acafadbf1b57d602c15f2a1401413dba7693527af9b4d` |
| 6 | `theorem` | [ContinuousAt.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuousat-inv--29313235068abf114f33fbcb.md) | 81 | `result-track:29313235068abf114f33fbcbdd0e3d394d829a32ea183d6b0dde370a37f17270` |
| 7 | `theorem` | [ContinuousOn.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuouson-inv--c6ee568ff7903be3f074a063.md) | 85 | `result-track:c6ee568ff7903be3f074a063b4b89a926c5cede68198c351f0cdc65c0f030e77` |
| 8 | `class` | [IsTopologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/istopologicaladdgroup--35dfc543bc5f8f0437a0c0be.md) | 96 | `declaration-track:35dfc543bc5f8f0437a0c0be063df447fb1d6b3ea825d21b577cee1536d37ae9` |
| 9 | `class` | [IsTopologicalGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/istopologicalgroup--a062c0e401aa267fcd7ddbc8.md) | 109 | `declaration-track:a062c0e401aa267fcd7ddbc8e2373580d5eef7cf42a3d2724c63bff7d6bc8276` |
| 10 | `class` | [ContinuousSub](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuoussub--4b0998ba829c2c4229bdb5ec.md) | 117 | `declaration-track:4b0998ba829c2c4229bdb5ec9ec6c655b26cec901323e9ce6c1b58e4f261472b` |
| 11 | `class` | [ContinuousDiv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuousdiv--75fd3e410b55163a46b48009.md) | 124 | `declaration-track:75fd3e410b55163a46b4800947ad7350d46a574f37ffbc737e27e23f923fb952` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/instance--555fc84cba8bab21b6c64c3b.md) | 129 | `declaration-track:555fc84cba8bab21b6c64c3bf266d492d1a960b32baece6a2f46d32fa25b3eca` |
| 13 | `theorem` | [Filter.Tendsto.div'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/filter-tendsto-div--ce9b4bd1e581b2ada203e6be.md) | 143 | `result-track:ce9b4bd1e581b2ada203e6be594b25cfac2f8584a03b976c7cfb054b590644ef` |
| 14 | `theorem` | [ContinuousAt.div'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuousat-div--1cd8094c31f6c1eeefb9b78f.md) | 150 | `result-track:1cd8094c31f6c1eeefb9b78fa0fc4b84b1ee1557b650d9dd655d2c74c56cf33c` |
| 15 | `theorem` | [ContinuousWithinAt.div'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuouswithinat-div--c4dbd497ad3890f3ca0daf29.md) | 155 | `result-track:c4dbd497ad3890f3ca0daf29e6b478ff6dc0b89964193eaa5d22ad569cc005d0` |
| 16 | `theorem` | [ContinuousOn.div'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuouson-div--76ccf1360cd74b1f4ed20e7e.md) | 160 | `result-track:76ccf1360cd74b1f4ed20e7e6feb32708c73981ef37af721ad94644ffdce591a` |
| 17 | `theorem` | [Continuous.div'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/declarations/continuous-div--da416131848566ddf5818fcb.md) | 164 | `result-track:da416131848566ddf5818fcb9cb95d2ea8433f6839f0f628ff4baeb40d3d4a0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
