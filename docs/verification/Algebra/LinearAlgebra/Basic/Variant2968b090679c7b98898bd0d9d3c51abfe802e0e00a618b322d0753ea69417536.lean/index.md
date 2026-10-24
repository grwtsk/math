# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f8947d692bfa3a5e553bedc0446b642ded4b248",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f8947d692bfa3a5e553bedc0446b642ded4b248`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Contraction` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Representation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/representation--0b3784b2b8dca68250bed235.md) | 54 | `declaration-track:0b3784b2b8dca68250bed2355fa0e35a914cf460d8b753fdcfc6e5636700607e` |
| 2 | `def` | [trivial](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/trivial--2fd773ef99ab2bdc1f75d4aa.md) | 68 | `declaration-track:2fd773ef99ab2bdc1f75d4aaf0542085e0c117297f740698fae39438e7a3672e` |
| 3 | `theorem` | [trivial_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/trivial-def--63f0492c668f5b015150f6f3.md) | 74 | `result-track:63f0492c668f5b015150f6f3d3451dc4c9038cabd705605db9dd96e1df5ea1d8` |
| 4 | `def` | [asAlgebraHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asalgebrahom--bb1f220670faf3f839051c46.md) | 89 | `declaration-track:bb1f220670faf3f839051c46a6629986f94809f0599eaa48d8df4f9e2253e357` |
| 5 | `theorem` | [asAlgebraHom_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asalgebrahom-def--a791761e137ae17864fe8f7c.md) | 93 | `result-track:a791761e137ae17864fe8f7cbc5b101b95e41fe6e00626eb3f1308b514130a6b` |
| 6 | `theorem` | [asAlgebraHom_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asalgebrahom-single--864e3dc75a2255fdae338d30.md) | 98 | `result-track:864e3dc75a2255fdae338d30b9f8c067f107ede1c83cc3a4f1833d30c7ace0ee` |
| 7 | `theorem` | [asAlgebraHom_single_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asalgebrahom-single-one--799a55e377ec9a3f925ed215.md) | 102 | `result-track:799a55e377ec9a3f925ed215521188a82b182196429302d5caab8c2c0f03277d` |
| 8 | `theorem` | [asAlgebraHom_of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asalgebrahom-of--59b2b7a62f9721ceee26e31b.md) | 105 | `result-track:59b2b7a62f9721ceee26e31b3bae36bda121929508044058af4e881f48e68391` |
| 9 | `def` | [asModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asmodule--088d60e67a6870fc0451bbc1.md) | 115 | `declaration-track:088d60e67a6870fc0451bbc1b7283525bd374d5959c496a25bda95afdc93922c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/instance--7253c3be026f71a1a07d1e7b.md) | 120 | `declaration-track:7253c3be026f71a1a07d1e7b6a632f5d7586e5abb35ea5311a3944542a183f6d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/instance--15121b478df48a5a796acd47.md) | 122 | `declaration-track:15121b478df48a5a796acd47a845f7a9f68e76058ebce1c06a0808d394de7a32` |
| 12 | `instance` | [asModuleModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asmodulemodule--570a670204c5ce9321ec3eb9.md) | 128 | `declaration-track:570a670204c5ce9321ec3eb9fc351328b24ab60e1c43c1c3b038809e1cd7a3e1` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/instance--ba50b68c58dff0335b6cc332.md) | 133 | `declaration-track:ba50b68c58dff0335b6cc3322c56d9a9c4ee251c21e0490fc7f36d6215d3037c` |
| 14 | `def` | [asModuleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asmoduleequiv--710d915a9289b7ff32de73f1.md) | 140 | `declaration-track:710d915a9289b7ff32de73f1f1a9120d87b93e48291cdaf04245307505090a55` |
| 15 | `theorem` | [asModuleEquiv_map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asmoduleequiv-map-smul--900796aa4dc1f328d224d32f.md) | 145 | `result-track:900796aa4dc1f328d224d32f6dc5638dcda9837231eef9fb538f397ba06bb40b` |
| 16 | `theorem` | [asModuleEquiv_symm_map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asmoduleequiv-symm-map-smul--f3c435a2c3e72be9f0a10a6e.md) | 151 | `result-track:f3c435a2c3e72be9f0a10a6ec5df00ccd13e4b85770ac8b23a3c252679af4f2a` |
| 17 | `theorem` | [asModuleEquiv_symm_map_rho](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asmoduleequiv-symm-map-rho--f3cb41d43ea8ee3e1a7a2359.md) | 158 | `result-track:f3cb41d43ea8ee3e1a7a23598b5f21892a762caea479ecaf97d78d7ef7e495b6` |
| 18 | `def` | [ofModule'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/ofmodule--26ae73964d4d06394fcde50a.md) | 173 | `declaration-track:26ae73964d4d06394fcde50a71a7a05a877c0a969a91373475a6565f77c2a07d` |
| 19 | `def` | [ofModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/ofmodule--0a14884f78e559295cb3fb30.md) | 187 | `declaration-track:0a14884f78e559295cb3fb308f348c22d7c80638ee21bb4452bef00a4c631d62` |
| 20 | `theorem` | [ofModule_asAlgebraHom_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/ofmodule-asalgebrahom-apply-apply--6a943bfa793d5df925059e17.md) | 213 | `result-track:6a943bfa793d5df925059e17f864912be9d6fcbc11726495bce50fc99e36d0cb` |
| 21 | `theorem` | [ofModule_asModule_act](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/ofmodule-asmodule-act--009c94381c0d2d796b6b3144.md) | 230 | `result-track:009c94381c0d2d796b6b3144ab4564719341081bc3d22f53611b05a4726f5e23` |
| 22 | `theorem` | [smul_ofModule_asModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/smul-ofmodule-asmodule--e45111a6d53a34b8ea59c717.md) | 240 | `result-track:e45111a6d53a34b8ea59c71737d30c3f0e6aeade85f02e8af230a89583a70b81` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/instance--f11d8461a813736ad9d44ffc.md) | 257 | `declaration-track:f11d8461a813736ad9d44ffc9a648842e52828850196382d7e2f2754cdaba16d` |
| 24 | `def` | [ofMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/ofmulaction--0c5f67c92f5cd9ef2ed24377.md) | 267 | `declaration-track:0c5f67c92f5cd9ef2ed243771c138a190e4b502ee69dc52b43645801fd1d6d67` |
| 25 | `theorem` | [ofMulAction_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/ofmulaction-def--722033774991c4f0592ed827.md) | 280 | `result-track:722033774991c4f0592ed82733a002ed017c2334b23de5c4f0694dd87338099f` |
| 26 | `theorem` | [ofMulAction_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/ofmulaction-single--04e247261b2b1eadd69bc137.md) | 284 | `result-track:04e247261b2b1eadd69bc137fbf11d6d8eb27db975ef9e70a07bf56ca016b507` |
| 27 | `theorem` | [ofMulAction_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/ofmulaction-apply--2fe3bc5e20797f7e9aeb9d9a.md) | 298 | `result-track:2fe3bc5e20797f7e9aeb9d9ab1a479bd2de395b42d511972174514b54fe0ea6f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/instance--9a34b1738a9896380aaae003.md) | 310 | `declaration-track:9a34b1738a9896380aaae00334f1fa427df424bd25113b4f310700cef665bd3e` |
| 29 | `theorem` | [ofMulAction_self_smul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/ofmulaction-self-smul-eq-mul--b0f616e6d2065c04ed3fb1bf.md) | 314 | `result-track:b0f616e6d2065c04ed3fb1bf35adfb7a72bff8f7213dd68e732f952dcee6f48b` |
| 30 | `def` | [ofMulActionSelfAsModuleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/ofmulactionselfasmoduleequiv--a24fcffd9d18c2d4549e38f4.md) | 336 | `declaration-track:a24fcffd9d18c2d4549e38f406934ed9b7675094f894170135d102fd13cb9486` |
| 31 | `def` | [asGroupHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asgrouphom--17d91c0924ad7860ca94f886.md) | 344 | `declaration-track:17d91c0924ad7860ca94f88617546bf3804ac2f06d12889d5bf5de62bee16fb8` |
| 32 | `theorem` | [asGroupHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/asgrouphom-apply--e1e9280daac9dff77f9435ec.md) | 348 | `result-track:e1e9280daac9dff77f9435ec58421f367e90446e3065f10fc7e3064b56a8ef89` |
| 33 | `def` | [tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/tprod--45783a4df7e331d0498f7491.md) | 367 | `declaration-track:45783a4df7e331d0498f7491233446fc680ab419b13d94bf791f3294ea562790` |
| 34 | `theorem` | [tprod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/tprod-apply--efea1793d260262068b7d7e5.md) | 376 | `result-track:efea1793d260262068b7d7e57688613f3c454fbc9ad7f573d8ec5ebc8d75ad0d` |
| 35 | `theorem` | [smul_tprod_one_asModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/smul-tprod-one-asmodule--29a80a6defd0e196c12857e2.md) | 380 | `result-track:29a80a6defd0e196c12857e27a7159df078e17b403557a7f33d5bebaa3ff6fd5` |
| 36 | `theorem` | [smul_one_tprod_asModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/smul-one-tprod-asmodule--3fd3155018bf705859cb0f6f.md) | 392 | `result-track:3fd3155018bf705859cb0f6f980d0d3aeebdc312046d31236bcd41c56aeca497` |
| 37 | `def` | [linHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/linhom--f4b40a728016d84ecb74a393.md) | 416 | `declaration-track:f4b40a728016d84ecb74a393625de67d573e2187d78480c205c9ceaae7f5cc37` |
| 38 | `theorem` | [linHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/linhom-apply--5b7535187c3817ed6a578daa.md) | 432 | `result-track:5b7535187c3817ed6a578daa828869569d36e2f38e0c5f129bfeee50309167a2` |
| 39 | `def` | [dual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/dual--3f19bea07319e28afd5ef669.md) | 439 | `declaration-track:3f19bea07319e28afd5ef6697ecde5fcba21f9cccee515416fdf597ec1df4647` |
| 40 | `theorem` | [dual_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/dual-apply--b7d27b52fc2d88733311c838.md) | 457 | `result-track:b7d27b52fc2d88733311c8385f35b47df8c555bc16fdfc00599a3f676f802d92` |
| 41 | `theorem` | [dualTensorHom_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2968b090679c7b98898bd0d9d3c51abfe802e0e00a618b322d0753ea69417536.lean/declarations/dualtensorhom-comm--05dc09515e2920b85e93febb.md) | 467 | `result-track:05dc09515e2920b85e93febba3cef255fe55b18ff59b87b3fd6b87a7193ecb33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
