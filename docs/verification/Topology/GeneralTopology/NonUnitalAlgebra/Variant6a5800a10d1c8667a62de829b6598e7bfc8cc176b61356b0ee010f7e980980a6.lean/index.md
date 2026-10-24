# Verification target: GRWTSK.Topology.GeneralTopology.NonUnitalAlgebra.Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79e8e6c2bff5091aa0453770e5d2a40e7e2ead4e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79e8e6c2bff5091aa0453770e5d2a40e7e2ead4e`.

Source path: `GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean.json)

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
| 1 | `instance` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/instistopologicalsemiring--f0b45758911bc713f04b8b06.md) | 43 | `declaration-track:f0b45758911bc713f04b8b067a272441addb4ffc87551029f4a388c6653eab6c` |
| 2 | `instance` | [instIsSemitopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/instissemitopologicalsemiring--3dbc6809c3a0c7804f435a78.md) | 47 | `declaration-track:3dbc6809c3a0c7804f435a7883f3d3e0998d3ba9b8f4749e66c596967e8ecfde` |
| 3 | `def` | [topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/topologicalclosure--fcc8f6c45f35bf6144ba4a05.md) | 55 | `declaration-track:fcc8f6c45f35bf6144ba4a0538ae5daf9f6fd59306325cc34ed459f3ba722656` |
| 4 | `theorem` | [le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/le-topologicalclosure--548262506f9dfdf424bf5ee2.md) | 59 | `result-track:548262506f9dfdf424bf5ee2cf911f90288afbddf572000a69640e989d49abf0` |
| 5 | `theorem` | [isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/isclosed-topologicalclosure--0a4780fb55d44b7e98c910b5.md) | 62 | `result-track:0a4780fb55d44b7e98c910b520e3ebefa5b807ad09a3358c646271afb1cfb509` |
| 6 | `theorem` | [topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/topologicalclosure-minimal--e46a1c4f2d0c3793c689e0b9.md) | 65 | `result-track:e46a1c4f2d0c3793c689e0b984385fac7b0a49591fe7a70a7352bc1fa3d950de` |
| 7 | `theorem` | [topologicalClosure_mono](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/topologicalclosure-mono--7cf1a2debe551f9bb3483f0e.md) | 70 | `result-track:7cf1a2debe551f9bb3483f0e8109b1d91939c8abc25981c981cec4c47e5c52e6` |
| 8 | `instance` | [isMulCommutative_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/ismulcommutative-topologicalclosure--d95908873eb34f32f9eb89fd.md) | 74 | `declaration-track:d95908873eb34f32f9eb89fdfbb18af600269f6c431e1d56e61bd97a3b18e4b5` |
| 9 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/nonunitalcommsemiringtopologicalclosure--33d6e526ac1c567369a7a463.md) | 84 | `declaration-track:33d6e526ac1c567369a7a4639fccfd95d675b7fa8c16d87221dddd8df727119b` |
| 10 | `lemma` | [map_topologicalClosure_le](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/map-topologicalclosure-le--dbca1cef91dfc47aa0fd28e2.md) | 93 | `result-track:dbca1cef91dfc47aa0fd28e2201ef93424f1262a9f855fc2e305780d6514c6d0` |
| 11 | `lemma` | [topologicalClosure_map_le](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/topologicalclosure-map-le--1961c7e43602a69a597bbac3.md) | 97 | `result-track:1961c7e43602a69a597bbac3d83e94bff9e18a36368097a14fe26f3d732d41fd` |
| 12 | `lemma` | [topologicalClosure_map](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/topologicalclosure-map--1522755abbd111706ae99cba.md) | 101 | `result-track:1522755abbd111706ae99cba1fb2368b0b394f7f54c945938812b8c36a618892` |
| 13 | `lemma` | [topologicalClosure_adjoin_le_centralizer_centralizer](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/topologicalclosure-adjoin-le-centralizer-centralizer--cf7504255f9ef904915e1df0.md) | 107 | `result-track:cf7504255f9ef904915e1df0e1b07cdaffd8b5092b28cc92f03ea0387082b74c` |
| 14 | `instance` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/instistopologicalring--4044e96ceaa4ca2059d1991a.md) | 120 | `declaration-track:4044e96ceaa4ca2059d1991a1031cf132bf552b0347f52cdbfdd487e09760fcc` |
| 15 | `instance` | [instIsSemitopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/instissemitopologicalring--728b8d280a5980743f03d528.md) | 124 | `declaration-track:728b8d280a5980743f03d5282216db6f500003e3e980c488f587e964d3aaddd8` |
| 16 | `abbrev` | [nonUnitalCommRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/nonunitalcommringtopologicalclosure--b64bb666915db1155a5f4d89.md) | 136 | `declaration-track:b64bb666915db1155a5f4d89a331aa2e778fad3547d57ee90931d22c5de25f0a` |
| 17 | `def` | [elemental](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/elemental--29f42544199dfe377fafcee5.md) | 154 | `declaration-track:29f42544199dfe377fafcee51cb0e849c79588fbd7659d27cb0fa46925a4a899` |
| 18 | `theorem` | [self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/self-mem--182c29e232c09383429bc185.md) | 160 | `result-track:182c29e232c09383429bc185a71aa8ff24a0af260a2c4d5345d6eda741dc9aae` |
| 19 | `theorem` | [le_of_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/le-of-mem--2c6dbb84b5a6c9f3e542089d.md) | 164 | `result-track:2c6dbb84b5a6c9f3e542089d2ff4d5a3cad4ddf1d06bdcb7c1ecb56252789af2` |
| 20 | `theorem` | [le_iff_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/le-iff-mem--68fd3ef7d4648ba7d8829535.md) | 169 | `result-track:68fd3ef7d4648ba7d88295357c82b2d649610607c7e57e885a5d6e6bd5d11f87` |
| 21 | `instance` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/isclosed--8cee35aeeea3401674c98b7f.md) | 173 | `declaration-track:8cee35aeeea3401674c98b7f144936029897c7027efc991354283202abb91bc4` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/instance--2e102801bde3ef54768ac9c9.md) | 176 | `declaration-track:2e102801bde3ef54768ac9c9bc164ea301eaef174a86f529d940a1181c57dc50` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/instance--ec212e59c2e1996fb78b03e6.md) | 179 | `declaration-track:ec212e59c2e1996fb78b03e6c38f5a15fdee904f659dd0c121e0a2904e46648c` |
| 24 | `theorem` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/isclosedembedding-coe--d1ff2a807f68148520ccc288.md) | 186 | `result-track:d1ff2a807f68148520ccc288f9b4c5f87b887fd9f2e0512d9d214798cde87e35` |
| 25 | `lemma` | [le_centralizer_centralizer](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant6a5800a10d1c8667a62de829b6598e7bfc8cc176b61356b0ee010f7e980980a6.lean/declarations/le-centralizer-centralizer--e55c651dcf5c1778b9b142fc.md) | 191 | `result-track:e55c651dcf5c1778b9b142fcfac66dfd11f8f4c76f5fa688b2249818938cacf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
