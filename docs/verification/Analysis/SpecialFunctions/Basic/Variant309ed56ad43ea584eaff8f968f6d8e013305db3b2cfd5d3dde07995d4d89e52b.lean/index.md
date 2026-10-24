# Verification target: GRWTSK.Analysis.SpecialFunctions.Basic.Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f1a3f77dd9f70a1716cdd40600573cde925ca09",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f1a3f77dd9f70a1716cdd40600573cde925ca09`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Gamma_integrand_isLittleO](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-integrand-islittleo--e4e12d9fcfb6c8cec4354640.md) | 50 | `result-track:e4e12d9fcfb6c8cec4354640b6c2ac6086015e4f17a3fc255a10b314b510bb51` |
| 2 | `theorem` | [GammaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gammaintegral-convergent--819045e890375948abbcb32b.md) | 64 | `result-track:819045e890375948abbcb32b2b94600ee8ecdecbcf440e39d48e69b6d922f6ad` |
| 3 | `theorem` | [GammaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gammaintegral-convergent--9fb8ee0024096069d3c0a5e6.md) | 87 | `result-track:9fb8ee0024096069d3c0a5e6fb2bd8da13b2bf46626065a5bd8882507bc7d5e3` |
| 4 | `def` | [GammaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gammaintegral--1ef0a1557585dd3c8fdc345c.md) | 110 | `declaration-track:1ef0a1557585dd3c8fdc345c0c48196e7b4649a7b26edf8d52a9bd6123007e83` |
| 5 | `theorem` | [GammaIntegral_conj](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gammaintegral-conj--bc0a496232ef98e16fbc8e29.md) | 113 | `result-track:bc0a496232ef98e16fbc8e29f8faa246b2984441c2eece0e3ec45928c3e0b832` |
| 6 | `theorem` | [GammaIntegral_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gammaintegral-ofreal--a74982ccf156b13159a6057e.md) | 121 | `result-track:a74982ccf156b13159a6057e587115deb4a54971646d8c8db2234bd297b1d8a3` |
| 7 | `theorem` | [GammaIntegral_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gammaintegral-one--6388409b8e620e882d08c69e.md) | 133 | `result-track:6388409b8e620e882d08c69e86ac85d1a25e15d87213f6b3c31bf31eee386f42` |
| 8 | `def` | [partialGamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/partialgamma--c0143e1eeaa767e7c2b5bc23.md) | 147 | `declaration-track:c0143e1eeaa767e7c2b5bc2309b156a832fc4cc731352ff436290833ffaeb9c6` |
| 9 | `theorem` | [tendsto_partialGamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/tendsto-partialgamma--1fc7b29b13127c05f948b02d.md) | 150 | `result-track:1fc7b29b13127c05f948b02dff78d01c0e60df997f47c984406abc789ca01cd6` |
| 10 | `theorem` | [Gamma_integrand_intervalIntegrable](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-integrand-intervalintegrable--1283fc4bc501daeba205c49f.md) | 154 | `result-track:1283fc4bc501daeba205c49fb3bc8079f0e81131a78829af87c83ced2bcc0a98` |
| 11 | `theorem` | [Gamma_integrand_deriv_integrable_A](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-integrand-deriv-integrable-a--a5a00d025ca5d2e6bda73b4a.md) | 159 | `result-track:a5a00d025ca5d2e6bda73b4a8af1c52bf8c93387e7aaa9983419f4aabd0a97fd` |
| 12 | `theorem` | [Gamma_integrand_deriv_integrable_B](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-integrand-deriv-integrable-b--a419d9b6f6ca17022170fddc.md) | 165 | `result-track:a419d9b6f6ca17022170fddc1d07b75eda15c41948a1538f1a2ee22f9de03846` |
| 13 | `theorem` | [partialGamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/partialgamma-add-one--82cf8118650a70acd799e86d.md) | 188 | `result-track:82cf8118650a70acd799e86db66f4e711260fcb6bbc1f31b3fe5040f7cb597db` |
| 14 | `theorem` | [GammaIntegral_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gammaintegral-add-one--c1897f795b54fb12655e3a90.md) | 219 | `result-track:c1897f795b54fb12655e3a902a9f3015b4e591a412d8af949a9b39a3a21523b4` |
| 15 | `def` | [GammaAux](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gammaaux--fa93efd3f28e52dab99e802b.md) | 250 | `declaration-track:fa93efd3f28e52dab99e802baba8171251548170341473ccc79ab5eca5e19c8c` |
| 16 | `theorem` | [GammaAux_recurrence1](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gammaaux-recurrence1--f20f6b7fcf13bed7e10147d5.md) | 254 | `result-track:f20f6b7fcf13bed7e10147d5e11785536323bab199c5a5bfcd85ea7657fba940` |
| 17 | `theorem` | [GammaAux_recurrence2](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gammaaux-recurrence2--523121f139aacdbe74fd94e0.md) | 267 | `result-track:523121f139aacdbe74fd94e0628bdbb8280ac78fb8122e86c967ad7dd46d6ac2` |
| 18 | `theorem` | [Gamma_eq_GammaAux](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-eq-gammaaux--ce9568063c31f1d8aae1eefb.md) | 289 | `result-track:ce9568063c31f1d8aae1eefb34770bdc37b22ddf206b3535cd0171fb8f485602` |
| 19 | `theorem` | [Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-add-one--4dbf2c1e91bb7cc8832c2c78.md) | 309 | `result-track:4dbf2c1e91bb7cc8832c2c78b6275079e6b454859fb97db97f9d51491978502d` |
| 20 | `theorem` | [Gamma_eq_integral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-eq-integral--9507dc58b1a1f176341cb2d3.md) | 316 | `result-track:9507dc58b1a1f176341cb2d3ddff72a636c5e51ee17a4f96d980e45a3b10717e` |
| 21 | `theorem` | [Gamma_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-one--1cdbe5808e353460424b0df7.md) | 320 | `result-track:1cdbe5808e353460424b0df73782698e50c1bcf31ce91b35600342774693bf8a` |
| 22 | `theorem` | [Gamma_nat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-nat-eq-factorial--7a98fa8f527018958874db74.md) | 322 | `result-track:7a98fa8f527018958874db747c01289a9f30e5573141fb83481ad4aecb05a94a` |
| 23 | `theorem` | [Gamma_ofNat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-ofnat-eq-factorial--7d1a9613a7328f2a2f66ec72.md) | 331 | `result-track:7d1a9613a7328f2a2f66ec72c33c1fd3de1e2003f7e19890650d36998a94229c` |
| 24 | `theorem` | [Gamma_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-zero--76efe6f0b87b558575e79acd.md) | 337 | `result-track:76efe6f0b87b558575e79acd9a835c792338bfdd20f5334fe42c6f0e0716647a` |
| 25 | `theorem` | [Gamma_neg_nat_eq_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-neg-nat-eq-zero--5364821cf4d99993291787fc.md) | 341 | `result-track:5364821cf4d99993291787fcc11005f14540f26f0ad431e570593883c0c830bd` |
| 26 | `theorem` | [Gamma_conj](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-conj--5f363fea55e3d7aeeafac3d1.md) | 353 | `result-track:5f363fea55e3d7aeeafac3d1987aeef255b08cab26ad9643d027fab2bba1e160` |
| 27 | `lemma` | [integral_cpow_mul_exp_neg_mul_Ioi](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/integral-cpow-mul-exp-neg-mul-ioi--d7096561840e69779ab79ae2.md) | 369 | `result-track:d7096561840e69779ab79ae29d807713cb8ae261e3c61a4a7343831bb57d6d45` |
| 28 | `def` | [Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma--f7ede7d360d0bf5e587dd19b.md) | 400 | `declaration-track:f7ede7d360d0bf5e587dd19bc5599ef9eaaf652ceac8105bb0128ff7191fc73e` |
| 29 | `theorem` | [Gamma_eq_integral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-eq-integral--6f3a1c3dc86c7bd00c97368d.md) | 403 | `result-track:6f3a1c3dc86c7bd00c97368d44480fe59cc9b998efe64856aec5fef6302e0ac9` |
| 30 | `theorem` | [Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-add-one--48d78a62b28225b37d873e7b.md) | 418 | `result-track:48d78a62b28225b37d873e7b8c59d31e543814a17918a5f88e4545d40544dde9` |
| 31 | `theorem` | [Gamma_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-one--dcac07477a24463f1c129f68.md) | 424 | `result-track:dcac07477a24463f1c129f680b8c737351f4beed5b239b53e98978ae79f885a7` |
| 32 | `theorem` | [_root_.Complex.Gamma_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/root-complex-gamma-ofreal--abaa4bcf93649067cdae35f3.md) | 427 | `result-track:abaa4bcf93649067cdae35f3fb99c0b56bd13faa4beff73c754f1ab806470666` |
| 33 | `theorem` | [Gamma_nat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-nat-eq-factorial--514d58004aab00f2630f6e50.md) | 430 | `result-track:514d58004aab00f2630f6e50364875cdc90440a0120e0c21c046bc2ea71d9462` |
| 34 | `theorem` | [Gamma_ofNat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-ofnat-eq-factorial--baf4e8d66792b88f474abb60.md) | 435 | `result-track:baf4e8d66792b88f474abb60c147ce681a55e1e50a1ef4bd00337bb00bf15d85` |
| 35 | `theorem` | [Gamma_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-zero--6daff22f5f03acebb95d8945.md) | 441 | `result-track:6daff22f5f03acebb95d894590f5e9cc51187423dd2ba9bff61ed25e3866a762` |
| 36 | `theorem` | [Gamma_neg_nat_eq_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-neg-nat-eq-zero--73c88f93b9811aec22bc8a7f.md) | 447 | `result-track:73c88f93b9811aec22bc8a7f4e9f87189197ff2f76fe893348103f84109761d8` |
| 37 | `theorem` | [Gamma_pos_of_pos](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-pos-of-pos--dd437c0e0f1966e58d31a6e5.md) | 451 | `result-track:dd437c0e0f1966e58d31a6e5895bd6b9e15ad67b9272614c754f2923681a7d6b` |
| 38 | `theorem` | [Gamma_nonneg_of_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-nonneg-of-nonneg--da50dc3b02c82f2280000d5a.md) | 465 | `result-track:da50dc3b02c82f2280000d5ae4ec720a29af7f370e880bb17b6f4565962efecf` |
| 39 | `lemma` | [integral_rpow_mul_exp_neg_mul_Ioi](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/integral-rpow-mul-exp-neg-mul-ioi--ddaad5e41d8c277c7f22a26c.md) | 473 | `result-track:ddaad5e41d8c277c7f22a26c8171313ba9e72b355cfb566ce4da3700c345a537` |
| 40 | `def` | [_root_.Mathlib.Meta.Positivity.evalGamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/root-mathlib-meta-positivity-evalgamma--7c9d924b2170ae8a783f66f4.md) | 484 | `declaration-track:7c9d924b2170ae8a783f66f4ab1fae3c2c19cfd364bb93617d538a60a8c88509` |
| 41 | `theorem` | [Gamma_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-ne-zero--d216cf5bb267ab4e8a4d64d9.md) | 499 | `result-track:d216cf5bb267ab4e8a4d64d95a8aad2e2727be50dcb0dc24b684220809dc4a45` |
| 42 | `theorem` | [Gamma_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/declarations/gamma-eq-zero-iff--48a392e75bb70199de82aea7.md) | 529 | `result-track:48a392e75bb70199de82aea7da4924b31429568ecea9a523460a93dd846bc2cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
