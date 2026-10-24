# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Taper.Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7dd4ff5b00d71035db1d3311007d19148004f78",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7dd4ff5b00d71035db1d3311007d19148004f78`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Taper.Params` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Decay` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Fourier` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [phiHat_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phihat-ofreal--3d19f977005bf75117657977.md) | 45 | `result-track:3d19f977005bf75117657977d00e18b3d0d6b275b9e456a94fc74f67e6b862f0` |
| 2 | `theorem` | [Phi_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phi-ofreal--eb26048325d7a6fe46dba605.md) | 46 | `result-track:eb26048325d7a6fe46dba605aaf473a824a3fed2d667ece59d6a560c37837bd9` |
| 3 | `theorem` | [phiHat_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phihat-conj--2cae54431aabf21d30763098.md) | 47 | `result-track:2cae54431aabf21d30763098a4dbdccdcbf8deaa1d39dde1490d0ca8fac0d550` |
| 4 | `theorem` | [phiHatR_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phihatr-even--bbbfb67a581ab589f718734e.md) | 49 | `result-track:bbbfb67a581ab589f718734eb55fc3f81f9d2907adf21ef7734ee4589d3359ab` |
| 5 | `theorem` | [PhiR_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phir-even--4ae5293cf3cebf5f2b34501b.md) | 50 | `result-track:4ae5293cf3cebf5f2b34501b5fd865bbba8cdc16d9718c3ba69c308b6ca4298d` |
| 6 | `theorem` | [Aphi_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/aphi-even--26f83c41e44a3cb27390c042.md) | 51 | `result-track:26f83c41e44a3cb27390c0429d4c07140352edaf4c5157707ae9221828047c8b` |
| 7 | `theorem` | [g_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/g-even--23fa97ddfb276e082cf2469e.md) | 52 | `result-track:23fa97ddfb276e082cf2469e02cbbfcb1b7018c092bb7ca90f457624a38e1c0d` |
| 8 | `theorem` | [psi'_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/psi-even--41f1bd66b1481f45b48b25da.md) | 53 | `result-track:41f1bd66b1481f45b48b25dabbec8d6532616ff4bcab5abada475b556968570d` |
| 9 | `theorem` | [phiHatR_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phihatr-continuous--88b5bb16364300995975957b.md) | 60 | `result-track:88b5bb16364300995975957bdb4204e97be862d7d3ab44fcc3faab8799b56406` |
| 10 | `theorem` | [PhiR_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phir-continuous--250c6a5b5872be6518cf6f20.md) | 62 | `result-track:250c6a5b5872be6518cf6f206d45de28bba0166500d2933d61c75b3c7fe789b7` |
| 11 | `theorem` | [PhiR_contDiff_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phir-contdiff-one--03ddb65e62ed235347e2836d.md) | 64 | `result-track:03ddb65e62ed235347e2836d779e02f7256498202f0d8155ead01e37b16c1f86` |
| 12 | `theorem` | [phiHatR_zero_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phihatr-zero-le--bc5017c0618ca58a15e0c544.md) | 68 | `result-track:bc5017c0618ca58a15e0c544961a8d9a6d34401950f862be8fb414b01442d274` |
| 13 | `theorem` | [PhiR_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phir-zero--234fa5d0bfdba6ee589c2a72.md) | 70 | `result-track:234fa5d0bfdba6ee589c2a721ac3a22e4f907134d6449bffa6df878081109dc4` |
| 14 | `theorem` | [g_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/g-zero--05b2df5c4cc0f541d12a6f91.md) | 72 | `result-track:05b2df5c4cc0f541d12a6f918451828f619fb2e2502c5c2d7a7d16e4fbb215a3` |
| 15 | `theorem` | [Aphi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/aphi-zero--23b3a5897334e9fcb5253dd1.md) | 73 | `result-track:23b3a5897334e9fcb5253dd126689c7800602bdfc54930620457cdbd93d171a4` |
| 16 | `theorem` | [phiHatR_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phihatr-sq-eq--d91b725ccc974b4d2e433e4b.md) | 75 | `result-track:d91b725ccc974b4d2e433e4b444945f3ad2a81e9c8fd3d73d41f99cdc1aff121` |
| 17 | `theorem` | [PhiR_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/phir-sq-eq--7e84e7b4e644f7fba1caace8.md) | 78 | `result-track:7e84e7b4e644f7fba1caace80b5976351b040bf95edb3bd4ec46da5a14dc6b87` |
| 18 | `theorem` | [integral_phiHatR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-phihatr-sq--fb182e5e9beb29de44e2cdf6.md) | 80 | `result-track:fb182e5e9beb29de44e2cdf68e4c5227411598f817655f7016baed0787760d28` |
| 19 | `theorem` | [integral_PhiR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-phir-sq--77b1316b4833ff1852e580b2.md) | 82 | `result-track:77b1316b4833ff1852e580b29d948dc36e885e3676e9c1adbb72b5308521b0f2` |
| 20 | `theorem` | [integral_phiHatR_sq_mul_cos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-phihatr-sq-mul-cos--83f59404ccdf7c777b1ab326.md) | 84 | `result-track:83f59404ccdf7c777b1ab326eed62fa3ed2974ca5426c8d194055c8b2080f6fc` |
| 21 | `theorem` | [integral_PhiR_sq_mul_cos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-phir-sq-mul-cos--b8ba3ba8688183e69c39f645.md) | 87 | `result-track:b8ba3ba8688183e69c39f6452fbefb168fa04987f484d73b7dbb163001871562` |
| 22 | `theorem` | [integrable_phiHatR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integrable-phihatr-sq--8f71457e8443aa1a28c0f28c.md) | 90 | `result-track:8f71457e8443aa1a28c0f28ce076cc769abca7fcdf90696eb5f7f58cd24ddef9` |
| 23 | `theorem` | [integrable_phiHatR_sq_mul_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integrable-phihatr-sq-mul-abs--33b9802d411e7bc6de40b950.md) | 92 | `result-track:33b9802d411e7bc6de40b9509ff95ea06940404c1f2be4ed2975906d19efb64a` |
| 24 | `theorem` | [integrable_PhiR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integrable-phir-sq--19263395b9459161dcb678f5.md) | 94 | `result-track:19263395b9459161dcb678f5d48c094bd1f00f8e0459fc07d88fbc12b00d31e2` |
| 25 | `theorem` | [integrable_PhiR_sq_mul_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integrable-phir-sq-mul-abs--d59b46d53b18d7d13a6cc6a2.md) | 96 | `result-track:d59b46d53b18d7d13a6cc6a2461bc868e2d327af2073fd02aa0952be1fe0c2c7` |
| 26 | `theorem` | [integral_phiHatR_sq_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-phihatr-sq-mul-abs-le--e5105b0192d94dcab46a384e.md) | 98 | `result-track:e5105b0192d94dcab46a384edce6de37d357ab42b4b1fc25f923b30a17f7be69` |
| 27 | `theorem` | [integral_PhiR_sq_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-phir-sq-mul-abs-le--079a09ba989e6c76fc690360.md) | 101 | `result-track:079a09ba989e6c76fc69036012bbf378821ec4615dd70142d0bfc6d3181b9965` |
| 28 | `theorem` | [integrable_phiHatR_sq_mul_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integrable-phihatr-sq-mul-sq--07908953883655eda649b443.md) | 104 | `result-track:07908953883655eda649b4438df32538fdd70cec50e12de07eb8ba286131e460` |
| 29 | `theorem` | [integral_phiHatR_sq_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-phihatr-sq-mul-sq-le--887bbebb13fe47b202bbd5f7.md) | 106 | `result-track:887bbebb13fe47b202bbd5f742ab59dbd0178638c2fc3b0cd93abf8a288e8174` |
| 30 | `theorem` | [integrable_PhiR_sq_mul_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integrable-phir-sq-mul-sq--e5f2c18eac9338ff759f5a03.md) | 108 | `result-track:e5f2c18eac9338ff759f5a038b1da02d49555834f3b5131b6f1d22b6df5ddcf1` |
| 31 | `theorem` | [integral_PhiR_sq_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-phir-sq-mul-sq-le--7347a267715c381ae291d00f.md) | 110 | `result-track:7347a267715c381ae291d00f624f6d133b8e78a848296e0e02ab1b50d7fc3060` |
| 32 | `theorem` | [g_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/g-ge--1bcf2c45c4bd0872561480e0.md) | 114 | `result-track:1bcf2c45c4bd0872561480e00f4ddaa13fea56cb0be0d19a4c35d5839cbbf65b` |
| 33 | `theorem` | [g_le_Aphi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/g-le-aphi--7b3ab0d129480abf81726cd3.md) | 116 | `result-track:7b3ab0d129480abf81726cd3501b7b73cb265966bf1aa1f5bfc4be960f50f0e8` |
| 34 | `theorem` | [Aphi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/aphi-le--872cac3c195759d77c9f4d31.md) | 118 | `result-track:872cac3c195759d77c9f4d310223763d6e4741438a6415d2cf6b06bcb36d8dbd` |
| 35 | `theorem` | [g_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/g-nonneg--6f803bd7d4adb5a4a26ea013.md) | 120 | `result-track:6f803bd7d4adb5a4a26ea013648d9c526ca5268ffeb582d9041d4002591913b8` |
| 36 | `theorem` | [Aphi_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/aphi-nonneg--d96a9664bae2a600702af8c7.md) | 121 | `result-track:d96a9664bae2a600702af8c7b67d393679a75000ce66b07cf06b010bf9c80148` |
| 37 | `theorem` | [g_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/g-eq-zero--af9ba2c17e3649b2f7ab3ee6.md) | 123 | `result-track:af9ba2c17e3649b2f7ab3ee6b75a2f3d21fdbbc8095a44eb0125946a10677709` |
| 38 | `theorem` | [Aphi_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/aphi-eq-zero--34545dea95100325b8031e0f.md) | 125 | `result-track:34545dea95100325b8031e0f59f9325858e18dcaa48ede5f491f11b8085274e0` |
| 39 | `theorem` | [g_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/g-continuous--4f5d33d596634b5ecb5f2f5c.md) | 127 | `result-track:4f5d33d596634b5ecb5f2f5c4bb9a6313288d7118645d64cc2db31d91b9c9167` |
| 40 | `theorem` | [Aphi_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/aphi-continuous--156390cffb7bc4b832153bd7.md) | 129 | `result-track:156390cffb7bc4b832153bd7d0c5c2f615723a053cb4024636defb042a732511` |
| 41 | `theorem` | [abs_phiHatR_le_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/abs-phihatr-le-l--5b7c7baff93894889bb1616b.md) | 133 | `result-track:5b7c7baff93894889bb1616beee396cbee5088c29c4a270a0b6062bc8daca490` |
| 42 | `theorem` | [abs_phiHatR_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/abs-phihatr-mul-abs-le--9e74d742823f2d3304d1ceb8.md) | 135 | `result-track:9e74d742823f2d3304d1ceb810035ed3b5d789c86029ced8c6f594057aa7835c` |
| 43 | `theorem` | [abs_phiHatR_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/abs-phihatr-mul-sq-le--3f21d94f9a86737d9158fb2c.md) | 137 | `result-track:3f21d94f9a86737d9158fb2c3d874acaf373975b7640c992f06060b64bc95cc4` |
| 44 | `theorem` | [abs_PhiR_le_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/abs-phir-le-l--5089e4ae071ded8d8e317c1d.md) | 139 | `result-track:5089e4ae071ded8d8e317c1d9f75512ce15a2625dd09430cc8dcfd096598867d` |
| 45 | `theorem` | [abs_PhiR_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/abs-phir-mul-abs-le--5843ba118b3bb1057b828c65.md) | 141 | `result-track:5843ba118b3bb1057b828c6563004f79d1342dd5b8071783375e9cd58052e66b` |
| 46 | `theorem` | [abs_PhiR_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/abs-phir-mul-sq-le--fd5dfc49f483674fe961b6f6.md) | 143 | `result-track:fd5dfc49f483674fe961b6f688b33a40a07766313651f8b32f3efa4ca0164e74` |
| 47 | `theorem` | [abs_phiHatR_le_psi'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/abs-phihatr-le-psi--bc5bb47e35cdd367af6f0736.md) | 145 | `result-track:bc5bb47e35cdd367af6f07365f70a9cb799c0c6539fc46eb8a9fdf9501f32d4a` |
| 48 | `theorem` | [abs_PhiR_le_psi'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/abs-phir-le-psi--b05086ef527c70b5b49afea3.md) | 147 | `result-track:b05086ef527c70b5b49afea32bc928c612f2758a15aa53aa1b401492e8074207` |
| 49 | `theorem` | [psi'_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/psi-nonneg--ebd18540302a2a63f69ebd78.md) | 149 | `result-track:ebd18540302a2a63f69ebd78246b3472793236621715e48ea8aa28e8c2b4fedc` |
| 50 | `theorem` | [integral_psi'_Ioi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-psi-ioi-le--a5db526f9edbbd73e118bd18.md) | 153 | `result-track:a5db526f9edbbd73e118bd18a1f32984fb8c90d1093dcc7c225cb46ed9b5a9f8` |
| 51 | `theorem` | [integral_psi'_sq_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-psi-sq-mul-abs-le--246790f9f7ca62806fb06cc8.md) | 156 | `result-track:246790f9f7ca62806fb06cc85abee4fd329bcfd99e0df9fa2d25bb963d558977` |
| 52 | `theorem` | [integral_psi'_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/integral-psi-sq-le--0bfe503ca24276e722a23744.md) | 159 | `result-track:0bfe503ca24276e722a2374473db89eea18c6bf1a6d63cfe7832ff076d1dc26b` |
| 53 | `theorem` | [psi'_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/psi-integrable--73fd76159fffed80463bcff7.md) | 161 | `result-track:73fd76159fffed80463bcff7ce3a4d17b3d34bef774ced6e6012bd4d168319c9` |
| 54 | `theorem` | [psi'_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/psi-sq-integrable--7541dcebc020e4cf0d184db6.md) | 162 | `result-track:7541dcebc020e4cf0d184db6eea303e2685db4e079791920e28ad962694ed6ae` |
| 55 | `theorem` | [psi'_sq_mul_abs_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variantb4b91e74d3f9598a99183e3b73f88661483018fe5cee6b64f515003e21d9f209.lean/declarations/psi-sq-mul-abs-integrable--c9bb3237c4d447c1ee674092.md) | 164 | `result-track:c9bb3237c4d447c1ee67409289be9d4ac2e3c8568b0ca9a12f423e45d1fcb829` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
