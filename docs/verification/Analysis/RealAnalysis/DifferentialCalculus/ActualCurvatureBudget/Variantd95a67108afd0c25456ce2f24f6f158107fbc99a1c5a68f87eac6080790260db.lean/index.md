# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCurvatureBudget.Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8562c776beaae36c5adc68278b0fca65403e5d38",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8562c776beaae36c5adc68278b0fca65403e5d38`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSecondAbel` — import line 1; external provider; requires a separately pinned dependency.
- `BridgeLipschitz` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/declarations/criticalprimetest-second-deriv--db122937b1ba6f51ad96d21e.md) | 21 | `result-track:db122937b1ba6f51ad96d21eb3f444d0e83f5f7ef5f0c6c7b9cd59fd2d31ecd5` |
| 2 | `theorem` | [criticalPrimeTest_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/declarations/criticalprimetest-deriv-zero-after--e2c2670b05ceb32723b38d2a.md) | 43 | `result-track:e2c2670b05ceb32723b38d2a2f018c61fa6b0400ef79a320836130a2b856b650` |
| 3 | `theorem` | [criticalPrimeTest_second_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/declarations/criticalprimetest-second-deriv-zero-after--5d5d1f43b2eacfff1d3510e0.md) | 51 | `result-track:5d5d1f43b2eacfff1d3510e0f450903dd4e114ebee6965377d4e7a018fe4185d` |
| 4 | `theorem` | [criticalPrimeTest_second_deriv_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/declarations/criticalprimetest-second-deriv-abs-le--f4739b3c38ecbb31250667e1.md) | 59 | `result-track:f4739b3c38ecbb31250667e1a29a0bd8f788de416d1ab27cb38d4bfdccc62ae4` |
| 5 | `theorem` | [criticalPrimeTest_deriv_lipschitz_explicit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/declarations/criticalprimetest-deriv-lipschitz-explicit--b730cef03469c9032ff86bda.md) | 89 | `result-track:b730cef03469c9032ff86bdaf02f33600842c49efc4f4908a818d02ef8f5032a` |
| 6 | `theorem` | [mass_ratio_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/declarations/mass-ratio-bounds--af64af4b9872b556ced9e45a.md) | 97 | `result-track:af64af4b9872b556ced9e45a9ae4a2cf5d6f84a61c5d079ebccd857c5d5a526f` |
| 7 | `theorem` | [pairedTailCurvature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/declarations/pairedtailcurvature-abs-le--d544cc92a4b81e49160861dd.md) | 104 | `result-track:d544cc92a4b81e49160861dd3262b27dfea7c4c3218f58a7c39c4f326fc4a80c` |
| 8 | `def` | [curvatureVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/declarations/curvaturevariation--49b748b9ad74b936065ec2b2.md) | 130 | `declaration-track:49b748b9ad74b936065ec2b29de8804ea7a9111881e6e657b200d02e0379c3b1` |
| 9 | `theorem` | [curvatureVariation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/declarations/curvaturevariation-nonneg--21e0627fd68946e342426b3a.md) | 132 | `result-track:21e0627fd68946e342426b3a7dbe182a29cd4252d199f4319e0b801df66cce6f` |
| 10 | `theorem` | [curvatureVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/declarations/curvaturevariation-le--6a5892d5966244f6cad557d5.md) | 135 | `result-track:6a5892d5966244f6cad557d5357ac84e291f52976a1531f1386e269cd99804df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
