# Verification target: GRWTSK.Analysis.MeasureTheory.Map.Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbf66a344aa173fd547bb8bdd52dfd4339adc0d4",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbf66a344aa173fd547bb8bdd52dfd4339adc0d4`.

Source path: `GRWTSK/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Embedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftLinear](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/liftlinear--ecbae84e2ddece1055df392b.md) | 50 | `declaration-track:ecbae84e2ddece1055df392b12ebb1e4c98b8c4c10dc7769ae676d05a3d03a99` |
| 2 | `lemma` | [liftLinear_apply₀](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/liftlinear-apply--d586f62d30241d905b435f87.md) | 62 | `result-track:d586f62d30241d905b435f870743aee44271de8e392e76778b73386a8ee07eb3` |
| 3 | `theorem` | [liftLinear_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/liftlinear-apply--1ca4e61b6aa635489925d9dc.md) | 67 | `result-track:1ca4e61b6aa635489925d9dcc1143253b9b69733debebe12b88fa3a83ed94f8a` |
| 4 | `theorem` | [le_liftLinear_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/le-liftlinear-apply--ac2e1ac5c089b8cf4be09229.md) | 71 | `result-track:ac2e1ac5c089b8cf4be09229fe0c2e42e38b000c9a2f49ed4e9a3d5f0d2cd194` |
| 5 | `def` | [mapₗ](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map--9c2dc5463a81b2e17706f979.md) | 79 | `declaration-track:9c2dc5463a81b2e17706f9792f2b9c3aa73fc3f99de5167944dba55720b650a9` |
| 6 | `theorem` | [mapₗ_congr](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-congr--b8920db648671fa30f89f0a5.md) | 85 | `result-track:b8920db648671fa30f89f0a5f4d19903f363ba6cb87d08d9c69d4a65cb07b70c` |
| 7 | `theorem` | [mapₗ_mk_apply_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-mk-apply-of-aemeasurable--60c62388570a8160ef8c7986.md) | 99 | `result-track:60c62388570a8160ef8c79864972f8d8ace3c7accaf390ee7e44b25866c5da76` |
| 8 | `theorem` | [mapₗ_apply_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-apply-of-measurable--e13e09ed07d08d21c9d096d2.md) | 102 | `result-track:e13e09ed07d08d21c9d096d235a6dcb17773bd17e9a80123bf4d793caeb3bcfe` |
| 9 | `theorem` | [map_add](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-add--91ebdb7ce0ec718b2855c865.md) | 108 | `result-track:91ebdb7ce0ec718b2855c8650f4da2937438cf83984db9b134f5f59a55dddbc4` |
| 10 | `theorem` | [map_zero](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-zero--4bcec39af20620600b6f8c6e.md) | 112 | `result-track:4bcec39af20620600b6f8c6e95e4bbb45545fffb8cead2a0282f7470c38228b2` |
| 11 | `theorem` | [map_of_not_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-of-not-aemeasurable--bd65bdeb6128a4b4b9157920.md) | 116 | `result-track:bd65bdeb6128a4b4b9157920aa1df2b2b35f923a2daa54400c1a5795817b5aa5` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.LiftLinear.Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.AEMeasurable.of_map_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/root-grwtsk-analysis-measuretheory-liftlinear-variant3c7fb458eece85551c9--713513d23b7964fc8170d9db.md) | 119 | `result-track:713513d23b7964fc8170d9db30d9e749e3db8dfe03bc8aecd70f26bbc76cd078` |
| 13 | `theorem` | [map_congr](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-congr--f8fbce06c9beff711852ae34.md) | 122 | `result-track:f8fbce06c9beff711852ae34a908c58286d9155cbdc03c3749a88d789ef08446` |
| 14 | `theorem` | [map_smul](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-smul--32606398a51cb255c002e737.md) | 132 | `result-track:32606398a51cb255c002e737558e75800309586b3a14c1f5c7d5b29df5b81e1d` |
| 15 | `theorem` | [map_smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-smul-nnreal--0c2f2d7630eb4095da82087a.md) | 152 | `result-track:0c2f2d7630eb4095da82087a691cffe7b30d310a90f3403b3650f67f72a7052c` |
| 16 | `lemma` | [map_apply₀](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-apply--d904afd0b51ba107d6de6321.md) | 158 | `result-track:d904afd0b51ba107d6de632129c74dcff1e7e5cf0083b4f8097bacab8a341dbf` |
| 17 | `theorem` | [map_apply_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-apply-of-aemeasurable--5db3171f8823ca93de66af1f.md) | 167 | `result-track:5db3171f8823ca93de66af1fc20df5a8cbdf5f2ffb422a9d1ea323bedff13763` |
| 18 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-apply--0cedaf34aff4bc1ba8106837.md) | 171 | `result-track:0cedaf34aff4bc1ba81068371085cd376abcfe5e19ddaf445b3180f3ed2579f1` |
| 19 | `theorem` | [map_toOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-tooutermeasure--58566521dfcb67f64bdab206.md) | 175 | `result-track:58566521dfcb67f64bdab2064fd4689b37dd96cfedda1fcb675a33c046009ec8` |
| 20 | `lemma` | [map_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-eq-zero-iff--7d500e7ec950d9bf069d1d32.md) | 181 | `result-track:7d500e7ec950d9bf069d1d32bd3353f891d33be0ced0e0650076f43159f2212c` |
| 21 | `lemma` | [mapₗ_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-eq-zero-iff--01d03466640ece3cbff5f2b1.md) | 184 | `result-track:01d03466640ece3cbff5f2b113bb4adbd8903d58f571c0bca3be850d68fd177c` |
| 22 | `lemma` | [measure_preimage_of_map_eq_self](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/measure-preimage-of-map-eq-self--b12066d21fcb627a661a741e.md) | 190 | `result-track:b12066d21fcb627a661a741e84bd3b89c59fbbf14db3aa746536d7e64c0833e8` |
| 23 | `lemma` | [map_ne_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-ne-zero-iff--27f30a5c47bddb1f4baa0529.md) | 199 | `result-track:27f30a5c47bddb1f4baa0529dde281a7d5d123df45b53e07b9f5ab2eaad6ace6` |
| 24 | `lemma` | [mapₗ_ne_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-ne-zero-iff--4cf015f7dff352318f56aeba.md) | 200 | `result-track:4cf015f7dff352318f56aeba3067b2bbdf0706d7b95a1dcda0fcd25d0c2123ce` |
| 25 | `theorem` | [map_id](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-id--559e1aee2570e87a82492ba9.md) | 204 | `result-track:559e1aee2570e87a82492ba9d6efb314f6539ced438aca9a3282a03363af7167` |
| 26 | `theorem` | [map_id'](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-id--ea96f336e259d155c6ddacea.md) | 208 | `result-track:ea96f336e259d155c6ddaceadf9dc5e9d636905e9fb25bc647af65637cc9ae15` |
| 27 | `theorem` | [map_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-map--e690f030480e8d4906e07c5d.md) | 213 | `result-track:e690f030480e8d4906e07c5d73e18163ae13ef3dfe26b27f68be4fcb2fffce51` |
| 28 | `theorem` | [map_mono](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-mono--a62e1bc89ee601a22c2a5309.md) | 218 | `result-track:a62e1bc89ee601a22c2a53092209a8e8bbc15cef65b855f8161c97104c927734` |
| 29 | `theorem` | [le_map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/le-map-apply--485c8ffbe6f85da8074d4951.md) | 223 | `result-track:485c8ffbe6f85da8074d495134ab4f54da5fe9ce4f12946e7c22b785259e734f` |
| 30 | `theorem` | [le_map_apply_image](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/le-map-apply-image--dd42ae1fee54bcd44836c1df.md) | 230 | `result-track:dd42ae1fee54bcd44836c1df884ab1e4ee11b823d30165ffd358ed946e710e94` |
| 31 | `theorem` | [preimage_null_of_map_null](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/preimage-null-of-map-null--f7f1b7901829929e9ff65a0f.md) | 235 | `result-track:f7f1b7901829929e9ff65a0f0239533a4ce95b7f2b0e5404a73a3e4de98a5737` |
| 32 | `theorem` | [tendsto_ae_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/tendsto-ae-map--360d195b9e39b7907557c60d.md) | 239 | `result-track:360d195b9e39b7907557c60d93236b989b04b7d5036911ed4ce4626c0ba5edf0` |
| 33 | `theorem` | [mem_ae_map_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/mem-ae-map-iff--9097dab766fe74efd42110ed.md) | 246 | `result-track:9097dab766fe74efd42110ed75613bd09d8b980bec0a4dde0f748c1586363d10` |
| 34 | `theorem` | [mem_ae_of_mem_ae_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/mem-ae-of-mem-ae-map--ca822ef23c03fa304ce1020b.md) | 250 | `result-track:ca822ef23c03fa304ce1020baed5dbddfec034a9e12fc221a851246b13048125` |
| 35 | `theorem` | [ae_map_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/ae-map-iff--4b3d0304ad3aa3fee69de34a.md) | 254 | `result-track:4b3d0304ad3aa3fee69de34aab220ae994749197b5ed6dae045e4d1da4763283` |
| 36 | `theorem` | [ae_of_ae_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/ae-of-ae-map--16e5914f68f6dff1db0fb089.md) | 258 | `result-track:16e5914f68f6dff1db0fb089a3e59f5ccba6fe84c8b5c889755c6e3291a99567` |
| 37 | `theorem` | [ae_map_mem_range](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/ae-map-mem-range--c54289b029487255ea6783ee.md) | 262 | `result-track:c54289b029487255ea6783eed99a34a91a7d3cf99c37c418df40dd6da900cb62` |
| 38 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-apply--0dec07596b09d010d375558c.md) | 278 | `result-track:0dec07596b09d010d375558cf2760401e2994e268d0c27f5b422107c12c78231` |
| 39 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-apply--e1b7e649b1a586e6d44db628.md) | 307 | `result-track:e1b7e649b1a586e6d44db628052dbdda97e0fbd6846a0cc361db3d3aa74eff84` |
| 40 | `theorem` | [map_symm_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-symm-map--2964aee4cbebc04c56ac2407.md) | 311 | `result-track:2964aee4cbebc04c56ac2407400d5f78d61a774547c8305c6f3d0cdbe916b8e0` |
| 41 | `theorem` | [map_map_symm](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-map-symm--00cbbc68ed7dc47eb015abd8.md) | 315 | `result-track:00cbbc68ed7dc47eb015abd8d6c214c4abab9d98154520f495da0cc8c6d89944` |
| 42 | `theorem` | [map_measurableEquiv_injective](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-measurableequiv-injective--3b4a19bd35213ed9d3527a07.md) | 318 | `result-track:3b4a19bd35213ed9d3527a072efbb9c4eaa8b603d41b0dd2d98e7680e83e656c` |
| 43 | `theorem` | [map_apply_eq_iff_map_symm_apply_eq](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-apply-eq-iff-map-symm-apply-eq--d9525542aee09eefdd7e9728.md) | 323 | `result-track:d9525542aee09eefdd7e9728897489a6052d98c6dbb9e8fa1db5c23e1448d114` |
| 44 | `theorem` | [map_ae](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant6553133fec631471345ee9f9fc76929c246354437d7105b78ff58f6deac491ff.lean/declarations/map-ae--7f61f4f1ee7275d6a98b2fa2.md) | 326 | `result-track:7f61f4f1ee7275d6a98b2fa228907ade520a8d019a91580628f8675ab5bf320f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
