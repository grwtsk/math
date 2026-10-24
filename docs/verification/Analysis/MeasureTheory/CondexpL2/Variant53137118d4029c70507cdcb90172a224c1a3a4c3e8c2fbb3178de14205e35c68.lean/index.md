# Verification target: GRWTSK.Analysis.MeasureTheory.CondexpL2.Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96a900cf434d68b2e8dbaf77a9a36cb726b92f85",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96a900cf434d68b2e8dbaf77a9a36cb726b92f85`.

Source path: `GRWTSK/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condExpL2](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpl2--324534dd5d157b0447f53376.md) | 76 | `declaration-track:324534dd5d157b0447f5337695ba978fb174882ca1c234525308ebecada7db39` |
| 2 | `theorem` | [aestronglyMeasurable_condExpL2](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/aestronglymeasurable-condexpl2--780924fc8dd8dfbd8228b19a.md) | 82 | `result-track:780924fc8dd8dfbd8228b19ae9bc2e21242400d043125a6365de145f81eeb547` |
| 3 | `theorem` | [integrableOn_condExpL2_of_measure_ne_top](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/integrableon-condexpl2-of-measure-ne-top--dd097e8907079e67fea0a15b.md) | 86 | `result-track:dd097e8907079e67fea0a15bdd7ffcb7830670e0dc9aba8e682b14bda3722158` |
| 4 | `theorem` | [integrable_condExpL2_of_isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/integrable-condexpl2-of-isfinitemeasure--ab7288721d41646255030019.md) | 91 | `result-track:ab7288721d416462550300190b378f76dc000a0f5c65abf295218686bd49c868` |
| 5 | `theorem` | [norm_condExpL2_le_one](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/norm-condexpl2-le-one--4aa37d322b68139a65b1e78f.md) | 95 | `result-track:4aa37d322b68139a65b1e78fa684fc61ae72d4acb51fd9695d022b4163528d31` |
| 6 | `theorem` | [norm_condExpL2_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/norm-condexpl2-le--26702a1f9cfcae0f36d0e122.md) | 99 | `result-track:26702a1f9cfcae0f36d0e12275fd03ea0a9999eafff636b6047fa0ae5934ee9f` |
| 7 | `theorem` | [eLpNorm_condExpL2_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/elpnorm-condexpl2-le--65898d4b4e1e2da93f6889d7.md) | 103 | `result-track:65898d4b4e1e2da93f6889d7c1bd83f317b591092e796a2034796809f59ae4de` |
| 8 | `theorem` | [norm_condExpL2_coe_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/norm-condexpl2-coe-le--089b54d327894e3fa8a25e90.md) | 109 | `result-track:089b54d327894e3fa8a25e901c9e3736246eddaca62fa64cc05f70ecdca6a4fe` |
| 9 | `theorem` | [inner_condExpL2_left_eq_right](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/inner-condexpl2-left-eq-right--d71202a2ca1c6942497c2f29.md) | 114 | `result-track:d71202a2ca1c6942497c2f29ed7b19fe3caf2ecd4498213c0b238f851f1178de` |
| 10 | `theorem` | [condExpL2_indicator_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpl2-indicator-of-measurable--a7b40e12610ff8c11be214b7.md) | 119 | `result-track:a7b40e12610ff8c11be214b7feff814a29bffd8910df38f008f08f7617678acb` |
| 11 | `theorem` | [inner_condExpL2_eq_inner_fun](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/inner-condexpl2-eq-inner-fun--b78d30cce9a736e1f4b4496f.md) | 132 | `result-track:b78d30cce9a736e1f4b4496f255851cb6500e706d17c6fb65a7733c55bb85964` |
| 12 | `theorem` | [integral_condExpL2_eq_of_fin_meas_real](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/integral-condexpl2-eq-of-fin-meas-real--88abf46373a52bca70eb9369.md) | 145 | `result-track:88abf46373a52bca70eb9369c70d094d91e5bf79826845aad0e14310221c2a21` |
| 13 | `theorem` | [lintegral_nnnorm_condExpL2_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/lintegral-nnnorm-condexpl2-le--8d3783a25a28c205f82af7a9.md) | 153 | `result-track:8d3783a25a28c205f82af7a9792fe1924122786dcc27956fcc8023ae5b84b79f` |
| 14 | `theorem` | [condExpL2_ae_eq_zero_of_ae_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpl2-ae-eq-zero-of-ae-eq-zero--347aa5bd2e14d0ec26c84566.md) | 176 | `result-track:347aa5bd2e14d0ec26c8456619750042e24c74d8af383dc0fe95165e149b7da7` |
| 15 | `theorem` | [lintegral_nnnorm_condExpL2_indicator_le_real](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/lintegral-nnnorm-condexpl2-indicator-le-real--72b762f1595021086078cb0b.md) | 195 | `result-track:72b762f1595021086078cb0b639ad18f0aa11ff6ff2a4714e9a73b042ca81dcf` |
| 16 | `theorem` | [condExpL2_const_inner](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpl2-const-inner--87b4a92563eca53344f9f170.md) | 217 | `result-track:87b4a92563eca53344f9f170fb981317c4a46eaa9d7c82d6c0ed6db020d43743` |
| 17 | `theorem` | [integral_condExpL2_eq](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/integral-condexpl2-eq--b564d786479be566fe504f50.md) | 243 | `result-track:b564d786479be566fe504f50e4ac1340baa9cf884e6e23d01a15f35576626302` |
| 18 | `theorem` | [condExpL2_comp_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpl2-comp-continuouslinearmap--82c605d0300634048d14fe72.md) | 267 | `result-track:82c605d0300634048d14fe7275d50b138a2be96af51fcf115668a1a16ac5013d` |
| 19 | `theorem` | [condExpL2_indicator_ae_eq_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpl2-indicator-ae-eq-smul--84c526fd159d24ef6787275d.md) | 293 | `result-track:84c526fd159d24ef6787275dfeadd7eec8bd5e1c7c9ad1794c2eeb77f1dd83de` |
| 20 | `theorem` | [condExpL2_indicator_eq_toSpanSingleton_comp](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpl2-indicator-eq-tospansingleton-comp--a01327d447171ea08b2a8af0.md) | 304 | `result-track:a01327d447171ea08b2a8af087b82aa7937c1b5f71decb175cd54a7b72ee9cb3` |
| 21 | `theorem` | [setLIntegral_nnnorm_condExpL2_indicator_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/setlintegral-nnnorm-condexpl2-indicator-le--b2f8fba78e8aceb8a81d2cb2.md) | 317 | `result-track:b2f8fba78e8aceb8a81d2cb28038a5afa5527ee1d44f0d615dea9d412b00d9c6` |
| 22 | `theorem` | [lintegral_nnnorm_condExpL2_indicator_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/lintegral-nnnorm-condexpl2-indicator-le--27459352a2d8ace52b49f8cb.md) | 332 | `result-track:27459352a2d8ace52b49f8cb9bd226f238bcc7e6300741f87a99a681a4414ad1` |
| 23 | `theorem` | [integrable_condExpL2_indicator](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/integrable-condexpl2-indicator--975ff71420e68322255f2cf7.md) | 342 | `result-track:975ff71420e68322255f2cf7cf9de2059967e96344072f168a8189f51254d3a4` |
| 24 | `def` | [condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpindsmul--b96118f9f0acf066294d89b1.md) | 360 | `declaration-track:b96118f9f0acf066294d89b1054523c999c0d3a14044ccab45dd73c4b7f4e2f8` |
| 25 | `theorem` | [aestronglyMeasurable_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/aestronglymeasurable-condexpindsmul--e6d53f1f1e256f276e7aad6e.md) | 364 | `result-track:e6d53f1f1e256f276e7aad6e3a334a0ba64971715edeeffcbd6c86da118465d9` |
| 26 | `theorem` | [condExpIndSMul_add](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpindsmul-add--7ffe4b3c4ef5ed908c07cc83.md) | 372 | `result-track:7ffe4b3c4ef5ed908c07cc83a9889016c2c011d985e20f99dbdde73d9df51be7` |
| 27 | `theorem` | [condExpIndSMul_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpindsmul-smul--87dd68f669bfaedb7b8d406e.md) | 376 | `result-track:87dd68f669bfaedb7b8d406e7e30c1e96133129687fa6f6c1c06167c43718164` |
| 28 | `theorem` | [condExpIndSMul_ae_eq_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpindsmul-ae-eq-smul--cd8af735c40fdb3f76f00af3.md) | 381 | `result-track:cd8af735c40fdb3f76f00af341bc698260ee6125fc7c95cd8d35f4c5d7c5691b` |
| 29 | `theorem` | [setLIntegral_nnnorm_condExpIndSMul_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/setlintegral-nnnorm-condexpindsmul-le--224de09f34422a2c147a2507.md) | 386 | `result-track:224de09f34422a2c147a2507e7bc3cf897a81220c1e7b9dcfda245d496f3472a` |
| 30 | `theorem` | [lintegral_nnnorm_condExpIndSMul_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/lintegral-nnnorm-condexpindsmul-le--00dad4f809aaffe5c4360f1a.md) | 400 | `result-track:00dad4f809aaffe5c4360f1a65c727dca9b8e5fad5b6694716a016d7aa919965` |
| 31 | `theorem` | [integrable_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/integrable-condexpindsmul--382999eadfd85b2ca0377e87.md) | 409 | `result-track:382999eadfd85b2ca0377e87b1448a09885b0a44f3444532f89b7aa2ae25a80d` |
| 32 | `theorem` | [condExpIndSMul_empty](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpindsmul-empty--d46ceefa79dffde1ac5de175.md) | 418 | `result-track:d46ceefa79dffde1ac5de175ab0fe930801088916e5e7a3c6ed413575f6a593e` |
| 33 | `theorem` | [setIntegral_condExpL2_indicator](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/setintegral-condexpl2-indicator--20bcb5f4c9a3b0ea9273526f.md) | 423 | `result-track:20bcb5f4c9a3b0ea9273526fa1bc926a66bb1e1563d9c74fdbd33a3d5240814a` |
| 34 | `theorem` | [setIntegral_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/setintegral-condexpindsmul--e65a4025388c74a5a227d208.md) | 433 | `result-track:e65a4025388c74a5a227d208f239267423b41dbabeea03a1b59e8b56d470bd2b` |
| 35 | `theorem` | [condExpL2_indicator_nonneg](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpl2-indicator-nonneg--dcf4dd14fb682e90f1058967.md) | 445 | `result-track:dcf4dd14fb682e90f1058967d9aa1552ad27fce3bee0adbabe980a16ade642a3` |
| 36 | `theorem` | [condExpIndSMul_nonneg](../../../../../mathematics/Analysis/MeasureTheory/CondexpL2/Variant53137118d4029c70507cdcb90172a224c1a3a4c3e8c2fbb3178de14205e35c68.lean/declarations/condexpindsmul-nonneg--53722c00283732c2b1c5a680.md) | 467 | `result-track:53722c00283732c2b1c5a680df9729ebfd14a5fd87a1bbc121d3268e4c78debd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
