# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Poly.Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aa6ddf99e96144ea15d97c2bfeab3826d744064",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aa6ddf99e96144ea15d97c2bfeab3826d744064`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Gcd` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 11; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Mon.sharesVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/mon-sharesvar--f53ca10fac3d755bd0d597ca.md) | 17 | `declaration-track:f53ca10fac3d755bd0d597cad20838bfc53b0a8982728b041ba78d3868caafc1` |
| 2 | `def` | [Mon.lcm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/mon-lcm--04aa5fdbdc6f04eff173cb0a.md) | 27 | `declaration-track:04aa5fdbdc6f04eff173cb0a45afcf9f65e58404135de720aa8c47eddc65d64b` |
| 3 | `def` | [Mon.divides](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/mon-divides--8f6275f62417053b546cb94c.md) | 42 | `declaration-track:8f6275f62417053b546cb94c390e0188f8359e6c6632fb772d1d616c26e2b144` |
| 4 | `def` | [Mon.div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/mon-div--f71beb164abbcc8cf76f3706.md) | 56 | `declaration-track:f71beb164abbcc8cf76f37069d12df0fae000970aa5cd0878774ce63e6c1e916` |
| 5 | `def` | [Mon.coprime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/mon-coprime--06462bdcfe7c65771861a022.md) | 74 | `declaration-track:06462bdcfe7c65771861a022f916060badbea11e0d9f2a10467ce5102fc60e81` |
| 6 | `structure` | [SPolResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/spolresult--bb5d9a8679338875efc1e2e8.md) | 87 | `declaration-track:bb5d9a8679338875efc1e2e855fc0b136b480f8c03ecc8d21eda8cf8b071a03c` |
| 7 | `def` | [Poly.mulConst'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-mulconst--1de69a12e04f58f1edcc55c8.md) | 99 | `declaration-track:1de69a12e04f58f1edcc55c89cfd234813c4778f70888a32e0981683b979aaca` |
| 8 | `def` | [Poly.mulMon'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-mulmon--1615f0a213db580d16345c6c.md) | 102 | `declaration-track:1615f0a213db580d16345c6c946f841a7840e165b0930df45f5d2807cddf1397` |
| 9 | `def` | [Poly.combine'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-combine--546a0c4f601ad6bfb81c9f88.md) | 105 | `declaration-track:546a0c4f601ad6bfb81c9f884f24f786083484730522f1bb2702113a99cdb94c` |
| 10 | `def` | [Poly.spol](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-spol--b6935e876a9156732dbcd10f.md) | 116 | `declaration-track:b6935e876a9156732dbcd10fdbe1a8198874ba4498c74f8271e17277723b1f51` |
| 11 | `def` | [Poly.degree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-degree--7b958c1ed8ee6edf8a65b382.md) | 131 | `declaration-track:7b958c1ed8ee6edf8a65b382eb93980df5e8208a428a3d7d005c9878640ddcf5` |
| 12 | `def` | [Poly.numTerms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-numterms--2d1d3fc0fe8106979bf09099.md) | 136 | `declaration-track:2d1d3fc0fe8106979bf090990589c217a68191871ab0da862e1316757956ecf4` |
| 13 | `def` | [Poly.divides](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-divides--360633c1bca6397c7a9b2068.md) | 145 | `declaration-track:360633c1bca6397c7a9b206869ac133d0a34a4be05c2c7e5ec588229f5312352` |
| 14 | `def` | [Poly.lc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-lc--1bec30cca0abca6c3539d4e6.md) | 151 | `declaration-track:1bec30cca0abca6c3539d4e67f72f03fcdf55ae1ee37d0a01be36570d7ebd187` |
| 15 | `def` | [Poly.lm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-lm--75eb02803dbb48980fb6789c.md) | 156 | `declaration-track:75eb02803dbb48980fb6789c79aabdb30320629d4bda74586dbdd8612b3991a4` |
| 16 | `def` | [Poly.isZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-iszero--52cf916e50a0b0b2f38b6111.md) | 160 | `declaration-track:52cf916e50a0b0b2f38b6111a7de4b2238d3869ae1953f13a4098e62f833281a` |
| 17 | `def` | [Poly.getConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-getconst--cef08f31394caefc52f03247.md) | 164 | `declaration-track:cef08f31394caefc52f032471258f55a772926497b12f8d4785edcaa49718de8` |
| 18 | `def` | [Poly.checkCoeffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-checkcoeffs--548011b89e18e93cba3658e6.md) | 168 | `declaration-track:548011b89e18e93cba3658e67bb57168f18bcdabac6dbd9d6fcc527c1373827d` |
| 19 | `def` | [Poly.checkNoUnitMon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-checknounitmon--206c84d1bbc2966d8a8e92f1.md) | 172 | `declaration-track:206c84d1bbc2966d8a8e92f1e39e898b80dc813a16b9493da629c6d664efa9c7` |
| 20 | `def` | [Poly.gcdCoeffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-gcdcoeffs--a3ea46841446c37e45553678.md) | 177 | `declaration-track:a3ea46841446c37e45553678dfc6d48b755241411ff246752cf14602ff7c1d1f` |
| 21 | `def` | [Poly.divConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-divconst--5166444034f8067b2e73dfb3.md) | 188 | `declaration-track:5166444034f8067b2e73dfb393b205ad01b2b0c1caee28734f562e02997e9256` |
| 22 | `def` | [Mon.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/mon-size--b6524522cb861c8248d5c49b.md) | 193 | `declaration-track:b6524522cb861c8248d5c49baa3391bc23a8038b0a7bbe70a3760549f586a48d` |
| 23 | `def` | [Poly.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-size--be26cf549c2ba0d8108fa334.md) | 197 | `declaration-track:be26cf549c2ba0d8108fa3341980a9a2af7190e8214ba1cc73676d2d55027abc` |
| 24 | `def` | [Poly.length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-length--80578cc441f5c03a1c26356a.md) | 201 | `declaration-track:80578cc441f5c03a1c26356a57e318686b92aa1575d00d7ba411bd3fa13582fd` |
| 25 | `def` | [Power.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/power-toexpr--ff4be7a3d6bf92fd0a1e1546.md) | 205 | `declaration-track:ff4be7a3d6bf92fd0a1e1546c0045e0afd9d1c9e31e66ac814866eeaafbe9ea6` |
| 26 | `def` | [Mon.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/mon-toexpr--395b12903af7faafe7e7b746.md) | 211 | `declaration-track:395b12903af7faafe7e7b7460740cdee0e5aa60eabd00f62357c01b291a7c474` |
| 27 | `def` | [Poly.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-toexpr--63cd873c34568ac757ab2e9e.md) | 221 | `declaration-track:63cd873c34568ac757ab2e9e35ac04d5ce0802d1fe243ac0dc151d7b3506bb7d` |
| 28 | `def` | [Poly.maxDegreeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantb1bb1440698975b95677d7e99e7c486a004eccee76839ad498ca8df03ca848f1.lean/declarations/poly-maxdegreeof--69d609e6db0d21c66b29d375.md) | 238 | `declaration-track:69d609e6db0d21c66b29d375757f896df8ffffc2b239ee81ebe05197ebd9206a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
