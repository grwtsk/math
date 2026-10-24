# Verification target: GRWTSK.Analysis.MeasureTheory.QuasiMeasurePreserving.Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a259da60cfd673ead019b27328abc37da6a160f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a259da60cfd673ead019b27328abc37da6a160f`.

Source path: `GRWTSK/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.AbsolutelyContinuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.BorelCantelli` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/quasimeasurepreserving--dfd4aa0970652c249d539199.md) | 39 | `declaration-track:dfd4aa0970652c249d5391996b47377e8da3ebda86278e6587ab991e33fab3b2` |
| 2 | `theorem` | [id](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/id--c94d83b469bc196a1a62eb4e.md) | 50 | `result-track:c94d83b469bc196a1a62eb4eedba30bddc8173f8e620512519542480a235837a` |
| 3 | `theorem` | [_root_.Measurable.quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/root-measurable-quasimeasurepreserving--e6d2b53dce3d60bc7758256b.md) | 55 | `result-track:e6d2b53dce3d60bc7758256b1a644c4290bb51133b9288048b250287879ca942` |
| 4 | `theorem` | [mono_left](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/mono-left--f71e46e64d3a0772989eb08f.md) | 60 | `result-track:f71e46e64d3a0772989eb08f4376095077047b73866f4c80343718db7fe94101` |
| 5 | `theorem` | [mono_right](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/mono-right--eca1fd8f47b4fd3dbcb22c72.md) | 64 | `result-track:eca1fd8f47b4fd3dbcb22c72332e37b5e82260e4c65ed30def184cf42966c172` |
| 6 | `theorem` | [mono](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/mono--4e62c2346396163768c94a05.md) | 69 | `result-track:4e62c2346396163768c94a05bdda5b78b9a77b1cfb2daf76d0ac2bc8f3af7731` |
| 7 | `theorem` | [comp](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/comp--a9f6dee4e4f415015abffc8d.md) | 74 | `result-track:a9f6dee4e4f415015abffc8d5695034e3e925a69aeb18d36e3fae9cfebb07d0b` |
| 8 | `theorem` | [iterate](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/iterate--bcddb316d378d22c48d3bcd5.md) | 80 | `result-track:bcddb316d378d22c48d3bcd5be030521c002712051850250dca901f2fa90351e` |
| 9 | `theorem` | [aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/aemeasurable--62f3f179615289a95256a1fb.md) | 85 | `result-track:62f3f179615289a95256a1fb3fccb302cd0283b386e4e9c8501f329325dd2afb` |
| 10 | `theorem` | [smul_measure](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/smul-measure--ec24890517e070a4fbc996c6.md) | 88 | `result-track:ec24890517e070a4fbc996c67722142d4e00b9f6e15fb6253c75b305a4292e39` |
| 11 | `theorem` | [ae_map_le](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/ae-map-le--35c4c96f5757d7293b3bb7fb.md) | 92 | `result-track:35c4c96f5757d7293b3bb7fbb4b6d43ea336369b6c11cebf13b2d07c29dcdb3c` |
| 12 | `theorem` | [tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/tendsto-ae--512a7c5ce7d3196a6202189c.md) | 95 | `result-track:512a7c5ce7d3196a6202189c4b5b1efa754a64b4b2163b77a188429e6ff43e56` |
| 13 | `theorem` | [ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/ae--c37cc62a2cca425d483105a7.md) | 98 | `result-track:c37cc62a2cca425d483105a7d0072fea598b8ed56ec77a6bede3848185a3bd2b` |
| 14 | `theorem` | [ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/ae-eq--2f4e8cedefe23d030bf10da2.md) | 102 | `result-track:2f4e8cedefe23d030bf10da279776a269ecf6b7c95107babe4b425cc744d5d12` |
| 15 | `theorem` | [preimage_null](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/preimage-null--1226cd55a4989280989cb797.md) | 106 | `result-track:1226cd55a4989280989cb797ca1a8e0971b89c7576ac4a82af18d920d1327738` |
| 16 | `theorem` | [preimage_mono_ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/preimage-mono-ae--963b620e442655ca5654995b.md) | 110 | `result-track:963b620e442655ca5654995b418b2ab46209fc11eabb19b770901dc1ab0fd9f6` |
| 17 | `theorem` | [preimage_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/preimage-ae-eq--036fdb99174869dd5e9c7ff4.md) | 115 | `result-track:036fdb99174869dd5e9c7ff4cd8e3f85123f91398ebc88b441ca3f9d7e60eadb` |
| 18 | `theorem` | [_root_.MeasureTheory.NullMeasurableSet.preimage](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/root-measuretheory-nullmeasurableset-preimage--3db02db87b124d76cf64cf49.md) | 121 | `result-track:3db02db87b124d76cf64cf497aa8843deb692afb17fc702b61ac236319d28679` |
| 19 | `theorem` | [preimage_iterate_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/preimage-iterate-ae-eq--971ebbc6a528298d43e1f2b1.md) | 126 | `result-track:971ebbc6a528298d43e1f2b10791261e5b45066c42138f1ef8a3373a59e823e1` |
| 20 | `theorem` | [image_zpow_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/image-zpow-ae-eq--3d7fcc4aa9ef252406606f69.md) | 134 | `result-track:3d7fcc4aa9ef252406606f69569cdb69dee02d6d1314cabe9a6a412de2b61a98` |
| 21 | `theorem` | [limsup_preimage_iterate_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/limsup-preimage-iterate-ae-eq--68596f58264b08ced96d41b5.md) | 150 | `result-track:68596f58264b08ced96d41b5ea8f72a3d014732f25fbdc1c9f208b1c17b27fd8` |
| 22 | `theorem` | [liminf_preimage_iterate_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/liminf-preimage-iterate-ae-eq--18a23d6d8f2ed2b456dc1bad.md) | 156 | `result-track:18a23d6d8f2ed2b456dc1badafb8a1f6da519ae02096404dbc3f696752b026c1` |
| 23 | `theorem` | [exists_preimage_eq_of_preimage_ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/exists-preimage-eq-of-preimage-ae--1d68d05a21bc5896922f0169.md) | 164 | `result-track:1d68d05a21bc5896922f016944ed09daf2bdddfd5b673821c40b6d320217cae4` |
| 24 | `theorem` | [smul_ae_eq_of_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/smul-ae-eq-of-ae-eq--4479b48133d9f5cc7fd0f9d9.md) | 178 | `result-track:4479b48133d9f5cc7fd0f9d946ac990ade31c2551c5f8e2fab282e0ecbb189c9` |
| 25 | `theorem` | [pairwise_aedisjoint_of_aedisjoint_forall_ne_one](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/pairwise-aedisjoint-of-aedisjoint-forall-ne-one--adc12ebea2bbc7855f2f8a97.md) | 191 | `result-track:adc12ebea2bbc7855f2f8a978309b16af0154b2e92c417d99513dc50adfb082c` |
| 26 | `theorem` | [NullMeasurable.comp_quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/nullmeasurable-comp-quasimeasurepreserving--fa54b42f8099d5d1b9c301ad.md) | 213 | `result-track:fa54b42f8099d5d1b9c301ad0c6aaba5729058542cb578201dc6dd4f9dc2b9c4` |
| 27 | `theorem` | [NullMeasurableSet.mono_ac](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/nullmeasurableset-mono-ac--76481d27d802d2fb320dd3c0.md) | 217 | `result-track:76481d27d802d2fb320dd3c09446124c6ff82fea71c344c8b67f405031d36168` |
| 28 | `theorem` | [NullMeasurableSet.mono](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/nullmeasurableset-mono--2721fb148e9d2666ffde6f25.md) | 221 | `result-track:2721fb148e9d2666ffde6f253dd68408fefa364c24408cd195c4e438addf17f7` |
| 29 | `lemma` | [NullMeasurableSet.smul_measure](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/nullmeasurableset-smul-measure--f9120d1aea6327ac635f4923.md) | 224 | `result-track:f9120d1aea6327ac635f4923d22429556c741da0b309fde90a7878f28a5d7dfc` |
| 30 | `lemma` | [nullMeasurableSet_smul_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/nullmeasurableset-smul-measure-iff--98c3517b68c89049e061513b.md) | 228 | `result-track:98c3517b68c89049e061513bb7910d09b32dcf5f19c0200405aa487c947ce2ed` |
| 31 | `theorem` | [AEDisjoint.preimage](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/aedisjoint-preimage--30f06924f423321ab933e50f.md) | 232 | `result-track:30f06924f423321ab933e50fe26eb911ec28736a1c7ab47691b95701606f0202` |
| 32 | `theorem` | [quasiMeasurePreserving_symm](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/declarations/quasimeasurepreserving-symm--b450fac6a4d09284097c048a.md) | 244 | `result-track:b450fac6a4d09284097c048a72efe61cfd80bb6d558db52047f8acb12674d341` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
