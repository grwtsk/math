# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EndsNu.Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `592d4fb46536da54f3f44c17fa380bb8f4c19d10`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA.EndsWeighted` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CN2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/cn2--d85466a7cbcace6acdd2bb10.md) | 36 | `declaration-track:d85466a7cbcace6acdd2bb10aeb4aa0004eb13153f8647ee8c8d454268e41c12` |
| 2 | `lemma` | [CN2_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/cn2-nonneg--6714587be8e3ff01fe230809.md) | 38 | `result-track:6714587be8e3ff01fe23080953bd8a102918488c1f406bac9967872295de113f` |
| 3 | `lemma` | [CN2_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/cn2-def--b7d2d165a2c81b0c5e72daa2.md) | 44 | `result-track:b7d2d165a2c81b0c5e72daa2fde734fd8c60c47db2f267618937791d566b0166` |
| 4 | `theorem` | [integral_psiA_mul_sqrt_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/integral-psia-mul-sqrt-le--5cdc5e187d41b2d3dee3c053.md) | 47 | `result-track:5cdc5e187d41b2d3dee3c053ed60dbf0d4bfcab7c770ab9ddb28c4df988eed80` |
| 5 | `theorem` | [nu_weight_bound_of_L_le_two_B](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/nu-weight-bound-of-l-le-two-b--5bb8b3cd3e3266651cf35a8b.md) | 102 | `result-track:5bb8b3cd3e3266651cf35a8ba6d92453e883cade16461ff0751b878f4911cca9` |
| 6 | `theorem` | [nu_weight_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/nu-weight-bound--819ecfa3fb2178e042737865.md) | 188 | `result-track:819ecfa3fb2178e042737865e8c6d6c8cf50e70b239944379bc7a4c04a49e8c3` |
| 7 | `theorem` | [nu_weight_bound_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/nu-weight-bound-l--eebb79946ff1e21de44aba8f.md) | 197 | `result-track:eebb79946ff1e21de44aba8f5ed3daebfe3223a2d90423a8a266e618e1165259` |
| 8 | `lemma` | [setIntegral_Iio_comp_sub_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/setintegral-iio-comp-sub-left--c478267f7c93bdcf61185186.md) | 208 | `result-track:c478267f7c93bdcf6118518629d6f46011f466a33fdbab516454e5cd5b4c0a0f` |
| 9 | `lemma` | [setIntegral_Ioi_comp_sub_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/setintegral-ioi-comp-sub-right--f1c533f6d0d68b67fc7bfbda.md) | 223 | `result-track:f1c533f6d0d68b67fc7bfbdaf85f3759b421ccfda27a0aba98f7782c6b2b72e2` |
| 10 | `def` | [Sgrid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/sgrid--0460715e07014e22be8fbb96.md) | 238 | `declaration-track:0460715e07014e22be8fbb9662a9291df3763af93592c88dfd3c716800651401` |
| 11 | `lemma` | [Setting.h_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/setting-h-pos--aa72778f738b75a910b0a36f.md) | 241 | `result-track:aa72778f738b75a910b0a36f1768edb6ec5edffd9fe1fdb83ea61c962081cb0d` |
| 12 | `lemma` | [Setting.h_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/setting-h-inv--09eaa4e27fb1f3745797b2be.md) | 244 | `result-track:09eaa4e27fb1f3745797b2be2bc5c8a11ee8b05b61522b620c773e668c65e26a` |
| 13 | `lemma` | [Sgrid_le_near](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/sgrid-le-near--3fec41d67aac2910794f8aaf.md) | 248 | `result-track:3fec41d67aac2910794f8aafc062bb8e0326b5ff880d45629a65ea4139605808` |
| 14 | `lemma` | [Sgrid_le_far](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/sgrid-le-far--b335395e5b90acf8529eb6a4.md) | 255 | `result-track:b335395e5b90acf8529eb6a4dc7aa6fde4033268a89e852270ce1503da18cf0d` |
| 15 | `lemma` | [Sgrid_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/sgrid-nonneg--ed66a266c2ae059c68204d05.md) | 269 | `result-track:ed66a266c2ae059c68204d053d22aaef6bcbd9e61eca9360cbf7aac25fcd1bf2` |
| 16 | `lemma` | [sigma_eq_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/sigma-eq-left--d39c2e9aad1a5e373d7ce045.md) | 273 | `result-track:d39c2e9aad1a5e373d7ce045f9168994e2fe0ea4427c2230be9d54070346a1f7` |
| 17 | `lemma` | [sigma_le_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/sigma-le-right--6e26c115bb69a4fad6d081b7.md) | 279 | `result-track:6e26c115bb69a4fad6d081b7a228d5cc9a866fac2525442a7a547b12b1f82c46` |
| 18 | `def` | [Mnear](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/mnear--287fa5800ca09e00d6007a7a.md) | 293 | `declaration-track:287fa5800ca09e00d6007a7a0ff88817e8dc38758da60989d99c9f69d2457863` |
| 19 | `def` | [Mfar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/mfar--cac8f205b010c23fac65d6f8.md) | 296 | `declaration-track:cac8f205b010c23fac65d6f874a50b0225562dededc337efcd8338193ebec5f3` |
| 20 | `def` | [Mtot](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/mtot--3b215c6782728c88b8b56f18.md) | 299 | `declaration-track:3b215c6782728c88b8b56f18ea1534db9184910444980590af9a9f0267229e33` |
| 21 | `lemma` | [Mnear_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/mnear-nonneg--a53415cc7ff5fe92f77d95d7.md) | 302 | `result-track:a53415cc7ff5fe92f77d95d7770f2d25427dd074060454a70665a86f10830ce5` |
| 22 | `lemma` | [Mfar_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/mfar-nonneg--f38c69b9bfbd0f774f142217.md) | 314 | `result-track:f38c69b9bfbd0f774f142217ff4dbd08a759c858daf99e13ecf942574c84a496` |
| 23 | `lemma` | [Sgrid_mul_le_Mnear](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/sgrid-mul-le-mnear--4d92966a53a8502d6a2470f2.md) | 322 | `result-track:4d92966a53a8502d6a2470f23e7050286946fe717e3cbb90627ddb73c5453960` |
| 24 | `lemma` | [Sgrid_mul_le_Mfar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/sgrid-mul-le-mfar--9d985d127e3de0947c819900.md) | 337 | `result-track:9d985d127e3de0947c8199006049afd00c38fdb5c494897a40627af2ffca09e5` |
| 25 | `lemma` | [dom_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/dom-left--46b476a95d6bda243039d2ed.md) | 347 | `result-track:46b476a95d6bda243039d2ed195185877199cfb9e529c885c7efa1c1d8b3d467` |
| 26 | `lemma` | [dom_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/dom-right--444cfbe879842b1caa646d24.md) | 368 | `result-track:444cfbe879842b1caa646d24e7e6fa7fa17300342db6d835773035c76be8e329` |
| 27 | `lemma` | [Mnear_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/mnear-integrableon--57dae65bb6c11c94e1560fbd.md) | 397 | `result-track:57dae65bb6c11c94e1560fbd85cb7bd084118f6ebd00e20c6ca56a9420bf91d6` |
| 28 | `lemma` | [Mfar_eq_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/mfar-eq-rpow--8bf36fec29f58c1be0af1e02.md) | 417 | `result-track:8bf36fec29f58c1be0af1e02492f0f1a3d76bc3bc0f21142eb3371b63456b46b` |
| 29 | `lemma` | [Mfar_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/mfar-integrableon--25e93ee976bd32ecb5721d6f.md) | 429 | `result-track:25e93ee976bd32ecb5721d6fa903407810ce361f844fd3985049322a60333725` |
| 30 | `lemma` | [Mtot_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/mtot-integrable--1fffabd375ea32a3f0447152.md) | 439 | `result-track:1fffabd375ea32a3f0447152449bfb822c24d534f94bd015909ab51defa97ab5` |
| 31 | `lemma` | [integral_Mtot_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/integral-mtot-eq--845a9736db7cf91fac03fb02.md) | 444 | `result-track:845a9736db7cf91fac03fb025014783840d5ecbe7f6b45bdc89c66eb8320696a` |
| 32 | `lemma` | [integral_Mnear_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/integral-mnear-le--6f234e53eb9b3d654a0ebb6d.md) | 459 | `result-track:6f234e53eb9b3d654a0ebb6ddb3793721b1a6fd8c26e79359d7ad877c25a407f` |
| 33 | `lemma` | [integral_Mfar_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/integral-mfar-le--e064cfa534e9e6c672fcec69.md) | 525 | `result-track:e064cfa534e9e6c672fcec690223cfb704eeba4ba3d5ee490bc1632df2359519` |
| 34 | `theorem` | [integrableOn_sigma_mul_abs_nuX](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/integrableon-sigma-mul-abs-nux--4685722b2898900dcceb9984.md) | 572 | `result-track:4685722b2898900dcceb99842f6aae10d637b1c85fee0684e0ee5d0c87fbae48` |
| 35 | `lemma` | [log_two_mul_T_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/log-two-mul-t-le--ed79dc26aeafef61fb273dcf.md) | 604 | `result-track:ed79dc26aeafef61fb273dcf2e0f7c01095ef3897f85155172cb069c789349af` |
| 36 | `theorem` | [nu_grid_bound_raw](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/nu-grid-bound-raw--c863b13a6bbc08b916a33711.md) | 618 | `result-track:c863b13a6bbc08b916a3371194ab9797d3f96e2d41ef2a1c28eb76164df6ac14` |
| 37 | `theorem` | [nu_grid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/nu-grid-bound--d95fa404791ed57293b0deba.md) | 712 | `result-track:d95fa404791ed57293b0debab963ac0fed34a44e43ce4f00f881fa5cb7d1ca4e` |
| 38 | `theorem` | [nu_grid_bound_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/declarations/nu-grid-bound-l--2495977ce49199c2ada56c0f.md) | 770 | `result-track:2495977ce49199c2ada56c0fb3364ae7569d1995cf6be8cd84b8566d457a691a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
