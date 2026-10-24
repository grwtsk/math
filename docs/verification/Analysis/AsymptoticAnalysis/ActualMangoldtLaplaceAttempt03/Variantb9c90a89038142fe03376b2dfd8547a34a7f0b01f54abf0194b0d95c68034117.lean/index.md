# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMangoldtLaplaceAttempt03.Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6ff37a2c7471c41ef93fda798558780153af926",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6ff37a2c7471c41ef93fda798558780153af926`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/mangoldtweight--a0db3dcb11d0e738109814d1.md) | 27 | `declaration-track:a0db3dcb11d0e738109814d1bc142a6284ec76982b8586b7148e2667bd6f7679` |
| 2 | `def` | [laplaceAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/laplaceatom--4e30dabd9d8a31e9dd4ee70d.md) | 30 | `declaration-track:4e30dabd9d8a31e9dd4ee70d8e52344a5afeeafa0d7ba5cdb9fadcb9179218cc` |
| 3 | `theorem` | [onset_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/onset-pos--39d7938ea744b3fde69746ff.md) | 34 | `result-track:39d7938ea744b3fde69746ff94453e07d4b5a7ee4688de4e4032c6a8ea4c7d57` |
| 4 | `theorem` | [weight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/weight-nonneg--91bb993b68df8388233bc831.md) | 37 | `result-track:91bb993b68df8388233bc8317206899bc3cb9e1c8416e6a06d992b1ab7c1d05a` |
| 5 | `theorem` | [atom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/atom-nonneg--46d69d6414856b4bec3507ff.md) | 41 | `result-track:46d69d6414856b4bec3507ff38fe87ff384d93ca7d84c0ed952ed15452ba2085` |
| 6 | `theorem` | [atom_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/atom-measurable--dbc16f5d15fc56f7673d6b63.md) | 44 | `result-track:dbc16f5d15fc56f7673d6b63848cb6ad57ec087c242fa11255454e0472d0f959` |
| 7 | `theorem` | [atom_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/atom-integrable--e0e30950c7e4c076cd16d8e7.md) | 50 | `result-track:e0e30950c7e4c076cd16d8e7cc5ce7976e59ed16371032a9bac6f8df32b2bfe5` |
| 8 | `theorem` | [atom_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/atom-integral--776192204f18b4f762cabd1c.md) | 57 | `result-track:776192204f18b4f762cabd1c2020e4c1a91c04c47c1d79d0ff20f6da2e005b02` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/weighted-exp-eq-norm-term--ab318df0fbe7f56dd9c5b58c.md) | 65 | `result-track:ab318df0fbe7f56dd9c5b58cb8ce93401171574554330c165e70c1f4fd7a8e2c` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/atom-norm-integrals-summable--2a88f328059b83602f0e1dc5.md) | 78 | `result-track:2a88f328059b83602f0e1dc57f2e8fc7f92f66ba4b18440e52f00203f32de492` |
| 11 | `theorem` | [onset_closed_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/onset-closed-iff--1d7861327b3f3e000c550b6b.md) | 91 | `result-track:1d7861327b3f3e000c550b6b35eee2c8994ce5e6bd43378441e010c371df12dc` |
| 12 | `theorem` | [atom_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/atom-zero-outside--2735211dc536008e075d500a.md) | 96 | `result-track:2735211dc536008e075d500a6242d9b4edf4cc6e71df6bbaaec3195f38b33c02` |
| 13 | `theorem` | [atoms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/atoms-summable--308f30136e02dbdba90b910f.md) | 105 | `result-track:308f30136e02dbdba90b910fa7a6babc1652a2bbabda5f5c47aed10859ab65cc` |
| 14 | `theorem` | [atoms_tsum_eq_actual](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt03/Variantb9c90a89038142fe03376b2dfd8547a34a7f0b01f54abf0194b0d95c68034117.lean/declarations/atoms-tsum-eq-actual--c94e8892df30937aa01c544d.md) | 108 | `result-track:c94e8892df30937aa01c544df8e9138a2c488328807727c65e8f04c361b7549e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
