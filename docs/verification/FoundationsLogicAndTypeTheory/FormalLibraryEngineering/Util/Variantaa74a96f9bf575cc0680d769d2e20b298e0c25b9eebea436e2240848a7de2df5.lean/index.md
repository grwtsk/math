# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cd0a3a1576e5f9c0ce44bff0416c7ad1ccd52af",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cd0a3a1576e5f9c0ce44bff0416c7ad1ccd52af`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Gcd` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getzero--b8b53c90d981a92707bf35da.md) | 24 | `declaration-track:b8b53c90d981a92707bf35dac8e52606a34a38a997ca62d58abc00ea595bb72e` |
| 2 | `def` | [getOne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getone--b090e54e45a4c5073634bac0.md) | 27 | `declaration-track:b090e54e45a4c5073634bac01dc8877228afb737dafc9e5ad36862d18182d3d1` |
| 3 | `def` | [isCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/iscommring--4f27032e6cbfe664c415c1d4.md) | 32 | `declaration-track:4f27032e6cbfe664c415c1d4801c2cb2c5bea37d32ff170eb632d80bd8f917b7` |
| 4 | `def` | [isOrderedCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/isorderedcommring--35bd365f5e8d07ef63d7ce81.md) | 35 | `declaration-track:35bd365f5e8d07ef63d7ce817ad42e4ef4db0b77e46f7063c7ccd56edeec7330` |
| 5 | `def` | [isLinearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/islinearorder--e7bc881bdbbde5857fbaae9d.md) | 38 | `declaration-track:e7bc881bdbbde5857fbaae9dfcedb45d062d50a88f55b58e6040af8a07d3355d` |
| 6 | `def` | [hasNoNatZeroDivisors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/hasnonatzerodivisors--57bb08b60116d8af20cbb8fa.md) | 41 | `declaration-track:57bb08b60116d8af20cbb8fa5132dcefc620f6c7948ab38fb2272b770f03367f` |
| 7 | `def` | [getTermStructId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/gettermstructid--c51e47a2974c1d8dc6059024.md) | 44 | `declaration-track:c51e47a2974c1d8dc60590247e347fde15f0e7732067fd8e94367841bcfb58ff` |
| 8 | `def` | [setTermStructId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/settermstructid--b6084f81c4707f2bbb0c9d80.md) | 47 | `declaration-track:b6084f81c4707f2bbb0c9d8098751bfb0765d415143e93c4cca5d00c3f1318e4` |
| 9 | `def` | [getNoNatDivInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getnonatdivinst--df4a89801f091857ecbe217f.md) | 58 | `declaration-track:df4a89801f091857ecbe217f3d0f52d3743bef5247bdca0bb336d7ec90e8cd2c` |
| 10 | `def` | [getLEInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getleinst--b261cf01601ed5b461304413.md) | 63 | `declaration-track:b261cf01601ed5b4613044135d8bd20c3609bd16af772f6e1e09e49d7871a64a` |
| 11 | `def` | [getLTInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getltinst--4891c832cecb98155a38f019.md) | 68 | `declaration-track:4891c832cecb98155a38f0199b688ed0e12020c6030766444ec1ef7678ef725c` |
| 12 | `def` | [getLawfulOrderLTInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getlawfulorderltinst--9f51b413411545829424ac93.md) | 73 | `declaration-track:9f51b413411545829424ac93365694fc7596490798777e6d7ad08e34793bc9fc` |
| 13 | `def` | [getIsPreorderInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getispreorderinst--fa570928e3302aeb016964e9.md) | 78 | `declaration-track:fa570928e3302aeb016964e900d41a6a0cfd039691f4e714e15f1d5b6365bf9b` |
| 14 | `def` | [getOrderedAddInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getorderedaddinst--c81b43400aea01ba96b3a58d.md) | 83 | `declaration-track:c81b43400aea01ba96b3a58d8664f6f62d400a0edf705e95f09ed6da34529847` |
| 15 | `def` | [isOrderedAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/isorderedadd--90ee190cd4bdc4e519ef30f9.md) | 88 | `declaration-track:90ee190cd4bdc4e519ef30f9113da0f2a34e9d6328dfd21a79a0c5abffef30fa` |
| 16 | `def` | [getLtFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getltfn--10c62153e8d25e0d9a3b6735.md) | 91 | `declaration-track:10c62153e8d25e0d9a3b6735e48c35a65fff330944d8283d3c11d7f0ff3a4d32` |
| 17 | `def` | [getLeFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getlefn--6e3df079164d76a19d9b05ed.md) | 96 | `declaration-track:6e3df079164d76a19d9b05ed35de858814dcadb2004dcc03d746352302747db6` |
| 18 | `def` | [getIsLinearOrderInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getislinearorderinst--b13f603108ca9d3d35f27bbf.md) | 101 | `declaration-track:b13f603108ca9d3d35f27bbfde92accb7afe537c0933d665f92db67687329f7a` |
| 19 | `def` | [getRingInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getringinst--fcf586fc1e80af9fa2efa056.md) | 106 | `declaration-track:fcf586fc1e80af9fa2efa056d2c1396c6074a0ecbb593f47538e5b73f0023fe4` |
| 20 | `def` | [getCommRingInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getcommringinst--811e68f9357b99aad20b80b1.md) | 111 | `declaration-track:811e68f9357b99aad20b80b115808d5eaa4f0bdf02d3763c260075a9b176d035` |
| 21 | `def` | [getOrderedRingInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getorderedringinst--100f9a367b326796a4ceac1d.md) | 116 | `declaration-track:100f9a367b326796a4ceac1daad37423857a4fb31836e88a3f20e20d19299c22` |
| 22 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.eval?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getze--5d10be78f36d33f13961c74c.md) | 125 | `declaration-track:5d10be78f36d33f13961c74cf36deec95df244d3b7f41a15a22289a1699cd12d` |
| 23 | `def` | [IneqCnstr.satisfied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/ineqcnstr-satisfied--3883ab29ac5b29fcc9be2c7d.md) | 139 | `declaration-track:3883ab29ac5b29fcc9be2c7d6de0d8006a10f13af6856ab179af8206918a2808` |
| 24 | `def` | [DiseqCnstr.satisfied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/diseqcnstr-satisfied--04e445fa4b457d86021c7fdb.md) | 146 | `declaration-track:04e445fa4b457d86021c7fdbc81e56c9363749f24220b0cc7d095bdbf316aeb7` |
| 25 | `def` | [resetAssignmentFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/resetassignmentfrom--9a4e0ec3b4b83580ea1328ec.md) | 151 | `declaration-track:9a4e0ec3b4b83580ea1328ec280d0ae0e35929d4724e7ac5be7d4070c1165dcd` |
| 26 | `def` | [getVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getvar--aaf25bd31be5723dd7e28ce3.md) | 154 | `declaration-track:aaf25bd31be5723dd7e28ce361596bf1f611237d645e7bd38b587e64c9a1b423` |
| 27 | `def` | [inconsistent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/inconsistent--0b177981a48cce0a5fcd1776.md) | 158 | `declaration-track:0b177981a48cce0a5fcd1776a7ff607b41eeb92af423b8e4fb54538f301bf0f0` |
| 28 | `def` | [eliminated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/eliminated--4c5b09a1ae6b5f785f19ec39.md) | 163 | `declaration-track:4c5b09a1ae6b5f785f19ec39753e1cbc28c489e796785023fcaf892ed41d3a96` |
| 29 | `def` | [getOccursOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/getoccursof--2c34cd770a9158e9837ff223.md) | 167 | `declaration-track:2c34cd770a9158e9837ff223ca46c462f3170acc1d0fcccda99f5223039e8748` |
| 30 | `def` | [addOcc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/addocc--f7e841df3349d7f381d06fac.md) | 174 | `declaration-track:f7e841df3349d7f381d06fac5f3246f9dde1671b8228fe7f309bb0b169ac5889` |
| 31 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.updateOccs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getze--c26029c75632d8b76f1664a1.md) | 182 | `declaration-track:c26029c75632d8b76f1664a1ef0a4b777fe41df2ef66c7d62a41a795861eee18` |
| 32 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.findVarToSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getze--d76885f8c1eca51db0802cec.md) | 193 | `declaration-track:d76885f8c1eca51db0802cec72721cd9edf043955c6928715a493e10aa3b9f1f` |
| 33 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.gcdCoeffsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getze--b32a180b9d35cd28471e35f4.md) | 202 | `declaration-track:b32a180b9d35cd28471e35f412afb6a9cbc0afaa3cc4407a3a44ace1cdefac70` |
| 34 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.gcdCoeffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getze--d738dc56440b56d8bccf7d5c.md) | 206 | `declaration-track:d738dc56440b56d8bccf7d5cf76bfa546049d266f8b3c3a4610ed34699de5312` |
| 35 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getze--d82330f8e4b9af0c8a39ddb3.md) | 211 | `declaration-track:d82330f8e4b9af0c8a39ddb3d8d26eae590b0c1676ccf9a3959bfb5937a998de` |
| 36 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.pickVarToElim?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getze--d37436ec1629410c05e1c1cf.md) | 219 | `declaration-track:d37436ec1629410c05e1c1cf6fae2a7d100b3f02e2ccaa82979a86ea0bf7110b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
