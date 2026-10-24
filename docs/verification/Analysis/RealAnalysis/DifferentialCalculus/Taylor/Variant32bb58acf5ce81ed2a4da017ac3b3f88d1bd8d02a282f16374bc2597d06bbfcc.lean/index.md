# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Taylor.Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f3fda733c56ec3b5b896cef4062ede4082eafa2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f3fda733c56ec3b5b896cef4062ede4082eafa2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Module.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [taylorCoeffWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylorcoeffwithin--29dfc7f747ec00c8483c5ffb.md) | 65 | `declaration-track:29dfc7f747ec00c8483c5ffba555a1ee9d18870be72bddbd3acc326366f9db61` |
| 2 | `def` | [taylorWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylorwithin--fa481899badd6e695ba8e97a.md) | 73 | `declaration-track:fa481899badd6e695ba8e97a579c2cc1d2e7eb43fbf951d035138f7c3effefb8` |
| 3 | `def` | [taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylorwithineval--2c2ce23b9050b5d14f2e3708.md) | 79 | `declaration-track:2c2ce23b9050b5d14f2e3708643f73a29168bd01055833dd4b1c35bf03498f13` |
| 4 | `theorem` | [taylorWithin_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylorwithin-succ--210d3fdc682162cb2247f4a1.md) | 82 | `result-track:210d3fdc682162cb2247f4a157287fbbdfd7739a953850f87930576257d48a4e` |
| 5 | `theorem` | [taylorWithinEval_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylorwithineval-succ--36ac9f69fe0cc4d0c3345e3b.md) | 90 | `result-track:36ac9f69fe0cc4d0c3345e3b9232c18c330dce76eaabf1a05653b49be4cae5b8` |
| 6 | `theorem` | [taylor_within_zero_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylor-within-zero-eval--19b3889007a054065a6aeada.md) | 103 | `result-track:19b3889007a054065a6aeadaf0e38f48c8003c5048ac36533fe1263754da1458` |
| 7 | `theorem` | [taylorWithinEval_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylorwithineval-self--9e07da09d8da057bab627e8e.md) | 112 | `result-track:9e07da09d8da057bab627e8e2a6a7ca1e77c56416094dd172850574534097acb` |
| 8 | `theorem` | [taylor_within_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylor-within-apply--f40cdcd9064b7d72add6da27.md) | 118 | `result-track:f40cdcd9064b7d72add6da27297c2cf6df91a6afa6a929a32eada73ef6422604` |
| 9 | `theorem` | [continuousOn_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/continuouson-taylorwithineval--d6f86478764da2319a23268e.md) | 129 | `result-track:d6f86478764da2319a23268e5ca94d7575791a456482ac278cb57893ec88e157` |
| 10 | `theorem` | [monomial_has_deriv_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/monomial-has-deriv-aux--4104dd1fe11fd1d32778c288.md) | 142 | `result-track:4104dd1fe11fd1d32778c28815f0cdfb59549072ea181ce909b84a997ce1d01e` |
| 11 | `theorem` | [hasDerivWithinAt_taylor_coeff_within](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/hasderivwithinat-taylor-coeff-within--25b3cc1a17988ca9d8bc44ec.md) | 149 | `result-track:25b3cc1a17988ca9d8bc44ecf004c1d5811905501dbba25c614bd5540c452120` |
| 12 | `theorem` | [hasDerivWithinAt_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/hasderivwithinat-taylorwithineval--cc30b0b7164b73c3d8e89061.md) | 175 | `result-track:cc30b0b7164b73c3d8e890615e37dd4ba56831e22866d14ff4858e92b4fe86cd` |
| 13 | `theorem` | [taylorWithinEval_hasDerivAt_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylorwithineval-hasderivat-ioo--5ab724532e2c62bd5b195dcc.md) | 204 | `result-track:5ab724532e2c62bd5b195dccd3bd5181329b233be2473a7d11e1ef1a3a9813ea` |
| 14 | `theorem` | [hasDerivWithinAt_taylorWithinEval_at_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/hasderivwithinat-taylorwithineval-at-icc--f75d087a3a1c0a1577f2e651.md) | 217 | `result-track:f75d087a3a1c0a1577f2e65115a09c594418c9f929ad2c774e8a4fd0febded4f` |
| 15 | `theorem` | [hasDerivAt_taylorWithinEval_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/hasderivat-taylorwithineval-succ--2a78d99917270f5df4ce53a4.md) | 226 | `result-track:2a78d99917270f5df4ce53a4e389f90286a309a0d2d78a36bb7281869f821ea5` |
| 16 | `theorem` | [taylor_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylor-islittleo--9d94e51fe86a2a0312c00a29.md) | 244 | `result-track:9d94e51fe86a2a0312c00a29d64fa65d5a4042c389220e97df45d136b54ef385` |
| 17 | `theorem` | [taylor_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylor-tendsto--3644046b5ee8f2400cc1823e.md) | 265 | `result-track:3644046b5ee8f2400cc1823e1b57ea704614bf69b4a23cd24314bf750e48485a` |
| 18 | `theorem` | [Real.taylor_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/real-taylor-tendsto--0e4a83f949185e59df84dab2.md) | 280 | `result-track:0e4a83f949185e59df84dab229c78de76249525037fc2392e79a232aa21ead9c` |
| 19 | `theorem` | [taylor_mean_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylor-mean-remainder--0869b898c7bf76a923d21a5a.md) | 298 | `result-track:0869b898c7bf76a923d21a5abff8f8a002e1d709908bb1267e8d5d976a169ad5` |
| 20 | `theorem` | [taylor_mean_remainder_lagrange](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylor-mean-remainder-lagrange--a05d131a168ddd304a171d9d.md) | 326 | `result-track:a05d131a168ddd304a171d9d133237e48753aa9d69df2bb5959eff8cf9df25d2` |
| 21 | `theorem` | [taylor_mean_remainder_cauchy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylor-mean-remainder-cauchy--1a263eca2f367fb2f0b4327c.md) | 355 | `result-track:1a263eca2f367fb2f0b4327c1e0a19a9444d0ebe0fbf3c539dc820856b72d4af` |
| 22 | `theorem` | [taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/taylor-mean-remainder-bound--638278a02a018645c658c999.md) | 375 | `result-track:638278a02a018645c658c999a9054a824ab6fc698aa331b9aebb3d41132a50fa` |
| 23 | `theorem` | [exists_taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/declarations/exists-taylor-mean-remainder-bound--c5689680f81d2c5cbefc76d1.md) | 416 | `result-track:c5689680f81d2c5cbefc76d15f58a6f4f2fbbd5b7031df29df71d5aff4d89b89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
