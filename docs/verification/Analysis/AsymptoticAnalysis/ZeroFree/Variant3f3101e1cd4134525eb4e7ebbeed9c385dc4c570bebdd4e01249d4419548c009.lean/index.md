# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZeroFree.Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula` — import line 42; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.ZeroSumLimit` — import line 43; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.StirlingVert` — import line 44; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Series` — import line 45; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Complete` — import line 46; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Statement` — import line 47; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly` — import line 48; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigO_mul_logDeriv_near_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/isbigo-mul-logderiv-near-zero--a10634fa7cca8b617a42b944.md) | 66 | `result-track:a10634fa7cca8b617a42b944fb0d50575a3c6dc2087475f6f439298d4bd5bb96` |
| 2 | `theorem` | [isBigO_mul_near_weightPole](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/isbigo-mul-near-weightpole--ad867d1e86f213de73829850.md) | 112 | `result-track:ad867d1e86f213de7382985011755036b3cb287d617392355dcf75dea4e37031` |
| 3 | `theorem` | [rectangleIntegral'_mul_logDeriv_weightPoles](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/rectangleintegral-mul-logderiv-weightpoles--f7c618b8ea0e111c3426bdfb.md) | 137 | `result-track:f7c618b8ea0e111c3426bdfb4d69b483c7772234ccfc0f2558b141adbb73da7c` |
| 4 | `theorem` | [norm_rectangleIntegral_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/norm-rectangleintegral-le--56a2b8cfaeab80152a05a0ec.md) | 221 | `result-track:56a2b8cfaeab80152a05a0ec18ba677d99d6e59767d0fe5d5a23f6ba631e6974` |
| 5 | `theorem` | [xi_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/xi-eq-zero-iff--41161d2a7111e9e2d1ec6630.md) | 256 | `result-track:41161d2a7111e9e2d1ec663016c9dd0c6bc213a084bd9dbc80d3234626e337b3` |
| 6 | `theorem` | [xi_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/xi-eventuallyeq--0f5827d7513d8d9023d20f29.md) | 275 | `result-track:0f5827d7513d8d9023d20f29d021ea55cf803cfe2fa23bbcbb3740d0ab5514ce` |
| 7 | `theorem` | [analyticOrderNatAt_xi](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/analyticordernatat-xi--6a95f33331e4bd9d0c8defb9.md) | 282 | `result-track:6a95f33331e4bd9d0c8defb95a85e19b3cc5106852732d0decd17737d310537a` |
| 8 | `theorem` | [logDeriv_xi_one_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/logderiv-xi-one-sub--4afc8f4d52b5c7adcfb347fe.md) | 300 | `result-track:4afc8f4d52b5c7adcfb347fe948566705de3e0e5a33ae4d81328a1022ae4b6cb` |
| 9 | `theorem` | [logDeriv_xi_conj](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/logderiv-xi-conj--02b434abb692293569ce146f.md) | 314 | `result-track:02b434abb692293569ce146fa1e70300b4ed8de757586b43650af2c5c98b5d1c` |
| 10 | `theorem` | [xi_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/xi-reflect--af2cdcf14d14f67bde739bed.md) | 319 | `result-track:af2cdcf14d14f67bde739bed54467622ad0aaaa50aa857d05b8173d4e6083aa7` |
| 11 | `theorem` | [logDeriv_xi_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/logderiv-xi-reflect--fe994b693348e6280e660a94.md) | 324 | `result-track:fe994b693348e6280e660a94c07b4a0ba0789ea1c01a5f1f80cfc4765ca31618` |
| 12 | `theorem` | [differentiableAt_digamma](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/differentiableat-digamma--9067bd88a13dbf9522e4ba4f.md) | 332 | `result-track:9067bd88a13dbf9522e4ba4fe292aadc8143e9b67aae46cc2992e8a4e406fe18` |
| 13 | `theorem` | [digamma_add_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/digamma-add-nat--182997034210f097472ad211.md) | 359 | `result-track:182997034210f097472ad211dc0cc396ec048ea4a76d31ea2b9e0da14cc62681` |
| 14 | `theorem` | [norm_digamma_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/norm-digamma-le--e9ec433ed9d9d0f905bf2364.md) | 376 | `result-track:e9ec433ed9d9d0f905bf236491b2470eee8c36dfa613a6e8b1b2930c888af9a0` |
| 15 | `theorem` | [norm_logDeriv_Gammaℝ_le_far](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/norm-logderiv-gamma-le-far--619c7299b3dc3dec5ca2579b.md) | 504 | `result-track:619c7299b3dc3dec5ca2579b22e62ecba23cbe72aebfbd45860150aac79bff67` |
| 16 | `theorem` | [norm_logDeriv_zeta_le_far](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/norm-logderiv-zeta-le-far--981448b7d8e8c0046f59a45e.md) | 540 | `result-track:981448b7d8e8c0046f59a45efdc421fc22a94af7052cd686feb19b166f62c2ed` |
| 17 | `theorem` | [norm_logDeriv_xi_le_far](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/norm-logderiv-xi-le-far--8f372888f8286b9ec14d8b67.md) | 568 | `result-track:8f372888f8286b9ec14d8b67f256bd6002f2e036b89fb8a7994e9a56dbedd714` |
| 18 | `theorem` | [norm_logDeriv_xi_le_goodHeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/norm-logderiv-xi-le-goodheight--0364a6bd5a0f44dc5f9747df.md) | 605 | `result-track:0364a6bd5a0f44dc5f9747df20fd975f0ea6762613f02b89b5252de25db8a870` |
| 19 | `def` | [zc](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/zc--10580447bf46b8f5b2e1b8f7.md) | 658 | `declaration-track:10580447bf46b8f5b2e1b8f7075a33fd90360ecf17f12de6f9ffa01669fa0aaa` |
| 20 | `def` | [wc](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/wc--9fe10bc98ebd5f287c8a1cb1.md) | 661 | `declaration-track:9fe10bc98ebd5f287c8a1cb19216d267c629c836b1abc09be89cc54a81179162` |
| 21 | `theorem` | [zc_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/zc-re--a0ccc31d4565026e95de59c1.md) | 663 | `result-track:a0ccc31d4565026e95de59c124bfb74261a604725efb5806756ec67568c47250` |
| 22 | `theorem` | [zc_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/zc-im--f54052de3d5168e29b304a0d.md) | 664 | `result-track:f54052de3d5168e29b304a0d9ac87224ceb137008db70ce4e5c7f356fd3581b2` |
| 23 | `theorem` | [wc_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/wc-re--72800d2306a9e665e49b15aa.md) | 665 | `result-track:72800d2306a9e665e49b15aad2e6c408389c8edb863792683a63f0d7a3d33ac9` |
| 24 | `theorem` | [wc_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/wc-im--d42622a7263acf450980e90f.md) | 666 | `result-track:d42622a7263acf450980e90f5880eeee5af445abcf0bf80ee870fc9c155d8b4a` |
| 25 | `theorem` | [norm_logDeriv_xi_le_border](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/norm-logderiv-xi-le-border--8575a6c3171f58edcc2f846e.md) | 669 | `result-track:8575a6c3171f58edcc2f846ef70cb5cbaf1f2c17e03fb4f1b7d0e0937f71970f` |
| 26 | `def` | [wt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/wt--40972c883bde29589222ec3d.md) | 739 | `declaration-track:40972c883bde29589222ec3d179be0af450a6de30cab1669c729f739e7e5c1de` |
| 27 | `theorem` | [wt_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/wt-eq--d5abe51686234c447e164d07.md) | 741 | `result-track:d5abe51686234c447e164d07576ba07da3d6912be47e345fc304f0673771accc` |
| 28 | `theorem` | [norm_wt_le_border](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/norm-wt-le-border--3be983a35689c228d44b86d0.md) | 748 | `result-track:3be983a35689c228d44b86d0b6189dc1222ca974e7444983c3d25f9dae19bee2` |
| 29 | `theorem` | [square_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/square-identity--6539979cfaee51bcece94d2a.md) | 798 | `result-track:6539979cfaee51bcece94d2a4cc314f9c2ee221521662d2ca12bac507583cc81` |
| 30 | `theorem` | [tendsto_rectangleIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/tendsto-rectangleintegral--aeafee2474fda266c14e0f90.md) | 957 | `result-track:aeafee2474fda266c14e0f908c5fa24616e3660616cdfd2fcd089ec33d8cbf53` |
| 31 | `theorem` | [exists_normSq_sub_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/exists-normsq-sub-ge--2fa889640f390d4d32ec4a16.md) | 1039 | `result-track:2fa889640f390d4d32ec4a16e767da7663c93f833865b994c916f7a48e4183a2` |
| 32 | `theorem` | [norm_wt_le_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/norm-wt-le-zero--08b0d9b9cfa04ce3723e5863.md) | 1099 | `result-track:08b0d9b9cfa04ce3723e5863f3b82502d3e12e9d523bf03bd9d72363e3313726` |
| 33 | `theorem` | [summable_mult_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/summable-mult-mul--47011d34ba92e932e10b60a2.md) | 1135 | `result-track:47011d34ba92e932e10b60a2b23839573de0b880e95c9663eb8ffa4dbed47c23` |
| 34 | `theorem` | [zero_sum_limit_gen](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/zero-sum-limit-gen--bb1f5a119b3dd9e987a6ef32.md) | 1152 | `result-track:bb1f5a119b3dd9e987a6ef32646e27561b2bd9116afebeffff2a39060868ee82` |
| 35 | `theorem` | [summable_wt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/summable-wt--87329ddf0418a8c454fc14db.md) | 1212 | `result-track:87329ddf0418a8c454fc14dba8ec50f4e9a4d9b24195ba6cbab4fb61341c86ce` |
| 36 | `theorem` | [logDeriv_xi_sub_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/logderiv-xi-sub-reflect--fbe15b83f24ccf6561a64930.md) | 1219 | `result-track:fbe15b83f24ccf6561a649309f9ec041a910a8b82e96d5b81b5d9fefb2a9a7e4` |
| 37 | `theorem` | [re_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/re-one-div--1627f648da2ffac81494af4c.md) | 1266 | `result-track:1627f648da2ffac81494af4c7fa1b1c5e4e8906eff52c0f6637d41c7296ec2e7` |
| 38 | `theorem` | [re_wt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/re-wt--e9a05e139e88b7207c496ffd.md) | 1269 | `result-track:e9a05e139e88b7207c496ffddd4d3c2c9b0ade78533b8931336efc6abb6ced18` |
| 39 | `theorem` | [summable_re_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/summable-re-one-div--85a06efa1f290da811fb9913.md) | 1278 | `result-track:85a06efa1f290da811fb99133f811aa8711fd81325a619d2593bf587a41266d9` |
| 40 | `def` | [reflectEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/reflectequiv--18d4eabafb9eea30f907bfcb.md) | 1302 | `declaration-track:18d4eabafb9eea30f907bfcb09a91c2b58e5c79abc11bbe91be741b05c26d1eb` |
| 41 | `theorem` | [tsum_re_one_div_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/tsum-re-one-div-reflect--edd4c156eb4bb1f90e65e87c.md) | 1308 | `result-track:edd4c156eb4bb1f90e65e87c7674802538cb3f2bdb58f4e1c8f75f8ca760745f` |
| 42 | `theorem` | [re_logDeriv_xi_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/re-logderiv-xi-eq-tsum--ff20ce798e1e2059b5a32650.md) | 1320 | `result-track:ff20ce798e1e2059b5a32650e39beb2b5428e05a7d0f612bc44e75d81bf2e14b` |
| 43 | `theorem` | [exists_isNontrivialZero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/exists-isnontrivialzero--37f03c56407ba13ff5a19771.md) | 1352 | `result-track:37f03c56407ba13ff5a19771f43403135f169b59f6015b4614d5e51a51a576f1` |
| 44 | `theorem` | [xi_ne_zero_of_one_le_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/xi-ne-zero-of-one-le-re--30791b005115f550e61a40ac.md) | 1369 | `result-track:30791b005115f550e61a40ac04c2080db8928a4c285f186703e3fc94a1f776d0` |
| 45 | `theorem` | [re_logDeriv_xi_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/re-logderiv-xi-pos--6269ad2cd6fe3b7911aebf19.md) | 1378 | `result-track:6269ad2cd6fe3b7911aebf19add1a8177966b36ae25ff38d567b3dcf1a583d41` |
| 46 | `theorem` | [xiDeriv_ne_zero_of_one_le_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/xideriv-ne-zero-of-one-le-re--27d31cdd5a5ab4b25678ff42.md) | 1394 | `result-track:27d31cdd5a5ab4b25678ff421b04bbc044989edac90e75e98d87f5afae427175` |
| 47 | `theorem` | [xiDeriv_ne_zero_of_re_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/xideriv-ne-zero-of-re-nonpos--d00b82e928541e36e44df214.md) | 1402 | `result-track:d00b82e928541e36e44df214fcab7b425c36252202f3c13e38c0cfe90beb6855` |
| 48 | `theorem` | [xiDerivZerosInStrip_holds](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/declarations/xiderivzerosinstrip-holds--1a5d6eba954cb0a01e43a01e.md) | 1409 | `result-track:1a5d6eba954cb0a01e43a01e484f0c3889788ac38114f9bfbdf618188104a4d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
