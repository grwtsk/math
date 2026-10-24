# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt04.Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd1e3295d9f09a987a9da1ad29748f14a6d7dbfc",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd1e3295d9f09a987a9da1ad29748f14a6d7dbfc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/positiveloglift--069f7141ccf1542622918cb1.md) | 18 | `declaration-track:069f7141ccf1542622918cb1db5c1953862bb2817bd1eb47ebe810ccfbf6c894` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/positiveloglift-exp--9e2e18b644738cbbf4dd87d5.md) | 21 | `result-track:9e2e18b644738cbbf4dd87d50e7c0802d7dd15150602a1b0d064136efdd036bf` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/exp-square-weight--fab2169c774953f37c50dad8.md) | 25 | `result-track:fab2169c774953f37c50dad85c2af1863a5d7f3c68aa3e6b26d57eba96380b22` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/lift-square-jacobian--6f6ec2c38094e0d769bf31b5.md) | 31 | `result-track:6f6ec2c38094e0d769bf31b56a9aac88e89099e3e31a1b2a8cec3ddb3ccc5a12` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/lift-square-integrable-iff--ef0ec87728ce846d0437a316.md) | 38 | `result-track:ef0ec87728ce846d0437a316d1b814ad704fde2f9c3199fc0782c2d86ddd5d5b` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/lift-square-integral--a69bc7bb2fbb1bd65cc29a89.md) | 49 | `result-track:a69bc7bb2fbb1bd65cc29a89bb2fb231729ed00de0bacf679a22a201fa6c4b78` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/actuallogsource--a9bdf3beefa2c3b3113b877b.md) | 60 | `declaration-track:a9bdf3beefa2c3b3113b877baffa20b717be1ef97322b2d4db8ea9850e987bf5` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/actuallogsource-square-integrable--52baa70818bd29541033692d.md) | 63 | `result-track:52baa70818bd29541033692dadff79d56927258b5b6e075855944e1fc5d4c353` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/actuallogsource-square-integral--fba6e25d376bf414be6cdee5.md) | 67 | `result-track:fba6e25d376bf414be6cdee5c6fcacfe84978bf10a3c18788298a6562317390b` |
| 10 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/positiveloglift-dilation--999c31ee7ee5a45a295467a3.md) | 72 | `result-track:999c31ee7ee5a45a295467a3945a93dbecf135b790a5f27c6e99c60157f8dc3d` |
| 11 | `theorem` | [lift_mellin_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/lift-mellin-jacobian--503bed8d1ad2505b188cfc38.md) | 81 | `result-track:503bed8d1ad2505b188cfc38205c43ebd744e26718e06fd390750cf743d16900` |
| 12 | `theorem` | [lift_mellin_eq_bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/lift-mellin-eq-bilateral--9e9a10246309d40fe53558fa.md) | 95 | `result-track:9e9a10246309d40fe53558fafbd10b2d67ed2448c5df8a3fdbae52257a7ef47c` |
| 13 | `theorem` | [lift_mellin_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/lift-mellin-integrable-iff--4fd830c7cab1f921189c1836.md) | 107 | `result-track:4fd830c7cab1f921189c1836777463e9afd7f7d8076c89b1064b5893e9f3606f` |
| 14 | `theorem` | [actualLogSource_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/actuallogsource-mellin-integrable--dddf10e6139b4f78a2f8cc77.md) | 118 | `result-track:dddf10e6139b4f78a2f8cc777592d3314ac2018d6fe8b13a855d484f9dbd1062` |
| 15 | `theorem` | [actualLogSource_mellin_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant499fc9029b3c242676ea3fa976a0f5ec17bb505d6ee8a928aba14daad2321764.lean/declarations/actuallogsource-mellin-critical--2975ad5f6377da3957b0deae.md) | 127 | `result-track:2975ad5f6377da3957b0deaec569fabe728e42e4b32d6b23b0c56b2dd59083e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
