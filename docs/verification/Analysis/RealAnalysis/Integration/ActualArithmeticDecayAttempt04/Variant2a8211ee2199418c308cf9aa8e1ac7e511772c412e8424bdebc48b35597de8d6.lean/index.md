# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualArithmeticDecayAttempt04.Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f6ebbfbff5dcf6b73d5e4bf50dff21654259add",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f6ebbfbff5dcf6b73d5e4bf50dff21654259add`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MangoldtLaplaceIntegrability` — import line 1; external provider; requires a separately pinned dependency.
- `ActualPrimeIntercept` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RawMangoldtDecay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/rawmangoldtdecay--eb90f1ec9e01b741b67d8d65.md) | 19 | `declaration-track:eb90f1ec9e01b741b67d8d65c8c193eb783252b534f5664ce2454553f2a26fe7` |
| 2 | `def` | [RawPrimeDecay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/rawprimedecay--b8268e9c041aa4c9c08b4c37.md) | 23 | `declaration-track:b8268e9c041aa4c9c08b4c37c1ecb88c0cb5aaf6b4f31418e86ea8b38391f796` |
| 3 | `theorem` | [inverse_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/inverse-square-integrable--eb0477b401fe3b5f9c1e2970.md) | 26 | `result-track:eb0477b401fe3b5f9c1e29707fdce218a407ac18482fb25c86cac2abb923f271` |
| 4 | `theorem` | [inverse_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/inverse-square-integral--6bd73136a214d6025bb1f9d3.md) | 34 | `result-track:6bd73136a214d6025bb1f9d3ed729e8988fdbefd3ea7fabd14d45b5795b42eac` |
| 5 | `theorem` | [actual_remainder_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/actual-remainder-measurable--cda3e14bb35b49fe360c1b46.md) | 43 | `result-track:cda3e14bb35b49fe360c1b46ea99b790052796853358619e35e2d04cfdd91806` |
| 6 | `theorem` | [actual_remainder_integrable_near_origin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/actual-remainder-integrable-near-origin--e2c5c5ca164bcbdbc909052e.md) | 47 | `result-track:e2c5c5ca164bcbdbc909052e9ffadc60a0024452773210d4efdb4de362190329` |
| 7 | `theorem` | [actual_remainder_integrable_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/actual-remainder-integrable-tail--e7c6f68a22577bcde1cb9bd2.md) | 57 | `result-track:e7c6f68a22577bcde1cb9bd2728d4792cdb744aa451071e8a94bc0d2be3a8cd8` |
| 8 | `theorem` | [actual_remainder_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/actual-remainder-integrable--a5135360fd018f0f18b83162.md) | 65 | `result-track:a5135360fd018f0f18b83162d06d1308639040200874e65a9d63fb590aa9e88d` |
| 9 | `theorem` | [raw_prime_decay_of_mangoldt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/raw-prime-decay-of-mangoldt--d157a75633c810c50d404222.md) | 83 | `result-track:d157a75633c810c50d4042222d198c3694f027ec0596ceda9954276ac57d8839` |
| 10 | `theorem` | [actual_prime_remainder_integrable_of_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/actual-prime-remainder-integrable-of-decay--e95d18d5b73d971fc35fa82f.md) | 99 | `result-track:e95d18d5b73d971fc35fa82faa2cff142338a8e940457215919fb4a88adbb3dc` |
| 11 | `theorem` | [tail_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/tail-norm-bound--8b70982403802c22fcde952a.md) | 104 | `result-track:8b70982403802c22fcde952abfe6a7dd288bd75ab8ce7d535f8a295de90497b0` |
| 12 | `theorem` | [actual_remainder_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/actual-remainder-tail-bound--8c9eadd789dfc0360b86d2cd.md) | 118 | `result-track:8c9eadd789dfc0360b86d2cdea8dad8d5adc71557871b45ff1b0940f0a56f16e` |
| 13 | `theorem` | [actual_prime_remainder_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/actual-prime-remainder-tail-bound--7988db52d0218504259f881f.md) | 123 | `result-track:7988db52d0218504259f881fef385f9f1220eeca559421d43a142db2c73cb39d` |
| 14 | `theorem` | [actual_prime_tail_bound_of_raw](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/actual-prime-tail-bound-of-raw--31be4f365dbc20dfd00a514b.md) | 130 | `result-track:31be4f365dbc20dfd00a514bb5322a424f15a74c62fc17321bc8c416762a3022` |
| 15 | `theorem` | [raw_mangoldt_decay_of_real_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/declarations/raw-mangoldt-decay-of-real-cutoff--88e517ac2d7fbe0faef7121f.md) | 137 | `result-track:88e517ac2d7fbe0faef7121f01b6009a579889419aac9d876544f4b05d3346a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
