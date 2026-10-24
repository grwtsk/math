# Verification target: GRWTSK.Analysis.GramResidualGuardAttempt02.Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "459ffcc01c55134447a189e118bf2e977b39099c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `459ffcc01c55134447a189e118bf2e977b39099c`.

Source path: `GRWTSK/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/quadratic-difference-abs-le--d00de85c17b9d6caff95c776.md) | 18 | `result-track:d00de85c17b9d6caff95c77666430bf2079ed68aa9daeaa74f3e400136bd8adb` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/positive-approximation-lower--dcb3e1f0cdcac01bf6f0ed3c.md) | 31 | `result-track:dcb3e1f0cdcac01bf6f0ed3c2f64551c50c734acd04ab86b423d4355a8e97386` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/coercive-approximation-lower--5aef7bdf73d01b964dd71611.md) | 39 | `result-track:5aef7bdf73d01b964dd716118c3627a6d5a9e02742b900042fa02d3363f81739` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/positive-of-coercive-residual--e5f38ec1d4e6704a20e58174.md) | 47 | `result-track:e5f38ec1d4e6704a20e5817443a451b6725c1b626c67a57e31e4ca2b1c8f5439` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/positive-of-arbitrary-precision--0591080e4b4816c0ab6ae172.md) | 55 | `result-track:0591080e4b4816c0ab6ae17202b78502aec3de0fda7dbab59a4d0f50b7a8db84` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/gram-residual-lower--cf24ba603b5ba4604505a897.md) | 77 | `result-track:cf24ba603b5ba4604505a897b3aeb88acd19b3d25cefa5d68a3ba1df3392f998` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/positive-of-arbitrary-gram-precision--82b9d64df1e519b3e9db5475.md) | 86 | `result-track:82b9d64df1e519b3e9db5475680901e14cd127076e11486d4dd7eccf9655217d` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/positivedistance--df404de70e8fd31a687ff33a.md) | 96 | `declaration-track:df404de70e8fd31a687ff33ac593b329888695b4d7c5e8db9b03314d3230f8e1` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/negative-rayleigh-le-norm--a44ff5b0900cbf814c2cd6c1.md) | 99 | `result-track:a44ff5b0900cbf814c2cd6c1b92cfd0056f7f77c757c1542e8831d1cdcbe7a29` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/negative-rayleigh-distance-lower--71ee24fdcf220ceea6ba9e63.md) | 111 | `result-track:71ee24fdcf220ceea6ba9e63bacc0f61f43da135e457b785502a8ecf8850e432` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/positivedistance-eq-zero-iff--3ec43e90782cbf59e1b470bb.md) | 121 | `result-track:3ec43e90782cbf59e1b470bb41e7174ee4c589eb4e267896b944969797fe5854` |
| 12 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/matrixoperator--cc6f69eb37d02cf53d2465ba.md) | 142 | `declaration-track:cc6f69eb37d02cf53d2465ba9318f70820b529dd75cdc08d909f44e630bdcf3d` |
| 13 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/matrixoperator-positive-iff--ddd93e1ac482efceb9114106.md) | 145 | `result-track:ddd93e1ac482efceb911410656fbd82b60e7aa3b70f38ff4def25fb82e13e835` |
| 14 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--cceab1f7d82185a2038decbc.md) | 150 | `result-track:cceab1f7d82185a2038decbca484085c28bf976b423cd4ebe9b5f48ea25caac1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
