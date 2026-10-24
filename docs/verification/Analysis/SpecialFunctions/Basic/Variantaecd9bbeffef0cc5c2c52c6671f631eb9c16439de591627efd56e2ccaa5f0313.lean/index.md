# Verification target: GRWTSK.Analysis.SpecialFunctions.Basic.Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78241d02a3ed3f1e088d42bf3bc8e87a85456767",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78241d02a3ed3f1e088d42bf3bc8e87a85456767`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Gamma_integrand_isLittleO](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-integrand-islittleo--7328d53b0327515daea79a89.md) | 57 | `result-track:7328d53b0327515daea79a89500364f30d69ff032abcc266abe8727bca9cd2e9` |
| 2 | `theorem` | [GammaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaintegral-convergent--d70f787cda45e2d43de9500d.md) | 72 | `result-track:d70f787cda45e2d43de9500d956f5b2a424035e2839864db99ba4b61dc1525ea` |
| 3 | `theorem` | [GammaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaintegral-convergent--4a82c02cd14d5cee339fd875.md) | 96 | `result-track:4a82c02cd14d5cee339fd875443f90f0854fb14280f67855a93193ad384504c6` |
| 4 | `def` | [GammaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaintegral--04762359d4e77ef6b7dafb44.md) | 120 | `declaration-track:04762359d4e77ef6b7dafb44b98d8dd5b74818221e3c8e9fc28ee2ea2c932b2d` |
| 5 | `theorem` | [GammaIntegral_conj](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaintegral-conj--8a99de695a2ead94946cf5b2.md) | 124 | `result-track:8a99de695a2ead94946cf5b286b5c3a1319d0973b61378654762241f1702f5b7` |
| 6 | `theorem` | [GammaIntegral_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaintegral-ofreal--b6d0eb2f5f563fe98cfa640d.md) | 133 | `result-track:b6d0eb2f5f563fe98cfa640db306707373f20923c67b047394baa902af4d9a7d` |
| 7 | `theorem` | [GammaIntegral_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaintegral-one--fc88414c0508d70140fcc555.md) | 145 | `result-track:fc88414c0508d70140fcc5551f87bbff5de3928874b40e3967f391a0970b0ceb` |
| 8 | `def` | [partialGamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/partialgamma--7f653b8593f2b038a5a6c99b.md) | 160 | `declaration-track:7f653b8593f2b038a5a6c99b8c3ef840931868d77048ab9da894af4ace1e11c3` |
| 9 | `theorem` | [tendsto_partialGamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/tendsto-partialgamma--cdc4c6ce6b991d33de349f08.md) | 164 | `result-track:cdc4c6ce6b991d33de349f08f13c547f2ad1379cdddc350b98e65d88e37761ad` |
| 10 | `theorem` | [Gamma_integrand_interval_integrable](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-integrand-interval-integrable--ed2145263c755dca21af7076.md) | 169 | `result-track:ed2145263c755dca21af707693d4a1c5cde9a261f5e6122900d2375ccf2f3ba3` |
| 11 | `theorem` | [Gamma_integrand_deriv_integrable_A](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-integrand-deriv-integrable-a--52807a803b6ff2b875815753.md) | 174 | `result-track:52807a803b6ff2b8758157534e0da8192d65c739feef04a4f42a75acfba441f5` |
| 12 | `theorem` | [Gamma_integrand_deriv_integrable_B](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-integrand-deriv-integrable-b--b31fd8b84a194e7a669c38e3.md) | 180 | `result-track:b31fd8b84a194e7a669c38e35ac7abbbfd8661da977eb2d7a530ddd98e01dae0` |
| 13 | `theorem` | [partialGamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/partialgamma-add-one--ea8c9905c2e68cceaef248ca.md) | 203 | `result-track:ea8c9905c2e68cceaef248ca4e67a5fea5d3260cbc6b5d844ee698151d2b678c` |
| 14 | `theorem` | [GammaIntegral_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaintegral-add-one--a6877a30f1733a7535ba1390.md) | 237 | `result-track:a6877a30f1733a7535ba1390c8e799fbae8387bf3d126eed16fad8e3765576e2` |
| 15 | `def` | [GammaAux](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaaux--19ba0b83e7727fda03e58f80.md) | 269 | `declaration-track:19ba0b83e7727fda03e58f802929be17561f0757297c36608b408ebb038f38a3` |
| 16 | `theorem` | [GammaAux_recurrence1](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaaux-recurrence1--88a853688e334f16514f4e38.md) | 274 | `result-track:88a853688e334f16514f4e3889ed999631acfa7228012cf8f4413ed016316c02` |
| 17 | `theorem` | [GammaAux_recurrence2](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaaux-recurrence2--aa88fff3b34ceee2c6b0c36a.md) | 288 | `result-track:aa88fff3b34ceee2c6b0c36abff2b52b7d4a40297eec0b32e26950a1612bff16` |
| 18 | `def` | [Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma--4e6ad8b8454264917e4a43cd.md) | 308 | `declaration-track:4e6ad8b8454264917e4a43cdf7e0f5dda2bf0f1d5d836ed03679fd05f9a8d7ce` |
| 19 | `theorem` | [Gamma_eq_GammaAux](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-eq-gammaaux--e32d34fc7e8686429554ab37.md) | 312 | `result-track:e32d34fc7e8686429554ab374a0d077037b9d988d861ca26cf1a6f9ab60bc27a` |
| 20 | `theorem` | [Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-add-one--9afbc81e65765e1a9b4546dd.md) | 331 | `result-track:9afbc81e65765e1a9b4546dd3b649f49f1e55de6d8a0beff47a44e814d2ef77f` |
| 21 | `theorem` | [Gamma_eq_integral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-eq-integral--c13ada277a2e4c0a7878e1bf.md) | 339 | `result-track:c13ada277a2e4c0a7878e1bf98f31a281ba9540d46f21fa69560e031c1275b80` |
| 22 | `theorem` | [Gamma_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-one--7e5215fe10054c5eb2496f3e.md) | 343 | `result-track:7e5215fe10054c5eb2496f3e036bc294b25afc3c65866989e2985d683c963e65` |
| 23 | `theorem` | [Gamma_nat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-nat-eq-factorial--544a1f59da871107b18652e0.md) | 346 | `result-track:544a1f59da871107b18652e04addfdd0515d016ac3f2bba95471ec99e0be2662` |
| 24 | `theorem` | [Gamma_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-zero--a9d1e7363012d523515a7734.md) | 354 | `result-track:a9d1e7363012d523515a77342a9268801fcd8bfa9a2bfa053a1c11df146cd3a5` |
| 25 | `theorem` | [Gamma_neg_nat_eq_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-neg-nat-eq-zero--5ff9673c24a190168765df79.md) | 359 | `result-track:5ff9673c24a190168765df79dfdcc4f8098e201e8e8efe4da2daf4a155039364` |
| 26 | `theorem` | [Gamma_conj](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-conj--d4d66b0590dd8ae64649246d.md) | 371 | `result-track:d4d66b0590dd8ae64649246de3197608c2fe196439f0019b123530ed287597c4` |
| 27 | `theorem` | [GammaIntegral_eq_mellin](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gammaintegral-eq-mellin--7ee74dad260eddb1e189d796.md) | 392 | `result-track:7ee74dad260eddb1e189d7960eb4881adcfde8f79dfe72831cd28ef232cb6675` |
| 28 | `theorem` | [hasDerivAt_GammaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/hasderivat-gammaintegral--fb0395a6eb0f2c0ffd912ded.md) | 398 | `result-track:fb0395a6eb0f2c0ffd912ded165db93b3a321ffdd4bb5628a14075c59c1e903f` |
| 29 | `theorem` | [differentiableAt_GammaAux](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/differentiableat-gammaaux--c79f04e30b8510ec22dfdff5.md) | 413 | `result-track:c79f04e30b8510ec22dfdff556ab40d47d955abae10631a8cea2cec74cbb62a4` |
| 30 | `theorem` | [differentiableAt_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/differentiableat-gamma--6066e4dcd841226c513151fe.md) | 433 | `result-track:6066e4dcd841226c513151fe57c8795376d8b68f0f223d199c8e97c8deac638c` |
| 31 | `theorem` | [tendsto_self_mul_Gamma_nhds_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/tendsto-self-mul-gamma-nhds-zero--fa1846702326d51bce37437b.md) | 453 | `result-track:fa1846702326d51bce37437b9a4be662d47851932aa127a2d3495089326a33ae` |
| 32 | `def` | [Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma--381375c41d1d2b425a6860c1.md) | 470 | `declaration-track:381375c41d1d2b425a6860c153345ae09e02bfe649d8547feafd9749b4d6d0fe` |
| 33 | `theorem` | [Gamma_eq_integral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-eq-integral--12a9e2a2a0df42f8b881f7e3.md) | 474 | `result-track:12a9e2a2a0df42f8b881f7e321fc8e0970648b24aa151decaf20a3d0c2cbcd1f` |
| 34 | `theorem` | [Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-add-one--c80e6344c1525375a09ac6b2.md) | 490 | `result-track:c80e6344c1525375a09ac6b205b73f5d56ad75f7d3149f3aaa0821b560838836` |
| 35 | `theorem` | [Gamma_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-one--7af1b519bec8739466fe8968.md) | 496 | `result-track:7af1b519bec8739466fe8968f9218973194522bdf910245f9355851bc7d862bf` |
| 36 | `theorem` | [_root_.Complex.Gamma_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/root-complex-gamma-ofreal--6281e4f3e4a7b848911290f7.md) | 500 | `result-track:6281e4f3e4a7b848911290f7e0a65d1f13be851c5300809b84dd0de395d33cab` |
| 37 | `theorem` | [Gamma_nat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-nat-eq-factorial--24cfd62d20e740d411b3c334.md) | 504 | `result-track:24cfd62d20e740d411b3c33406dde9f88f968c8d4319becf343869185c995730` |
| 38 | `theorem` | [Gamma_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-zero--4a1e07a354d6a2fcf7dc3eb1.md) | 510 | `result-track:4a1e07a354d6a2fcf7dc3eb13b30437e572b15654110d435d4db5945f77d8750` |
| 39 | `theorem` | [Gamma_neg_nat_eq_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-neg-nat-eq-zero--cefa3fc6397d3f229f77acd9.md) | 517 | `result-track:cefa3fc6397d3f229f77acd9daec3a42468197b0d5912b0f29bd028aa34c87b5` |
| 40 | `theorem` | [Gamma_pos_of_pos](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-pos-of-pos--8016819aad0918a5549d7b3b.md) | 522 | `result-track:8016819aad0918a5549d7b3b93c8cb3ef133a74a03233dcafc9e1d1bdcfae76d` |
| 41 | `theorem` | [Gamma_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-ne-zero--3252405e83ba2afa23ad0360.md) | 539 | `result-track:3252405e83ba2afa23ad0360e60b158eb769b2f431bd7d561c537f41d60b3fa0` |
| 42 | `theorem` | [Gamma_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/gamma-eq-zero-iff--f95e4cfdc870c24a7bc2af03.md) | 567 | `result-track:f95e4cfdc870c24a7bc2af035382a7f4bb44a7e12c6465d9d3dfe63dce3841a7` |
| 43 | `theorem` | [differentiableAt_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/declarations/differentiableat-gamma--99fed35b7fd3f827a18e8a5d.md) | 571 | `result-track:99fed35b7fd3f827a18e8a5d304f20c7ce42665d61633718cdd26446f46222dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
