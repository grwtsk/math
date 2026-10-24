# Verification target: GRWTSK.Analysis.MeasureTheory.Map.Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d00bab6ae84f5fc534ca45b0214f5d5c304fe918",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d00bab6ae84f5fc534ca45b0214f5d5c304fe918`.

Source path: `GRWTSK/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Embedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftLinear](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/liftlinear--19366b908ae8318271eb6ebd.md) | 42 | `declaration-track:19366b908ae8318271eb6ebd619bd01a96d1ba0076189f841c304496e5e6d12a` |
| 2 | `lemma` | [liftLinear_apply₀](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/liftlinear-apply--4e2fc92da5e3deb3b59e34b3.md) | 54 | `result-track:4e2fc92da5e3deb3b59e34b38bc3576ae3acacfd407d24b458ab5741a689ec08` |
| 3 | `theorem` | [liftLinear_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/liftlinear-apply--b09e0b50a8d7a8ddd6e90db2.md) | 59 | `result-track:b09e0b50a8d7a8ddd6e90db23080ed8019e99b05f7a967a29af24a9b74604d6f` |
| 4 | `theorem` | [le_liftLinear_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/le-liftlinear-apply--b40c5b80b6acfc883cb881ce.md) | 63 | `result-track:b40c5b80b6acfc883cb881cee0756751874357cc54e80c192d4398c44ec84e5d` |
| 5 | `def` | [mapₗ](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map--088f029db270b82db3be0f43.md) | 71 | `declaration-track:088f029db270b82db3be0f4394a39489e3c469f1fa65006a18f12cc06455f5c9` |
| 6 | `theorem` | [mapₗ_congr](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-congr--af2413b9a5ba6781158442f4.md) | 77 | `result-track:af2413b9a5ba6781158442f4edb0b1193dea0518e23ec7f1e779a95c8a69edc1` |
| 7 | `theorem` | [mapₗ_mk_apply_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-mk-apply-of-aemeasurable--4ac5ea39e3b452317ff2e0a2.md) | 91 | `result-track:4ac5ea39e3b452317ff2e0a28425faa880a411d5c9cde00fa266d305aa2f1a5a` |
| 8 | `theorem` | [mapₗ_apply_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-apply-of-measurable--7dbc0a1864a362346e8fe568.md) | 94 | `result-track:7dbc0a1864a362346e8fe568f55faa996c2a41c6a14947da4e336604bdf571e8` |
| 9 | `theorem` | [map_add](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-add--ed2bbee41680a727f23e1c46.md) | 100 | `result-track:ed2bbee41680a727f23e1c46122d6ce74ca471131730e0d61f089f8704d7dced` |
| 10 | `theorem` | [map_zero](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-zero--5f8eeef1b1e5d5bedf1ec380.md) | 104 | `result-track:5f8eeef1b1e5d5bedf1ec3803d05d9683d163ba0119e1c424c9c9be46522b00a` |
| 11 | `theorem` | [map_of_not_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-of-not-aemeasurable--d8347e14766bc1844940adb5.md) | 108 | `result-track:d8347e14766bc1844940adb54a69c708dddda389ab65d5db7ef3be651e07571b` |
| 12 | `theorem` | [_root_.AEMeasurable.of_map_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/root-aemeasurable-of-map-ne-zero--aeff45f2ef5097a898b88ba1.md) | 111 | `result-track:aeff45f2ef5097a898b88ba12e4a1d69cfc21c999f75f40d73932465a6dc3e69` |
| 13 | `theorem` | [map_congr](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-congr--b664e6b979c6281b86976f63.md) | 114 | `result-track:b664e6b979c6281b86976f637905d93391eee6b5cf5d1f74749f4c966ddb6e2f` |
| 14 | `theorem` | [map_smul](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-smul--e4bcd4261f10fc1f8cb51e35.md) | 124 | `result-track:e4bcd4261f10fc1f8cb51e352293e60ec9f26f68ef1c4f67e0eb396ecc8786f5` |
| 15 | `theorem` | [map_smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-smul-nnreal--b1f0a91259c80bd2ea12a2c3.md) | 144 | `result-track:b1f0a91259c80bd2ea12a2c302b50d7e1f726993a6f4b535346f6c54a24ef9be` |
| 16 | `lemma` | [map_apply₀](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-apply--2b41458a05bfc17768da8a8f.md) | 150 | `result-track:2b41458a05bfc17768da8a8fba223db640a1ddd81c3cf8af468ebb451280ebfd` |
| 17 | `theorem` | [map_apply_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-apply-of-aemeasurable--850129948f523d4e34c56800.md) | 159 | `result-track:850129948f523d4e34c56800dc6f19726795762282f78b6e1d09f8d3b09b799c` |
| 18 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-apply--72fc0dbc92df99ec92851d92.md) | 163 | `result-track:72fc0dbc92df99ec92851d9222d4e5b7530489ca4bfef703c7cbc3ed68bb02fb` |
| 19 | `theorem` | [map_toOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-tooutermeasure--28660938051e431361bedc75.md) | 167 | `result-track:28660938051e431361bedc75fe0c0b158b889fb01c926eba17cb59772d3cfd4f` |
| 20 | `lemma` | [map_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-eq-zero-iff--c2e9aedc2d944cb32cb1c549.md) | 173 | `result-track:c2e9aedc2d944cb32cb1c549a77d65439735a2aecc937f798dc9fe5f2836b805` |
| 21 | `lemma` | [mapₗ_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-eq-zero-iff--e8e07f0bc11285bef4bfca16.md) | 176 | `result-track:e8e07f0bc11285bef4bfca16b8ec53062159598f53d49a2a9a6c295fa2be3c23` |
| 22 | `lemma` | [measure_preimage_of_map_eq_self](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/measure-preimage-of-map-eq-self--75f45548fcbc4d6a8071c3ac.md) | 182 | `result-track:75f45548fcbc4d6a8071c3ac0a6a1030b8cd682203a01dee3d52c00f0b33d330` |
| 23 | `lemma` | [map_ne_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-ne-zero-iff--fea676e537e02615775f7a0e.md) | 191 | `result-track:fea676e537e02615775f7a0ef23a17e4ccdaa25ef9022bf30801809ba024d641` |
| 24 | `lemma` | [mapₗ_ne_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-ne-zero-iff--60facd6d91f734964c560496.md) | 192 | `result-track:60facd6d91f734964c560496f7056d180f31f8f0d87f2a9fc5ded655a38c2a2e` |
| 25 | `theorem` | [map_id](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-id--5405ae413d265bdd5fe29f9a.md) | 196 | `result-track:5405ae413d265bdd5fe29f9ae65278a550f9ea07bf1b6ff0d02edc59378778ff` |
| 26 | `theorem` | [map_id'](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-id--73bfcaf8da50c57266a0a35d.md) | 200 | `result-track:73bfcaf8da50c57266a0a35d94e72e4d0b415d360622724d6349682741c82db9` |
| 27 | `theorem` | [map_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-map--3f067d0614a6a4e2b63d735c.md) | 205 | `result-track:3f067d0614a6a4e2b63d735c94a8c4df767fd9a4717fa7e43618bec04332ad04` |
| 28 | `theorem` | [map_mono](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-mono--aea36701b84d1f5b35a9b2d9.md) | 210 | `result-track:aea36701b84d1f5b35a9b2d97e5f75bfd7d4e98f4ca01c2b8da89419c78c28d0` |
| 29 | `theorem` | [le_map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/le-map-apply--081eec8c8302b821d90e0a91.md) | 215 | `result-track:081eec8c8302b821d90e0a913137a6841eb2e5a50f99d83cc82e9323abf9ef6e` |
| 30 | `theorem` | [le_map_apply_image](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/le-map-apply-image--fdc6a8d4eb9acde51557141c.md) | 222 | `result-track:fdc6a8d4eb9acde51557141ca2e82b69afb2144771312e50ff9e35424ef62b25` |
| 31 | `theorem` | [preimage_null_of_map_null](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/preimage-null-of-map-null--918ea42446a3854101e33cc7.md) | 227 | `result-track:918ea42446a3854101e33cc7432fcf1315291297c862cb7d911e5841a9e13686` |
| 32 | `theorem` | [tendsto_ae_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/tendsto-ae-map--5ca57fea1fb65b416a9a082e.md) | 231 | `result-track:5ca57fea1fb65b416a9a082ee52eb8cbc0b1585be942d1ee9551d6648d9120b6` |
| 33 | `theorem` | [mem_ae_map_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/mem-ae-map-iff--8583cbd96ff3a4ea80c5de1f.md) | 238 | `result-track:8583cbd96ff3a4ea80c5de1f56a19f8b8861a328486034724abdc618d1fe50b7` |
| 34 | `theorem` | [mem_ae_of_mem_ae_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/mem-ae-of-mem-ae-map--01c2c7c5803efb57799c9d02.md) | 242 | `result-track:01c2c7c5803efb57799c9d02633f4174fbd8ca8e0b6063139944d906c6260a10` |
| 35 | `theorem` | [ae_map_iff](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/ae-map-iff--8ca037fcc33560e10ac12945.md) | 246 | `result-track:8ca037fcc33560e10ac12945743b010602227595b2a83e919e5a6c850058ba0a` |
| 36 | `theorem` | [ae_of_ae_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/ae-of-ae-map--40b206f99fc3623f9ab89d67.md) | 250 | `result-track:40b206f99fc3623f9ab89d678e4da17809e8acd90c27e399176929ecd6aaf50c` |
| 37 | `theorem` | [ae_map_mem_range](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/ae-map-mem-range--0c49d6ec915cdd78472c6b7d.md) | 254 | `result-track:0c49d6ec915cdd78472c6b7da6bf0d9417e42a631a8bf660cf9680158aab9c18` |
| 38 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-apply--a9c11563964d0c6574998e77.md) | 270 | `result-track:a9c11563964d0c6574998e77c8ac8a929d7e948cdd62ae47bc11c678e82e468b` |
| 39 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-apply--eeb60153fde91ce723070122.md) | 299 | `result-track:eeb60153fde91ce723070122c6f851a1570bf611b520bec0ec937bdfcc442b49` |
| 40 | `theorem` | [map_symm_map](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-symm-map--74d125c752b3aba398ae81ae.md) | 303 | `result-track:74d125c752b3aba398ae81aee64542b7135f7db63cbb0b20259c03aa335506e0` |
| 41 | `theorem` | [map_map_symm](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-map-symm--6497ee7f426e87b56cfe0455.md) | 307 | `result-track:6497ee7f426e87b56cfe0455687e60922c19bb4b27948dd84c8100cb954db61c` |
| 42 | `theorem` | [map_measurableEquiv_injective](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-measurableequiv-injective--9d94bc005d191ff234febc5b.md) | 310 | `result-track:9d94bc005d191ff234febc5bde10595366f6a94286a741102702ba62d397d79e` |
| 43 | `theorem` | [map_apply_eq_iff_map_symm_apply_eq](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-apply-eq-iff-map-symm-apply-eq--abe07862c5c765d4f626c39c.md) | 315 | `result-track:abe07862c5c765d4f626c39c9f9301e57547de388df3e72029c135b3e6decbfc` |
| 44 | `theorem` | [map_ae](../../../../../mathematics/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/declarations/map-ae--b058cc69a66426066c9f6ce1.md) | 318 | `result-track:b058cc69a66426066c9f6ce17ff75be169cf2136bec9607aebc32eda18b8d8f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
