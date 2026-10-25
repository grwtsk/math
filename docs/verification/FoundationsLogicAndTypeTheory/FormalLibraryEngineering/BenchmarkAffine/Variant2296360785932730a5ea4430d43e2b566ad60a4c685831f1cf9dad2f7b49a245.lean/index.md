# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BenchmarkAffine.Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d3ed0fee4e238b31ac1b892245970986b78aab4",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d3ed0fee4e238b31ac1b892245970986b78aab4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 10; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalAffine` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [testInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/testinterval--aed890a6f83b107f609fb567.md) | 44 | `declaration-track:aed890a6f83b107f609fb567e68a81fb91f331e167f705bda7435e3b43d1d08c` |
| 2 | `def` | [smallInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/smallinterval--63a6df47656f2d0515ba0903.md) | 47 | `declaration-track:63a6df47656f2d0515ba09036b2ee433868b326ecab2036ee3f971d929c21fc5` |
| 3 | `def` | [narrowInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/narrowinterval--833e082855e4220019f78828.md) | 50 | `declaration-track:833e082855e4220019f7882813729a8c5bacbb69a4bd46665be49a0cd8e9542c` |
| 4 | `def` | [mkRatEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/mkratenv--2baea7aa4fc783b05e52a57e.md) | 53 | `declaration-track:2baea7aa4fc783b05e52a57e7d60e1c759c71514a03cea39f4973816e82bffd4` |
| 5 | `def` | [mkDyadEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/mkdyadenv--7d3795521757eed99a6d847e.md) | 56 | `declaration-track:7d3795521757eed99a6d847ea0a5f8de3df6c3fc76c05152f4ca966f169bde84` |
| 6 | `def` | [mkAffineEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/mkaffineenv--780001755a0bd5c1e30faf05.md) | 60 | `declaration-track:780001755a0bd5c1e30faf05b4c658b084b9f9f6b1394ac4e9c7f11e916fac7e` |
| 7 | `def` | [exprXMinusX](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprxminusx--301d993f59d08ec187e75334.md) | 65 | `declaration-track:301d993f59d08ec187e75334ce5dc3a578497608ac733e7e0e39b3e2a1b76889` |
| 8 | `def` | [exprXSqMinusXSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprxsqminusxsq--db10547628b42875915f6619.md) | 69 | `declaration-track:db10547628b42875915f66198fe9e7344c7819b8931cb4c1be576ad2fc2d94d4` |
| 9 | `def` | [exprXPlus1MinusX](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprxplus1minusx--e496202ebca04a77564c2900.md) | 74 | `declaration-track:e496202ebca04a77564c2900feae3fea8e79e0b8ca2f731601c54a4b9dcc95e7` |
| 10 | `def` | [exprCorrelated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprcorrelated--d2fa1c9b39f53e2ec86865f6.md) | 79 | `declaration-track:d2fa1c9b39f53e2ec86865f6635f137c43b1cfa9db81c1331149da8754700bde` |
| 11 | `def` | [exprSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprsin--228d6dfab2fab459360c17b7.md) | 89 | `declaration-track:228d6dfab2fab459360c17b7093e895d24b7f233be8a5253f67c149f452908cd` |
| 12 | `def` | [exprCos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprcos--564536367353146a61c8ebfd.md) | 92 | `declaration-track:564536367353146a61c8ebfd2b0b73894474f3c992b6a88e1691875b5b3f5834` |
| 13 | `def` | [exprExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprexp--00fef84ce24696a610b0fe3c.md) | 95 | `declaration-track:00fef84ce24696a610b0fe3c9195eb1fa2e8410178940bbbd677fb0b7ded32ea` |
| 14 | `def` | [exprTanh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprtanh--1fdd3559c70490ee51f817aa.md) | 98 | `declaration-track:1fdd3559c70490ee51f817aa63b823805132360e57274b3d3f123728b4a7c23d` |
| 15 | `def` | [exprSinh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprsinh--cd748665423a86d8662c3e9f.md) | 101 | `declaration-track:cd748665423a86d8662c3e9f8604df1381e6855cbe2184bdbc007bb416a6ad68` |
| 16 | `def` | [exprCosh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprcosh--25528caaa3722be88d075320.md) | 104 | `declaration-track:25528caaa3722be88d075320dc76b6e3b5430c710b5a25f9a21e9bf01070c4f7` |
| 17 | `def` | [exprSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprsqrt--4632b67df7e1714d2e6f0310.md) | 107 | `declaration-track:4632b67df7e1714d2e6f03106d5975561cb6e035cc09a93f4517ae1d024e74f0` |
| 18 | `def` | [exprSinSqPlusCosSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprsinsqpluscossq--cd8aab1787a8c7ef6a8d623a.md) | 110 | `declaration-track:cd8aab1787a8c7ef6a8d623a2ea524a0dfb9b7392546b0e9da74ea6ceb1455b5` |
| 19 | `def` | [evalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/evalrat--2b9315cd2b4deea37209e0a8.md) | 120 | `declaration-track:2b9315cd2b4deea37209e0a81028fed720b5321a589255254d08388e8ba7a3a5` |
| 20 | `def` | [evalDyad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/evaldyad--1828a2a6b2f1af3a1289c075.md) | 124 | `declaration-track:1828a2a6b2f1af3a1289c075ae2936c1f63837ea3dc192cf942f1e55bf160e99` |
| 21 | `def` | [evalAffine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/evalaffine--8dbd97ad4fd232391525cf15.md) | 128 | `declaration-track:8dbd97ad4fd232391525cf15e30e9935db8565b6c15414eff3cec4dacd588fb3` |
| 22 | `structure` | [BenchResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/benchresult--e6b8dc237edfbda376131b00.md) | 133 | `declaration-track:e6b8dc237edfbda376131b00cf2df70faab70aa723bb8c772859b7be3887053c` |
| 23 | `def` | [runBenchmark](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/runbenchmark--0e3a936adb6b184ccd4b7266.md) | 144 | `declaration-track:0e3a936adb6b184ccd4b72662826c2dafd4f4985cbb82916fb8d0706dd53dbc3` |
| 24 | `structure` | [ThreeWayResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/threewayresult--96721a97b973153314e9a3c4.md) | 192 | `declaration-track:96721a97b973153314e9a3c4b9347f48cdaa995408b8e0a966bd3aff481b257c` |
| 25 | `def` | [runThreeWay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/runthreeway--f085f97302637887ab48d184.md) | 199 | `declaration-track:f085f97302637887ab48d184291ab94bb9d433367b428528b20f8cc3d6804026` |
| 26 | `theorem` | [xMinusX_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/xminusx-eval--81a433ddd8c65eddb28b03e0.md) | 218 | `result-track:81a433ddd8c65eddb28b03e04a3f03381af67643fc925424c027c6059209bfa2` |
| 27 | `theorem` | [xPlus1MinusX_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/xplus1minusx-eval--13f0bf4952c7ef7416d69de1.md) | 222 | `result-track:13f0bf4952c7ef7416d69de1e95e60d3d09585f0e84a5e9dff6366d930891187` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/example--c4960487b65673eabc916de4.md) | 226 | `declaration-track:c4960487b65673eabc916de45c28e07d83ae856819ffc0ed19e05b7709361bac` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/example--058dde67b56140c07a143795.md) | 227 | `declaration-track:058dde67b56140c07a1437958517bfa63ba1ed7467c490f907e4936afd546b84` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/example--80cebec3bb45ddb8581a240e.md) | 230 | `declaration-track:80cebec3bb45ddb8581a240e1e9865809a059f28fd116672168d18a48c8a90ee` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/example--546f3b3f82a3f81a3115e466.md) | 231 | `declaration-track:546f3b3f82a3f81a3115e466d54e813ab6df1d9a67285e2fd62fa1fdc1bad3e6` |
| 32 | `def` | [mkAffineEnv2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/mkaffineenv2--7faf21e6add196654e953e23.md) | 236 | `declaration-track:7faf21e6add196654e953e23a128e2805626f9a1b9df61c8d6c8698280ca1ddd` |
| 33 | `def` | [exprXPlusYMinusX](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprxplusyminusx--dc5b1b88a390bab08b9d91b8.md) | 239 | `declaration-track:dc5b1b88a390bab08b9d91b8524640edf15d19174801f7359af956de914df66c` |
| 34 | `def` | [evalAffine2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/evalaffine2--496e586734edd39e6cab7ce4.md) | 242 | `declaration-track:496e586734edd39e6cab7ce4e0aa7ca0f8704a2b91d9bd24113d1d8d4a3701f7` |
| 35 | `def` | [exprSimplifiedLayerNorm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprsimplifiedlayernorm--145c428ca19baa79ec91f624.md) | 258 | `declaration-track:145c428ca19baa79ec91f624d45e5cf3ff846427044d7c8ffbe7e7a738b3df58` |
| 36 | `def` | [exprSoftplus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/declarations/exprsoftplus--944f2b37516b301e362f75d5.md) | 268 | `declaration-track:944f2b37516b301e362f75d5f05d7bf50c10157de9869c1eaac44667235276f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
