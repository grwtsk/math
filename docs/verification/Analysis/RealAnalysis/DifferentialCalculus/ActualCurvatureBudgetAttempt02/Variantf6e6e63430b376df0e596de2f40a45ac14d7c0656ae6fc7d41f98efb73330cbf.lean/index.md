# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCurvatureBudgetAttempt02.Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9be563938c38bc576512eda5f8b98c7abfa48b31",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9be563938c38bc576512eda5f8b98c7abfa48b31`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSecondAbel` — import line 6; external provider; requires a separately pinned dependency.
- `BridgeLipschitz` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/declarations/criticalprimetest-second-deriv--079c4a98bb5713d1076f577a.md) | 29 | `result-track:079c4a98bb5713d1076f577a4c703dae004b3adbb590c0b56cb1bb04b2ea9a18` |
| 2 | `theorem` | [criticalPrimeTest_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/declarations/criticalprimetest-deriv-zero-after--fc1e7338f94e54e0f6e67906.md) | 51 | `result-track:fc1e7338f94e54e0f6e67906557835df792e073962d480373bdd239b90976b09` |
| 3 | `theorem` | [criticalPrimeTest_second_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/declarations/criticalprimetest-second-deriv-zero-after--c5914f9f8d8a328d777b6cc7.md) | 59 | `result-track:c5914f9f8d8a328d777b6cc711702e1e0f777b728a6cea09bd0600671af59f9e` |
| 4 | `theorem` | [criticalPrimeTest_second_deriv_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/declarations/criticalprimetest-second-deriv-abs-le--3e3d3200c6c8ac8f1626a4b7.md) | 67 | `result-track:3e3d3200c6c8ac8f1626a4b74deb0789eba21698f0e5a8385bf39793fe6dcaba` |
| 5 | `theorem` | [criticalPrimeTest_deriv_lipschitz_explicit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/declarations/criticalprimetest-deriv-lipschitz-explicit--2411b16968adde73b0d0c3a9.md) | 97 | `result-track:2411b16968adde73b0d0c3a9194a9c7cabbae121e202f3afb1f55c80a55c2f9b` |
| 6 | `theorem` | [mass_ratio_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/declarations/mass-ratio-bounds--8e0f81fe81386b8f91864d4e.md) | 105 | `result-track:8e0f81fe81386b8f91864d4ec5f3d9c78bd78f0625bdc2a65b9cfe6cf69d9ca4` |
| 7 | `theorem` | [pairedTailCurvature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/declarations/pairedtailcurvature-abs-le--0eb9e6153fc8129f0b59d582.md) | 112 | `result-track:0eb9e6153fc8129f0b59d582b4f2af8ca08ae9ede9db1654f299f98e58f2875f` |
| 8 | `def` | [curvatureVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/declarations/curvaturevariation--aa3948ef2e2fbff2f0b4e7d2.md) | 138 | `declaration-track:aa3948ef2e2fbff2f0b4e7d22c482e472cfc7d764deee1775a2b47381d8d3209` |
| 9 | `theorem` | [curvatureVariation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/declarations/curvaturevariation-nonneg--474c8b7cb46764b7fa460a6c.md) | 140 | `result-track:474c8b7cb46764b7fa460a6c01e19632a2430391531b2395dcdde65e7442229e` |
| 10 | `theorem` | [curvatureVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt02/Variantf6e6e63430b376df0e596de2f40a45ac14d7c0656ae6fc7d41f98efb73330cbf.lean/declarations/curvaturevariation-le--db19c1fad5cf60d638debe40.md) | 143 | `result-track:db19c1fad5cf60d638debe40ffd9c6cd2db245c42706fb4a3a79f31297315ecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
