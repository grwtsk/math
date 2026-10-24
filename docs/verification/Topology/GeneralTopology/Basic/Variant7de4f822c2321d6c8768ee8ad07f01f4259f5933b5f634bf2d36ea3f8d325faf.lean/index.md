# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66eb87b03b3a4192974ec7f000aa636e945bf4e1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66eb87b03b3a4192974ec7f000aa636e945bf4e1`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean.json)

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
| 1 | `class` | [TopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/topologicalspace--2058adbb080b2336aacb117a.md) | 81 | `declaration-track:2058adbb080b2336aacb117a18426561128be0bd25a45149d5180fa70061229b` |
| 2 | `def` | [IsOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/isopen--e6b9a795bfd8def9f3ec9776.md) | 103 | `declaration-track:e6b9a795bfd8def9f3ec97767770ce0f966e732d4812fa96950920df8228d12e` |
| 3 | `theorem` | [isOpen_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/isopen-univ--382033a71c13e0d093b2877e.md) | 105 | `result-track:382033a71c13e0d093b2877e9ad4120dd785189720007ea9f42107f9d89096f4` |
| 4 | `theorem` | [IsOpen.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/isopen-inter--7d4df5da8b6497235f7009ae.md) | 107 | `result-track:7d4df5da8b6497235f7009ae142a87cacff923b914a9ce91310de8ba1599b31b` |
| 5 | `theorem` | [isOpen_sUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/isopen-sunion--920437e1c732f7d113a17684.md) | 110 | `result-track:920437e1c732f7d113a176846747cc79970e859b9708fcacd6916eb7e167b5fc` |
| 6 | `class` | [IsClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/isclosed--93603e16ab1f0f9a97ecdbe4.md) | 115 | `declaration-track:93603e16ab1f0f9a97ecdbe49c5056f7563914f76301a63b1cb3d407dafe0958` |
| 7 | `def` | [IsClopen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/isclopen--da3f8fca7ce6df41eb65f044.md) | 120 | `declaration-track:da3f8fca7ce6df41eb65f0448c8b80595039c71d0e0d2d145b17d71c7c4c5eb0` |
| 8 | `def` | [IsLocallyClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/islocallyclosed--a69e713a0c69ff3c1ab1653c.md) | 127 | `declaration-track:a69e713a0c69ff3c1ab1653ccaefbfc8aee48565e7a297ee97492bdfe1478018` |
| 9 | `def` | [interior](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/interior--58bb2cb28222024b38683634.md) | 130 | `declaration-track:58bb2cb28222024b3868363498b42473faf755ad9bb02def064f979947f5516e` |
| 10 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/closure--85419afdb3bfa1e53d9147e4.md) | 134 | `declaration-track:85419afdb3bfa1e53d9147e4be086449001c10d8525948d28c79e9759edc5c10` |
| 11 | `def` | [frontier](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/frontier--c8e0a27fdc2b8c2bffccaef0.md) | 138 | `declaration-track:c8e0a27fdc2b8c2bffccaef025cab43acc9102d561c11b4dd79735ed7657b3d4` |
| 12 | `def` | [coborder](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/coborder--02ff0f568ea7b237935360b0.md) | 150 | `declaration-track:02ff0f568ea7b237935360b03c911e9e6ba8c858369d85e694dcd912b3ae7de7` |
| 13 | `def` | [Dense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/dense--87e174e9d43d22288222ab22.md) | 154 | `declaration-track:87e174e9d43d22288222ab22f9a27cfd27a199c24ec99c1042e69b3bc6d365ce` |
| 14 | `def` | [DenseRange](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/denserange--256782acc514817be8ef00e8.md) | 158 | `declaration-track:256782acc514817be8ef00e80e5be49a7cbcf04e748b1467b0d29dd52e84a096` |
| 15 | `structure` | [Continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/continuous--3f348c37de759f7ba611cf65.md) | 163 | `declaration-track:3f348c37de759f7ba611cf65a99eeddac511bb8a75f08e0ade7a308614af4c34` |
| 16 | `def` | [IsOpenMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/isopenmap--616d82d41d2e820b42e60520.md) | 170 | `declaration-track:616d82d41d2e820b42e60520700b38c254ce2d1b728824eab35ffc3ce96b0a33` |
| 17 | `def` | [IsClosedMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/isclosedmap--9b9de36a320c80f91d578b17.md) | 174 | `declaration-track:9b9de36a320c80f91d578b17c72b596f0c51bea2dcb67edbc5d5c2d6c4d5ca5d` |
| 18 | `structure` | [IsOpenQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/isopenquotientmap--54df0ae8d824bd761035d571.md) | 190 | `declaration-track:54df0ae8d824bd761035d571a94bb98bdf3082cdba93dd8965c62c0e2b5dd6de` |
| 19 | `def` | [delabIsOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/delabisopen--e1df0f6d59c85a85303a57fe.md) | 223 | `declaration-track:e1df0f6d59c85a85303a57fe5000d67167a1e0dc68a76db0ee658a7d37df4526` |
| 20 | `def` | [delabIsClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/delabisclosed--09ea35154cd095426aad735a.md) | 227 | `declaration-track:09ea35154cd095426aad735a8eeafd3c480f3ae0f4c00d13f26f62530e82772d` |
| 21 | `def` | [delabIsClopen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/delabisclopen--81bf8fc0c0e8868f7e820ea0.md) | 231 | `declaration-track:81bf8fc0c0e8868f7e820ea0502e0c520c47f2c0861c9c8627256caf2468a85e` |
| 22 | `def` | [delabClosure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/delabclosure--33a2db42e6e68c91235d9592.md) | 234 | `declaration-track:33a2db42e6e68c91235d9592bff79bce6b9f28b3c50041486e00c8ee9f832799` |
| 23 | `def` | [delabContinuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/delabcontinuous--a2353f9e7da3f5eff63c634d.md) | 238 | `declaration-track:a2353f9e7da3f5eff63c634d153837a7a81bfb3dfc126665ddbd8dfa07e955cd` |
| 24 | `class` | [BaireSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/bairespace--892c9cce081e5102dc824e32.md) | 247 | `declaration-track:892c9cce081e5102dc824e3281cf5d1b6a9360bbb36cec1d4e8d1d0d77fea3cb` |
| 25 | `structure` | [WithTopology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/withtopology--91aa19de1cd1b00712a5b452.md) | 252 | `declaration-track:91aa19de1cd1b00712a5b452d5b024008dc41571b7108e69a8c4acef809e4f95` |
| 26 | `def` | [WithTopology.delabToTopology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant7de4f822c2321d6c8768ee8ad07f01f4259f5933b5f634bf2d36ea3f8d325faf.lean/declarations/withtopology-delabtotopology--7293e4b4b739a7b52d185636.md) | 265 | `declaration-track:7293e4b4b739a7b52d185636959603cf43836ae8ef5010bb39c066eb7f19f4b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
