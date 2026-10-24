# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PrimeThetaFeatureNormBudgetControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbc68eaadbf6072b3584c2c5ea69ef7d420bb078",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbc68eaadbf6072b3584c2c5ea69ef7d420bb078`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaFeatureNorm`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positivePolarity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/positivepolarity--53e8f0e66846fcd284feff93.md) | 16 | `declaration-track:53e8f0e66846fcd284feff93c67d152022b340b2b505cd77077554b3e9c85e27` |
| 2 | `theorem` | [concrete_three_clause_feature_norm_criterion](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/concrete-three-clause-feature-norm-criterion--a4a3df567b11f13327e650f4.md) | 20 | `result-track:a4a3df567b11f13327e650f4a93a7d801d3846e1e12c8e71be37af28b872c0b5` |
| 3 | `theorem` | [concrete_two_clause_feature_norm_criterion](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/concrete-two-clause-feature-norm-criterion--a9291079504cabd323977597.md) | 27 | `result-track:a9291079504cabd3239775974d0a73781b61bb67fa48dba317de5960f32f9e6c` |
| 4 | `theorem` | [arbitrary_prime_kernel_has_pair_basis](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/arbitrary-prime-kernel-has-pair-basis--7403de8e98008ee219ada9ef.md) | 36 | `result-track:7403de8e98008ee219ada9ef02ea23d0297c9aa4f2b6d9f39dc3a27590e21a69` |
| 5 | `theorem` | [pair_basis_does_not_improve_kernel_mass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/pair-basis-does-not-improve-kernel-mass--985439864e687402cdb4a4d3.md) | 46 | `result-track:985439864e687402cdb4a4d32291d14043d78d63c2feb1767f8eb34ab4aa5f97` |
| 6 | `def` | [constantOneFeatureStage](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/constantonefeaturestage--4ee9f4231072007bcd97b2e3.md) | 55 | `declaration-track:4ee9f4231072007bcd97b2e3574f357d5793d7f6d7b489673751770b7f760d41` |
| 7 | `theorem` | [constantOneFeatureStage_leftFeature](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/constantonefeaturestage-leftfeature--c71b63ae731eb6b54034918c.md) | 69 | `result-track:c71b63ae731eb6b54034918cefe30f752a2797d1c88b400f6cca43fc013a7ef0` |
| 8 | `theorem` | [constantOneFeatureStage_rightFeature](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/constantonefeaturestage-rightfeature--7a64595ed724325cafefacb0.md) | 76 | `result-track:7a64595ed724325cafefacb0fa0fdecc2212faedca54242f3d214c57ff433c92` |
| 9 | `theorem` | [constantOneFeatureStage_leftL1](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/constantonefeaturestage-leftl1--053b288217967b8679f4277e.md) | 85 | `result-track:053b288217967b8679f4277e3bd9b754831e79b6fe786f2f4826ed2f3c3f9a02` |
| 10 | `theorem` | [constantOneFeatureStage_rightL1](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/constantonefeaturestage-rightl1--4ebf9f5509462a924a0c4d43.md) | 94 | `result-track:4ebf9f5509462a924a0c4d434e4613456012b899b851416e10ab3c021d4127eb` |
| 11 | `theorem` | [constantOneFeatureStage_factorMass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/constantonefeaturestage-factormass--2046f6fbdbc4841cb540894e.md) | 104 | `result-track:2046f6fbdbc4841cb540894ea4815d6f2286aa3b8e5176118d588f13df217971` |
| 12 | `def` | [requiredSourceObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/requiredsourceobligations--9bf976f71ad2f419f44c7929.md) | 117 | `declaration-track:9bf976f71ad2f419f44c79290a0379c32bf0bfd3dcfa19acab18bb256d59e5f6` |
| 13 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/declarations/prohibitedpromotions--94ec32e2f324b7f012204a3b.md) | 126 | `declaration-track:94ec32e2f324b7f012204a3bcaabb23fae019c4f44f5ea70215719a726d46ec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
