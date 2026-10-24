# Verification target: GRWTSK.Topology.GeneralTopology.MonotoneContinuity.Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "507942de3ccf4129140b7528892d63d11c25fd1d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `507942de3ccf4129140b7528892d63d11c25fd1d`.

Source path: `GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuouswithinat-right-of-exists-between--8aeb63f45c6480d96ddb9bac.md) | 43 | `result-track:8aeb63f45c6480d96ddb9bac87cd6e6cd56c8afd0ae94d7b6ca717a6b3a4c81b` |
| 2 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/continuouswithinat-right-of-monotoneon-of-exists-between--b58b70a6d964c4d36a86d84a.md) | 64 | `result-track:b58b70a6d964c4d36a86d84a7ae84a96e97e008043c5bcac6d7c1daf85a72eea` |
| 3 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/continuouswithinat-right-of-monotoneon-of-closure-image-mem-nhdswithin--3511c586bfc1e516453a1cad.md) | 82 | `result-track:3511c586bfc1e516453a1cad3f6601da2a784fa96cec9c7f756c3ae38b981e8b` |
| 4 | `theorem` | [continuousWithinAt_right_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/continuouswithinat-right-of-monotoneon-of-image-mem-nhdswithin--f8d9c5af6efe1b43032764ae.md) | 96 | `result-track:f8d9c5af6efe1b43032764ae37336dcc06690227a563e2190064a2583bb75071` |
| 5 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuouswithinat-right-of-closure-image-mem-nhdswithin--816458075b1d5fd9253a1d9f.md) | 106 | `result-track:816458075b1d5fd9253a1d9f2f7665842e27c3c3c3fdcf0f838856d4dd03975c` |
| 6 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuouswithinat-right-of-image-mem-nhdswithin--86ac1a8dc0965b571f927c4b.md) | 116 | `result-track:86ac1a8dc0965b571f927c4b80064a1b94276028c60f8cbefb6a17a12302a830` |
| 7 | `theorem` | [StrictMonoOn.continuousWithinAt_right_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuouswithinat-right-of-surjon--94e95a0412372345a46a35d4.md) | 125 | `result-track:94e95a0412372345a46a35d4ad28e2a19fca9990401240ecee08b9776c0bb5ca` |
| 8 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuouswithinat-left-of-exists-between--ffc4820f447dda9f036cf124.md) | 140 | `result-track:ffc4820f447dda9f036cf124b204605471f3669b68814515bd6e054d696da4a3` |
| 9 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/continuouswithinat-left-of-monotoneon-of-exists-between--f3862ee69031d9d0474e397a.md) | 154 | `result-track:f3862ee69031d9d0474e397af3d6dec4c453e0dadaebbbe5a8b6e62a7edb6e40` |
| 10 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/continuouswithinat-left-of-monotoneon-of-closure-image-mem-nhdswithin--662ef5213052c6eb6b6b84a2.md) | 166 | `result-track:662ef5213052c6eb6b6b84a2bd74f3072444235dc49c9bfb674627947b28ec7a` |
| 11 | `theorem` | [continuousWithinAt_left_of_monotoneOn_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/continuouswithinat-left-of-monotoneon-of-image-mem-nhdswithin--d0f5ef6d399b56af7da4af60.md) | 176 | `result-track:d0f5ef6d399b56af7da4af6006140fb404840afebe4c67e79c05b7d66eb408b1` |
| 12 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_closure_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuouswithinat-left-of-closure-image-mem-nhdswithin--d8d3e8b83fd93063c65c7ac3.md) | 186 | `result-track:d8d3e8b83fd93063c65c7ac3b80a131584c3ded07a84571c6575de23a01dde1e` |
| 13 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuouswithinat-left-of-image-mem-nhdswithin--33a61f76c28bbc198ae5eef8.md) | 195 | `result-track:33a61f76c28bbc198ae5eef8b167477cc32e37a9465f9df7f4575f4a63fdf4e9` |
| 14 | `theorem` | [StrictMonoOn.continuousWithinAt_left_of_surjOn](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuouswithinat-left-of-surjon--f98ff8d96c4808d279874cc4.md) | 203 | `result-track:f98ff8d96c4808d279874cc4672e2eca284b75382599275d1c2135a674dfa706` |
| 15 | `theorem` | [StrictMonoOn.continuousAt_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuousat-of-exists-between--56dcf071f1c471a47fcbd26d.md) | 212 | `result-track:56dcf071f1c471a47fcbd26dd5ebfa6fc84901e12747d208135086ba5d6a7896` |
| 16 | `theorem` | [StrictMonoOn.continuousAt_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuousat-of-closure-image-mem-nhds--6df60ff02451ac015decc14f.md) | 223 | `result-track:6df60ff02451ac015decc14fdd1a36cbbf9e0a93a744b8defda5feb3299eeebd` |
| 17 | `theorem` | [StrictMonoOn.continuousAt_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/strictmonoon-continuousat-of-image-mem-nhds--cfe64e13a8f07137b3830d9c.md) | 235 | `result-track:cfe64e13a8f07137b3830d9ca7d4c2c191c39139e9ea002e509aaa302b08d4bd` |
| 18 | `theorem` | [continuousAt_of_monotoneOn_of_exists_between](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/continuousat-of-monotoneon-of-exists-between--411bd362cf72fa8c041ab7a2.md) | 244 | `result-track:411bd362cf72fa8c041ab7a294611086364c41b518f40363ec6fc06b88a2cdff` |
| 19 | `theorem` | [continuousAt_of_monotoneOn_of_closure_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/continuousat-of-monotoneon-of-closure-image-mem-nhds--7c405c7568ce9254d82f2525.md) | 257 | `result-track:7c405c7568ce9254d82f2525d47ea481fb226d18b45929dcaecd865acbd850d0` |
| 20 | `theorem` | [continuousAt_of_monotoneOn_of_image_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/continuousat-of-monotoneon-of-image-mem-nhds--50bf901ee59fda6b9ed74e28.md) | 269 | `result-track:50bf901ee59fda6b9ed74e28fff1fabc89fcca4d0350e1facd230801ac9d56df` |
| 21 | `theorem` | [Monotone.continuous_of_denseRange](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/monotone-continuous-of-denserange--5fd50594adf5488b1b6f38f5.md) | 276 | `result-track:5fd50594adf5488b1b6f38f5dcd563c58f4f4b4c92669f7a6ab1cc94820b1834` |
| 22 | `theorem` | [Monotone.continuous_of_surjective](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/monotone-continuous-of-surjective--d1b47df3e2fb7e3360fec94b.md) | 285 | `result-track:d1b47df3e2fb7e3360fec94bf2faab9ba02be4479f60ea40beb0d4fac533caaf` |
| 23 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/continuous--f4768e6eefab8ac1d0754fc0.md) | 305 | `result-track:f4768e6eefab8ac1d0754fc0c5305d30b55b46fdeea544835d5c208777861c12` |
| 24 | `def` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/tohomeomorph--1498be9421110bb6132a0ae0.md) | 316 | `declaration-track:1498be9421110bb6132a0ae0ded7f7b34a9099525b292af063725a6458b34ae0` |
| 25 | `theorem` | [coe_toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/coe-tohomeomorph--7ab1a26a47de5e15cbb19679.md) | 323 | `result-track:7ab1a26a47de5e15cbb19679b9b8b92c6cea9e64885f8afa67615c5db6b2ec46` |
| 26 | `theorem` | [coe_toHomeomorph_symm](../../../../../mathematics/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/declarations/coe-tohomeomorph-symm--d6597bf33be4347365bee6cf.md) | 328 | `result-track:d6597bf33be4347365bee6cf835f7df69d35de7f5d18043bb3001273ab549f60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
