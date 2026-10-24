# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Taper.Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18a17869e5475458258fce7c40508994c1898e52",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18a17869e5475458258fce7c40508994c1898e52`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Taper.Params` — import line 33; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Decay` — import line 34; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Fourier` — import line 35; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [phiHat_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phihat-ofreal--ca1335204efcd4b71861375f.md) | 53 | `result-track:ca1335204efcd4b71861375fb9964d8b6620384af606a23faae397779e6e8b10` |
| 2 | `theorem` | [Phi_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phi-ofreal--820f98d46c2e6fcb64a0879f.md) | 54 | `result-track:820f98d46c2e6fcb64a0879f877c44b2d64488a71a1fd955d3b0eaad5770f85b` |
| 3 | `theorem` | [phiHat_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phihat-conj--95f1cb22e9f79a12dc14af1e.md) | 55 | `result-track:95f1cb22e9f79a12dc14af1e743ae5c988148671df320628ee2bd219798f5097` |
| 4 | `theorem` | [phiHatR_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phihatr-even--d1411d997a6fa78d59fd2fa8.md) | 57 | `result-track:d1411d997a6fa78d59fd2fa854247f5a5cc0f562e1ed4961dafb1422ac88a76d` |
| 5 | `theorem` | [PhiR_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phir-even--d93b66f290d2d9871c0d2b15.md) | 58 | `result-track:d93b66f290d2d9871c0d2b15e4ee6eda3d3450a465ca741a6de5c093a99f6228` |
| 6 | `theorem` | [Aphi_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/aphi-even--23dd8793659ea7794abf73e8.md) | 59 | `result-track:23dd8793659ea7794abf73e841eedf6027e7ba3d211b7ea787f05761860b7bf8` |
| 7 | `theorem` | [g_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/g-even--7ad73d8c3e4344623b0d0a13.md) | 60 | `result-track:7ad73d8c3e4344623b0d0a1379fb83f51ec6d6b354ed7fc9135195a501a03a98` |
| 8 | `theorem` | [psi'_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/psi-even--0b7d5bb02287693d220fc29d.md) | 61 | `result-track:0b7d5bb02287693d220fc29d09b38219421b7462567c5fde426668e08e76e867` |
| 9 | `theorem` | [phiHatR_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phihatr-continuous--1e96b57df35ca04a0d1d240c.md) | 68 | `result-track:1e96b57df35ca04a0d1d240c85498e10e97eb3781557e864df8c93639fd41f95` |
| 10 | `theorem` | [PhiR_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phir-continuous--abff206acbe45dc9f98aa307.md) | 70 | `result-track:abff206acbe45dc9f98aa3072ecaa705a4c62a663a4a38abc886a8a2e8c4331e` |
| 11 | `theorem` | [PhiR_contDiff_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phir-contdiff-one--be31975b0e9aca62a7b93a1c.md) | 72 | `result-track:be31975b0e9aca62a7b93a1cc7f473176f1e680e1dda85f172e1f8dec98b4076` |
| 12 | `theorem` | [phiHatR_zero_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phihatr-zero-le--cdc22527faa9133e4b24b541.md) | 76 | `result-track:cdc22527faa9133e4b24b54155860c89d71056ccdf734a510f93be31f2f0e87d` |
| 13 | `theorem` | [PhiR_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phir-zero--14889a23ac25475dac1975bc.md) | 78 | `result-track:14889a23ac25475dac1975bc2dc478d9c5f1b942289a959d6d33b6a2fb46ef1b` |
| 14 | `theorem` | [g_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/g-zero--c3c8a0ddbe9ca47e44f91140.md) | 80 | `result-track:c3c8a0ddbe9ca47e44f91140580edfb0691d1b1a0a580888a138a93c8d43462e` |
| 15 | `theorem` | [Aphi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/aphi-zero--f95e2c980809649f9321206a.md) | 81 | `result-track:f95e2c980809649f9321206a8405b6a3b094d87d57e9760b272156caf36701d1` |
| 16 | `theorem` | [phiHatR_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phihatr-sq-eq--606c7ca9ff28374fc596e434.md) | 83 | `result-track:606c7ca9ff28374fc596e434b2530c447a61c076d5892f7e1c18fb364662d7ad` |
| 17 | `theorem` | [PhiR_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/phir-sq-eq--d0c011cc3c6bd98261b7b419.md) | 86 | `result-track:d0c011cc3c6bd98261b7b419243d6564de16a7644f045f016155cf6811c48688` |
| 18 | `theorem` | [integral_phiHatR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-phihatr-sq--71ae74e2c8b62124cd9d061c.md) | 88 | `result-track:71ae74e2c8b62124cd9d061c648efc4e9d17e4c38fc7c02e7f964e6bde124a80` |
| 19 | `theorem` | [integral_PhiR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-phir-sq--74c96129f236a15e48b1071e.md) | 90 | `result-track:74c96129f236a15e48b1071efdd96d4644dece3a14d079264363adb959fcb4e4` |
| 20 | `theorem` | [integral_phiHatR_sq_mul_cos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-phihatr-sq-mul-cos--be5aee54389939387cab8653.md) | 92 | `result-track:be5aee54389939387cab8653e47bc7f54bb823ce3226cc55127a237321792ad1` |
| 21 | `theorem` | [integral_PhiR_sq_mul_cos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-phir-sq-mul-cos--a99b6c98c90a78c11aa1042d.md) | 95 | `result-track:a99b6c98c90a78c11aa1042d311f0b6126362ba85f346ffe4c37bf5648c2fc17` |
| 22 | `theorem` | [integrable_phiHatR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integrable-phihatr-sq--1204e5d4efc66543a0b52a46.md) | 98 | `result-track:1204e5d4efc66543a0b52a467dfc548ce9a214ff175630ac060f8a9e1b3a6113` |
| 23 | `theorem` | [integrable_phiHatR_sq_mul_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integrable-phihatr-sq-mul-abs--c401ed9dde9680f5ea24c4ad.md) | 100 | `result-track:c401ed9dde9680f5ea24c4adae54ecebc6b1a8c96ac4be4a04269d672cec9185` |
| 24 | `theorem` | [integrable_PhiR_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integrable-phir-sq--23d2e5c2f1b057082cea630c.md) | 102 | `result-track:23d2e5c2f1b057082cea630c0cf589142845341a8d68544f1ad781110583fafb` |
| 25 | `theorem` | [integrable_PhiR_sq_mul_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integrable-phir-sq-mul-abs--4d33e4c27162175baf5672cb.md) | 104 | `result-track:4d33e4c27162175baf5672cbda0dd1ba35c57e9efa92c6726ca7f36d6176c369` |
| 26 | `theorem` | [integral_phiHatR_sq_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-phihatr-sq-mul-abs-le--78aac6fa33ec1a6afb32a5eb.md) | 106 | `result-track:78aac6fa33ec1a6afb32a5eb9f2233969ecb0f482b33a33f9ea2598cdf354770` |
| 27 | `theorem` | [integral_PhiR_sq_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-phir-sq-mul-abs-le--0e6882e36974065da95b1e87.md) | 109 | `result-track:0e6882e36974065da95b1e87cb45a4782f509b620ceba74111bbce199ae4b852` |
| 28 | `theorem` | [integrable_phiHatR_sq_mul_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integrable-phihatr-sq-mul-sq--6058439d2810c86475322eb0.md) | 112 | `result-track:6058439d2810c86475322eb0efc91acd5674d68224b51980b35762f57656b19a` |
| 29 | `theorem` | [integral_phiHatR_sq_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-phihatr-sq-mul-sq-le--0836af12332f130a0e07769e.md) | 114 | `result-track:0836af12332f130a0e07769ee88adb27defcd0d1c555aff80cb709f34a45cb1a` |
| 30 | `theorem` | [integrable_PhiR_sq_mul_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integrable-phir-sq-mul-sq--09d5cb5c079080a5c221a6ed.md) | 116 | `result-track:09d5cb5c079080a5c221a6ed0e20444bc86bcbe26c06329bcacb7c797e43fe62` |
| 31 | `theorem` | [integral_PhiR_sq_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-phir-sq-mul-sq-le--2b917f9ad3e4897c9ae2984e.md) | 118 | `result-track:2b917f9ad3e4897c9ae2984ebfeccd6ec6da2a4c8f235b769b463ce649043c55` |
| 32 | `theorem` | [g_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/g-ge--e3d8415519602e1252101849.md) | 122 | `result-track:e3d8415519602e1252101849dcc081c4c8801207581f6f00cf302579e9560e4f` |
| 33 | `theorem` | [g_le_Aphi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/g-le-aphi--23d57b44aacdab8ddedf00a8.md) | 124 | `result-track:23d57b44aacdab8ddedf00a86f9d94179cda8260d3f72c8c67134c7c50ba94ff` |
| 34 | `theorem` | [Aphi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/aphi-le--ba839804208c4ff4c5582586.md) | 126 | `result-track:ba839804208c4ff4c5582586299f9c942167a1fd357eda2cb8118566bbc48d5c` |
| 35 | `theorem` | [g_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/g-nonneg--ca6bc36124c01ac39d2cd27a.md) | 128 | `result-track:ca6bc36124c01ac39d2cd27abe0867b016253f516720387187f19e605ce2bd2c` |
| 36 | `theorem` | [Aphi_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/aphi-nonneg--eddd6344f57f7f8e8b13ada6.md) | 129 | `result-track:eddd6344f57f7f8e8b13ada62164a8b1be08c2d78fba788856529775cfe8a305` |
| 37 | `theorem` | [g_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/g-eq-zero--33db9c1a9ff3435fdbb2bde6.md) | 131 | `result-track:33db9c1a9ff3435fdbb2bde6e0cd0d701f13cbcac263a95b4cc41e4f12ba382d` |
| 38 | `theorem` | [Aphi_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/aphi-eq-zero--c02e95db67d97a85859aeeef.md) | 133 | `result-track:c02e95db67d97a85859aeeef2d8461f1df0e069c64a0fb9c6af7506389c72ae1` |
| 39 | `theorem` | [g_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/g-continuous--9769064c8bf87cef2adc6839.md) | 135 | `result-track:9769064c8bf87cef2adc683941b7547503d53152a3e1be5887e88c1cb29a506d` |
| 40 | `theorem` | [Aphi_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/aphi-continuous--1f8812882ef2db00f5572d82.md) | 137 | `result-track:1f8812882ef2db00f5572d82b9d601f433fd53c4007fbe1de0b3d3ee08a086c8` |
| 41 | `theorem` | [abs_phiHatR_le_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/abs-phihatr-le-l--8e34ca656b0857aec9b69ddb.md) | 141 | `result-track:8e34ca656b0857aec9b69ddbb25d9276d023f25b0be5f37115acdfb2069354d6` |
| 42 | `theorem` | [abs_phiHatR_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/abs-phihatr-mul-abs-le--1ed0c710fb951be8b3b2b58a.md) | 143 | `result-track:1ed0c710fb951be8b3b2b58ab6a1246c03577b9ad6287331495833b5e6271a48` |
| 43 | `theorem` | [abs_phiHatR_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/abs-phihatr-mul-sq-le--2ce71ea96a6fed8f6507ffd4.md) | 145 | `result-track:2ce71ea96a6fed8f6507ffd46b4e32aefc37c4edb7480de57813d2177a01917c` |
| 44 | `theorem` | [abs_PhiR_le_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/abs-phir-le-l--8c6e11d9281a9aff63031f5a.md) | 147 | `result-track:8c6e11d9281a9aff63031f5a6ebb92347de8697310e95f10693caea6a8dbbf85` |
| 45 | `theorem` | [abs_PhiR_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/abs-phir-mul-abs-le--c8ab65c30491ff72d7e748db.md) | 149 | `result-track:c8ab65c30491ff72d7e748db3302597f81ee4a23fdabffb97dbfbb2e48295a56` |
| 46 | `theorem` | [abs_PhiR_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/abs-phir-mul-sq-le--7e4012df336d70f7de430142.md) | 151 | `result-track:7e4012df336d70f7de430142b45bbefc583e300476a347347bb99897743f608f` |
| 47 | `theorem` | [abs_phiHatR_le_psi'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/abs-phihatr-le-psi--dffc25156eb2f906213962de.md) | 153 | `result-track:dffc25156eb2f906213962de7bfa4d822b97a450950473f7d50879939b1d520a` |
| 48 | `theorem` | [abs_PhiR_le_psi'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/abs-phir-le-psi--2ff1148650fa42a578964c6f.md) | 155 | `result-track:2ff1148650fa42a578964c6f0bba8496a6a30bc246a8fa026809f699fa8c1a84` |
| 49 | `theorem` | [psi'_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/psi-nonneg--695eb93f2249f321a84b2537.md) | 157 | `result-track:695eb93f2249f321a84b2537128c24d4b3b0c36af3b633d9a84bd2cc7e714661` |
| 50 | `theorem` | [integral_psi'_Ioi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-psi-ioi-le--1526eb6358132de12d425f3b.md) | 161 | `result-track:1526eb6358132de12d425f3b483b864315ae78137ed8940ecae1bd2606ed6347` |
| 51 | `theorem` | [integral_psi'_sq_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-psi-sq-mul-abs-le--926c40e3e68ffb335c4b1cde.md) | 164 | `result-track:926c40e3e68ffb335c4b1cde19387142e666649fe75f01163338a96ca606e263` |
| 52 | `theorem` | [integral_psi'_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/integral-psi-sq-le--b60e6b477b31481a628926f5.md) | 167 | `result-track:b60e6b477b31481a628926f59f434a9c3765ea07b72f2bd581ccde9961bd14cd` |
| 53 | `theorem` | [psi'_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/psi-integrable--503841fdf2c4242e7c0f371c.md) | 169 | `result-track:503841fdf2c4242e7c0f371c2a3370e4b813a03abca2ee7a47c6e27b694cb153` |
| 54 | `theorem` | [psi'_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/psi-sq-integrable--e99fb29dbdb12105c1b3a990.md) | 170 | `result-track:e99fb29dbdb12105c1b3a990e563ec49edf2c354e522b874e0ba56f2a8dc6615` |
| 55 | `theorem` | [psi'_sq_mul_abs_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/declarations/psi-sq-mul-abs-integrable--1fcebf6778c6a17964fa7c2f.md) | 172 | `result-track:1fcebf6778c6a17964fa7c2f7b8694ff8c559ecf4792d5f3e37ddc7303aab334` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
