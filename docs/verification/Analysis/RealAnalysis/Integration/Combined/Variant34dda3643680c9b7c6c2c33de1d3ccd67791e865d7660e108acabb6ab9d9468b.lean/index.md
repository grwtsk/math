# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Combined.Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cf18643d7e88d88eaed8b1dd2a6d6c3d1052b8b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cf18643d7e88d88eaed8b1dd2a6d6c3d1052b8b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/zetamajorant--ccc3efc86aa8282142ff0024.md) | 11 | `declaration-track:ccc3efc86aa8282142ff0024cbafe4039be53b06897be90bd344aaa7b078c4d4` |
| 2 | `lemma` | [zetaMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/zetamajorant-nonneg--4d0f14163d05cae18dca2c4f.md) | 13 | `result-track:4d0f14163d05cae18dca2c4f050c2dc71257889aeb307a679373a0dc98ee439a` |
| 3 | `lemma` | [norm_zeta_nat_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/norm-zeta-nat-le--dac2818cd726fb9847dad187.md) | 16 | `result-track:dac2818cd726fb9847dad187a47090a40552a74cba9d5b855903cc70261e2c72` |
| 4 | `lemma` | [factorial_le_exp_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/factorial-le-exp-square--1468c023c45d3b9d5c4e7450.md) | 34 | `result-track:1468c023c45d3b9d5c4e745083bd896946189d64997c6358ff41d5d76dbdcc6d` |
| 5 | `lemma` | [norm_gammaR_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/norm-gammar-even-le--ca1a05b86c4fef9bb9123aad.md) | 42 | `result-track:ca1a05b86c4fef9bb9123aad7fab8e6cc4c73bd9ebb9b531a6493a5f92e949ab` |
| 6 | `lemma` | [norm_completed_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/norm-completed-even-le--5c9717b6f818ada5b55df6c5.md) | 61 | `result-track:5c9717b6f818ada5b55df6c51d26719bdd9606c14f68444807c5d83809f60525` |
| 7 | `lemma` | [norm_pole_zero_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/norm-pole-zero-le-one--816cf5742e83a2873bf8424c.md) | 76 | `result-track:816cf5742e83a2873bf8424cc47d14b308c2b9acdbe4f0ac7e56a037ed8018f6` |
| 8 | `lemma` | [norm_pole_one_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/norm-pole-one-le-one--24492acfa65450979790efbd.md) | 83 | `result-track:24492acfa65450979790efbd7dcf04e7f369f662881df73c7a05019298eefb44` |
| 9 | `lemma` | [norm_completed_zero_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/norm-completed-zero-even-le--af9f633eb3814c380e657886.md) | 96 | `result-track:af9f633eb3814c380e657886445739af9c99aca29e1e16f8747b200666f8aae8` |
| 10 | `lemma` | [completed_zero_even_re_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/completed-zero-even-re-bound--a4a80bc7b4ef3ad81046d392.md) | 117 | `result-track:a4a80bc7b4ef3ad81046d392fdf81146be1b762907dc07e6911124ebca4b0661` |
| 11 | `lemma` | [shellGrowth_evenKernel_one_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-evenkernel-one-le--e58ceccad53ffca511b6f4f0.md) | 126 | `result-track:e58ceccad53ffca511b6f4f0d1d205619f5ed6d553f29ffb6d6683a1410f3321` |
| 12 | `lemma` | [shellGrowth_fmodif_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-fmodif-im--cea6f3081a0b59788d09770b.md) | 137 | `result-track:cea6f3081a0b59788d09770b08cf1ea0346ae7a65226d5a73165f3593298e62c` |
| 13 | `lemma` | [shellGrowth_fmodif_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-fmodif-nonneg--bdf51296138b7b601c243961.md) | 143 | `result-track:bdf51296138b7b601c2439618086e0653061b973ff2acfbcc01a64d5104d58ff` |
| 14 | `lemma` | [shellGrowth_fmodif_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-fmodif-real--d1754eb63d07f8c09f761099.md) | 166 | `result-track:d1754eb63d07f8c09f761099826f34c0d6c7f8d0a07ef7e3ae50d5aa8e39950c` |
| 15 | `lemma` | [shellGrowth_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-mellin-integrable--36f00681d4ef652b5561280f.md) | 170 | `result-track:36f00681d4ef652b5561280fbaa31f3647d4ea2b65e585969c6eb7fd082e536b` |
| 16 | `lemma` | [shellGrowth_lambda_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-lambda-integral--81561db37c27de088c22a042.md) | 175 | `result-track:81561db37c27de088c22a04206cf40d025f4ba4f63ca11753f48d36ab264d485` |
| 17 | `lemma` | [shellGrowth_real_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-real-integrand--4843274e4e79e8258b6a1083.md) | 180 | `result-track:4843274e4e79e8258b6a108315f5b2b363e745bc7815b0ae55a92cf5ccb7a747` |
| 18 | `lemma` | [shellGrowth_real_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-real-integrable--3faed7fbf97ab15f3f6f7780.md) | 187 | `result-track:3faed7fbf97ab15f3f6f7780f77582cfbeabd9fd7bb6438b021fdf026ae5a29e` |
| 19 | `lemma` | [shellGrowth_real_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-real-integral--3f806d36dfd6a0f520b559ad.md) | 196 | `result-track:3f806d36dfd6a0f520b559ad9b8d9198e82bef13c75e785e10e31aa8fbdd96e6` |
| 20 | `lemma` | [shellGrowth_strip_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-strip-bound--f73b8ef89429cf2e006284cb.md) | 210 | `result-track:f73b8ef89429cf2e006284cb0995fb826f4c7bf9ce1bfb95fc7b64caa0c7e670` |
| 21 | `lemma` | [shellGrowth_integer_endpoint_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-integer-endpoint-bound--fc4b1653930f8ba4bdd011cb.md) | 237 | `result-track:fc4b1653930f8ba4bdd011cbf7773fa8afc3df61ba4d4c1329b919182918570c` |
| 22 | `lemma` | [shellGrowth_sphere_of_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-sphere-of-endpoint--ccb174dd4793531676f22199.md) | 246 | `result-track:ccb174dd4793531676f22199ccf5cf335f9a3184a2a293765fffa0a160d3afea` |
| 23 | `lemma` | [shellGrowth_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/declarations/shellgrowth-global--1aa1d8687ce01eac1dece5c2.md) | 307 | `result-track:1aa1d8687ce01eac1dece5c20ee470b973b187f35bb88016db5ab2a9c0b95931` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
