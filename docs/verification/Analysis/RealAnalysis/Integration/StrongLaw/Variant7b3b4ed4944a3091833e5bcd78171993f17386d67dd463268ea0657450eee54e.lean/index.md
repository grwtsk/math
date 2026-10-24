# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.StrongLaw.Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbf3a64c371d7e3f4c818827c1555abf63483c3e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbf3a64c371d7e3f4c818827c1555abf63483c3e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.IdentDistrib` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.FloorPow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/macro-rules--0a9b7fb266571669f5b1b695.md) | 64 | `declaration-track:0a9b7fb266571669f5b1b695a021b125a3ef446c63feb46a688fecb6bd738278` |
| 2 | `def` | [truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/truncation--dc5410bb809eef27e118624e.md) | 82 | `declaration-track:dc5410bb809eef27e118624e4eb7579b4e5dabc48fe1548a46a0af59a06613b9` |
| 3 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.Truncation.Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.MeasureTheory.AEStronglyMeasurable.truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/root-grwtsk-analysis-realanalysis-integration-truncation-variant134e610c--a56c9b3ff852856522b13e8e.md) | 88 | `result-track:a56c9b3ff852856522b13e8ed859fe43dc6f94e9b653c578781988140e1f2e01` |
| 4 | `theorem` | [abs_truncation_le_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/abs-truncation-le-bound--54396e38513cd45b71d85a7d.md) | 94 | `result-track:54396e38513cd45b71d85a7df0a6df2447905a2d67cac0f5c2c2f9968933be7c` |
| 5 | `theorem` | [truncation_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/truncation-zero--d4f626a5161c1f0c7cdb74c0.md) | 102 | `result-track:d4f626a5161c1f0c7cdb74c0860fb6e7d06c924d6a3517e60fe65fdedb39bfe8` |
| 6 | `theorem` | [abs_truncation_le_abs_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/abs-truncation-le-abs-self--49937fc75b5161fe21b0fd33.md) | 105 | `result-track:49937fc75b5161fe21b0fd33466e55e25db4989a60fb35f35f6fa7ecc17570ab` |
| 7 | `theorem` | [truncation_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/truncation-eq-self--a0c7938729119d16c24cc25c.md) | 112 | `result-track:a0c7938729119d16c24cc25c0ca4b0a40fa10cd27fa30a1a5d24bc3d798d8fde` |
| 8 | `theorem` | [truncation_eq_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/truncation-eq-of-nonneg--55930470cc04ad421562f59d.md) | 120 | `result-track:55930470cc04ad421562f59da5203d1f6b121b0c3fbd7a6baea7ec3a8f8394eb` |
| 9 | `theorem` | [truncation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/truncation-nonneg--3c65ad7e3aa163f164569417.md) | 132 | `result-track:3c65ad7e3aa163f16456941723626ac5bf1f160819678b0617797a77eb68774a` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.Truncation.Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.MeasureTheory.AEStronglyMeasurable.memℒp_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/root-grwtsk-analysis-realanalysis-integration-truncation-variant134e610c--35fc9f1975ca0be5c7ed2c91.md) | 136 | `result-track:35fc9f1975ca0be5c7ed2c9110db50bba92ae5e586c210c33762fc8f6f3d9644` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.Truncation.Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.MeasureTheory.AEStronglyMeasurable.integrable_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/root-grwtsk-analysis-realanalysis-integration-truncation-variant134e610c--60ed2c15a2d10a4fcfef6cc1.md) | 141 | `result-track:60ed2c15a2d10a4fcfef6cc1ebb88b0836c048503608b8101396984a846638be` |
| 12 | `theorem` | [moment_truncation_eq_intervalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/moment-truncation-eq-intervalintegral--181f9f0986a9a3c61632cc25.md) | 146 | `result-track:181f9f0986a9a3c61632cc255ac2a6ae6770772916fbd9fcb4b035bd6c5dceaa` |
| 13 | `theorem` | [moment_truncation_eq_intervalIntegral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/moment-truncation-eq-intervalintegral-of-nonneg--a0eed82c35e1c98bad05d658.md) | 157 | `result-track:a0eed82c35e1c98bad05d658883d4795433ebf8e3baa2754ad968be212845171` |
| 14 | `theorem` | [integral_truncation_eq_intervalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/integral-truncation-eq-intervalintegral--076634297c2f695a4478eed4.md) | 184 | `result-track:076634297c2f695a4478eed4da79d40097df17638bc3c93b8b9237ffe1465d24` |
| 15 | `theorem` | [integral_truncation_eq_intervalIntegral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/integral-truncation-eq-intervalintegral-of-nonneg--2cacd2c693bbd9d0baee8878.md) | 189 | `result-track:2cacd2c693bbd9d0baee88786389150d5c17f45e1d3a053ae560ea7363ae6483` |
| 16 | `theorem` | [integral_truncation_le_integral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/integral-truncation-le-integral-of-nonneg--dabe351fef39d53f79c6c506.md) | 194 | `result-track:dabe351fef39d53f79c6c506ac5ee8eea7c8eab88c63895e2a634b88fc1e34a7` |
| 17 | `theorem` | [tendsto_integral_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/tendsto-integral-truncation--4a7bab5f72877b1b6c0974b0.md) | 207 | `result-track:4a7bab5f72877b1b6c0974b0ec88ea1bfeb86d57833285c27c02e2eab1be71b1` |
| 18 | `theorem` | [IdentDistrib.truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/identdistrib-truncation--1f2df5be020855b984a97e44.md) | 222 | `result-track:1f2df5be020855b984a97e44b77a8367af63a3850f6b00ee82296df8d8e7e29b` |
| 19 | `theorem` | [sum_prob_mem_Ioc_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/sum-prob-mem-ioc-le--d169b9f21415adbd87e6252b.md) | 236 | `result-track:d169b9f21415adbd87e6252b4de477ffb05092781df8b5bfc4be9eed9a6c9efc` |
| 20 | `theorem` | [tsum_prob_mem_Ioi_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/tsum-prob-mem-ioi-lt-top--6fa02281ee5544583a0ec17d.md) | 317 | `result-track:6fa02281ee5544583a0ec17d76eb1711264eb1416a326ab9c0b34b5c96333e33` |
| 21 | `theorem` | [sum_variance_truncation_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/sum-variance-truncation-le--9f832a6248ca5251a5009022.md) | 342 | `result-track:9f832a6248ca5251a5009022dde7c39b0f80dc87d664259b66b45a168b936934` |
| 22 | `theorem` | [strong_law_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/strong-law-aux1--9f855ab6e099f68ab7d4ec58.md) | 419 | `result-track:9f855ab6e099f68ab7d4ec58ffcdbf7d04dc96ece8b1bbd5c1418687339b156e` |
| 23 | `theorem` | [strong_law_aux2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/strong-law-aux2--264973d043f7683858cdf4c7.md) | 531 | `result-track:264973d043f7683858cdf4c7c75af1834e7e3a832d72172c1dfab42706420ec7` |
| 24 | `theorem` | [strong_law_aux3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/strong-law-aux3--15bb561953c5d1c59ab3e6c2.md) | 548 | `result-track:15bb561953c5d1c59ab3e6c20f58a049c74ccbacde20d529dd18278a76502f5a` |
| 25 | `theorem` | [strong_law_aux4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/strong-law-aux4--a31a6a7db2ec6de92df58a7e.md) | 565 | `result-track:a31a6a7db2ec6de92df58a7e194bdc521bda2e55dde91361099a81b0cf9849f5` |
| 26 | `theorem` | [strong_law_aux5](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/strong-law-aux5--edac96e6cdc0a7b1189e51f8.md) | 579 | `result-track:edac96e6cdc0a7b1189e51f8bb2ba5f3e4aad6ba6b97e762e3c029c41f9db1da` |
| 27 | `theorem` | [strong_law_aux6](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/strong-law-aux6--54b172eb761b3ccc8649e698.md) | 607 | `result-track:54b172eb761b3ccc8649e698b19abe818e9f76fe27aa897b226c004124d3fb65` |
| 28 | `theorem` | [strong_law_aux7](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/strong-law-aux7--f443e52c9f3685699ab5068a.md) | 631 | `result-track:f443e52c9f3685699ab5068a5ef034449f3c122ca7aefcb82d51c4228a35c2be` |
| 29 | `theorem` | [strong_law_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/strong-law-ae--cbdc477ad20cc1e0526c2684.md) | 652 | `result-track:cbdc477ad20cc1e0526c2684e8051afdbdbd86fce504222d32545561d2334b58` |
| 30 | `theorem` | [strong_law_Lp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/declarations/strong-law-lp--2220bee3243f8ed325ffbb6e.md) | 681 | `result-track:2220bee3243f8ed325ffbb6e3416e718657d260e6978a72c3a50e0e88d878790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
