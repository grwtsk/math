# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalEvalReal.Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2ed4b2f53c2bd84851c3d47a5227de5dc022020",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2ed4b2f53c2bd84851c3d47a5227de5dc022020`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRealEndpoints` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExprSupportedExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/exprsupportedext--a0fe16b931a29a3fdbcc5cb5.md) | 50 | `declaration-track:a0fe16b931a29a3fdbcc5cb58af985f397fa62395d1da46035a821effe658998` |
| 2 | `theorem` | [ExprSupported.toExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/exprsupported-toext--42b61b9e09409ad3cfd07fa6.md) | 68 | `result-track:42b61b9e09409ad3cfd07fa6a9fdde9753700a7dfd71e884de5d7d7e626167ce` |
| 3 | `abbrev` | [IntervalRealEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/intervalrealenv--7aab42d5b4c7b66a9146fb8d.md) | 82 | `declaration-track:7aab42d5b4c7b66a9146fb8dd5801b4bc4d165e070009d424fe2baa19e11ef1e` |
| 4 | `def` | [evalIntervalReal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/evalintervalreal--560753d06ad441441cc9fe34.md) | 92 | `declaration-track:560753d06ad441441cc9fe3463b4610338efb44934445a4b3e56a3df17fc2e85` |
| 5 | `def` | [envMemReal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/envmemreal--a20df1463f2423996d428d28.md) | 116 | `declaration-track:a20df1463f2423996d428d28948232737a39cda342a9219da7322ca0dd518522` |
| 6 | `theorem` | [IntervalReal.mem_singleton'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/intervalreal-mem-singleton--42b921839cc5cd8adc95acf5.md) | 122 | `result-track:42b921839cc5cd8adc95acf5757ace86d542ab19e2d4204b2c729f445b4062b7` |
| 7 | `theorem` | [IntervalReal.mem_singleton_rat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/intervalreal-mem-singleton-rat--b5e5c7f5c0c13fa5b95d9148.md) | 127 | `result-track:b5e5c7f5c0c13fa5b95d9148a252686739a1d1b56c5f5afe156ddf941112baa7` |
| 8 | `theorem` | [mul_mem_endpoints_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/mul-mem-endpoints-left--929924383a5d3dab3dd468e3.md) | 132 | `result-track:929924383a5d3dab3dd468e319e6265ed6ef963b7a451e461d3fc266ea26e2a6` |
| 9 | `theorem` | [mul_mem_endpoints_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/mul-mem-endpoints-right--63aea7402868e26c90dbe6f7.md) | 149 | `result-track:63aea7402868e26c90dbe6f702bff94ee93b201d52fbe80eedb3f21cb085e881` |
| 10 | `theorem` | [mul_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/mul-lower-bound--400fe92e66aad6ce5f2dc90d.md) | 166 | `result-track:400fe92e66aad6ce5f2dc90df1402bc729830946e349d55ec170b94de57f0af0` |
| 11 | `theorem` | [mul_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/mul-upper-bound--70195e68b0d3ad353e9c26dd.md) | 185 | `result-track:70195e68b0d3ad353e9c26ddf59fea04242c479b5737c9504d62cc7df5dab417` |
| 12 | `theorem` | [IntervalReal.mem_mul'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/intervalreal-mem-mul--a8a863be15f2552f9e0b870b.md) | 204 | `result-track:a8a863be15f2552f9e0b870b5e647c8d417c64b741596790751fb716f37c8841` |
| 13 | `theorem` | [evalIntervalReal_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/evalintervalreal-correct--36f04babca2cfdf84cbcf15e.md) | 218 | `result-track:36f04babca2cfdf84cbcf15e59dd70cf092ee86b03c1372ddfc34ea3da554526` |
| 14 | `def` | [evalIntervalReal1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/evalintervalreal1--cf3317be70ee0df6db72683d.md) | 265 | `declaration-track:cf3317be70ee0df6db72683dfcd42e7827c0416600f0340c5b4e44052ea77654` |
| 15 | `theorem` | [evalIntervalReal1_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/evalintervalreal1-correct--5950c11e5856c74ba61f7974.md) | 269 | `result-track:5950c11e5856c74ba61f79749f586af8b13de03f9753645b594237ececb14296` |
| 16 | `def` | [toIntervalRealEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/tointervalrealenv--13123d02865398fd8b43f2a3.md) | 277 | `declaration-track:13123d02865398fd8b43f2a380ff9bbdcd159d3dde60011eaf4229f72196b8b3` |
| 17 | `theorem` | [mem_toIntervalRealEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/mem-tointervalrealenv--46a0f5dc0e0967c33a88c81e.md) | 281 | `result-track:46a0f5dc0e0967c33a88c81e312974cee0ce14064481adfea07604ec2bf62fa2` |
| 18 | `theorem` | [exprExt_le_of_interval_hi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/exprext-le-of-interval-hi--064fc186921ca7ed146abeae.md) | 289 | `result-track:064fc186921ca7ed146abeaec2e11e339a2df2a89aab3bb8a9cd765e4bf44dd3` |
| 19 | `theorem` | [exprExt_ge_of_interval_lo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/exprext-ge-of-interval-lo--f5e2cfc0f67cce80ba5731fe.md) | 299 | `result-track:f5e2cfc0f67cce80ba5731fe1d42e646d494c417334b85f7e7c13ec848d445fe` |
| 20 | `theorem` | [exprExt_lt_of_interval_hi_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/exprext-lt-of-interval-hi-lt--6df8775c920b8e40aa38f34d.md) | 309 | `result-track:6df8775c920b8e40aa38f34db9ec05cc8dfb75d546e8c78fc6ad3f24b3e6b7c4` |
| 21 | `theorem` | [exprExt_gt_of_interval_lo_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/exprext-gt-of-interval-lo-gt--574f3512ca537aa7f27f61bd.md) | 319 | `result-track:574f3512ca537aa7f27f61bda96f814bb650f5b51707471b10f1a90fdefbbe48` |
| 22 | `theorem` | [exprExt_le_of_mem_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/exprext-le-of-mem-interval--58206eba62cf946758180479.md) | 328 | `result-track:58206eba62cf946758180479e08f5d55022c3a002b693eb0bcde52e98abc9baf` |
| 23 | `theorem` | [exprExt_ge_of_mem_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/declarations/exprext-ge-of-mem-interval--30b3bdfcddb3cb94abe6a03e.md) | 335 | `result-track:30b3bdfcddb3cb94abe6a03eef42702cf90d3fc1a25bde907364a722903ae5e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
