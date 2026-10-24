# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Complete.Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "653ef99a7abe7c1c5ab822e6100c93216680624b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `653ef99a7abe7c1c5ab822e6100c93216680624b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_lim_eq_lintegral_liminf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/elpnorm-lim-eq-lintegral-liminf--e733de89599a4b01ca056cdc.md) | 23 | `result-track:e733de89599a4b01ca056cdcdfed13eb3eaf0a4f0c69c34b6d45d42f42d7d440` |
| 2 | `theorem` | [eLpNorm'_lim_le_liminf_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/elpnorm-lim-le-liminf-elpnorm--8bc4d5e1e53c28f78150bac6.md) | 34 | `result-track:8bc4d5e1e53c28f78150bac6faae006b5951e133663c7baa624363df35d7bce5` |
| 3 | `theorem` | [eLpNorm_exponent_top_lim_eq_essSup_liminf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/elpnorm-exponent-top-lim-eq-esssup-liminf--87a5cf67348728af7a605c84.md) | 52 | `result-track:87a5cf67348728af7a605c8438c3ff65d6e3de1dc541172b22d5c264eb6c31cd` |
| 4 | `theorem` | [eLpNorm_exponent_top_lim_le_liminf_eLpNorm_exponent_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/elpnorm-exponent-top-lim-le-liminf-elpnorm-exponent-top--00c244ab93a323a66af2dd14.md) | 61 | `result-track:00c244ab93a323a66af2dd1498a13ecef2f521dbedeceb026b587e05f0a8e563` |
| 5 | `theorem` | [eLpNorm_lim_le_liminf_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/elpnorm-lim-le-liminf-elpnorm--42493f2bb62c5e3f7c1c9409.md) | 69 | `result-track:42493f2bb62c5e3f7c1c940972854a98d228cda87424249477aa78c4b5e91de9` |
| 6 | `theorem` | [tendsto_Lp_iff_tendsto_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/tendsto-lp-iff-tendsto-elpnorm--a14d8ddd04f50d9fae38d62a.md) | 85 | `result-track:a14d8ddd04f50d9fae38d62a69e4bb21c1e8fa36312c828c4bc529938972eb74` |
| 7 | `theorem` | [tendsto_Lp_iff_tendsto_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/tendsto-lp-iff-tendsto-elpnorm--b8cc80d21cd7052d73955728.md) | 97 | `result-track:b8cc80d21cd7052d73955728aa5e4ffc08ea649c47f07214071aa1eae1e4e4cc` |
| 8 | `theorem` | [tendsto_Lp_iff_tendsto_eLpNorm''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/tendsto-lp-iff-tendsto-elpnorm--92cc23a7de920e0c1037ed18.md) | 111 | `result-track:92cc23a7de920e0c1037ed184f424d2bd832f07defb7055252d1423630a5bebf` |
| 9 | `theorem` | [tendsto_Lp_of_tendsto_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/tendsto-lp-of-tendsto-elpnorm--25bbd02a925632748148847e.md) | 127 | `result-track:25bbd02a925632748148847e71ae8f75318899dd0c159be624397f31833e901e` |
| 10 | `theorem` | [cauchySeq_Lp_iff_cauchySeq_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/cauchyseq-lp-iff-cauchyseq-elpnorm--c9dec3138fff155b1b1de3db.md) | 136 | `result-track:c9dec3138fff155b1b1de3dbe0acd53f6c948c3facda2831ed89526b13e8bebb` |
| 11 | `theorem` | [completeSpace_lp_of_cauchy_complete_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/completespace-lp-of-cauchy-complete-elpnorm--2b5bf5156b207d231fa289f1.md) | 147 | `result-track:2b5bf5156b207d231fa289f104afafaf3380621be76a1160de8d6060598dad5e` |
| 12 | `theorem` | [eLpNorm'_sum_norm_sub_le_tsum_of_cauchy_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/elpnorm-sum-norm-sub-le-tsum-of-cauchy-elpnorm--ad3882124206e7546022a63a.md) | 187 | `result-track:ad3882124206e7546022a63a62aac1134baa877ff69f13cd2e8c365a55bc08a8` |
| 13 | `theorem` | [lintegral_rpow_sum_enorm_sub_le_rpow_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/lintegral-rpow-sum-enorm-sub-le-rpow-tsum--922ddfe08cf3579a570565e8.md) | 203 | `result-track:922ddfe08cf3579a570565e87e586c5c2e1fe3bce169621bb7dee8857d4faf36` |
| 14 | `theorem` | [lintegral_rpow_tsum_coe_enorm_sub_le_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/lintegral-rpow-tsum-coe-enorm-sub-le-tsum--5365629257c657f5648b7e85.md) | 222 | `result-track:5365629257c657f5648b7e85a6e7c8014c49d2c76991b7b2974a97d23cd29b92` |
| 15 | `theorem` | [tsum_enorm_sub_ae_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/tsum-enorm-sub-ae-lt-top--163a22eb2ed31dc9020f5195.md) | 247 | `result-track:163a22eb2ed31dc9020f5195722ca227f98775005175f396ca4e5bbe632e6f56` |
| 16 | `theorem` | [ae_tendsto_of_cauchy_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/ae-tendsto-of-cauchy-elpnorm--b08fd88f1e61aa69a6fae083.md) | 263 | `result-track:b08fd88f1e61aa69a6fae0835a9b5c2da10df877aad514cefa448af1e0d35d10` |
| 17 | `theorem` | [ae_tendsto_of_cauchy_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/ae-tendsto-of-cauchy-elpnorm--be2a5eb12d096d922f9c8d84.md) | 300 | `result-track:be2a5eb12d096d922f9c8d84138d4719a0f72254e51f91a82cd0915b863b3f5f` |
| 18 | `theorem` | [cauchy_tendsto_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/cauchy-tendsto-of-tendsto--700f4eb0814962102a57e87a.md) | 331 | `result-track:700f4eb0814962102a57e87a8abc750dda41b73d40b0b70fb08dd9cb11208780` |
| 19 | `theorem` | [memLp_of_cauchy_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/memlp-of-cauchy-tendsto--8d188c3174254aa5326bbdd3.md) | 354 | `result-track:8d188c3174254aa5326bbdd354565575c0450f4e51e32897f883a8542059a6e6` |
| 20 | `theorem` | [cauchy_complete_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/cauchy-complete-elpnorm--ae17d2284728c8c0045793c8.md) | 374 | `result-track:ae17d2284728c8c0045793c8638eb00f2875556e986ed9eb0aff8596128e7aed` |
| 21 | `instance` | [instCompleteSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/declarations/instcompletespace--ffbe272aabdc7647e0a06e33.md) | 393 | `declaration-track:ffbe272aabdc7647e0a06e33888950f8b8186d8d792a46b1e7bee2cb6a0b5b8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
