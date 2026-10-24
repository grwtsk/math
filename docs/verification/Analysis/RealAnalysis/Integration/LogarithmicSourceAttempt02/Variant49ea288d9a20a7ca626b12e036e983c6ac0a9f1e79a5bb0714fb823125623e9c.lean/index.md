# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt02.Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17b155403fa1b07dcf5de615e6b3d36da7255833",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17b155403fa1b07dcf5de615e6b3d36da7255833`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/declarations/positiveloglift--92ab3d8252f80ceda2009f92.md) | 26 | `declaration-track:92ab3d8252f80ceda2009f924634796a7edd7ea098f47cd120bff6bac9fd8ebd` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/declarations/positiveloglift-exp--6ac2a4520c75951d0125303d.md) | 29 | `result-track:6ac2a4520c75951d0125303d91e3157051fa56dd8aaf93b84d6b283a1cb3b540` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/declarations/exp-square-weight--f86383754880880ac25e9d76.md) | 33 | `result-track:f86383754880880ac25e9d76eb657bc5813e5b3f91b3163e07f0af1e1723ba7a` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/declarations/lift-square-jacobian--889a8d7d711f38a46e159109.md) | 39 | `result-track:889a8d7d711f38a46e1591090b551edccdeb4c86cf5772ad66b87ef23940d0ed` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/declarations/lift-square-integrable-iff--db1ae81c601f457e7d1d7f36.md) | 46 | `result-track:db1ae81c601f457e7d1d7f367df04f656b5d6ce4eca0cc0c6e2ced42a27d1b73` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/declarations/lift-square-integral--5f8de8d548d8141a0f9f3ff7.md) | 57 | `result-track:5f8de8d548d8141a0f9f3ff7aefa5b03ba2afb48cbadc125e23d29d3379704b6` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/declarations/actuallogsource--01edcd683c87f3806273c111.md) | 68 | `declaration-track:01edcd683c87f3806273c1112541da73d62a5e15e7a08e4d4b04c211990e3a8e` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/declarations/actuallogsource-square-integrable--5aa2ef24b94a1450c993b809.md) | 71 | `result-track:5aa2ef24b94a1450c993b8094206a6999ad591cd964c71a225b7bfe632ca1271` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/declarations/actuallogsource-square-integral--898ada59684e389c42574f4a.md) | 75 | `result-track:898ada59684e389c42574f4a5803521798c5314a12d074f606eccb88317d5b9f` |
| 10 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant49ea288d9a20a7ca626b12e036e983c6ac0a9f1e79a5bb0714fb823125623e9c.lean/declarations/positiveloglift-dilation--5eadacb49e2dec27f197ef5d.md) | 80 | `result-track:5eadacb49e2dec27f197ef5d3e225c6459bbea3ed99183f5023b6105ba43e7b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
