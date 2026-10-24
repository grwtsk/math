# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousLinearMap.Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24b8ad83aa2cb2a2cb5ce54ac6ce84dbad84bb7f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24b8ad83aa2cb2a2cb5ce54ac6ce84dbad84bb7f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean.json)

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
| 1 | `theorem` | [integral_compLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-complp--7c2a07e0d308eba918265dd1.md) | 37 | `result-track:7c2a07e0d308eba918265dd1f9e920be7356723addabdcaeb2828564690cc502` |
| 2 | `theorem` | [setIntegral_compLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/setintegral-complp--de9652a3e721225b272b5a0d.md) | 41 | `result-track:de9652a3e721225b272b5a0d046afb896d88480bd0f90baf75ded13a20c24028` |
| 3 | `theorem` | [continuous_integral_comp_L1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/continuous-integral-comp-l1--5393d84da8114efc3f76859c.md) | 45 | `result-track:5393d84da8114efc3f76859c377206904fd88dee8e117d979627eb3eef96890f` |
| 4 | `theorem` | [integral_comp_commSL](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-comp-commsl--3946d9fa8e05579da2d7ea45.md) | 51 | `result-track:3946d9fa8e05579da2d7ea453e869178089d0026cd0d870c2b2fe7e0b30b6261` |
| 5 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-comp-comm--c811cb32d05bd7b7619a8995.md) | 69 | `result-track:c811cb32d05bd7b7619a8995da0da8d4bd7d21054ea5644444bd61c4fe39a674` |
| 6 | `theorem` | [integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-apply--e19e83580fbd18527e841c2d.md) | 72 | `result-track:e19e83580fbd18527e841c2dee32f7d24e5240c28f215202b5ec99e4eb0f836e` |
| 7 | `theorem` | [_root_.ContinuousMultilinearMap.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/root-continuousmultilinearmap-integral-apply--029857e4d1286206bee8397c.md) | 82 | `result-track:029857e4d1286206bee8397cdfc4c632fce53d218a8ce4ba61385a935c77af74` |
| 8 | `theorem` | [integral_comp_comm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-comp-comm--dbabd89cdc7341131a2c8fc8.md) | 97 | `result-track:dbabd89cdc7341131a2c8fc819062e28f74d057cd44596236dbba0ca5fb41088` |
| 9 | `theorem` | [integral_comp_L1_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-comp-l1-comm--f5cb99f875fd3140c75e3815.md) | 106 | `result-track:f5cb99f875fd3140c75e38156dfa7f3a5f94bc9eaa8817177333ccd87bd4a6d1` |
| 10 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-comp-comm--dab63834fa2b0680935c291a.md) | 116 | `result-track:dab63834fa2b0680935c291a8049631d30eba1678a21d472b70aaf7831a73da2` |
| 11 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-comp-comm--1d0dc59b5ff88f5d3b94ef05.md) | 125 | `result-track:1d0dc59b5ff88f5d3b94ef05746c611a376ae8cfa1c35d1e2594fc5cd444fdc9` |
| 12 | `lemma` | [ContinuousMap.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/continuousmap-integral-apply--be9ed04242c1728e0be68247.md) | 138 | `result-track:be9ed04242c1728e0be6824732edbd0968676a1d07cc30f36437d6ab45f8f066` |
| 13 | `theorem` | [ContinuousMapZero.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/continuousmapzero-integral-apply--d72bbc364f46bf2e5d994451.md) | 146 | `result-track:d72bbc364f46bf2e5d994451342f0728742d2469811e60aa4dfb5f3e7b3ce4a9` |
| 14 | `theorem` | [integral_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-ofreal--4a9d268dad54b5470321d2c4.md) | 158 | `result-track:4a9d268dad54b5470321d2c40b1b139d2060c8088ca37da1a5777f7976424870` |
| 15 | `theorem` | [integral_complex_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-complex-ofreal--594f050d2eba842ff0f9212d.md) | 162 | `result-track:594f050d2eba842ff0f9212db1b8b213b7b81539420cbfee044b5152ffeb112c` |
| 16 | `theorem` | [integral_re](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-re--b695fabc9531011ac6e22a2b.md) | 164 | `result-track:b695fabc9531011ac6e22a2bd0a0f65887343d24a9f1bf3af140fe24c40e9e8e` |
| 17 | `theorem` | [integral_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-im--a9dc8201de9c3e758410ed6d.md) | 168 | `result-track:a9dc8201de9c3e758410ed6d9b7d5fdbf4513e051eb27a56fb182027c2dc8642` |
| 18 | `theorem` | [integral_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-conj--e349ab511931d65d5f940d3a.md) | 173 | `result-track:e349ab511931d65d5f940d3a9368091291013ed13627136af6046a94fa0b28ac` |
| 19 | `theorem` | [integral_coe_re_add_coe_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-coe-re-add-coe-im--6a5437ad5cd37e440c8cc0a1.md) | 176 | `result-track:6a5437ad5cd37e440c8cc0a1cc48d033d9c75a52fb2a9a625b8a390d30fb72e1` |
| 20 | `theorem` | [integral_re_add_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-re-add-im--f97d04db9dbb310fbe861b65.md) | 185 | `result-track:f97d04db9dbb310fbe861b6519ab8e7055aadb0ddf71aeaa5d212e2a0075286e` |
| 21 | `theorem` | [setIntegral_re_add_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/setintegral-re-add-im--e7142bd6c5c3a966fe4aa5dc.md) | 190 | `result-track:e7142bd6c5c3a966fe4aa5dc4f14137e77dc8f6eecc858f8c007e1fd07ad3063` |
| 22 | `lemma` | [swap_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/swap-integral--bc84c2944e1d5c74ebdcec8e.md) | 197 | `result-track:bc84c2944e1d5c74ebdcec8ed2e366bf0b67941ad1d1674f20a36c667976de73` |
| 23 | `theorem` | [fst_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/fst-integral--b684dd8d56e4d060556752c0.md) | 200 | `result-track:b684dd8d56e4d060556752c09fb13822e31d5c06d6bc2ac50cc00b3e1bed624c` |
| 24 | `theorem` | [snd_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/snd-integral--8212c65c7af45cc285ecc384.md) | 207 | `result-track:8212c65c7af45cc285ecc384c61dad80dd482f5ab8317377b2c7b3ac66059927` |
| 25 | `theorem` | [integral_pair](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-pair--5755d8ca93c33a60f65d8af8.md) | 212 | `result-track:5755d8ca93c33a60f65d8af8bbb0994f73b81917c6c271ddd8defb3645a74d5a` |
| 26 | `theorem` | [integral_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-smul-const--dcaeee9471276c6bd0346d67.md) | 218 | `result-track:dcaeee9471276c6bd0346d67856872c1aec118b9f86b8189cfd8dbb55ef1920e` |
| 27 | `lemma` | [integral_const_mul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-const-mul-of-integrable--00cb9c532ba4a0553a88a748.md) | 233 | `result-track:00cb9c532ba4a0553a88a748b53ae11c37752680fde825d8752e583bd39837bd` |
| 28 | `lemma` | [integral_mul_const_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-mul-const-of-integrable--79a95f2c05009072566bc480.md) | 241 | `result-track:79a95f2c05009072566bc480a4d42145b85873b960bb135ede164595cd9734f8` |
| 29 | `theorem` | [integral_withDensity_eq_integral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-withdensity-eq-integral-smul--d1efa974cdb7659ce3c33744.md) | 250 | `result-track:d1efa974cdb7659ce3c33744ea6298b40bc08363b5a6fea64f03c7571d74a7f8` |
| 30 | `theorem` | [integral_withDensity_eq_integral_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-withdensity-eq-integral-smul--dc280e75bc847960a8e40a45.md) | 295 | `result-track:dc280e75bc847960a8e40a452c9f7659c918f14834b58fa7ecb1a90a90fd5936` |
| 31 | `theorem` | [integral_withDensity_eq_integral_toReal_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-withdensity-eq-integral-toreal-smul--c5aeaeed64580984079832aa.md) | 310 | `result-track:c5aeaeed64580984079832aacb82293055b3a291691607164c7ad8e00c2f81fd` |
| 32 | `theorem` | [integral_withDensity_eq_integral_toReal_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/integral-withdensity-eq-integral-toreal-smul--b1def0b42290aa870aa3a77a.md) | 317 | `result-track:b1def0b42290aa870aa3a77a92989a12c6160ac492f0c7317a69e4744fc93c9a` |
| 33 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/setintegral-withdensity-eq-setintegral-smul--12b1cecf8ac78f2f32c07723.md) | 322 | `result-track:12b1cecf8ac78f2f32c0772328adaaa2222e5606dcf07d73c762599f6ba8f030` |
| 34 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--5869d2d35f5a24ca02b3a66d.md) | 327 | `result-track:5869d2d35f5a24ca02b3a66d044017163c3a563639aae6a9eb8d1208ba791ee6` |
| 35 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/setintegral-withdensity-eq-setintegral-smul--290abd8d26914a069ae7532a.md) | 333 | `result-track:290abd8d26914a069ae7532af6d01c934819d81a27d64ad61eebce83d828eebb` |
| 36 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--b3997567935a79f3582ae8eb.md) | 338 | `result-track:b3997567935a79f3582ae8eb88727f51bf1d258cda7aec2a42d3c341c74e95b2` |
| 37 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul₀'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/setintegral-withdensity-eq-setintegral-smul--bb0c914cde0403ddcbd8db0f.md) | 343 | `result-track:bb0c914cde0403ddcbd8db0f00ce6922412f73cb9d996591908552b04671f481` |
| 38 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul₀'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--6173d1e4a7afbe76add9cfc5.md) | 348 | `result-track:6173d1e4a7afbe76add9cfc58e1a3fa255486bda6e33ef51df6c557fd8ee264c` |
| 39 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant9e95482fd1e85da14a4692293bcafe3a91bb30301de93bd1bb1a3aa0fe292c09.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--3315f9b298e933b10815806f.md) | 353 | `result-track:3315f9b298e933b10815806f231daebf15a4079a3e3034c053285410bf38b0cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
