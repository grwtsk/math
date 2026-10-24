# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CenteredAbel.Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a54bb0cea427c5004c5a044593ff393f2572576",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a54bb0cea427c5004c5a044593ff393f2572576`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.AbelSummation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fracPlus](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/fracplus--d381be60cf17353744bb0e37.md) | 26 | `declaration-track:d381be60cf17353744bb0e37898e51500de075d903b2151b72773514cf2365ae` |
| 2 | `theorem` | [fracPlus_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/fracplus-bounds--42739bf1a5be77050bbbfa58.md) | 28 | `result-track:42739bf1a5be77050bbbfa5867f149c06ce25e3a05314bbea261d0c2b41b6c3f` |
| 3 | `theorem` | [fracPlus_eq_fract](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/fracplus-eq-fract--d2e1da12623c5c602f82e321.md) | 35 | `result-track:d2e1da12623c5c602f82e321a7b28e1aa40e48502790ad6ad7cd21359048a763` |
| 4 | `theorem` | [fracPlus_centered_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/fracplus-centered-abs-le--dcaa9c9f5d6b568c5cbbb2d8.md) | 38 | `result-track:dcaa9c9f5d6b568c5cbbb2d80dea0dae31ef99f61ba482550a47affa0f91499d` |
| 5 | `theorem` | [fracPlus_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/fracplus-measurable--8594849f02c10b9c782078d8.md) | 43 | `result-track:8594849f02c10b9c782078d8553effbd6848957b02075c4b8cac1b3b2aa68bae` |
| 6 | `def` | [unitCoeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/unitcoeff--b3652acf9f49a2c41aeb07f2.md) | 47 | `declaration-track:b3652acf9f49a2c41aeb07f266cb9a7c0e6e8ffbebf398dba005fdb052cb7b69` |
| 7 | `theorem` | [unitCoeff_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/unitcoeff-sum--03bb3d4c919fdb67bfc6efac.md) | 49 | `result-track:03bb3d4c919fdb67bfc6efac55e628917b1b9cad023539c0e5242d75b33f2d39` |
| 8 | `theorem` | [unitCoeff_weighted_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/unitcoeff-weighted-sum--f7ce89257367046f1776d686.md) | 57 | `result-track:f7ce89257367046f1776d686e3f335e1d4ebcd873736757088a91344dde7bddf` |
| 9 | `theorem` | [fracPlus_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/fracplus-deriv-intervalintegrable--d1e7ff663bb9d3069f1697f1.md) | 80 | `result-track:d1e7ff663bb9d3069f1697f1fea8d70fab604d130437bbbb564be843df9a8431` |
| 10 | `theorem` | [centered_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/centered-deriv-intervalintegrable--d98a482206752405c26c4ff8.md) | 93 | `result-track:d98a482206752405c26c4ff826f8cba191ecf6e9d5ae52a3d0490059a042f2f8` |
| 11 | `theorem` | [sum_eq_integral_add_frac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/sum-eq-integral-add-frac--090e698d6a23eff6d8eef38b.md) | 100 | `result-track:090e698d6a23eff6d8eef38b6b891d22aacfd4d347a4bd3aca19c84e2bad058d` |
| 12 | `theorem` | [sum_eq_integral_add_centered](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/sum-eq-integral-add-centered--53f00fbc481710785bb5fef3.md) | 141 | `result-track:53f00fbc481710785bb5fef3337685913aaf953d13bf2a5dbaf77564eacc22ad` |
| 13 | `theorem` | [centered_eq_uncentered_of_endpoints_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/declarations/centered-eq-uncentered-of-endpoints-zero--f263c63d80944f9efff474eb.md) | 159 | `result-track:f263c63d80944f9efff474eb4bb5b0ae7b32c14d1064275717d84052459809df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
