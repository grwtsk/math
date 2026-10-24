# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt7.Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "437fa83e7f505e1b8c17bf316bf88b7709cc47fd",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `437fa83e7f505e1b8c17bf316bf88b7709cc47fd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaProfile` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.FrullaniIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dividedDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/divideddifference--7c261dc1ee5f70dbdf6283b1.md) | 21 | `declaration-track:7c261dc1ee5f70dbdf6283b1ff6f41447a0ce2aa9127ac03757487c354744dde` |
| 2 | `theorem` | [dividedDifference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/divideddifference-bound--97a14554271571b751f7a7ca.md) | 24 | `result-track:97a14554271571b751f7a7ca100a45bef4a0adaef17b391a5eb47a462539f887` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/divideddifference-integrable--9e654a1b932fbea31e2cdd82.md) | 44 | `result-track:9e654a1b932fbea31e2cdd82f5c6aed79fee2b83255772d0e7c54590a5ece75b` |
| 4 | `theorem` | [dividedDifference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/divideddifference-integral--c4e1f0fc6591e113644f457a.md) | 55 | `result-track:c4e1f0fc6591e113644f457adf7e86e3d7a116c09394df057348ca88f97cfee8` |
| 5 | `def` | [physicalRate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/physicalrate--7f6435d42ce205aab3821035.md) | 67 | `declaration-track:7f6435d42ce205aab382103551b7b87a681efb9f7a3ae6cef00c79f6ce50064c` |
| 6 | `def` | [compensatedTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedterm--30b6e3529c579083b3f6c578.md) | 69 | `declaration-track:30b6e3529c579083b3f6c57841eca5ac224ac168f5d36663999e9ae209ad7afe` |
| 7 | `theorem` | [physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/physicalrate-pos--93fd6a177e61432ef05d6446.md) | 72 | `result-track:93fd6a177e61432ef05d64468f5655a6d8e01c4fbfcb0e748894fadd9e6b4812` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/shifted-physicalrate-pos--d265ccc36fecd4276e7e689e.md) | 74 | `result-track:d265ccc36fecd4276e7e689ed8d38c84d9f292ebd0e1bd09d1c3b88ac39514fa` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedterm-nonneg--3a637adc38f1a0575e0ef3dd.md) | 79 | `result-track:3a637adc38f1a0575e0ef3dd17515621922af9f3651d7d5efb9714991c3dd160` |
| 10 | `theorem` | [compensatedTerm_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedterm-split--c700051d085683f28097016b.md) | 85 | `result-track:c700051d085683f28097016ba7eeabbc7c117a1fc5b344bd01e4d1f75b3645fe` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedterm-integrable--c32f80ab12bcdd7f7d02d83c.md) | 97 | `result-track:c32f80ab12bcdd7f7d02d83cd3e929eb0c1bfc3dae86bc63334dcf0923d2c419` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedterm-integral--9e900e71d99f5cbb221a46be.md) | 106 | `result-track:9e900e71d99f5cbb221a46be968d2106655a53237f953582dcddb92d2f6ff568` |
| 13 | `def` | [compensatedIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedintegrand--842c1eef1b05590bc6926c07.md) | 133 | `declaration-track:842c1eef1b05590bc6926c0750a0ed6607d5c9977fbc23d7d62c34b159d99221` |
| 14 | `theorem` | [exponential_kernel_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/exponential-kernel-hassum--1188557a6e0180e14775943a.md) | 136 | `result-track:1188557a6e0180e14775943a2019a11db23c09bb8c5c718ecd1e277f42cfa75f` |
| 15 | `theorem` | [compensatedTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedterm-hassum--a5fb74fb1306cd74e1555965.md) | 155 | `result-track:a5fb74fb1306cd74e15559655f88c6ce28c72a02dace209ba1c30ecf5c7b1685` |
| 16 | `theorem` | [compensatedIntegrand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedintegrand-nonneg--4997112364661fcb1ec3e25b.md) | 165 | `result-track:4997112364661fcb1ec3e25b69c2847f614ab7ba124b0f7eceacdad3f4ac8358` |
| 17 | `theorem` | [compensatedIntegrand_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedintegrand-continuouson--796f7ee42a728adaed3cf072.md) | 170 | `result-track:796f7ee42a728adaed3cf072beeeaf0564690bf88e7a765f8b6cf2e41a37060b` |
| 18 | `theorem` | [compensatedTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedterm-integral-norm--db4da582407fa6ce5460c5bf.md) | 178 | `result-track:db4da582407fa6ce5460c5bffdadf49fe7b6fee8cac7b9e01f08f717a095cda4` |
| 19 | `theorem` | [compensatedTerm_integral_norm_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedterm-integral-norm-summable--b549f997ff690e51f61a1adb.md) | 187 | `result-track:b549f997ff690e51f61a1adb5d850784038b8db44d588bb86d49f1ceccff0bcd` |
| 20 | `theorem` | [compensatedTerm_lintegral_enorm_tsum_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedterm-lintegral-enorm-tsum-lt-top--f1a69c052954f5193f333db7.md) | 196 | `result-track:f1a69c052954f5193f333db71418386e5fa089a1938b983dccdee65314e26a83` |
| 21 | `theorem` | [compensatedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedintegrand-integrable--a5d9c70a6651b85dfec9d833.md) | 210 | `result-track:a5d9c70a6651b85dfec9d833ec09e3999d8bfde5ac6528e9e0ae03a7c3b6448a` |
| 22 | `theorem` | [actualGamma_eq_compensatedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/actualgamma-eq-compensatedintegral--c4fc0e5bb6e69b547f15ecc6.md) | 224 | `result-track:c4fc0e5bb6e69b547f15ecc64edb7e6cb87f8631118267002fe0a4fd1cbdd19f` |
| 23 | `theorem` | [compensatedIntegrand_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/declarations/compensatedintegrand-zero--ff0a2036bcd11b07fde9b46e.md) | 238 | `result-track:ff0a2036bcd11b07fde9b46ecadd8f839f7f79d3778e239821d79577d664d5cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
