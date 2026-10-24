# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Taylor.Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daa674e10401043ad9a6d9d86250f10900fcc053",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daa674e10401043ad9a6d9d86250f10900fcc053`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Taylor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Core.DerivativeIntervals` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TaylorApprox](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/taylorapprox--8be2cfcb3563f71d36b7c631.md) | 57 | `declaration-track:8be2cfcb3563f71d36b7c631c3115db4304b4ab853fc07ccf6578578f42fe5e3` |
| 2 | `def` | [evalPoly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/evalpoly--53dc7f41861411b148aa1f9f.md) | 70 | `declaration-track:53dc7f41861411b148aa1f9f4e749b78ba96d1004e5261774a1f87822a1c87d6` |
| 3 | `structure` | [DerivBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/derivbound--6a38743c7a0e6d95654765d9.md) | 78 | `declaration-track:6a38743c7a0e6d95654765d921f12a38c806e55d4b129823532c1dabffee755a` |
| 4 | `lemma` | [uniqueDiffWithinAt_Icc_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/uniquediffwithinat-icc-left--8f06118f1fc3f228b96fd2ab.md) | 91 | `result-track:8f06118f1fc3f228b96fd2ab9610c996163c4f31e14f26658036a9961ecc0335` |
| 5 | `lemma` | [uniqueDiffWithinAt_Icc_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/uniquediffwithinat-icc-right--b3713b22442b69496a8e08b6.md) | 98 | `result-track:b3713b22442b69496a8e08b6186f5bc2e5b8e96f8db91f1cde9fb7ea686df5cc` |
| 6 | `lemma` | [derivWithin_Icc_left_eq_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/derivwithin-icc-left-eq-deriv--20fee164e4a40c8f1f882917.md) | 105 | `result-track:20fee164e4a40c8f1f88291721d494a29cbab5b6e94cfbcb56dbb99e38edc4e3` |
| 7 | `lemma` | [derivWithin_Icc_right_eq_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/derivwithin-icc-right-eq-deriv--242dad1aa8d3b1a8d4597dc8.md) | 113 | `result-track:242dad1aa8d3b1a8d4597dc8cfffd474c638abc198de9a62c94bc32486ab840e` |
| 8 | `lemma` | [iteratedDerivWithin_Icc_interior_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/iteratedderivwithin-icc-interior-eq--4074e1e9ffc2d7f117c0b904.md) | 123 | `result-track:4074e1e9ffc2d7f117c0b904d7343ab2e699761e878c4069a84b5575cda1f26b` |
| 9 | `lemma` | [iteratedDerivWithin_Icc_left_eq_iteratedDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/iteratedderivwithin-icc-left-eq-iteratedderiv--4652fc59ba9ad3a4041d5bdd.md) | 136 | `result-track:4652fc59ba9ad3a4041d5bddb55323d7da86beb352998fa217ac79b4864012a6` |
| 10 | `lemma` | [iteratedDerivWithin_Icc_left_eq_iteratedDeriv_of_isOpen](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/iteratedderivwithin-icc-left-eq-iteratedderiv-of-isopen--0f562b4f36cf389b75dc9a1f.md) | 173 | `result-track:0f562b4f36cf389b75dc9a1fbdc619111f3961f5356e4591ac9c0a9e74670a7e` |
| 11 | `theorem` | [taylor_remainder_bound_on_c_lt_x](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/taylor-remainder-bound-on-c-lt-x--aef2b020335a9311c04294c6.md) | 212 | `result-track:aef2b020335a9311c04294c68b4013be1bfa1bfa5d310731f1f838799aee9e69` |
| 12 | `lemma` | [iteratedDeriv_translate_of_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/iteratedderiv-translate-of-contdiffon--49156997ed5ebc72894d9f0f.md) | 273 | `result-track:49156997ed5ebc72894d9f0f3a77d2d20edbf44c277981321dea419f62e41dfb` |
| 13 | `lemma` | [iteratedDeriv_reflect_of_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/iteratedderiv-reflect-of-contdiffon--1cb775ff69e51000dbde430b.md) | 308 | `result-track:1cb775ff69e51000dbde430b2d489861cb1c243b95104c91799966fd28816056` |
| 14 | `theorem` | [taylor_remainder_bound_on_x_lt_c](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/taylor-remainder-bound-on-x-lt-c--747e1112afe652b473018b51.md) | 331 | `result-track:747e1112afe652b473018b51fec64bf2c872581d4e20bb4c4070a9aa8c22e16d` |
| 15 | `theorem` | [taylor_remainder_bound_on](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/taylor-remainder-bound-on--786374f8d6f6af184f1efa1e.md) | 449 | `result-track:786374f8d6f6af184f1efa1e8228b4dc24cac768df264fc7c5f77b2939b47ed5` |
| 16 | `lemma` | [iteratedDeriv_reflect](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/iteratedderiv-reflect--3c81579e6031b25e9f936dea.md) | 493 | `result-track:3c81579e6031b25e9f936dea992ff3274f5feec7965ff904074dd8b35d04afd7` |
| 17 | `lemma` | [neg_one_pow_mul_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/neg-one-pow-mul-self--bfe92429519886e6fa0ac0b0.md) | 524 | `result-track:bfe92429519886e6fa0ac0b07a0cd2606f210f3d0363e877f5620bed5c1661e4` |
| 18 | `theorem` | [taylor_remainder_bound_c_lt_x](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/taylor-remainder-bound-c-lt-x--02085c2154fb7afe37b3df51.md) | 532 | `result-track:02085c2154fb7afe37b3df51bd4c661e9848271480f0d59b3d670e2ced8285d3` |
| 19 | `theorem` | [taylor_remainder_bound_x_lt_c](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/taylor-remainder-bound-x-lt-c--8c2ef6f3ad373a207187e014.md) | 594 | `result-track:8c2ef6f3ad373a207187e0145b225434edeb9003212d7addabecba2a9c36d0dd` |
| 20 | `theorem` | [taylor_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/taylor-remainder-bound--b703fa772546d8e8cc1d8c24.md) | 725 | `result-track:b703fa772546d8e8cc1d8c243e45b3d555d74e91ed1b1bf474939b1ee67129c4` |
| 21 | `def` | [expTaylorCoeff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/exptaylorcoeff--18a2190ea9201f325310ee72.md) | 770 | `declaration-track:18a2190ea9201f325310ee7237584c8a3463d678860e12c6e8d8f9c5d0c99944` |
| 22 | `def` | [sinTaylorCoeff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/sintaylorcoeff--72604893579b7964aa517975.md) | 773 | `declaration-track:72604893579b7964aa5179754df90461e925122c7737f81154ddb98f60f9ba1a` |
| 23 | `def` | [cosTaylorCoeff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/costaylorcoeff--16e10095e69b2a150260f500.md) | 779 | `declaration-track:16e10095e69b2a150260f500a9fbf990eb6516afe9120aa3b2cc66d514abea0f` |
| 24 | `theorem` | [exp_deriv_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/exp-deriv-bound--99684c7a8a3978eea20ec538.md) | 787 | `result-track:99684c7a8a3978eea20ec538c305f3eb3646afdba29929cf716508ba72d246e5` |
| 25 | `theorem` | [sin_cos_deriv_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/sin-cos-deriv-bound--69e4d33a998411033a2c01f9.md) | 797 | `result-track:69e4d33a998411033a2c01f9320b6292ec4a3d40bee2ee68e06f856ec5a50a4a` |
| 26 | `theorem` | [cosh_le_exp_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/cosh-le-exp-abs--949ad0b0b142dbeac495b675.md) | 820 | `result-track:949ad0b0b142dbeac495b675e9108fdfd4d5f40f4ae8e9be6bb3791c9d686420` |
| 27 | `theorem` | [abs_sinh_le_cosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/abs-sinh-le-cosh--7b175d869e15b7f0d492208c.md) | 828 | `result-track:7b175d869e15b7f0d492208c523b6dd9d382c7f8bd5babbdf1897419989fe0df` |
| 28 | `theorem` | [sinh_cosh_deriv_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/sinh-cosh-deriv-bound--38619d8df13c0635039e02ae.md) | 843 | `result-track:38619d8df13c0635039e02ae8d3757526f72c3faf1083b5f6a3ed234f818948f` |
| 29 | `theorem` | [iteratedDeriv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/declarations/iteratedderiv-log--ccde786274ad3efe02c1681a.md) | 884 | `result-track:ccde786274ad3efe02c1681ae8af84e36026a8235feccb83425aa69ec08f4c16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
