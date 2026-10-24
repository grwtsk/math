# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.GeneralizedPoleBoundary.Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ac0d5edba5089dfe7283500f0a6ac4722023189",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ac0d5edba5089dfe7283500f0a6ac4722023189`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveHalfMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/positivehalfmoment--cead848c52eb63ddfb2f5f45.md) | 32 | `declaration-track:cead848c52eb63ddfb2f5f45da4750185296cc9db2ba65a145f438fc32acfacc` |
| 2 | `def` | [negativeHalfMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/negativehalfmoment--464ed919e531f85aced07f25.md) | 36 | `declaration-track:464ed919e531f85aced07f25ef753e4ccb921576fca49cf554bcf1a227b5924a` |
| 3 | `def` | [decayingFirstWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/decayingfirstweight--238f0f1f5830b9cd3bfa8a83.md) | 40 | `declaration-track:238f0f1f5830b9cd3bfa8a83e755e96cb6dc7f0dcf8ac077fe19a7c933d9f95c` |
| 4 | `theorem` | [inverse_square_coefficient_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/inverse-square-coefficient-tendsto-zero--f1c914720bb7b0760f82ab0f.md) | 42 | `result-track:f1c914720bb7b0760f82ab0f85046eb34d84995e9d02a3f2de4d378eb793dbac` |
| 5 | `theorem` | [inverse_fourth_coefficient_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/inverse-fourth-coefficient-tendsto-zero--eb75bfe7a0d9fe62fcdf38fc.md) | 48 | `result-track:eb75bfe7a0d9fe62fcdf38fc1f745a02a922730c3d99046260fa8d1d050f0559` |
| 6 | `theorem` | [source_correlation_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/source-correlation-fixed-tendsto--e54380b371844a4a27767bb2.md) | 54 | `result-track:e54380b371844a4a27767bb2763229622584219fe682eac41980af8a0379c3ce` |
| 7 | `theorem` | [decaying_first_weight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/decaying-first-weight-nonneg--5ffa73121c6911207badbaf5.md) | 82 | `result-track:5ffa73121c6911207badbaf5c723db71dd7de1479074c24e815aba49f580c78a` |
| 8 | `theorem` | [decaying_first_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/decaying-first-weight-integrable--b1c3ed4a650f15b09769ad9c.md) | 90 | `result-track:b1c3ed4a650f15b09769ad9c67d8b9197bf32db6fc97b6548c5ab7852901c727` |
| 9 | `theorem` | [decaying_first_weight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/decaying-first-weight-integral--d3a4cb543f0d304ec815be4e.md) | 102 | `result-track:d3a4cb543f0d304ec815be4e8b0a40195e9e2e9ef890ecdc1c3eabe54548a199` |
| 10 | `theorem` | [negative_half_moment_eq_weighted_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/negative-half-moment-eq-weighted-integral--a23940026dbdf2d636c28d86.md) | 118 | `result-track:a23940026dbdf2d636c28d86dd0ed4117fd95a3a85a2ae63c8808aac0e855f3e` |
| 11 | `theorem` | [negative_half_moment_tendsto_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/negative-half-moment-tendsto-four--799bc558166eaf0b133da984.md) | 143 | `result-track:799bc558166eaf0b133da984c8d7b8a368f07dcb1c53120f28bbbb7498b32e07` |
| 12 | `theorem` | [positive_half_moment_eq_negative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/positive-half-moment-eq-negative--6b089eeff979d15aad20a32e.md) | 170 | `result-track:6b089eeff979d15aad20a32ece4ec5ccc83e06e4460b98318f41ff03840c6584` |
| 13 | `theorem` | [positive_half_moment_tendsto_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/positive-half-moment-tendsto-four--c52e59943de34a473f988127.md) | 178 | `result-track:c52e59943de34a473f98812739c8abb8fea57e06a58c4d111a8ddf4387b9ad02` |
| 14 | `theorem` | [positive_half_moment_eventually_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/positive-half-moment-eventually-pos--7a225d170b1b07d980ed6e7f.md) | 184 | `result-track:7a225d170b1b07d980ed6e7f1fc4d26566fee11c02b0421a086d8c0d12c8ad0b` |
| 15 | `theorem` | [not_all_positive_half_moments_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/declarations/not-all-positive-half-moments-zero--d03fe931946c72fe2dc76a3c.md) | 192 | `result-track:d03fe931946c72fe2dc76a3c86d7c473e5204e0f38a3b00aa93e20b1803f7e68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
