# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Combined.Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "308d83957645250eeb49c1c0ac619c0bee0dd4eb",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `308d83957645250eeb49c1c0ac619c0bee0dd4eb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/zetamajorant--632470650f522bcbc858f023.md) | 19 | `declaration-track:632470650f522bcbc858f023e79b2afac2f658bb9c1014255dea50e7e5debc2f` |
| 2 | `lemma` | [zetaMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/zetamajorant-nonneg--0729d7b2f112bac9bcf9fca7.md) | 21 | `result-track:0729d7b2f112bac9bcf9fca740c5df2602cd293a479f1b8faa6fdde0ecbc13f7` |
| 3 | `lemma` | [norm_zeta_nat_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/norm-zeta-nat-le--01af40b7c20fd1bfb9d0887b.md) | 24 | `result-track:01af40b7c20fd1bfb9d0887bc7fcb6ae7eafc7c13350ce44fa5af95dee49d328` |
| 4 | `lemma` | [factorial_le_exp_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/factorial-le-exp-square--302742d92109f27b4535ff88.md) | 42 | `result-track:302742d92109f27b4535ff88fe3e3051769a228d01fcc3caeb93ab47cf901775` |
| 5 | `lemma` | [norm_gammaR_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/norm-gammar-even-le--36b50315455cc56b3376b193.md) | 50 | `result-track:36b50315455cc56b3376b1936fc4758b9e3a1fd83e964c5ac0653e3d43e4b488` |
| 6 | `lemma` | [norm_completed_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/norm-completed-even-le--d8fc79d57b89cbcf1f0153fc.md) | 69 | `result-track:d8fc79d57b89cbcf1f0153fc2bad6f9f244643e0283304ec7f61040b78fbb928` |
| 7 | `lemma` | [norm_pole_zero_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/norm-pole-zero-le-one--f77c7487463603049b26d243.md) | 84 | `result-track:f77c7487463603049b26d243aa64694ec12e1fd08cbb95eefee838c654136173` |
| 8 | `lemma` | [norm_pole_one_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/norm-pole-one-le-one--bb5b2b7b118773a2dfdd1eda.md) | 91 | `result-track:bb5b2b7b118773a2dfdd1edab23a67f31d002e59d97f05c098baeaeb45da67da` |
| 9 | `lemma` | [norm_completed_zero_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/norm-completed-zero-even-le--36f93f4a820739172bc68910.md) | 104 | `result-track:36f93f4a820739172bc6891004bcb0f1ae095bfa6d7fb78c84fa695282d8e52c` |
| 10 | `lemma` | [completed_zero_even_re_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/completed-zero-even-re-bound--ef8cbf67a2a4b1b94a2c82a6.md) | 125 | `result-track:ef8cbf67a2a4b1b94a2c82a6bf4c592d6392a4a32dbcba742d362b578671ff6f` |
| 11 | `lemma` | [shellGrowth_evenKernel_one_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-evenkernel-one-le--ce8b7a5d267718ee92967615.md) | 134 | `result-track:ce8b7a5d267718ee92967615fbad2673213623eb5646426647f4a9420a5f2b4a` |
| 12 | `lemma` | [shellGrowth_fmodif_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-fmodif-im--cabc05438d6da9c9791e6173.md) | 145 | `result-track:cabc05438d6da9c9791e617376286a95af90a2616bfa687c7fe3c4bc4d38dcb8` |
| 13 | `lemma` | [shellGrowth_fmodif_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-fmodif-nonneg--493d81d5e399b2806cfdb9dc.md) | 151 | `result-track:493d81d5e399b2806cfdb9dccf57b0aaf3e6697d1371aba551f85ae5bc8740fa` |
| 14 | `lemma` | [shellGrowth_fmodif_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-fmodif-real--46e82a113663e5322fa97ef9.md) | 174 | `result-track:46e82a113663e5322fa97ef943f4e4ee0688e731108bfc7055f44d543147a7a1` |
| 15 | `lemma` | [shellGrowth_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-mellin-integrable--b4658895121b297ebe55eab0.md) | 178 | `result-track:b4658895121b297ebe55eab094beec6d69d8e75d3f9180d80e3a5f136e4a3524` |
| 16 | `lemma` | [shellGrowth_lambda_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-lambda-integral--a65820b76ac3fa01fce070ad.md) | 183 | `result-track:a65820b76ac3fa01fce070ad329bb4a9bafeb16e1c932571d16844cb3ae6b553` |
| 17 | `lemma` | [shellGrowth_real_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-real-integrand--36fb1babe17587526437a2c1.md) | 188 | `result-track:36fb1babe17587526437a2c1b16a4c14587ee0633564f15a6cac84d0871e7dcb` |
| 18 | `lemma` | [shellGrowth_real_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-real-integrable--10596dba923347db2d2d7ec5.md) | 195 | `result-track:10596dba923347db2d2d7ec50d0000896a61a22e16b1389baf30f1b9d76fa66f` |
| 19 | `lemma` | [shellGrowth_real_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-real-integral--9b641893bc76a09741f63427.md) | 204 | `result-track:9b641893bc76a09741f63427b5d76ca8976b7a438f449a9d7cfe2f9349f55c4d` |
| 20 | `lemma` | [shellGrowth_strip_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-strip-bound--b5c60d8010d6b2f3cf8d3f69.md) | 218 | `result-track:b5c60d8010d6b2f3cf8d3f6939bdce9df80a58fde2f32c1ff4ac116160e3d326` |
| 21 | `lemma` | [shellGrowth_integer_endpoint_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-integer-endpoint-bound--187709c4371c86f2f73d545b.md) | 245 | `result-track:187709c4371c86f2f73d545b22c67a01a87d69ebc6616ec3c3a52c3592c21374` |
| 22 | `lemma` | [shellGrowth_sphere_of_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-sphere-of-endpoint--f98888cc4ea4b8b5ed1fdf57.md) | 254 | `result-track:f98888cc4ea4b8b5ed1fdf572004abdd0f4f7474d08bcde3bc3459e1fcaa7e55` |
| 23 | `lemma` | [shellGrowth_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/declarations/shellgrowth-global--e686bcfeeaadfa5571682dca.md) | 315 | `result-track:e686bcfeeaadfa5571682dcab9c5043688dc64c4dd9878f201f0180240b47d64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
