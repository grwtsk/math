# Verification target: GRWTSK.Topology.GeneralTopology.DerivNotation.Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7912bf4ca5ffa28b710ac5da31731f4ab4f36da8",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7912bf4ca5ffa28b710ac5da31731f4ab4f36da8`.

Source path: `GRWTSK/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean.json)

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
| 1 | `class` | [LineDeriv](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederiv--9a9718cce0d42ea5cc9b47e3.md) | 46 | `declaration-track:9a9718cce0d42ea5cc9b47e352044b0333d1673405fd786d402203f86095b01c` |
| 2 | `def` | [iteratedLineDerivOp](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop--b5d143b523d6ebaa25697bcd.md) | 59 | `declaration-track:b5d143b523d6ebaa25697bcdaaa0fb7cea8ae694e49bf7294963513b74231e80` |
| 3 | `theorem` | [iteratedLineDerivOp_fin_zero](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop-fin-zero--e0d771defeb325ee4dffdd4c.md) | 65 | `result-track:e0d771defeb325ee4dffdd4c68e1f9e86e1fd221c6c75c2b1eea40cabedf57db` |
| 4 | `theorem` | [iteratedLineDerivOp_one](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop-one--c9741944a2d0e0c239dd97e9.md) | 69 | `result-track:c9741944a2d0e0c239dd97e9a7995c6976c778d4053ea0495aac4768c294643f` |
| 5 | `theorem` | [iteratedLineDerivOp_succ_left](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop-succ-left--ab79600b093652b0872da4ba.md) | 72 | `result-track:ab79600b093652b0872da4babed6924758788a18e6ee76e54ff70248180bcbba` |
| 6 | `theorem` | [iteratedLineDerivOp_succ_right](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop-succ-right--4e01651f5b96424e305fe24a.md) | 76 | `result-track:4e01651f5b96424e305fe24a2e0de1254b85bcad31e6f05d2be736cf3349d5ba` |
| 7 | `theorem` | [iteratedLineDerivOp_const_eq_iter_lineDerivOp](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop-const-eq-iter-linederivop--02fe5b5c75b174abf42e6f52.md) | 94 | `result-track:02fe5b5c75b174abf42e6f526d3f689db2cecc11ac066f3ac4412ecd0421793f` |
| 8 | `class` | [LineDerivAdd](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivadd--e83e9e7f36d2e90a8e203173.md) | 112 | `declaration-track:e83e9e7f36d2e90a8e20317333017721561636f753828ac01d6c89b21cc18858` |
| 9 | `class` | [LineDerivSMul](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivsmul--086dba0708eed38a97c94695.md) | 121 | `declaration-track:086dba0708eed38a97c946951a5d4ec1f139b56ccae1d399757300bab126fd15` |
| 10 | `class` | [LineDerivLeftSMul](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivleftsmul--a57233d42c86cbef5ff02eca.md) | 129 | `declaration-track:a57233d42c86cbef5ff02ecacca6922f322d23b4167184de406c64e4f34451a9` |
| 11 | `class` | [ContinuousLineDeriv](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/continuouslinederiv--412240a0b656154fd521db19.md) | 136 | `declaration-track:412240a0b656154fd521db1977d4324da9a816a4f47859b82dd200a2b7a77ed0` |
| 12 | `theorem` | [lineDerivOp_zero](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivop-zero--ef1b5f253f326068875f9aaf.md) | 155 | `result-track:ef1b5f253f326068875f9aaf21c80414ae1e6a168b919e828714b861587e1805` |
| 13 | `theorem` | [lineDerivOp_neg](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivop-neg--40f892e4be2d12b3e473f8e3.md) | 159 | `result-track:40f892e4be2d12b3e473f8e35ebe51f65f19b02870b68b7517bb9fae0a0f5c9b` |
| 14 | `theorem` | [lineDerivOp_sum](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivop-sum--5dbae1bfd4cf88e9f8a305f9.md) | 163 | `result-track:5dbae1bfd4cf88e9f8a305f9deaedf54052b7c1b202040633750b4bc43853d0b` |
| 15 | `theorem` | [lineDerivOp_left_zero](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivop-left-zero--1b1a33285aab24554ebfc36b.md) | 168 | `result-track:1b1a33285aab24554ebfc36bbf71684004a3eb051829f238cb41eaa5e9454c52` |
| 16 | `theorem` | [lineDerivOp_left_neg](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivop-left-neg--6f47d830a67def696bce6b82.md) | 172 | `result-track:6f47d830a67def696bce6b82eaf4b7b8852ce16e920f1e551fad5a69215e0587` |
| 17 | `theorem` | [lineDerivOp_left_sum](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivop-left-sum--67b4d18c3dd7a575f1ece60d.md) | 176 | `result-track:67b4d18c3dd7a575f1ece60db2cc3fa873bfe616b1de19ab8c743ccf1b67390b` |
| 18 | `def` | [lineDerivOpCLM](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivopclm--f7248ea49ce5c35f28217694.md) | 190 | `declaration-track:f7248ea49ce5c35f282176947bd3825ff3f669c27bc0f9481aad9a1485c5f07d` |
| 19 | `theorem` | [lineDerivOpCLM_apply](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/linederivopclm-apply--000f7264d35a4512aeb5b63d.md) | 196 | `result-track:000f7264d35a4512aeb5b63d3a06e4a0768fc916e745e04f462032411f27d003` |
| 20 | `theorem` | [iteratedLineDerivOp_add](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop-add--02556ca0e2410e0b7a56cfde.md) | 210 | `result-track:02556ca0e2410e0b7a56cfdef084ab1a146cdae394f1c4ae67e975ca27463ecf` |
| 21 | `theorem` | [iteratedLineDerivOp_zero](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop-zero--de183f88796be75346f1dba2.md) | 219 | `result-track:de183f88796be75346f1dba28decf47a6cc55beb92c07780dcd970a289a674fc` |
| 22 | `theorem` | [iteratedLineDerivOp_neg](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop-neg--c1bc87b3bbc5984d1310f8da.md) | 223 | `result-track:c1bc87b3bbc5984d1310f8da196f7a9e5fd20b1887e9eb486a48e060df221379` |
| 23 | `theorem` | [iteratedLineDerivOp_sum](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop-sum--67a75ef5a401e6c8d062ffd0.md) | 227 | `result-track:67a75ef5a401e6c8d062ffd09f3788ab84df3fbb20388e961e937d70f325de69` |
| 24 | `theorem` | [iteratedLineDerivOp_smul](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivop-smul--7a3d61c4fbe3e6ab5972f7a8.md) | 233 | `result-track:7a3d61c4fbe3e6ab5972f7a8f0b88832227adca17a7738400342263cc71416a7` |
| 25 | `theorem` | [continuous_iteratedLineDerivOp](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/continuous-iteratedlinederivop--b4bc0decadb6356da4d3ff56.md) | 244 | `result-track:b4bc0decadb6356da4d3ff565646e779566d88d116345948ddd73e2b1e778918` |
| 26 | `def` | [iteratedLineDerivOpCLM](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivopclm--4237725cf30e847be20b7e28.md) | 257 | `declaration-track:4237725cf30e847be20b7e2801d399a58a78e6dde0b3dc72718a3a14315912eb` |
| 27 | `theorem` | [iteratedLineDerivOpCLM_apply](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/iteratedlinederivopclm-apply--a0cc92e6860b4ee19510b087.md) | 263 | `result-track:a0cc92e6860b4ee19510b0879758edd3dafbe22655955bfba3f77e1722e97262` |
| 28 | `class` | [Laplacian](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/laplacian--8b110a95ef211a0efd9d4a4c.md) | 275 | `declaration-track:8b110a95ef211a0efd9d4a4c1e6f86f69ac9cc118fb1de0928ee7d146aec6245` |
| 29 | `def` | [bilinearLineDerivTwo](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/bilinearlinederivtwo--41762dd1533cf3c4d67692e4.md) | 305 | `declaration-track:41762dd1533cf3c4d67692e4ac6029c4f4c6239f1dde0388b3fea1514037738a` |
| 30 | `def` | [tensorLineDerivTwo](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/tensorlinederivtwo--f1e682a7c42affe142e58f4f.md) | 314 | `declaration-track:f1e682a7c42affe142e58f4f9a4565bc503fca168b051f072be38b4fb9dd21e5` |
| 31 | `lemma` | [tensorLineDerivTwo_eq_lineDerivOp_lineDerivOp](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/tensorlinederivtwo-eq-linederivop-linederivop--aba7da04b08bab8c18b4ac6c.md) | 317 | `result-track:aba7da04b08bab8c18b4ac6c0b2140459636d32cfa0edf04c720465700b59997` |
| 32 | `theorem` | [tensorLineDerivTwo_canonicalCovariantTensor_eq_sum](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/tensorlinederivtwo-canonicalcovarianttensor-eq-sum--61f50430dc52a06ec5dd761d.md) | 334 | `result-track:61f50430dc52a06ec5dd761d47a3ab10af96b5bdf3090e209617204cb8acbee9` |
| 33 | `def` | [laplacianCLM](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/laplacianclm--0fb48d6d4520a73f4d7c06cc.md) | 353 | `declaration-track:0fb48d6d4520a73f4d7c06cc0052dc8d0a753d3b57a6f2335919dd0aa04242cb` |
| 34 | `theorem` | [laplacianCLM_eq_sum](../../../../../mathematics/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/declarations/laplacianclm-eq-sum--d06bd97c5ebe335e6d0d80e6.md) | 365 | `result-track:d06bd97c5ebe335e6d0d80e67579c41e40f9e4f8b0134b2bd3a8835f4072f634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
