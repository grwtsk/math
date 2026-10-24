# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EndsNu.Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA.EndsWeighted` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CN2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/cn2--b283b62e861d471551fee023.md) | 44 | `declaration-track:b283b62e861d471551fee023abf82710a429c7d93e9e46d27afbd605537766b1` |
| 2 | `lemma` | [CN2_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/cn2-nonneg--148009fdd54fd6bb19970c17.md) | 46 | `result-track:148009fdd54fd6bb19970c17a63acb7ec8348f0954e51322b704f23a08a30747` |
| 3 | `lemma` | [CN2_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/cn2-def--ad8a22301d128b109cad6bfc.md) | 52 | `result-track:ad8a22301d128b109cad6bfc95ad08c671a73a5ff14ca36f197a4e35e84df953` |
| 4 | `theorem` | [integral_psiA_mul_sqrt_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/integral-psia-mul-sqrt-le--753c1ebb9988da102a821398.md) | 55 | `result-track:753c1ebb9988da102a8213983dbdd98cb1e6b9061d13610cb4242d0efdb8a412` |
| 5 | `theorem` | [nu_weight_bound_of_L_le_two_B](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/nu-weight-bound-of-l-le-two-b--c1ab0eb8880b232f04c90753.md) | 110 | `result-track:c1ab0eb8880b232f04c90753983b68325a4e4f9dbe7e76efd802f89a655b9df9` |
| 6 | `theorem` | [nu_weight_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/nu-weight-bound--7821f7b331bc6c6139b674bc.md) | 196 | `result-track:7821f7b331bc6c6139b674bcc792daa674e840ac1eb8e67286fb9432694e3756` |
| 7 | `theorem` | [nu_weight_bound_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/nu-weight-bound-l--a1a1417846eaebafca358290.md) | 205 | `result-track:a1a1417846eaebafca358290693ee92bb3fc6ac83655195045790e394877a475` |
| 8 | `lemma` | [setIntegral_Iio_comp_sub_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/setintegral-iio-comp-sub-left--d8a41b0661e9c53cdf0f3311.md) | 216 | `result-track:d8a41b0661e9c53cdf0f33119775a1b0deaa4d95e70b03eabccb627823bd96b3` |
| 9 | `lemma` | [setIntegral_Ioi_comp_sub_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/setintegral-ioi-comp-sub-right--3d135840d035f119c1fe32c2.md) | 231 | `result-track:3d135840d035f119c1fe32c2913c874be2ee4d6484e605c6b9db04a5a9831663` |
| 10 | `def` | [Sgrid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/sgrid--18557c33f809a784a12dafd3.md) | 246 | `declaration-track:18557c33f809a784a12dafd367e72b36657067ac3b2f3b38c26e38890eb87d4c` |
| 11 | `lemma` | [Setting.h_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/setting-h-pos--9f18e6d0ac6284d40c3d5c63.md) | 249 | `result-track:9f18e6d0ac6284d40c3d5c63a1a941925def55246294bb318abd188dd66f89de` |
| 12 | `lemma` | [Setting.h_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/setting-h-inv--fe734105bea9f2124ddd2442.md) | 252 | `result-track:fe734105bea9f2124ddd2442193228daa164f2816a7de842466a8b8ce518eb27` |
| 13 | `lemma` | [Sgrid_le_near](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/sgrid-le-near--910b331964117dfba491eea3.md) | 256 | `result-track:910b331964117dfba491eea3be7f4b544d2882d70bd5da880769ea8b98baab87` |
| 14 | `lemma` | [Sgrid_le_far](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/sgrid-le-far--9e7f2def24a8e0b7b023d735.md) | 263 | `result-track:9e7f2def24a8e0b7b023d735a9fd54b9b71dead3cb9524a49f602634406dc074` |
| 15 | `lemma` | [Sgrid_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/sgrid-nonneg--4a3b7258d90add547b1120a3.md) | 277 | `result-track:4a3b7258d90add547b1120a3600105653272e19c54b87b85c769889897329aca` |
| 16 | `lemma` | [sigma_eq_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/sigma-eq-left--20c03071671acff516014259.md) | 281 | `result-track:20c03071671acff516014259a2f036f4073925d73246820f86281d0503e9a056` |
| 17 | `lemma` | [sigma_le_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/sigma-le-right--dd3308035a90952c0fe7bdf1.md) | 287 | `result-track:dd3308035a90952c0fe7bdf1ecdb02b98822f80df7048747c78f9a3ceae5b1df` |
| 18 | `def` | [Mnear](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/mnear--bc102183e44ba02a8238cbc6.md) | 301 | `declaration-track:bc102183e44ba02a8238cbc6fe297852e8f329e8f884a685e2da058c75dccc86` |
| 19 | `def` | [Mfar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/mfar--b9ccb324c6fce8c9d4209b47.md) | 304 | `declaration-track:b9ccb324c6fce8c9d4209b47afba8ad8cd891df81aa78090c162fe20bc0eb9b5` |
| 20 | `def` | [Mtot](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/mtot--a776f4c739840f75da6c62d3.md) | 307 | `declaration-track:a776f4c739840f75da6c62d3b3bee9538b7e919cbfb1b72ca075f8a696010cd3` |
| 21 | `lemma` | [Mnear_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/mnear-nonneg--2ef999ebecc73005ea2fe342.md) | 310 | `result-track:2ef999ebecc73005ea2fe342cde48eb3a3d0820840faa8b9b113c622cc63a250` |
| 22 | `lemma` | [Mfar_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/mfar-nonneg--42ff303055bb8a1275f20d62.md) | 322 | `result-track:42ff303055bb8a1275f20d6238dfde77a85a3deda27bea1c92345fb24fff85aa` |
| 23 | `lemma` | [Sgrid_mul_le_Mnear](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/sgrid-mul-le-mnear--f4c80cbdd44147cd6100b642.md) | 330 | `result-track:f4c80cbdd44147cd6100b642b803485f50032837c99c763f5d79360ecb808db9` |
| 24 | `lemma` | [Sgrid_mul_le_Mfar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/sgrid-mul-le-mfar--4d08ff99c4dde22486ece15a.md) | 345 | `result-track:4d08ff99c4dde22486ece15a5b047a40ac863fd9dd97076519ea1184bfbab2c4` |
| 25 | `lemma` | [dom_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/dom-left--2233bbec06987fb7441e60eb.md) | 355 | `result-track:2233bbec06987fb7441e60ebf11e13a6a01d7fbd5f89359662d910282148c964` |
| 26 | `lemma` | [dom_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/dom-right--d9593545bfe5fddb8bb696dc.md) | 376 | `result-track:d9593545bfe5fddb8bb696dc09c59e78db0b27f8f50033a5fdc0c47e5ddd085a` |
| 27 | `lemma` | [Mnear_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/mnear-integrableon--7ded4f7eb86d79e93bb0b62b.md) | 405 | `result-track:7ded4f7eb86d79e93bb0b62bdfb4e8be77f763f3884d5f6f293ed9e8653385bd` |
| 28 | `lemma` | [Mfar_eq_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/mfar-eq-rpow--7e8ad75cf9c776c24a150bfb.md) | 425 | `result-track:7e8ad75cf9c776c24a150bfb911761430cbbd14f90335ce2ad65ff829caf9854` |
| 29 | `lemma` | [Mfar_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/mfar-integrableon--1907f1401f5d53219bb0738e.md) | 437 | `result-track:1907f1401f5d53219bb0738ec3b1b7a3041e9af79bb9e742edb630ec1ca4a774` |
| 30 | `lemma` | [Mtot_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/mtot-integrable--16c8f18ac51f01782df19223.md) | 447 | `result-track:16c8f18ac51f01782df19223e2038f7b5eaf250a4e5b10ee6f6da80a71aa70ae` |
| 31 | `lemma` | [integral_Mtot_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/integral-mtot-eq--c957472760a3150ebc864d8a.md) | 452 | `result-track:c957472760a3150ebc864d8aa286dc6fbcc1c75e817c2d1e841e3e866053aeb4` |
| 32 | `lemma` | [integral_Mnear_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/integral-mnear-le--9deda244e16d72a8081648e0.md) | 467 | `result-track:9deda244e16d72a8081648e0243aaeb63ec541245fc0a2d4cadfdb7110aac642` |
| 33 | `lemma` | [integral_Mfar_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/integral-mfar-le--c88d884fb214674dcd206b6f.md) | 533 | `result-track:c88d884fb214674dcd206b6ff8f1f9768ba11a05447d89c7af27af30f872fb48` |
| 34 | `theorem` | [integrableOn_sigma_mul_abs_nuX](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/integrableon-sigma-mul-abs-nux--29c013b0205b26314c8f4c88.md) | 580 | `result-track:29c013b0205b26314c8f4c886cbd55c59988f73367078d07537b7f26072d233e` |
| 35 | `lemma` | [log_two_mul_T_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/log-two-mul-t-le--6d641e7bada292ef2b24e84c.md) | 612 | `result-track:6d641e7bada292ef2b24e84c2c9b802be7e7dd461263ccf86dac682661fbd43e` |
| 36 | `theorem` | [nu_grid_bound_raw](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/nu-grid-bound-raw--d2b8b47c0c1efec2cd10cc4d.md) | 626 | `result-track:d2b8b47c0c1efec2cd10cc4d037b1173638ae80cf6aaa0c41b8631794a16a7bb` |
| 37 | `theorem` | [nu_grid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/nu-grid-bound--20e4e3ed059243b5282f438d.md) | 720 | `result-track:20e4e3ed059243b5282f438d2299ab8c6b04f7bf0ddd9177afa3ec59fd929b62` |
| 38 | `theorem` | [nu_grid_bound_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/declarations/nu-grid-bound-l--9539ef597751e7f7fa466fac.md) | 778 | `result-track:9539ef597751e7f7fa466facff4e48036a1fb446db6d51d9a73950e0232356da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
