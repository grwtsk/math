# Verification target: GRWTSK.Topology.GeneralTopology.MonotoneContinuity.Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f26fcdf43df039cd60336608ee88b05cf273ec78",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f26fcdf43df039cd60336608ee88b05cf273ec78`.

Source path: `GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean.json)

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
| 1 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuouswithinat-right-of-exists-between--c88cde6921540a1009702afe.md) | 43 | `result-track:c88cde6921540a1009702afeb54da3dc3fff8d07375470bfaec356eccd2efceb` |
| 2 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/continuouswithinat-right-of-monotoneon-of-exists-between--ed7da6ebed6126464b68f2d6.md) | 62 | `result-track:ed7da6ebed6126464b68f2d64b4dff4de11ef3ca585122172a6597c04c411ca9` |
| 3 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/continuouswithinat-right-of-monotoneon-of-closure-image-mem-nhdswithin--693170e8e8f91f478573e97a.md) | 78 | `result-track:693170e8e8f91f478573e97ae8ed93fed8da9812c2b14ca847a953f0ab764af0` |
| 4 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/continuouswithinat-right-of-monotoneon-of-image-mem-nhdswithin--01094f839484e8eeaf91d355.md) | 91 | `result-track:01094f839484e8eeaf91d355306a049441273061e8dd4962a6d128af43394cd1` |
| 5 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuouswithinat-right-of-closure-image-mem-nhdswithin--3f11df80444fa38eda04ab0e.md) | 100 | `result-track:3f11df80444fa38eda04ab0ed8b9d1d8aa00b64e337556ee4bac4392b592e2f5` |
| 6 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuouswithinat-right-of-image-mem-nhdswithin--47a9fbd5c60d954d0b9a8769.md) | 109 | `result-track:47a9fbd5c60d954d0b9a87695d0507031a7939f83871111468b5b4ecae0293e6` |
| 7 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuouswithinat-right-of-surjon--3836529adc9add9b432475ee.md) | 117 | `result-track:3836529adc9add9b432475ee5b473173b788f36293cac4f876a4a156a37023df` |
| 8 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuouswithinat-left-of-exists-between--51b85fadb98872acea482f19.md) | 131 | `result-track:51b85fadb98872acea482f1940ae2cef1a7e03df439d6be7d40c1c8d22cd98b2` |
| 9 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/continuouswithinat-left-of-monotoneon-of-exists-between--6d34f36cda9ada059cd79110.md) | 144 | `result-track:6d34f36cda9ada059cd79110e6cbfb652c4e70464342b8d05e6c3e4636ceba47` |
| 10 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/continuouswithinat-left-of-monotoneon-of-closure-image-mem-nhdswithin--4110df1cd2a182d739527648.md) | 155 | `result-track:4110df1cd2a182d739527648496b0f89fd5824f58c483d63f8d22b168e9f3a4b` |
| 11 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/continuouswithinat-left-of-monotoneon-of-image-mem-nhdswithin--6f8f331203d62389bdcdecbe.md) | 164 | `result-track:6f8f331203d62389bdcdecbecac0fb00204712154139cb5011d738b91f4a35d2` |
| 12 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuouswithinat-left-of-closure-image-mem-nhdswithin--108e3ca3fab6f3df68f417be.md) | 173 | `result-track:108e3ca3fab6f3df68f417bea7dd5994793108363af4c25a8a13e83f9d015be3` |
| 13 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuouswithinat-left-of-image-mem-nhdswithin--308d0534db5c065feebe8975.md) | 181 | `result-track:308d0534db5c065feebe89759e813afacb1a0cd5d2633d532e29e4e4836d3a28` |
| 14 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuouswithinat-left-of-surjon--0b001f5babab5a54e9178cc4.md) | 188 | `result-track:0b001f5babab5a54e9178cc480797c75621a9283adc592bff275b058ab379075` |
| 15 | `theorem` | [StrictMonoOn.continuousAt_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuousat-of-exists-between--39630d1944b3244115887536.md) | 196 | `result-track:39630d1944b3244115887536fa0526bd33bca8702f74b922b6b7113f565daedf` |
| 16 | `theorem` | [StrictMonoOn.continuousAt_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuousat-of-closure-image-mem-nhds--4acf391072f4e75c518827db.md) | 206 | `result-track:4acf391072f4e75c518827dbe90d6c2235a2bf8406e7a13be794eaaa725034be` |
| 17 | `theorem` | [StrictMonoOn.continuousAt_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/strictmonoon-continuousat-of-image-mem-nhds--e64ba28ba451ba78a3929acf.md) | 217 | `result-track:e64ba28ba451ba78a3929acfec9af1e2a48b98ff7ac9f4577313a3d0a37fd89b` |
| 18 | `theorem` | [continuousAt_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/continuousat-of-monotoneon-of-exists-between--ffa4ee2d00ed5d1787ef2d7c.md) | 225 | `result-track:ffa4ee2d00ed5d1787ef2d7c30ec8fd0be4e1ff6090a40794802bb1faca1f1ed` |
| 19 | `theorem` | [continuousAt_of_monotoneOn_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/continuousat-of-monotoneon-of-closure-image-mem-nhds--f3bc8e759c098cf8a09c7b77.md) | 237 | `result-track:f3bc8e759c098cf8a09c7b77acfd2f52705a334b834ce20317bc94c5098d3948` |
| 20 | `theorem` | [continuousAt_of_monotoneOn_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/continuousat-of-monotoneon-of-image-mem-nhds--6f902e1dd7ae4265262c1a2a.md) | 248 | `result-track:6f902e1dd7ae4265262c1a2a9442f77589dc11e1650289f1cc80a74e0872d0a0` |
| 21 | `theorem` | [Monotone.continuous_of_denseRange](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/monotone-continuous-of-denserange--80822c8d9f1cae28234cbccd.md) | 254 | `result-track:80822c8d9f1cae28234cbccdc1b4632337014e764ceaef91cbb11691d6a0df4b` |
| 22 | `theorem` | [Monotone.continuous_of_surjective](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/monotone-continuous-of-surjective--cbac69a60d3bc54fa2004459.md) | 262 | `result-track:cbac69a60d3bc54fa20044598ab878c048c256cbe0925f36df8d33d5d27d5200` |
| 23 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/continuous--eba4dda3fa3324c65738efcc.md) | 281 | `result-track:eba4dda3fa3324c65738efccd1d8959f4421b616396547847cbc791dada67d7a` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/instance--5f1b10786e1bd369e3645860.md) | 289 | `declaration-track:5f1b10786e1bd369e3645860bdf76d34691cd76b2e6a9a27ad3c258f1488ca85` |
| 25 | `abbrev` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/tohomeomorph--638ccf1eda9abb237a1cb16c.md) | 294 | `declaration-track:638ccf1eda9abb237a1cb16c92e0e9d9b4c9273ea48c2e1c1d1c9ba4c6491e75` |
| 26 | `theorem` | [coe_toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/coe-tohomeomorph--b41bd21f09ecd9f2da62425e.md) | 297 | `result-track:b41bd21f09ecd9f2da62425e325715ac9972a427f0a74785e49618f34e9ed8a0` |
| 27 | `theorem` | [coe_toHomeomorph_symm](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/declarations/coe-tohomeomorph-symm--37e280255ddfafd89111ba90.md) | 301 | `result-track:37e280255ddfafd89111ba9065a4fb86d19d816c96e70f1792afb5cdec03d77b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
