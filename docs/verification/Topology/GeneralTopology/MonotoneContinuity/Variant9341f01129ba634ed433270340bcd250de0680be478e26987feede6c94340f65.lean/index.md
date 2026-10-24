# Verification target: GRWTSK.Topology.GeneralTopology.MonotoneContinuity.Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d097ce1780426d37676af161e9b7f16bd0db45f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d097ce1780426d37676af161e9b7f16bd0db45f`.

Source path: `GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LeftRightNhds` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuouswithinat-right-of-exists-between--b7dcf535754216f83d70c27c.md) | 48 | `result-track:b7dcf535754216f83d70c27c46319750be216ab6c9049591e87cabf05f253b9f` |
| 2 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/continuouswithinat-right-of-monotoneon-of-exists-between--1762c98cf409894622110913.md) | 68 | `result-track:1762c98cf409894622110913befa290fa1c72766768b5b36c252cf33fd7c6166` |
| 3 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/continuouswithinat-right-of-monotoneon-of-closure-image-mem-nhdswithin--8ae007818ff2f06e6e01db4e.md) | 85 | `result-track:8ae007818ff2f06e6e01db4ec7fec0413ed864d73715e22466f6e5f56921fdd9` |
| 4 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/continuouswithinat-right-of-monotoneon-of-image-mem-nhdswithin--fdefc2ac49c4b04499f47edb.md) | 98 | `result-track:fdefc2ac49c4b04499f47edb5f165873a321e379ab7bceb495b06647307d10a7` |
| 5 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuouswithinat-right-of-closure-image-mem-nhdswithin--ff1355041f9b103277e5a8df.md) | 107 | `result-track:ff1355041f9b103277e5a8df48a701e508c4556f6b05d1a43d5d5befa2d01f06` |
| 6 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuouswithinat-right-of-image-mem-nhdswithin--ee04a7d62599815aaa7744b0.md) | 116 | `result-track:ee04a7d62599815aaa7744b0c6c46668ef7f1a0875db4775b1c5ee6d92a952d5` |
| 7 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuouswithinat-right-of-surjon--7e7bc42c26ee869cda727cce.md) | 124 | `result-track:7e7bc42c26ee869cda727cce0e250535820e9eeae95768015981d06f09e37aeb` |
| 8 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuouswithinat-left-of-exists-between--be210d03aefde2e95c08a4c1.md) | 138 | `result-track:be210d03aefde2e95c08a4c1e16b8cf00ead91baa16f7c88470d4f266d87b474` |
| 9 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/continuouswithinat-left-of-monotoneon-of-exists-between--8367b3d0a2022e3a34c276dd.md) | 151 | `result-track:8367b3d0a2022e3a34c276dd5a41cf18fd64506c8498e11f2f732abc61bdee9e` |
| 10 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/continuouswithinat-left-of-monotoneon-of-closure-image-mem-nhdswithin--12605d61fd2d3f7eed369d3b.md) | 162 | `result-track:12605d61fd2d3f7eed369d3b21f95b2b684240c0868d62754b41d8414cf12ae7` |
| 11 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/continuouswithinat-left-of-monotoneon-of-image-mem-nhdswithin--cdfb45eef9265b177431fc65.md) | 171 | `result-track:cdfb45eef9265b177431fc65e9e05230c54d37503b3f9fe4ac83b1499e22b5fe` |
| 12 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuouswithinat-left-of-closure-image-mem-nhdswithin--23d09c83db81f3e462abf3c8.md) | 180 | `result-track:23d09c83db81f3e462abf3c8a15cdd3d8cffca9b63699f9c506dff8f384b6dd8` |
| 13 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuouswithinat-left-of-image-mem-nhdswithin--54e6f133cbacd9b267fcbd57.md) | 188 | `result-track:54e6f133cbacd9b267fcbd5700170bd2ce1211faeb3005a89ca5a6435a8ff847` |
| 14 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuouswithinat-left-of-surjon--e14518e6e1e2241a7c89eb20.md) | 195 | `result-track:e14518e6e1e2241a7c89eb209ac1bb9229396ce0611b01a51d97fd52e3cc3530` |
| 15 | `theorem` | [StrictMonoOn.continuousAt_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuousat-of-exists-between--786bd0145d98bd9315420c14.md) | 203 | `result-track:786bd0145d98bd9315420c14f65e995c7aff4e0a0c048f3b409c3b1ee9e67935` |
| 16 | `theorem` | [StrictMonoOn.continuousAt_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuousat-of-closure-image-mem-nhds--718c0ec119eef8b91c5a6aa9.md) | 213 | `result-track:718c0ec119eef8b91c5a6aa97d50c1fe7c7af0c7e476dfc10d3edd7c4582c494` |
| 17 | `theorem` | [StrictMonoOn.continuousAt_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/strictmonoon-continuousat-of-image-mem-nhds--ef741c0b93fe6b3b19b2f0c6.md) | 224 | `result-track:ef741c0b93fe6b3b19b2f0c60c39f7dfa3bd955215da9d6d9d84f90798f084b2` |
| 18 | `theorem` | [continuousAt_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/continuousat-of-monotoneon-of-exists-between--c61ba21426da76608c34461e.md) | 232 | `result-track:c61ba21426da76608c34461efa5726472e3dbb49244f97ddcb59a241216e0e1b` |
| 19 | `theorem` | [continuousAt_of_monotoneOn_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/continuousat-of-monotoneon-of-closure-image-mem-nhds--3e71bd71053a6bfd6dd43610.md) | 244 | `result-track:3e71bd71053a6bfd6dd4361060b2cecbc4bd627e21afa1f95c8866cb32f12021` |
| 20 | `theorem` | [continuousAt_of_monotoneOn_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/continuousat-of-monotoneon-of-image-mem-nhds--c5ae9926fe44b382d21e8f9d.md) | 255 | `result-track:c5ae9926fe44b382d21e8f9d7d5bba20b2c8b2f43c1b6b021b26dc52aa697903` |
| 21 | `theorem` | [Monotone.continuous_of_denseRange](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/monotone-continuous-of-denserange--e7f1847c6b3cc42536ab7f30.md) | 261 | `result-track:e7f1847c6b3cc42536ab7f30bc5a068558af754813f1c806ca2cfdb741e8853d` |
| 22 | `theorem` | [Monotone.continuous_of_surjective](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/monotone-continuous-of-surjective--4799ab3d2f463276972e26d0.md) | 269 | `result-track:4799ab3d2f463276972e26d061e8fe74885c7088f19bc2af7870de8c794d5c2d` |
| 23 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/continuous--07411679f66a3a4536263864.md) | 288 | `result-track:07411679f66a3a4536263864f40ff2afb8c4be27a48c08dd878acbcc9e8fb240` |
| 24 | `def` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/tohomeomorph--42c954d3621025798fb95e21.md) | 297 | `declaration-track:42c954d3621025798fb95e21877dc927e82843e061995135c303b69f4230e6ad` |
| 25 | `theorem` | [coe_toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/coe-tohomeomorph--783de27b7767bac7f57cb43b.md) | 303 | `result-track:783de27b7767bac7f57cb43b230d8f534de246168dc08f244ac34968297f3db8` |
| 26 | `theorem` | [coe_toHomeomorph_symm](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/declarations/coe-tohomeomorph-symm--a3b81af233aefad5ae8fa681.md) | 307 | `result-track:a3b81af233aefad5ae8fa681ab82adc3b1f74f68e092e3a6dd03a551a04b3ef2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
