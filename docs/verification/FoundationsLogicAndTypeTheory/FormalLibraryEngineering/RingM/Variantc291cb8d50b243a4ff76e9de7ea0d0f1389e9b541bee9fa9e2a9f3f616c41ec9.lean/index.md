# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RingM.Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2f4ac76550a96467f5018b0a00f874db409d000",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2f4ac76550a96467f5018b0a00f874db409d000`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Arith.Poly` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkMaxSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/checkmaxsteps--672a0ac488da16d0a430da33.md) | 15 | `declaration-track:672a0ac488da16d0a430da333b9c03665c89a4aeda21164e99e39c660e769859` |
| 2 | `def` | [checkMaxDegree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/checkmaxdegree--a9f0b13d61699746fab9b497.md) | 18 | `declaration-track:a9f0b13d61699746fab9b49722eb5edbefc2f93b80f6cd7ef4e603e56a00c0c8` |
| 3 | `def` | [incSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/incsteps--82b61dcd4600d0b49667ee8e.md) | 27 | `declaration-track:82b61dcd4600d0b49667ee8e92c2eab41a2c06d4cb173528036b26d93759b280` |
| 4 | `structure` | [RingM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/ringm-context--0bd11935a9d9d6380f77c4e2.md) | 30 | `declaration-track:0bd11935a9d9d6380f77c4e2b2cca872ded0ed203b6ac714700eef4a7ff739c4` |
| 5 | `abbrev` | [RingM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/ringm--be55b722148fc184b17caaa8.md) | 51 | `declaration-track:be55b722148fc184b17caaa8c833c8657a4cfeddc0138be0798b62569e3640ea` |
| 6 | `abbrev` | [RingM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/ringm-run--7e48453c50efe460ce11566f.md) | 53 | `declaration-track:7e48453c50efe460ce11566fd47b5b8fe56a4136a13280b7df523bd811eb5d8a` |
| 7 | `abbrev` | [getRingId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/getringid--3f133e919537975455161691.md) | 56 | `declaration-track:3f133e91953797545516169172aadc0cf9c9b865ca1a228902d197c28849e0d6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/instance--20bf11438afaec7d887c65e4.md) | 59 | `declaration-track:20bf11438afaec7d887c65e42c01d65fb00c0bba7151e1ddbeaae40bac91fa92` |
| 9 | `def` | [RingM.getCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/ringm-getcommring--fbb2638b39ef4936a22e7bd2.md) | 63 | `declaration-track:fbb2638b39ef4936a22e7bd2a7004966ad26e053d387988082d34535613bd29e` |
| 10 | `def` | [RingM.modifyCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/ringm-modifycommring--739b4183877b6dc98874039c.md) | 71 | `declaration-track:739b4183877b6dc98874039cc04ef81400d82dd9764c5eb6766a3dd58d784dc5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/instance--cd2590fc6140f261eacfea05.md) | 75 | `declaration-track:cd2590fc6140f261eacfea05f96f58984204ebe754833652a8439247600c6d2f` |
| 12 | `abbrev` | [withCheckCoeffDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/withcheckcoeffdvd--9ab219ae6372a38b8f2881e4.md) | 79 | `declaration-track:9ab219ae6372a38b8f2881e4e68383d6d71cb26e4458068786a137256cec17d6` |
| 13 | `def` | [checkCoeffDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/checkcoeffdvd--d504c214b48a74d9778a06e0.md) | 82 | `declaration-track:d504c214b48a74d9778a06e0951bf03b7de40d13181696d19fe9e1b5d06a2e4a` |
| 14 | `def` | [getTermRingId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/gettermringid--9ce9fe502628d95ee24c0a32.md) | 85 | `declaration-track:9ce9fe502628d95ee24c0a329745960ae2baa9b9d57aa755d367c6eaf0cac4c2` |
| 15 | `def` | [nonzeroChar?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/nonzerochar--34c9dc83db5df22e510ed91f.md) | 89 | `declaration-track:34c9dc83db5df22e510ed91f18f5f98a70c176866d042cb2f7f5c024b6388a9f` |
| 16 | `def` | [nonzeroCharInst?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/nonzerocharinst--61163baabd0d87cc6d495771.md) | 96 | `declaration-track:61163baabd0d87cc6d495771b23d179b9bb420c77e4a1c95a42fb6455a8b7bd6` |
| 17 | `def` | [noZeroDivisorsInst?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/nozerodivisorsinst--bc9251d779d7afdab284fee3.md) | 102 | `declaration-track:bc9251d779d7afdab284fee3997c8f9986883b42e91f2ddac0c574eb46df3952` |
| 18 | `def` | [noZeroDivisors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/nozerodivisors--7bfa3bf0be42033c2a7326c5.md) | 111 | `declaration-track:7bfa3bf0be42033c2a7326c5964ddaa834bc093c44faed99455e0e880bf39151` |
| 19 | `def` | [hasChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/haschar--459b077be659fadb6001c92c.md) | 115 | `declaration-track:459b077be659fadb6001c92c87fa9af6028172d257f124e29cb6e196400ea3ee` |
| 20 | `def` | [getCharInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/getcharinst--a741ca659c4ae64e4364f790.md) | 121 | `declaration-track:a741ca659c4ae64e4364f790e0b39490e2a1b7656a5d189f7ef445fca8fdfffb` |
| 21 | `def` | [isField](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/isfield--d014dc2c6ee3c3ce47daf54e.md) | 126 | `declaration-track:d014dc2c6ee3c3ce47daf54e1c757df7df64e928b6878e1ac167fbf873a572e5` |
| 22 | `def` | [isQueueEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/isqueueempty--d559cc622a7ca618949f8e0d.md) | 129 | `declaration-track:d559cc622a7ca618949f8e0d2c5aa2b41a8af0b183b7ce0f228f4fa312254470` |
| 23 | `def` | [getNext?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/getnext--a4e1d3f0ba2406be1ebb8f79.md) | 132 | `declaration-track:a4e1d3f0ba2406be1ebb8f79c42db5eb72fb4f412b9df24ed6d09c6165dfc136` |
| 24 | `class` | [MonadSetTermId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/monadsettermid--badd7578ae6df71d0cdf6eff.md) | 138 | `declaration-track:badd7578ae6df71d0cdf6eff0beae7628db9be8c13b8da54df467e3298977218` |
| 25 | `def` | [setTermRingId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/settermringid--a691328241cafb1aa45fd49e.md) | 141 | `declaration-track:a691328241cafb1aa45fd49eca85db8c2cfd59dc80647ac14756a7bc91967db3` |
| 26 | `def` | [mkVarCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/mkvarcore--f2013cf6362f3def75b767a6.md) | 149 | `declaration-track:f2013cf6362f3def75b767a6d22eb0b521d3154aced1f6a5d49f72f799bad7fb` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/instance--7c6d8b0d66520d8b53bf99a7.md) | 162 | `declaration-track:7c6d8b0d66520d8b53bf99a7c9d22845b85ac4647e0d06496a91bbb2d37438b7` |
| 28 | `def` | [mkVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean/declarations/mkvar--b76191c0c4a7b3375a888962.md) | 165 | `declaration-track:b76191c0c4a7b3375a888962fbf79616d61375d5513d990eff6f2e19c5108c03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
