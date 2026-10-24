# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiJensenTrace.Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4935f02994a127edaf09098b0baacf523f1720a1",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4935f02994a127edaf09098b0baacf523f1720a1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiCoefficientLogConcavity` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiJensenPolynomial` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiHermiteQuadratic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarticCompanion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/quarticcompanion--ac6d175f2b0494c930bfca17.md) | 29 | `declaration-track:ac6d175f2b0494c930bfca1744e7a9fd7c7604540c4217187f690169677321d4` |
| 2 | `def` | [quarticHermite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/quartichermite--f87ba2a4aee3624d0fcc29df.md) | 33 | `declaration-track:f87ba2a4aee3624d0fcc29df49eb17bc8bd85b4a3ab35683b68af9272e1312b5` |
| 3 | `theorem` | [quarticHermite_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/quartichermite-eq--e596715ff980b8a79f424a30.md) | 37 | `result-track:e596715ff980b8a79f424a30f024aa9ce952923e75c1993979097ce2c1761062` |
| 4 | `theorem` | [quarticHermite_square](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/quartichermite-square--e46c8e4afd930c9ad7495eea.md) | 49 | `result-track:e46c8e4afd930c9ad7495eea46030fac2991c2878f0b1752b5562a4b671b69dd` |
| 5 | `theorem` | [quarticCompanion_charpoly](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/quarticcompanion-charpoly--a718824b23dc3d16e92785f4.md) | 60 | `result-track:a718824b23dc3d16e92785f4b2ab0a38ca7eb47cb18b043c9d1a637c847e8565` |
| 6 | `def` | [jensenTwoB](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwob--aa584f82c20cb6234ed39c3f.md) | 71 | `declaration-track:aa584f82c20cb6234ed39c3f53ae6effea27c8d710b6f56f60992debb83b6ff9` |
| 7 | `def` | [jensenTwoC](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwoc--71059fba84efcb14905a8d13.md) | 74 | `declaration-track:71059fba84efcb14905a8d1366e8af0a8d7162d0e3dbf0aa0812a28552dd694e` |
| 8 | `theorem` | [jensenTwoB_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwob-pos--b484864f283b741aebcaf4fe.md) | 77 | `result-track:b484864f283b741aebcaf4febbce4a3d10ee959219573cd1a66103c86e484f45` |
| 9 | `theorem` | [jensenTwoC_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwoc-pos--0510a3d4cc860b53561e519c.md) | 84 | `result-track:0510a3d4cc860b53561e519c25d0a220bc4f6012fd2b865d15218ed135da9aae` |
| 10 | `theorem` | [jensenTwo_discriminant_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwo-discriminant-pos--35fbc8066786b0b1b913464a.md) | 91 | `result-track:35fbc8066786b0b1b913464a5010c312afffae29be84627de608836d9c8d91ac` |
| 11 | `def` | [jensenTwoTrace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwotrace--607125449300ce68bb2c2d3b.md) | 102 | `declaration-track:607125449300ce68bb2c2d3b5cda6b7412404259befc1661b729da3cce95bebb` |
| 12 | `theorem` | [jensenTwoTrace_square_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwotrace-square-nonneg--c08d38f6dd6fac8c8b2f1922.md) | 106 | `result-track:c08d38f6dd6fac8c8b2f1922a95de8bf130b296691b22195270b6cc8e987d31e` |
| 13 | `theorem` | [jensenTwoTrace_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwotrace-possemidef--d2169fec57b4871e93d80b17.md) | 115 | `result-track:d2169fec57b4871e93d80b177579e0b5cd64c4647e030af2c796e2f69bef09f9` |
| 14 | `theorem` | [jensenTwoTrace_posDef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwotrace-posdef--4bdbc2e0c9039c193daef230.md) | 124 | `result-track:4bdbc2e0c9039c193daef2308323df997fba81cff20dab735aa20a205a076de4` |
| 15 | `theorem` | [jensenPolynomial_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensenpolynomial-two--19f85ba041fb17a8eb9508cd.md) | 163 | `result-track:19f85ba041fb17a8eb9508cd8fe244ebbd391913c812e776720cf264bcad9841` |
| 16 | `theorem` | [jensenTwo_charpoly_source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwo-charpoly-source--818160d883fc651dd3fd766a.md) | 172 | `result-track:818160d883fc651dd3fd766ac088c504b84274719ff2a4e25505fd664e13c611` |
| 17 | `theorem` | [jensenTwo_charpoly](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwo-charpoly--168979d3b654310dd58542ee.md) | 196 | `result-track:168979d3b654310dd58542eeba3f692762a38cb112cce01b6b3fe9ebbdce0cff` |
| 18 | `theorem` | [jensenTwo_source_decode](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwo-source-decode--ddc18a02ba9efa61b1ec13d8.md) | 202 | `result-track:ddc18a02ba9efa61b1ec13d82354a5536005b68e874a1f15d70fd9293163af3f` |
| 19 | `theorem` | [quarticHermite_mul_companion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/quartichermite-mul-companion--a1ecf77b3873338480fdfb84.md) | 210 | `result-track:a1ecf77b3873338480fdfb84526b23fbc058a9340932e6eab901496ff9ca151f` |
| 20 | `theorem` | [jensenTwo_trace_selfadjoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwo-trace-selfadjoint--4587eedde8f32bab466ecf16.md) | 220 | `result-track:4587eedde8f32bab466ecf166d111528c3af3ee4f4e61e991a55e39a628585a5` |
| 21 | `def` | [cubicCompanion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/cubiccompanion--dac2facae35a47f23a57c5a7.md) | 226 | `declaration-track:dac2facae35a47f23a57c5a7d888f647bb8d9229c971cedfd69ed03a8205b620` |
| 22 | `def` | [cubicHermite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/cubichermite--036aaa686de6c60fd3b3d9ff.md) | 231 | `declaration-track:036aaa686de6c60fd3b3d9ff02840fc30bbc99de5b2523c6923017fc9530ee7d` |
| 23 | `theorem` | [cubicHermite_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/cubichermite-eq--7532e0113f614b76f5d35f53.md) | 235 | `result-track:7532e0113f614b76f5d35f533a37241e0c306ca4c8eecf59edbd67f6ad9c6373` |
| 24 | `theorem` | [cubicHermite_det](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/cubichermite-det--4f88bdea24aa474ea7c28910.md) | 246 | `result-track:4f88bdea24aa474ea7c28910367d49cfcb9c2550ddaf6332190e2e789102d13b` |
| 25 | `def` | [jensenThreeTrace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensenthreetrace--7abc32d635c5b2a37e2b4dbf.md) | 254 | `declaration-track:7abc32d635c5b2a37e2b4dbfc7bbba104068bb4eff2c9408cd2f1d73a8dc9471` |
| 26 | `theorem` | [jensenThreeTrace_det](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensenthreetrace-det--aa8d8ed980c5aa64be2598b0.md) | 259 | `result-track:aa8d8ed980c5aa64be2598b00f30943d721c1f063fafd6a980521411a7c5441a` |
| 27 | `theorem` | [geometric_cubic_trace_det_negative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/geometric-cubic-trace-det-negative--fa8cc6de9647c4917b210d96.md) | 272 | `result-track:fa8cc6de9647c4917b210d96ea0dc4b85dbc07ae91f0834ff532845b797b6bb0` |
| 28 | `theorem` | [cubicCompanion_charpoly](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/cubiccompanion-charpoly--9e360fb5891a810293264eee.md) | 278 | `result-track:9e360fb5891a810293264eee3f2de5fdf851b0ef8e695f9dbb7d32f8d322be10` |
| 29 | `theorem` | [jensenThree_source_decode](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensenthree-source-decode--dfb0948c7dc225fbdb530454.md) | 284 | `result-track:dfb0948c7dc225fbdb530454985b166f80188ee1e501075f593d13b4dc566ab1` |
| 30 | `theorem` | [jensenTwo_zero_im_eq_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/declarations/jensentwo-zero-im-eq-zero--0d541ea9ece9b1a74d7f316e.md) | 300 | `result-track:0d541ea9ece9b1a74d7f316e9a5c5cdbf0d85a8507dc552da99e1d3db80db26a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
