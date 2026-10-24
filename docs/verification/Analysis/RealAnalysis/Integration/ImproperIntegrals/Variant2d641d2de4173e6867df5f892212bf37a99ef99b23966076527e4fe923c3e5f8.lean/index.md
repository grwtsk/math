# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ImproperIntegrals.Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a67dfe9b8d171d5e44eee7afdc61f39b68674cd",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a67dfe9b8d171d5e44eee7afdc61f39b68674cd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrableOn_exp_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-exp-iic--1c85f429f888f770d55b3082.md) | 44 | `result-track:1c85f429f888f770d55b30828184f30c5b1888e76b2e21370a6e45b6a4c312ab` |
| 2 | `theorem` | [integrableOn_exp_neg_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-exp-neg-ioi--aec027df26bcbe1e09f80dd2.md) | 52 | `result-track:aec027df26bcbe1e09f80dd27c441e93edab7a976fb342eaa6863ce2ec1e5cc0` |
| 3 | `theorem` | [integral_exp_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-exp-iic--0258107658be1342e3857d21.md) | 55 | `result-track:0258107658be1342e3857d21a10d60c8a7d81dda6c9802823d144592d97a1ee1` |
| 4 | `theorem` | [integral_exp_Iic_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-exp-iic-zero--5c4577262dd3b5522505cad1.md) | 62 | `result-track:5c4577262dd3b5522505cad19d9465c6bc7ac0a2f76137eba2b24f1adc8053e5` |
| 5 | `theorem` | [integral_exp_neg_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-exp-neg-ioi--988362cd9721ace170e08d9a.md) | 65 | `result-track:988362cd9721ace170e08d9a7e9dd8c01636b17769bdb3eadf55d8afe8009fdc` |
| 6 | `theorem` | [integral_exp_neg_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-exp-neg-ioi-zero--69a73889d02a14e7e8542e7c.md) | 68 | `result-track:69a73889d02a14e7e8542e7c910f8e899d1786b9e02aa3e1fcc09bd17cb82c86` |
| 7 | `theorem` | [integrableOn_exp_mul_complex_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-exp-mul-complex-ioi--247cdf9fbd1f3edfdb0795f1.md) | 71 | `result-track:247cdf9fbd1f3edfdb0795f14c807fb2836ca2da0a1585936d76720440f7e13e` |
| 8 | `theorem` | [integrableOn_exp_mul_complex_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-exp-mul-complex-iic--d632e0bac98d6753d1f5d025.md) | 80 | `result-track:d632e0bac98d6753d1f5d025fd3ac9874c9d087fc136c94ffe1c2900e471ff13` |
| 9 | `theorem` | [integrableOn_exp_mul_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-exp-mul-ioi--8043bb54ab603351b65a1b96.md) | 85 | `result-track:8043bb54ab603351b65a1b9674aebbeac98fb9746ef7714961bc423884ab5f4f` |
| 10 | `theorem` | [integrableOn_exp_mul_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-exp-mul-iic--fe3417554af50288cd7d0cd4.md) | 90 | `result-track:fe3417554af50288cd7d0cd4325aa98b9c595f811dffab6b35618aea8372c60e` |
| 11 | `theorem` | [integral_exp_mul_complex_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-exp-mul-complex-ioi--d2b86f2ecc0a07aae927cea6.md) | 95 | `result-track:d2b86f2ecc0a07aae927cea62b907483c861696b5b2210b149110fdd32c0edc8` |
| 12 | `theorem` | [integral_exp_mul_complex_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-exp-mul-complex-iic--a00c55ddd2b351540f0962c9.md) | 104 | `result-track:a00c55ddd2b351540f0962c931e11cb6d230cbce7317295c7190d676e5858113` |
| 13 | `theorem` | [integral_exp_mul_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-exp-mul-ioi--6c7af55f5b4592cb76a9687e.md) | 110 | `result-track:6c7af55f5b4592cb76a9687ee8bef11659ed98ddf8e86320b4c6cc827802c380` |
| 14 | `theorem` | [integral_exp_mul_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-exp-mul-iic--46005e7e64d10626025086f5.md) | 117 | `result-track:46005e7e64d10626025086f5de103ba22e4e0bf65f6cbb8ffbe8c6d18b24185d` |
| 15 | `theorem` | [integrableOn_add_rpow_Ioi_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-add-rpow-ioi-of-lt--b831d91745194e0009384f84.md) | 123 | `result-track:b831d91745194e0009384f8451a1729003e80fff9b76e69a8a236e7482cc9376` |
| 16 | `theorem` | [integrableOn_Ioi_rpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-ioi-rpow-of-lt--f30b911bba4ace9b51ce7910.md) | 138 | `result-track:f30b911bba4ace9b51ce7910603d24f71259fb2925ad8477fbaf2a7d99d6638c` |
| 17 | `theorem` | [integrableOn_Ioi_rpow_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-ioi-rpow-iff--e092731f3644f62b2b9177c9.md) | 142 | `result-track:e092731f3644f62b2b9177c983efd24858da2b0c4df7bd77b436973c4c5a90cc` |
| 18 | `theorem` | [integrableAtFilter_rpow_atTop_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableatfilter-rpow-attop-iff--f889bdb9bc08163b63f58042.md) | 158 | `result-track:f889bdb9bc08163b63f58042bec5cb16c8a85dca3cf58362c0f9b8e5eb6c6712` |
| 19 | `theorem` | [not_integrableOn_Ioi_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/not-integrableon-ioi-rpow--9b86975f914bd974b980f19d.md) | 167 | `result-track:9b86975f914bd974b980f19d03ac32d5e1e8461daeac55f5a052febc5aa30699` |
| 20 | `theorem` | [not_integrableOn_Ioi_rpow_of_neg_one_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/not-integrableon-ioi-rpow-of-neg-one-le--3d72d2d5dbb1e8ef3a8cd1b0.md) | 177 | `result-track:3d72d2d5dbb1e8ef3a8cd1b0982e4c73ca409ceee162f95ab89391a69b39a4f4` |
| 21 | `theorem` | [setIntegral_Ioi_zero_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/setintegral-ioi-zero-rpow--0a9e6f6b9fa0515594f14a98.md) | 183 | `result-track:0a9e6f6b9fa0515594f14a98de49ede6976eab738bf5f9f113f7b188d0faec8d` |
| 22 | `theorem` | [integral_Ioi_rpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-ioi-rpow-of-lt--922626e285b7b70a748ad21c.md) | 186 | `result-track:922626e285b7b70a748ad21c85126c7f8d05a4ebfc3755296813486792706f34` |
| 23 | `theorem` | [integrableOn_Ioi_norm_cpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-ioi-norm-cpow-of-lt--3387a6433ba7f3f2f3896bd1.md) | 198 | `result-track:3387a6433ba7f3f2f3896bd1c4621fb0528d7d96f1cfd041a396b483e3d836d9` |
| 24 | `theorem` | [integrableOn_Ioi_cpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-ioi-cpow-of-lt--0fbe42af7f2bdfdb80006740.md) | 203 | `result-track:0fbe42af7f2bdfdb80006740d5e75009875b5de3efe50fd36211afc9de476484` |
| 25 | `theorem` | [integrableOn_Ioi_norm_cpow_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-ioi-norm-cpow-iff--afaf6443f110ef9d952a23c0.md) | 209 | `result-track:afaf6443f110ef9d952a23c029b7372bfba82ab046ce6f8c441f9550911fde08` |
| 26 | `theorem` | [integrableOn_Ioi_cpow_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-ioi-cpow-iff--e9bc5edff0e1f31ecca4dcf8.md) | 220 | `result-track:e9bc5edff0e1f31ecca4dcf8a59e6d805f175cb8e09295c50caa9eac9f187b3c` |
| 27 | `theorem` | [integrableOn_Ioi_deriv_ofReal_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-ioi-deriv-ofreal-cpow--0cf3d6cb6e730e853ade1280.md) | 224 | `result-track:0cf3d6cb6e730e853ade128073a146f65efd67d902b368b24beb526259775896` |
| 28 | `theorem` | [integrableOn_Ioi_deriv_norm_ofReal_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-ioi-deriv-norm-ofreal-cpow--2c80b06ebbb2138d0406d6ef.md) | 232 | `result-track:2c80b06ebbb2138d0406d6ef29f764e6da2c6021de0a2bda014380bd55a504ad` |
| 29 | `theorem` | [not_integrableOn_Ioi_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/not-integrableon-ioi-cpow--60b329adfb14fab9c2f6be3a.md) | 243 | `result-track:60b329adfb14fab9c2f6be3a9dcbaa678f9d02d91a701a51e70ce9707f779628` |
| 30 | `theorem` | [setIntegral_Ioi_zero_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/setintegral-ioi-zero-cpow--d56bdc61b03fb9b31279b32d.md) | 256 | `result-track:d56bdc61b03fb9b31279b32dae38a546bfb9e85ccca526abe7fcbf144afdb061` |
| 31 | `theorem` | [integral_Ioi_cpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-ioi-cpow-of-lt--0cf89bd4d6279af6f0410652.md) | 259 | `result-track:0cf89bd4d6279af6f041065230649d2bd30b5d573d99c15620b27f9345c5a766` |
| 32 | `theorem` | [integrable_inv_one_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrable-inv-one-add-sq--84401c6cdabfe64f22880f3f.md) | 282 | `result-track:84401c6cdabfe64f22880f3f09482cc654862ed02aa0bd9ae098c9b5e6ec1d21` |
| 33 | `theorem` | [integral_Iic_inv_one_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-iic-inv-one-add-sq--caae00cb4996b8059720232a.md) | 287 | `result-track:caae00cb4996b8059720232a02afbd14c31ab050a06594d17f42cf41f7f5389a` |
| 34 | `theorem` | [integral_Ioi_inv_one_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-ioi-inv-one-add-sq--994aa9902149ca9113100f3e.md) | 294 | `result-track:994aa9902149ca9113100f3e7e5259dd6d3501fb9b29dafb3c304249a43901e9` |
| 35 | `theorem` | [integral_univ_inv_one_add_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-univ-inv-one-add-sq--5856fe3228ef9dc3e6984b4b.md) | 300 | `result-track:5856fe3228ef9dc3e6984b4b1c0451de3b9c399289fd7c84364b388d5931ef07` |
| 36 | `theorem` | [integrable_inv_one_add_mul_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrable-inv-one-add-mul-sq--070aee4513293d7239919802.md) | 305 | `result-track:070aee4513293d7239919802556ad82afb7dab95590270840616c5f2bf322431` |
| 37 | `theorem` | [integral_univ_inv_one_add_mul_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-univ-inv-one-add-mul-sq--98ce574f97ea4970b16a3202.md) | 310 | `result-track:98ce574f97ea4970b16a3202ab5cc9a91b2c4c8ec0a06593f9aeebc382170473` |
| 38 | `theorem` | [integrableOn_Ioi_zero_inv_mul_one_add_log_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-ioi-zero-inv-mul-one-add-log-sq--d63903f49b66d382f5381ac8.md) | 315 | `result-track:d63903f49b66d382f5381ac8f5199146a70562da70c5ffde945119485a48b635` |
| 39 | `theorem` | [integral_Ioi_zero_inv_mul_one_add_log_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-ioi-zero-inv-mul-one-add-log-sq--11c88b194e237037d467a269.md) | 325 | `result-track:11c88b194e237037d467a2692a59809aa55beb12ed93b109672be3dd0438933f` |
| 40 | `theorem` | [integrableOn_inv_div_log_sq_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integrableon-inv-div-log-sq-ioi--6ec45a75eb8c81a89bcb2ec2.md) | 333 | `result-track:6ec45a75eb8c81a89bcb2ec240a4cac4a4410101e841086951ea9381522c6bdd` |
| 41 | `theorem` | [integral_inv_div_log_sq_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant2d641d2de4173e6867df5f892212bf37a99ef99b23966076527e4fe923c3e5f8.lean/declarations/integral-inv-div-log-sq-ioi--d1cbc24d8138e7a0004d53df.md) | 344 | `result-track:d1cbc24d8138e7a0004d53df4034c9a581f3e2fd1d327ed6161b3b023278a347` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
