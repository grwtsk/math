# Verification target: GRWTSK.Analysis.HeatFlow.FiniteCosineHodge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f0c632413378e72cc78f91f0809a45b104e0740",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/index.md) · [Full source](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f0c632413378e72cc78f91f0809a45b104e0740`.

Source path: `GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HeatFlow/FiniteCosineHodge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modeLaplacian](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/modelaplacian--876bce474f893ef9837360b9.md) | 37 | `declaration-track:876bce474f893ef9837360b90f5c7f93f421930f389231360abf70061aea2453` |
| 2 | `theorem` | [modeLaplacian_nonneg](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/modelaplacian-nonneg--19fbdb8dcb9d180c97a238e2.md) | 39 | `result-track:19fbdb8dcb9d180c97a238e20b425f52995d20253da4b9a7ef8348e6ba1ca4cf` |
| 3 | `def` | [modeHeat](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/modeheat--902903160b5a3e5868ef895b.md) | 45 | `declaration-track:902903160b5a3e5868ef895b7e919374f884884afd9335fa189a0e10ed5044ce` |
| 4 | `theorem` | [modeHeat_zero](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/modeheat-zero--040573e80cde4fc03d6371dd.md) | 49 | `result-track:040573e80cde4fc03d6371ddfb964bda9972834b0e4d7100c264a8fde86ac99b` |
| 5 | `theorem` | [modeHeat_add](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/modeheat-add--9325215fdb17adad2b9e7d4f.md) | 54 | `result-track:9325215fdb17adad2b9e7d4fcec7c55d1638c1473f116e5d6fbc41406b9432d0` |
| 6 | `theorem` | [modeHeat_pos](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/modeheat-pos--089a4d4a8288e7c416579c36.md) | 63 | `result-track:089a4d4a8288e7c416579c3675d9515da3bf370470300f5c140195cf6b2a0b94` |
| 7 | `theorem` | [modeHeat_le_one](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/modeheat-le-one--600bff3be0990ce0c6352536.md) | 69 | `result-track:600bff3be0990ce0c6352536790558108389739bf04a917b443c07de519985ff` |
| 8 | `def` | [coefficient](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/coefficient--eaae3b2749cfcaf28b2fc724.md) | 78 | `declaration-track:eaae3b2749cfcaf28b2fc7246e28235de80e270b15929b5c7b3fd356580171b8` |
| 9 | `theorem` | [coefficient_zero](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/coefficient-zero--89bf75eeccc527bd1ad2a956.md) | 81 | `result-track:89bf75eeccc527bd1ad2a9566cc97235cdae338484d21a26b10d19ac05e19b9d` |
| 10 | `theorem` | [coefficient_time_add](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/coefficient-time-add--e16d2b259ecdda688910a217.md) | 86 | `result-track:e16d2b259ecdda688910a217766b1e0d23925887393a876923de97bb1f9ab13c` |
| 11 | `def` | [twoModeHeat](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat--cb7683d1dc55511ed748caf4.md) | 93 | `declaration-track:cb7683d1dc55511ed748caf4c96f16dd7c54fcb97b2a88055122a4186cf6c26e` |
| 12 | `theorem` | [twoModeHeat_zero](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-zero--c415e27f680e99ad1abb0c22.md) | 98 | `result-track:c415e27f680e99ad1abb0c227a5e70a76f1be51b9306160a840ed9df9563d117` |
| 13 | `theorem` | [twoModeHeat_even](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-even--072334fbb9f69a45fcb9edb3.md) | 104 | `result-track:072334fbb9f69a45fcb9edb37fd38d0f3d990e8ec8f2e71342879927cb463c6c` |
| 14 | `theorem` | [twoModeHeat_source_separation](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-source-separation--f0ea0f6296c1132e20334606.md) | 110 | `result-track:f0ea0f6296c1132e203346061012ac8d6b312142f510a277737f06f5fdcd0b5d` |
| 15 | `theorem` | [twoModeHeat_source_error](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-source-error--b99d133135fa82101b612c11.md) | 122 | `result-track:b99d133135fa82101b612c115c1d1775018f4c42c409b4fabc479bd123670171` |
| 16 | `theorem` | [twoModeHeat_source_error_bound](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-source-error-bound--0d0e7ac61d17f2ba7da8260e.md) | 132 | `result-track:0d0e7ac61d17f2ba7da8260e3e3b9e628394d8c7d50e457c200ea0c2d3150abc` |
| 17 | `theorem` | [twoModeHeat_source_identity](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-source-identity--027e017c439fed3e45af81b1.md) | 143 | `result-track:027e017c439fed3e45af81b1978baf647d8b66c5e33248386f69f37907afb5eb` |
| 18 | `theorem` | [twoModeHeat_two_stage_bound](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-two-stage-bound--f1e6347e28358eac8f8796a7.md) | 152 | `result-track:f1e6347e28358eac8f8796a73b85cebd2f667d594d5c91e1581716fbd7629f59` |
| 19 | `theorem` | [hasDerivAt_modeHeat](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/hasderivat-modeheat--c4a723f0f8ee426a591f55a3.md) | 175 | `result-track:c4a723f0f8ee426a591f55a3e2945bc5bf1bf8fcba40c732b06d9ebd70471132` |
| 20 | `theorem` | [hasDerivAt_coefficient](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/hasderivat-coefficient--41765e8712e546cb19ca9504.md) | 190 | `result-track:41765e8712e546cb19ca950475df78accb951960ecd56957a0c66db35e2f80c4` |
| 21 | `theorem` | [hasDerivAt_cosineMode](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/hasderivat-cosinemode--9db84b14270276f14fd784c6.md) | 200 | `result-track:9db84b14270276f14fd784c6e55fcb55dd5178a549780369e3e7a509bac55ab2` |
| 22 | `theorem` | [hasDerivAt_sineMode](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/hasderivat-sinemode--e213eca2f2e56b83e6a1f157.md) | 209 | `result-track:e213eca2f2e56b83e6a1f157c2d481e2e03ab4b9b90a9a6e7007098622916d1d` |
| 23 | `theorem` | [hasDerivAt_timeCosineMode](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/hasderivat-timecosinemode--b7ddce4e746f6101b6029522.md) | 218 | `result-track:b7ddce4e746f6101b60295223c34e69f28d265bb8dea3c8dc0bd743057a90929` |
| 24 | `theorem` | [hasDerivAt_twoModeHeat_time](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/hasderivat-twomodeheat-time--85a4f42784a951db34a6a55c.md) | 225 | `result-track:85a4f42784a951db34a6a55cf8dfcd174ce15ad977672e8bb6c924539bd28edd` |
| 25 | `theorem` | [hasDerivAt_twoModeHeat_space](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/hasderivat-twomodeheat-space--1a5310105ba292811c0aa086.md) | 237 | `result-track:1a5310105ba292811c0aa0869fdf28d0ff9eda5d33be717e36be3e2c3ce063f4` |
| 26 | `theorem` | [hasDerivAt_twoModeHeat_space_derivative](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/hasderivat-twomodeheat-space-derivative--9a3ac957e62bb93eaf28e249.md) | 246 | `result-track:9a3ac957e62bb93eaf28e24943939255602fe01be4f3583d8c951055cadf57d6` |
| 27 | `theorem` | [twoModeHeat_finite_heat_equation](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-finite-heat-equation--e083ad039bb8473dfa5d3b3f.md) | 259 | `result-track:e083ad039bb8473dfa5d3b3f0d09230514b8b3927a3b0e274b5bd27e191b1442` |
| 28 | `structure` | [FiniteHeatErrorBudget](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/finiteheaterrorbudget--3c5bbc3720f725643b375fdb.md) | 270 | `declaration-track:3c5bbc3720f725643b375fdbcf0f30d444a0730b80173602e8f416df5e318e2f` |
| 29 | `def` | [FiniteHeatErrorBudget.total](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/finiteheaterrorbudget-total--c254d434bc4920147fc22729.md) | 277 | `declaration-track:c254d434bc4920147fc227298a76c1a641e4ac98aa61a40425e15381db937c45` |
| 30 | `theorem` | [finiteHeatErrorBudget_bound](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/finiteheaterrorbudget-bound--8a8fee77f84a8fdf24813eb8.md) | 282 | `result-track:8a8fee77f84a8fdf24813eb8d1bfad54f19757db2f3bb53e1d0ea034ee638be7` |
| 31 | `theorem` | [finiteCosineTailBound](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/finitecosinetailbound--0301063fda8e5d941c21a3c5.md) | 313 | `result-track:0301063fda8e5d941c21a3c518d460d58caee7a1dc9b936cbf3f20b4a9c50ba2` |
| 32 | `theorem` | [finiteCosineExponentialMajorant](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/finitecosineexponentialmajorant--cd2536c305f4f34b32757a45.md) | 345 | `result-track:cd2536c305f4f34b32757a4584158534ef6e9c5c7100277ba2d5f1dc6367e96f` |
| 33 | `def` | [exponentialTailBudget](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/exponentialtailbudget--61d3806b09a09b1fbd1dbe09.md) | 376 | `declaration-track:61d3806b09a09b1fbd1dbe09bee7912c36106351c1b786c9ec33a65d9e8ae2d8` |
| 34 | `theorem` | [exponentialTailBudget_nonneg](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/exponentialtailbudget-nonneg--72516afb3bcde9bdf08fd253.md) | 381 | `result-track:72516afb3bcde9bdf08fd253f8cccd3ab451b37b828a87f3a00c611d2c1aa321` |
| 35 | `theorem` | [exponentialTailBudget_antitone](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/exponentialtailbudget-antitone--6bff7db0b21f2ffb2fc0f3ee.md) | 389 | `result-track:6bff7db0b21f2ffb2fc0f3eeb73784c5eff88830b1b710d2f8938945dd602ab6` |
| 36 | `theorem` | [exponentialTailBudget_amplitude_mono](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/exponentialtailbudget-amplitude-mono--37b46f44dbefb5f238e69b2b.md) | 403 | `result-track:37b46f44dbefb5f238e69b2bcb2674514e42055970d735f9ee0d858d7587a1ff` |
| 37 | `theorem` | [exponentialTailBudget_refine](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/exponentialtailbudget-refine--d39d0a091c527c1fa59e25f5.md) | 412 | `result-track:d39d0a091c527c1fa59e25f5b6e11494b321e1d52781d804d6e98601c72bc214` |
| 38 | `structure` | [ExponentialTailIntegralCertificate](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/exponentialtailintegralcertificate--65102dd306709f11bb1eb767.md) | 424 | `declaration-track:65102dd306709f11bb1eb767db58872ceb8d00ec2b225cb3c28a9cce3854324f` |
| 39 | `theorem` | [certified_integrated_tail_bound](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/certified-integrated-tail-bound--e94177c1e2520bdd96609d31.md) | 434 | `result-track:e94177c1e2520bdd96609d31a3c2bdf8abcc555d6c0608e772430cc489ce6223` |
| 40 | `theorem` | [certified_integrated_tail_refinement](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/certified-integrated-tail-refinement--6e1fc387bbaa3deebefcf59c.md) | 442 | `result-track:6e1fc387bbaa3deebefcf59c0e0d3ea4a017a05a7d6b0daf892cc09f5727b5d0` |
| 41 | `theorem` | [modeHeat_abs_le_one](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/modeheat-abs-le-one--0214566ccc5e6fec3225f108.md) | 455 | `result-track:0214566ccc5e6fec3225f108d2211acd7ab03c0125cf8c47351f19c1e7fd83cb` |
| 42 | `theorem` | [coefficient_error_contracts](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/coefficient-error-contracts--878a176b7eb310a0f1ad09dd.md) | 462 | `result-track:878a176b7eb310a0f1ad09dd92d387a15d4795b3a9ba85709aeebfce3600310f` |
| 43 | `theorem` | [twoModeHeat_source_error_contracts](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-source-error-contracts--e613f6153df5ce02fb99d03a.md) | 479 | `result-track:e613f6153df5ce02fb99d03ae7e2c2c0d02547be24e0accdb3169967ee9a4ad2` |
| 44 | `theorem` | [twoModeHeat_source_lipschitz](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-source-lipschitz--6d30df31ab63e787450cffa7.md) | 513 | `result-track:6d30df31ab63e787450cffa798ccc7321102f5977d7d3dacf45750e2f94bb497` |
| 45 | `theorem` | [twoModeHeat_source_and_readout_budget](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/twomodeheat-source-and-readout-budget--030528f89b02e796d6b69ff1.md) | 522 | `result-track:030528f89b02e796d6b69ff1666576569d1729b65640ef84b153331d89d2df70` |
| 46 | `theorem` | [exponentialTailBudget_at_zero](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/exponentialtailbudget-at-zero--04854c09ddf83edd3c7be3cb.md) | 544 | `result-track:04854c09ddf83edd3c7be3cb6194fd213d0bcc16917214e7647ccac06832508e` |
| 47 | `theorem` | [finiteHeatErrorBudget_source_le_total](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/finiteheaterrorbudget-source-le-total--12e695fffdea3554fa9bbfc9.md) | 552 | `result-track:12e695fffdea3554fa9bbfc98d185d395365601b2f2c6f8730a0849221610277` |
| 48 | `theorem` | [finiteHeatErrorBudget_tail_le_total](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/finiteheaterrorbudget-tail-le-total--66aa66f796236a7dac94733a.md) | 562 | `result-track:66aa66f796236a7dac94733a4d61d9ec62de93a3ae6249f15ed1db52f584a5c8` |
| 49 | `structure` | [ThetaTailSupplier](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetatailsupplier--c0ffa2a22d39f6fca8b2ee39.md) | 574 | `declaration-track:c0ffa2a22d39f6fca8b2ee39735deface3a7e43711acbda5f30c33406f0cb390` |
| 50 | `theorem` | [thetaTailSupplier_combine](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetatailsupplier-combine--6ea7faf1b37c474a960fbb34.md) | 584 | `result-track:6ea7faf1b37c474a960fbb342e7f5593a4e1e0596a29f019902901fefd4146f2` |
| 51 | `theorem` | [thetaTailSupplier_source_le_total](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetatailsupplier-source-le-total--a40f6422ee62d56b09bbc9c9.md) | 595 | `result-track:a40f6422ee62d56b09bbc9c97fb33b1bc5e654ff7c0554045f7464b2b63b4e17` |
| 52 | `def` | [thetaGaussianSummand](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetagaussiansummand--6db7a281c8467d44a95b0e1e.md) | 605 | `declaration-track:6db7a281c8467d44a95b0e1efad5765a4a0bcc5c15bdb9176aaf6ac09006e91a` |
| 53 | `theorem` | [thetaGaussianSummand_pos](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetagaussiansummand-pos--3173138be6f4242f245c5e60.md) | 608 | `result-track:3173138be6f4242f245c5e603718eab66a6c1f49bbd6ffb06bf554cce057db1f` |
| 54 | `theorem` | [thetaGaussianSummand_mode_antitone](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetagaussiansummand-mode-antitone--0918246c19827237d2c3d2aa.md) | 615 | `result-track:0918246c19827237d2c3d2aa63c09645c14e34ee472e438a73884dded3d11fd8` |
| 55 | `def` | [thetaKernelTerm](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelterm--596e1f94a68b4b2e232464c8.md) | 631 | `declaration-track:596e1f94a68b4b2e232464c828fab5b34d47cc12de5dc1eb1dc8e095953d63ae` |
| 56 | `theorem` | [thetaKernelTerm_zero](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelterm-zero--256bdba3bfc47a5cbd62e262.md) | 637 | `result-track:256bdba3bfc47a5cbd62e2625f7256ba32cd768e171b82f483a6b5a24f42125e` |
| 57 | `theorem` | [thetaKernelTerm_expansion](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelterm-expansion--ecd70ebfc6725d12f2c44dd5.md) | 644 | `result-track:ecd70ebfc6725d12f2c44dd5c0ff6f407135d8ac69f66065e12a512547015054` |
| 58 | `def` | [thetaKernelPositivePart](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelpositivepart--8cd8da348b2e9bbcb6ec2953.md) | 656 | `declaration-track:8cd8da348b2e9bbcb6ec29538174b1bfdcadb4e71f937d53cac518ead66b1ae7` |
| 59 | `def` | [thetaKernelNegativePart](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelnegativepart--5ec6d5195e049c9a9b8cd89f.md) | 660 | `declaration-track:5ec6d5195e049c9a9b8cd89fbb2bc57515a01f5eba805d8d70d7e0296b72a243` |
| 60 | `theorem` | [thetaKernelPositivePart_nonneg](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelpositivepart-nonneg--ef78490f7da28050352caa3a.md) | 664 | `result-track:ef78490f7da28050352caa3ab4a1444fbc6327796f280d864f77116b94db00c8` |
| 61 | `theorem` | [thetaKernelNegativePart_nonneg](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelnegativepart-nonneg--defd9d5b3424d6f7873ea4ce.md) | 670 | `result-track:defd9d5b3424d6f7873ea4ce8455965d6d98175cff67add29987e17683c096ba` |
| 62 | `theorem` | [thetaKernelTerm_split](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelterm-split--8ee0450407403f04904b8475.md) | 679 | `result-track:8ee0450407403f04904b847541d2374d61fb95ac0098fa03523546b48503489f` |
| 63 | `theorem` | [thetaKernelTerm_abs_le_parts](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelterm-abs-le-parts--ea5bf7be5cb3bc1865e036e9.md) | 686 | `result-track:ea5bf7be5cb3bc1865e036e975bb06cf637bcbb1716007f316f8f9fa0060b831` |
| 64 | `def` | [thetaKernelPartialSum](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelpartialsum--60469ae393d0638c281521f9.md) | 702 | `declaration-track:60469ae393d0638c281521f9f3d74fbfaeee01d6be838cc2da73d290e4a0179b` |
| 65 | `def` | [thetaKernelPartialMajorant](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelpartialmajorant--f83409afced3c9b62121619c.md) | 706 | `declaration-track:f83409afced3c9b62121619cf4b72c739a39ba74ab55e4dcbbb0ebfe69b1c63e` |
| 66 | `theorem` | [thetaKernelPartialMajorant_nonneg](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelpartialmajorant-nonneg--5e5206860f570367e8b45c36.md) | 711 | `result-track:5e5206860f570367e8b45c3601d35258c167efc3958ad0fe73216cc5f07baf57` |
| 67 | `theorem` | [thetaKernelPartialSum_abs_le](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelpartialsum-abs-le--e905596adaaa34b5a4c3039a.md) | 721 | `result-track:e905596adaaa34b5a4c3039a7958429e3353127cb290985d0e9b480c29641a75` |
| 68 | `structure` | [ThetaUniformMajorant](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetauniformmajorant--cc5ed953a3c5c3ffd520803c.md) | 738 | `declaration-track:cc5ed953a3c5c3ffd520803c71efdcd7ed03ad4a3811ede94c541b6be9fc8213` |
| 69 | `theorem` | [thetaKernelPartialSum_uniform_bound](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelpartialsum-uniform-bound--316592d9fef8859ea7a67c44.md) | 744 | `result-track:316592d9fef8859ea7a67c446bc2e475f40df1b0ae4caaaabd04f4539074ed5b` |
| 70 | `theorem` | [thetaKernelPartialMajorant_mono](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelpartialmajorant-mono--50d4a79c9f7b65d8c083a609.md) | 753 | `result-track:50d4a79c9f7b65d8c083a60968924a42da5e6f0cfcb148bb8801318033c84982` |
| 71 | `def` | [thetaScaledGaussian](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetascaledgaussian--b9edd67950e279c0fa70f2da.md) | 767 | `declaration-track:b9edd67950e279c0fa70f2da9a89a9771bf2baff34428e007e18c28362878c68` |
| 72 | `theorem` | [thetaGaussianSummand_scaled](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetagaussiansummand-scaled--4b3276c7fe12c8776f2ccbfb.md) | 770 | `result-track:4b3276c7fe12c8776f2ccbfb974d5263771b66d743c9e84aa850ddf011028922` |
| 73 | `theorem` | [thetaScaledGaussian_nonneg](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetascaledgaussian-nonneg--7fdfa9c27938b3ca412ed61f.md) | 777 | `result-track:7fdfa9c27938b3ca412ed61f9cea541f9a25671f021f0bdf712ea1b53d04a765` |
| 74 | `theorem` | [thetaKernelPositivePart_scaled](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelpositivepart-scaled--61d66194a1160b3d6419097e.md) | 785 | `result-track:61d66194a1160b3d6419097e2a138f567956085a35cb2286e3078685509ae1ab` |
| 75 | `theorem` | [thetaKernelNegativePart_scaled](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelnegativepart-scaled--24021900de334d329c9ff223.md) | 801 | `result-track:24021900de334d329c9ff223623076202bcc696bf7876074a9de92a1d28b7885` |
| 76 | `theorem` | [thetaKernelTerm_scaled](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelterm-scaled--797c316a422db9c05c2b5e7a.md) | 817 | `result-track:797c316a422db9c05c2b5e7afdb68938f8abece0c2d1071f36f20be4066f9952` |
| 77 | `def` | [thetaScaledPolynomial](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetascaledpolynomial--03918e8be380bf93ca3e6073.md) | 829 | `declaration-track:03918e8be380bf93ca3e60730aa9308fdeed90404ff013ad980d39450609f48a` |
| 78 | `theorem` | [thetaScaledPolynomial_abs_bound](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetascaledpolynomial-abs-bound--5d1409cb0e74d6e441e7cdc3.md) | 834 | `result-track:5d1409cb0e74d6e441e7cdc385348c682373a79885a3049a2efbf819a110010c` |
| 79 | `theorem` | [thetaKernelTerm_scaledPolynomial](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetakernelterm-scaledpolynomial--49bb5933285eb1b0a85b30de.md) | 849 | `result-track:49bb5933285eb1b0a85b30de4504a3d0a2a9a6c4e304343c959eb98b988bd63f` |
| 80 | `structure` | [ScaledGaussianEnvelope](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/scaledgaussianenvelope--eccd1a7d2c67d4fbf2e9349c.md) | 860 | `declaration-track:eccd1a7d2c67d4fbf2e9349c94bd2e0e6a2e6c1139dd170ab84bfa2d35857191` |
| 81 | `theorem` | [thetaScaledPolynomial_gaussian_bound](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/thetascaledpolynomial-gaussian-bound--b206ea6011dbb40836f6e6ff.md) | 868 | `result-track:b206ea6011dbb40836f6e6ffffde127fe365cf401879812e245cfe8abecf4b7f` |
| 82 | `theorem` | [polynomial_exponential_envelope](../../../../mathematics/Analysis/HeatFlow/FiniteCosineHodge.lean/declarations/polynomial-exponential-envelope--0fff559c7476a634cc0e050b.md) | 896 | `result-track:0fff559c7476a634cc0e050bf3152efc359c12e93eb8a00b183e36b4180e7fd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
