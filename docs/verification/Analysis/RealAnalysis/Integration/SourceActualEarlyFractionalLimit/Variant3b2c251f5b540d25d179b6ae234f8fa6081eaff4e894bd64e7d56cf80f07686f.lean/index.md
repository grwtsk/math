# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualEarlyFractionalLimit.Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db4c9daff0e07b2c0efc58900c7d55f7c83a0a8e",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db4c9daff0e07b2c0efc58900c7d55f7c83a0a8e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceLeadingFullKappaReduction` — import line 1; external provider; requires a separately pinned dependency.
- `SourceStrictComplementaryEarlyBudget` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [earlyFractionalDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyfractionaldensity--8521ce42e0ec4010928bde45.md) | 28 | `declaration-track:8521ce42e0ec4010928bde4567af3899b0ed2120eb5dd103881504ef0416ae7a` |
| 2 | `def` | [earlyFractionalConstant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyfractionalconstant--89ad15e94d23ac62d636dda0.md) | 32 | `declaration-track:89ad15e94d23ac62d636dda011cab3b62b1cb99671151b994af43e064ecf6d6d` |
| 3 | `theorem` | [rpow_negative_three_halves](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/rpow-negative-three-halves--65f818fa164be9d72928c0b6.md) | 35 | `result-track:65f818fa164be9d72928c0b6774130d6e0c9f6c5e9d649c29014e650f6c051a0` |
| 4 | `theorem` | [exp_neg_half_log_eq_inv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/exp-neg-half-log-eq-inv-sqrt--7f2e1d5131d98210cb169555.md) | 44 | `result-track:7f2e1d5131d98210cb169555bb83b2a5d61a106fca0673ee5389c412d873a67e` |
| 5 | `theorem` | [earlyFractionalDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyfractionaldensity-integrable--b70bd009b1f411a7a8b7ef3d.md) | 51 | `result-track:b70bd009b1f411a7a8b7ef3d03d8fd7513d8fa190c14fa79123b92d49076acd1` |
| 6 | `theorem` | [earlyFractionalDensity_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyfractionaldensity-nonneg--cf720d9ec5ce4a8f3677546e.md) | 63 | `result-track:cf720d9ec5ce4a8f3677546e96c58211145531c1e6d4d1f1d88639ef8f6ecc56` |
| 7 | `theorem` | [earlyFractionalDensity_tail_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyfractionaldensity-tail-bounds--04cfacde067fae94c3a00e80.md) | 69 | `result-track:04cfacde067fae94c3a00e80d0421f292449651ba6f55a90075979d913fddba1` |
| 8 | `theorem` | [earlyFractionalConstant_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyfractionalconstant-bounds--029b5376ae1815ba09ef527d.md) | 92 | `result-track:029b5376ae1815ba09ef527dd7fb6156d8984dc0fb0f6e3ce1fa06b0909a13e3` |
| 9 | `def` | [earlyUnitFloorDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyunitfloordensity--c2be0b625c31add6b59f8618.md) | 100 | `declaration-track:c2be0b625c31add6b59f861857be85568f000c68dcf705d24e76f1ea02c1b6e1` |
| 10 | `theorem` | [earlyUnitFloorDensity_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyunitfloordensity-eq--78303e90eb99a66c6b5651ff.md) | 104 | `result-track:78303e90eb99a66c6b5651ffc308fb9f4d6d32e4291fb811cf7df64bbccd1aa4` |
| 11 | `theorem` | [inv_sqrt_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/inv-sqrt-continuouson--e8c8a7f8307b2f290d3ae53c.md) | 114 | `result-track:e8c8a7f8307b2f290d3ae53cf2bc501e7449069c8e115f328380aea72192f1a5` |
| 12 | `theorem` | [integral_inv_sqrt_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/integral-inv-sqrt-ioc--74a5bcb5066a4376c71773d2.md) | 120 | `result-track:74a5bcb5066a4376c71773d2fa44715aaa1e7a865ebae93955ba9b33a643fce3` |
| 13 | `theorem` | [earlyUnitFloorDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyunitfloordensity-integrable--fb8b84e7ea17744c0d7446fe.md) | 136 | `result-track:fb8b84e7ea17744c0d7446fee54619908a5de37377e723497990e2b77e8e0072` |
| 14 | `theorem` | [earlyUnitFloorDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyunitfloordensity-integral--d753d84b7ac962221b68cf16.md) | 153 | `result-track:d753d84b7ac962221b68cf16e9aef866df2f3637bfb91ca099f69434912db536` |
| 15 | `theorem` | [actualCriticalDeviation_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/actualcriticaldeviation-abs-le--c168784d14c2dd1b4f326d0d.md) | 173 | `result-track:c168784d14c2dd1b4f326d0dd63d17fa163c5b08b55f2692365df6d466608406` |
| 16 | `theorem` | [actualEarlyFloorDifference_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/actualearlyfloordifference-abs-le--cd90b6c3ec790b41f96d8fdb.md) | 194 | `result-track:cd90b6c3ec790b41f96d8fdb54cb1d6fb84d64d3b090edf8868a20fb7be10304` |
| 17 | `def` | [actualHeadUnitErrorBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/actualheaduniterrorbudget--6d236218f62cd0226fc5b2e2.md) | 237 | `declaration-track:6d236218f62cd0226fc5b2e23d530d2484dd7b47d8234fa3ecb59943f3656958` |
| 18 | `theorem` | [actualEarlyBaseline_sub_unit_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/actualearlybaseline-sub-unit-abs-le--4d1bbde329fa63051ab8aba9.md) | 242 | `result-track:4d1bbde329fa63051ab8aba9aaaf8000f5561b1be8f32760ff9ff3650b5e37d2` |
| 19 | `theorem` | [earlyFractionalDensity_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/earlyfractionaldensity-split--b833ddf068c162aa97b14f97.md) | 279 | `result-track:b833ddf068c162aa97b14f971fd48ccea0472972b0b1a10269d9343df9936d9b` |
| 20 | `theorem` | [actualCutoff_sqrt_gap_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/actualcutoff-sqrt-gap-bounds--27ddb2a9e358e1aef7e8534e.md) | 289 | `result-track:27ddb2a9e358e1aef7e8534effa03e7755f014754b3094e3b9fedd76adb54d81` |
| 21 | `theorem` | [unitEarly_add_scale_sub_fractional_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/unitearly-add-scale-sub-fractional-eq--d2e1ed094a8efac1993d6bb6.md) | 312 | `result-track:d2e1ed094a8efac1993d6bb6b1d2bfc64342a19bd8e63ed4620e9f3a08e4c22c` |
| 22 | `theorem` | [unitEarly_add_scale_sub_fractional_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/unitearly-add-scale-sub-fractional-abs-le--5a1075cf4aab424e8feecd47.md) | 323 | `result-track:5a1075cf4aab424e8feecd47eff6b76718cb3f2b29aec8349afbe560fd1e24ca` |
| 23 | `theorem` | [actualEarly_add_scale_sub_fractional_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/actualearly-add-scale-sub-fractional-abs-le--e324b99df23064b560b866bf.md) | 347 | `result-track:e324b99df23064b560b866bf4b5660cf6c32f2096c55e02120dc7d1a54fff9d4` |
| 24 | `def` | [actualHeadFractionalEnvelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/actualheadfractionalenvelope--cb9752402ab6fb295f2ed885.md) | 366 | `declaration-track:cb9752402ab6fb295f2ed8852b3c0712ab9f67c2d26ab8beb91f2044b8e893af` |
| 25 | `theorem` | [actualEarly_add_scale_sub_fractional_abs_le_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/actualearly-add-scale-sub-fractional-abs-le-envelope--e4da73618547da83a42f6e7d.md) | 370 | `result-track:e4da73618547da83a42f6e7d3f2fa97e156861dab846e183639e9392731ea06c` |
| 26 | `theorem` | [actualHeadFractionalEnvelope_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/actualheadfractionalenvelope-tendsto-zero--c3b6fa6a43127a69b2fba257.md) | 393 | `result-track:c3b6fa6a43127a69b2fba257dc516dff3e9b46318b254ad3d73fe1f09a41bb82` |
| 27 | `theorem` | [actualEarly_add_scale_tendsto_fractional](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/declarations/actualearly-add-scale-tendsto-fractional--416082b2e0d1f143798a4e7f.md) | 408 | `result-track:416082b2e0d1f143798a4e7fa00000f5ad2165f7f3a5ea78fe2ae87f927a1a43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
