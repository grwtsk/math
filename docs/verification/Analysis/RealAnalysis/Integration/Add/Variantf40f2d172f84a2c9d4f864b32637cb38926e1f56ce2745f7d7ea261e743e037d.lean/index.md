# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Add.Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27cbbc11f6a2ea41bbb1db79ef0f4b1796f03a4e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27cbbc11f6a2ea41bbb1db79ef0f4b1796f03a4e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean.json)

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
| 1 | `theorem` | [lintegral_iSup](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-isup--df0846fbd2440aa99df637fb.md) | 44 | `result-track:df0846fbd2440aa99df637fb36f1efff167e7fdb43a3a90d8c5d55519b17346c` |
| 2 | `theorem` | [lintegral_iSup'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-isup--f0dbd90498ea992ffe0c3e46.md) | 106 | `result-track:f0dbd90498ea992ffe0c3e468e5a8856163eeaa1ac42580210333c40883974b0` |
| 3 | `theorem` | [lintegral_tendsto_of_tendsto_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-tendsto-of-tendsto-of-monotone--775de8e254758582a02f629a.md) | 123 | `result-track:775de8e254758582a02f629aa5ce025ac543acabadedb6eba3728b1bb83cc984` |
| 4 | `theorem` | [lintegral_iSup_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-isup-ae--42b01fc0b5e9e88acdec35eb.md) | 138 | `result-track:42b01fc0b5e9e88acdec35ebf65a955213b06b29db00569223cfc7ea03e14db9` |
| 5 | `theorem` | [lintegral_iSup_directed_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-isup-directed-of-measurable--cf8ef940a80e48ceb15f1c40.md) | 162 | `result-track:cf8ef940a80e48ceb15f1c409bb7ba60cba6a65474bac9deb145e29579e65f03` |
| 6 | `theorem` | [lintegral_iSup_directed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-isup-directed--1d2ee90b004ac1f68913295c.md) | 184 | `result-track:1d2ee90b004ac1f68913295c18242f5efca54cdcdf869bfc556985cfec5d08f9` |
| 7 | `theorem` | [lintegral_liminf_nat_le'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-liminf-nat-le--911bad4862cbf49a72bc4336.md) | 212 | `result-track:911bad4862cbf49a72bc43360dbef168ab40fe216313df9ee4927920aada7335` |
| 8 | `theorem` | [lintegral_liminf_le'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-liminf-le--3e22342bc804f3c4f978c35f.md) | 224 | `result-track:3e22342bc804f3c4f978c35f12a8603cefd69d4348df12d4240ed0111169e30e` |
| 9 | `theorem` | [lintegral_liminf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-liminf-le--4ba3085a7607ac0278810f40.md) | 241 | `result-track:4ba3085a7607ac0278810f409c2a42999b6de6e0fe34becd7847961891cc6604` |
| 10 | `theorem` | [lintegral_eq_iSup_eapprox_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-eq-isup-eapprox-lintegral--2d99cc09507f540e597c3b50.md) | 250 | `result-track:2d99cc09507f540e597c3b501612f850bd154f322796a4cc9fb53e91d8eba2c5` |
| 11 | `theorem` | [lintegral_eq_iSup_eapprox_lintegral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-eq-isup-eapprox-lintegral--104396f737460f66e6266806.md) | 264 | `result-track:104396f737460f66e6266806b4be78cc22e65e7f02ef3d273017d935730e3421` |
| 12 | `lemma` | [lintegral_eapprox_le_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-eapprox-le-lintegral--64568c7a8e3a489b42cf6d1e.md) | 268 | `result-track:64568c7a8e3a489b42cf6d1edc4c64658aae85f54022f1322d6a23c1d79dc2c6` |
| 13 | `lemma` | [measure_support_eapprox_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/measure-support-eapprox-lt-top--4a7b33a2d9802533d1d42805.md) | 273 | `result-track:4a7b33a2d9802533d1d42805515a1a62bab433947632f96f40f4acadc5335061` |
| 14 | `theorem` | [le_lintegral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/le-lintegral-add--1a91d27099a6e8f80de8ed70.md) | 281 | `result-track:1a91d27099a6e8f80de8ed704a29ac1480161c157285bc2a95cb917bdf9f8440` |
| 15 | `theorem` | [lintegral_add_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-add-aux--d8624cc98063a7ca617909df.md) | 289 | `result-track:d8624cc98063a7ca617909df8cc1231c5f1ee52d987c231c3cb44e945f188fcc` |
| 16 | `theorem` | [lintegral_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-add-left--2ec5f8ac42a2e7a9365a9748.md) | 324 | `result-track:2ec5f8ac42a2e7a9365a9748e32daeeadffa28d55f6d53ba2b6c6963506a3fcb` |
| 17 | `theorem` | [lintegral_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-add-left--2d50093187ace0e4d9e61e8f.md) | 334 | `result-track:2d50093187ace0e4d9e61e8f199d4a1226a87a45cc66bd4d937f71f6272fc3c9` |
| 18 | `theorem` | [lintegral_add_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-add-right--5e1e145193ea837717322c1e.md) | 339 | `result-track:5e1e145193ea837717322c1ed8b6151f808c6583c0467bf0046bf3302625fe7c` |
| 19 | `theorem` | [lintegral_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-add-right--3192a70d5bf1d6b96710350d.md) | 347 | `result-track:3192a70d5bf1d6b96710350d9f2f045e6849823dbb7131c36f436f4a5a7fdd45` |
| 20 | `theorem` | [lintegral_finsetSum'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-finsetsum--75ea3e7350e25586ed17723a.md) | 351 | `result-track:75ea3e7350e25586ed17723a1c88e1a1b677b01c266b966bcc019788aa138fe2` |
| 21 | `theorem` | [lintegral_finsetSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-finsetsum--0b3cac300b53f7e2cdbb3d2d.md) | 364 | `result-track:0b3cac300b53f7e2cdbb3d2dc89691a0c451ef478b1ecf17bbf275e365130819` |
| 22 | `theorem` | [lintegral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-tsum--4d7a019dd3edc56b0d6beaf8.md) | 370 | `result-track:4d7a019dd3edc56b0d6beaf801a429624ae7d9ade806a282771095b792f81b94` |
| 23 | `theorem` | [lintegral_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-const-mul--257a6bac5522d920ec94007b.md) | 389 | `result-track:257a6bac5522d920ec94007bfc60e367b8f54a53161407a7198ecebb90ac345b` |
| 24 | `theorem` | [lintegral_const_mul''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-const-mul--035537cdc39924e5129f9db2.md) | 410 | `result-track:035537cdc39924e5129f9db2c0b6d740d1c932d0a19a349af86ed0c77705cf6a` |
| 25 | `theorem` | [lintegral_const_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-const-mul-le--369e3ac658b4860a6a377618.md) | 417 | `result-track:369e3ac658b4860a6a3776182713e903083e3aa72677e39968876f690e618aac` |
| 26 | `theorem` | [lintegral_const_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-const-mul--72ab802acd07171d823e847a.md) | 428 | `result-track:72ab802acd07171d823e847a3a9aa24149bec3913a2445a16069734a3f442f05` |
| 27 | `theorem` | [lintegral_mul_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-mul-const--1e7fe602df6c36a093c284b5.md) | 441 | `result-track:1e7fe602df6c36a093c284b51f77bea95360f009a577f07a5d85007d29e947eb` |
| 28 | `theorem` | [lintegral_mul_const''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-mul-const--ae3103346a0bf9d7ffa2c905.md) | 444 | `result-track:ae3103346a0bf9d7ffa2c90593c23fe729a878e0ead72bb293019d93f1154ddd` |
| 29 | `theorem` | [lintegral_mul_const_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-mul-const-le--46cc0ed6a420671970cad518.md) | 447 | `result-track:46cc0ed6a420671970cad51834816f96c64bec344bd41232277e1e78c510d414` |
| 30 | `theorem` | [lintegral_mul_const'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-mul-const--208909b97feb20e98039c90d.md) | 451 | `result-track:208909b97feb20e98039c90dbad1b01970a5ecc83d3b6f44247b1fd6fe16beee` |
| 31 | `theorem` | [lintegral_lintegral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-lintegral-mul--ba6ad8cf8a9b79264530abd3.md) | 456 | `result-track:ba6ad8cf8a9b79264530abd3b2da910f22209454631d15012f42f6d097a61052` |
| 32 | `theorem` | [lintegral_lintegral_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-lintegral-mul-le--2665cbedf519810e3d94ba0d.md) | 461 | `result-track:2665cbedf519810e3d94ba0d4e26144fdcf9706ea97e98cb703bc7b935b45af0` |
| 33 | `theorem` | [lintegral_trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-trim--e639ed65b558c10375bb2163.md) | 474 | `result-track:e639ed65b558c10375bb2163e2ed9f02ddd632b719c75e6af73b79f0f13d9b0e` |
| 34 | `theorem` | [lintegral_trim_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/lintegral-trim-ae--a83b2926dadd72949f6e0eec.md) | 493 | `result-track:a83b2926dadd72949f6e0eec32065d803ef736c6685cdceeb3b6308ba2d346c6` |
| 35 | `theorem` | [setLIntegral_trim_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/setlintegral-trim-ae--7db57df4a37de7ab908b7e40.md) | 498 | `result-track:7db57df4a37de7ab908b7e40333bbdf45e74a6b7c2fe430203732f48861e2a86` |
| 36 | `theorem` | [setLIntegral_trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/declarations/setlintegral-trim--7c291f78084960ccd6119375.md) | 505 | `result-track:7c291f78084960ccd6119375ba7b5dbf4e935882fd5492392b06280ff1124748` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
