# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousInverse.Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f903e0006577aa5852e7e37f7ce9fec1b4daa3b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f903e0006577aa5852e7e37f7ce9fec1b4daa3b`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean.json)

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
| 1 | `def` | [ContinuousLinearMap.HasLeftInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/continuouslinearmap-hasleftinverse--061899d21c00419cde4ef993.md) | 87 | `declaration-track:061899d21c00419cde4ef993cc3b3771fb31c47ef8682d6635bfbaa981af19fc` |
| 2 | `def` | [ContinuousLinearMap.HasRightInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/continuouslinearmap-hasrightinverse--3b33e670620acd8ad4add824.md) | 91 | `declaration-track:3b33e670620acd8ad4add82439dec30837091cb32cf18bd8a2c67e4e4f27b6d1` |
| 3 | `def` | [leftInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/leftinverse--20ad4fc08c066f3c00214d0d.md) | 101 | `declaration-track:20ad4fc08c066f3c00214d0d739115bad82ea6864f8a28769993ec2e52dd6e75` |
| 4 | `lemma` | [leftInverse_leftInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/leftinverse-leftinverse--1db66d9ad3d683e4d6edb412.md) | 103 | `result-track:1db66d9ad3d683e4d6edb41228ff4a2d875c9b2e7e15462068f248a72007e377` |
| 5 | `lemma` | [injective](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/injective--1b80b34f09d3f27d61ccecf2.md) | 106 | `result-track:1b80b34f09d3f27d61ccecf263f056560c541acdc4ad97833b4e290bf1f035e1` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/example--439e4d6ac7bc2c1142430630.md) | 109 | `declaration-track:439e4d6ac7bc2c1142430630180c1b8d7e39483e0c7ed845f76077991b4f2b45` |
| 7 | `lemma` | [congr](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/congr--a2544a0351a135b5eb4f41a6.md) | 112 | `result-track:a2544a0351a135b5eb4f41a69ceaf929bb7172fcdedd44a9d58960d6375aa470` |
| 8 | `lemma` | [_root_.ContinuousLinearEquiv.hasLeftInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/root-continuouslinearequiv-hasleftinverse--fd52d4639442d9a2ea140ed5.md) | 117 | `result-track:fd52d4639442d9a2ea140ed5ce46a0556f231cf1ca14fb1536082bdea25732d3` |
| 9 | `lemma` | [_root_.ContinuousLinearEquiv.leftInverse_hasLeftInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/root-continuouslinearequiv-leftinverse-hasleftinverse--e6a7f88a189a46debd61aed2.md) | 121 | `result-track:e6a7f88a189a46debd61aed2deb4a2a8e94db76319a2c0e2a0615fd724eafec3` |
| 10 | `lemma` | [of_isInvertible](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/of-isinvertible--19d8f5fffb474495af47c561.md) | 129 | `result-track:19d8f5fffb474495af47c56169af2c5a86660a25ed1f26178c90ad7bdc178700` |
| 11 | `lemma` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/prodmap--8bcd410fbcf9d3b697e3f03a.md) | 134 | `result-track:8bcd410fbcf9d3b697e3f03a763622bd4f8d7b761216050f032542ee06aeb3db` |
| 12 | `lemma` | [comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/comp--f5de22604afe9fd584d3aaf5.md) | 143 | `result-track:f5de22604afe9fd584d3aaf5edec098902a93d06d2583e86aa4018a08777a6ce` |
| 13 | `lemma` | [of_comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/of-comp--d274cbde06f5f3955acdb0b2.md) | 151 | `result-track:d274cbde06f5f3955acdb0b2f8cbe201ae07f2d6c07da965185755c64c67960f` |
| 14 | `lemma` | [comp_continuousLinearEquivalence](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/comp-continuouslinearequivalence--f4b5d3336825aa831d20b3b5.md) | 158 | `result-track:f4b5d3336825aa831d20b3b5db0fc40c26c2330e69125f0b1f95e89934ca6c4f` |
| 15 | `lemma` | [continuousLinearEquivalence_comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/continuouslinearequivalence-comp--26cf804e64d4c085f007e3b4.md) | 162 | `result-track:26cf804e64d4c085f007e3b48f9a102829c17aedf29e5ff0ca0920caa8e90507` |
| 16 | `lemma` | [inl](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/inl--acd12d0c933593fa167b67ce.md) | 167 | `result-track:acd12d0c933593fa167b67ce9eba83e914809eaff8b1d871bad2394650481088` |
| 17 | `lemma` | [inr](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/inr--f4ec2920eecd202226242ace.md) | 173 | `result-track:f4ec2920eecd202226242aceaeaa4463f9157f01aa2302782335ea8bb0c24c0e` |
| 18 | `lemma` | [of_injective_of_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/of-injective-of-finitedimensional--eb31a1d6d7054752967c1e8d.md) | 187 | `result-track:eb31a1d6d7054752967c1e8d7dbde07e6fddfd5930d8362ce91959a3dac716ad` |
| 19 | `lemma` | [closedComplemented_range](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/closedcomplemented-range--cb0cecfdcd1469a1d158a003.md) | 208 | `result-track:cb0cecfdcd1469a1d158a00367acb745c8d3866b8f3c61fabd060ff257bc1428` |
| 20 | `lemma` | [isClosed_range](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/isclosed-range--8f5ab55c1edd5466497dde34.md) | 224 | `result-track:8f5ab55c1edd5466497dde34cd692c5f1a7c42f9ccd37ec1c0506e4ce5b05964` |
| 21 | `def` | [complement](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/complement--3b4471a7e3f692b352d8cd00.md) | 232 | `declaration-track:3b4471a7e3f692b352d8cd00e045d5739b3ecb28d27c73c4800cb1144ec2cb50` |
| 22 | `lemma` | [isClosed_complement](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/isclosed-complement--6d16ccb14b16780f22359277.md) | 235 | `result-track:6d16ccb14b16780f22359277c578ded9cb4b095116099324424a36b4c632c346` |
| 23 | `lemma` | [isCompl_complement](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/iscompl-complement--fca797f7bdadf99c7a6a310f.md) | 239 | `result-track:fca797f7bdadf99c7a6a310fb2e6584b5995107dc2bfc8e4ae14d1aaa991f001` |
| 24 | `lemma` | [of_injective_of_isClosed_range_of_closedComplement_range](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/of-injective-of-isclosed-range-of-closedcomplement-range--89071672ac40b6cedd371b91.md) | 254 | `result-track:89071672ac40b6cedd371b915d205e61756b245f03507af195e32b4696692ec5` |
| 25 | `def` | [rightInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/rightinverse--f4e2cf8dc9abf77e8ced8dad.md) | 273 | `declaration-track:f4e2cf8dc9abf77e8ced8dad0c75970adb7d3d052b4afb75494ce4a2884b82d6` |
| 26 | `lemma` | [rightInverse_rightInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/rightinverse-rightinverse--e18231bd9ab354971c584f92.md) | 275 | `result-track:e18231bd9ab354971c584f92649faa19ec27822ee0ac7767b51f46a3592f1e2f` |
| 27 | `lemma` | [surjective](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/surjective--d17b4cf1fa5e3baffd1595ec.md) | 278 | `result-track:d17b4cf1fa5e3baffd1595ec6e7e24198f18c072f1a8e69805b89f0fd3b2cfd3` |
| 28 | `lemma` | [congr](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/congr--16cb32113c8e1afdc555be5e.md) | 281 | `result-track:16cb32113c8e1afdc555be5ef1b89d1b6b6a4471a39e97b6b0d64b134c6d5e46` |
| 29 | `lemma` | [_root_.ContinuousLinearEquiv.hasRightInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/root-continuouslinearequiv-hasrightinverse--352e5121312f84b7ca909304.md) | 286 | `result-track:352e5121312f84b7ca9093044e1238a2ba7824feeb301c016c789b85111cf9fe` |
| 30 | `lemma` | [_root_.ContinuousLinearEquiv.rightInverse_hasRightInverse](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/root-continuouslinearequiv-rightinverse-hasrightinverse--ec03d72f12d6c654013f5b3e.md) | 290 | `result-track:ec03d72f12d6c654013f5b3ef9ce9b23714c0a4a50a03d1679dd8b954a4e17e8` |
| 31 | `lemma` | [of_isInvertible](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/of-isinvertible--aacc781349139a9ae9a20b83.md) | 296 | `result-track:aacc781349139a9ae9a20b8335c2a3bba77c4deda909f6d917c870b3b293d169` |
| 32 | `lemma` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/prodmap--d8af86e459b34d0462a4319e.md) | 301 | `result-track:d8af86e459b34d0462a4319e70ec8b82674ea71fe5d55b9cb75784d9cb4a53a7` |
| 33 | `lemma` | [comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/comp--c7258b439c1d0ca4d0fd7794.md) | 310 | `result-track:c7258b439c1d0ca4d0fd779493b033fa92509cbe9c5a8470e77e45b9f59f3094` |
| 34 | `lemma` | [of_comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/of-comp--86765e5dc11a1e9873ddad6e.md) | 318 | `result-track:86765e5dc11a1e9873ddad6e0960d1b7d32d3646b3ffd7fdc2ff115dfa30781f` |
| 35 | `lemma` | [comp_continuousLinearEquivalence](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/comp-continuouslinearequivalence--6403e7fb2d99547175a30ba1.md) | 323 | `result-track:6403e7fb2d99547175a30ba10a2876746a2ee4b7b333f1e15199d4b2c4e5fffe` |
| 36 | `lemma` | [continuousLinearEquivalence_comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/continuouslinearequivalence-comp--5d4c619dfee7c349593e15f0.md) | 327 | `result-track:5d4c619dfee7c349593e15f0bf0dc2ec4cbfc966bc8557997288e8b59af23660` |
| 37 | `lemma` | [fst](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/fst--e7db3091ae57a420f6c1ff5f.md) | 332 | `result-track:e7db3091ae57a420f6c1ff5fd9ff833c35bde649a7ac057676ca8ed995a1ae53` |
| 38 | `lemma` | [snd](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/snd--f4aeb8e080e3e7d463c5a667.md) | 338 | `result-track:f4aeb8e080e3e7d463c5a667862b2d3002a4cd2ef4ca6f6251fc188dd9235ef6` |
| 39 | `lemma` | [of_surjective_of_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/ContinuousInverse/Variantbdd245e682df936148b03e57fa17fec3dd077cb1c845ad0967acf0fb2d16a4d5.lean/declarations/of-surjective-of-finitedimensional--409ef0b7e12d36a0095db0b9.md) | 352 | `result-track:409ef0b7e12d36a0095db0b960d9d1c16f64e3f8eef7e966e06fe530cddb0613` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
