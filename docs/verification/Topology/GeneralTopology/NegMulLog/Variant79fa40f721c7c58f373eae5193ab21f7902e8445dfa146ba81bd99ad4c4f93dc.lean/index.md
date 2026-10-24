# Verification target: GRWTSK.Topology.GeneralTopology.NegMulLog.Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cabb97067adec61cf83d704d629e81f1686c930a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cabb97067adec61cf83d704d629e81f1686c930a`.

Source path: `GRWTSK/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Deriv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [continuous_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/continuous-mul-log--c1cee348277f21881647fd21.md) | 35 | `result-track:c1cee348277f21881647fd21ea4fa9bca2d264f5f2332410d3f94530907d6888` |
| 2 | `lemma` | [Continuous.mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/continuous-mul-log--306693b205f6c82159132f2a.md) | 52 | `result-track:306693b205f6c82159132f2a2428823be3c3ed704ece84f58402a8b20bb7c093` |
| 3 | `lemma` | [differentiableOn_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/differentiableon-mul-log--62938699599e2a365c3879de.md) | 55 | `result-track:62938699599e2a365c3879deeed90b85aab1e14ae5d4f7599d88d9ac4026e410` |
| 4 | `lemma` | [deriv_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/deriv-mul-log--acde88d9bbfb234718c73285.md) | 58 | `result-track:acde88d9bbfb234718c73285e8c28c456d8a61e11ae8424927cb393bc3e6804c` |
| 5 | `lemma` | [hasDerivAt_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/hasderivat-mul-log--ebb94919afc6e05179518a43.md) | 61 | `result-track:ebb94919afc6e05179518a43610ec3c17b1cdcf4a8eafe601ba7c5a39c01d7c2` |
| 6 | `lemma` | [rightDeriv_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/rightderiv-mul-log--d86545e20193f298f45f7ca5.md) | 67 | `result-track:d86545e20193f298f45f7ca51ced846bd96d043617e6c701adda0fef2d25fab1` |
| 7 | `lemma` | [leftDeriv_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/leftderiv-mul-log--f9e316c1b856c2dac42dd5e5.md) | 72 | `result-track:f9e316c1b856c2dac42dd5e5f24db10607e082104828f7b1fff9d373ea430001` |
| 8 | `lemma` | [tendsto_deriv_mul_log_nhdsWithin_zero](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/tendsto-deriv-mul-log-nhdswithin-zero--0b7146f57228c68cc1d5bda3.md) | 77 | `result-track:0b7146f57228c68cc1d5bda3e2f2106ddcb3dc4132ffebcfc84765510f93ee4b` |
| 9 | `lemma` | [tendsto_deriv_mul_log_atTop](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/tendsto-deriv-mul-log-attop--3504fe4d8a290481a1ac6de6.md) | 87 | `result-track:3504fe4d8a290481a1ac6de6ec7750fa27f77271e6ebb50206e8a06b72c79d5b` |
| 10 | `lemma` | [tendsto_rightDeriv_mul_log_atTop](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/tendsto-rightderiv-mul-log-attop--6f6b2b10fae81565fc16e9df.md) | 94 | `result-track:6f6b2b10fae81565fc16e9dfc9445937a11a2c3215f7e374def3d6ae371a1056` |
| 11 | `lemma` | [not_DifferentiableAt_log_mul_zero](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/not-differentiableat-log-mul-zero--a578c4aabe740c29c6dce139.md) | 102 | `result-track:a578c4aabe740c29c6dce139bd685609311a69de22d55ffa5935fccd65359cec` |
| 12 | `lemma` | [deriv_mul_log_zero](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/deriv-mul-log-zero--13adb9796c2bd17e44d653a5.md) | 109 | `result-track:13adb9796c2bd17e44d653a5dd43218c04f37f500aac17a90021c945b8167530` |
| 13 | `lemma` | [not_continuousAt_deriv_mul_log_zero](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/not-continuousat-deriv-mul-log-zero--364dc0ad803e61b41288b0f3.md) | 112 | `result-track:364dc0ad803e61b41288b0f3af29c38370686b9b1321887ccdf45de06a98e12c` |
| 14 | `lemma` | [deriv2_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/deriv2-mul-log--5cb633ff00d00cb610920824.md) | 116 | `result-track:5cb633ff00d00cb610920824b2411624af490766457fe62e1afe4f8f049f3909` |
| 15 | `lemma` | [strictConvexOn_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/strictconvexon-mul-log--9c491e89e77e1ae46ed84dcb.md) | 127 | `result-track:9c491e89e77e1ae46ed84dcbdf9ac77defe729aa2abddb70dbc3b1cb3c924129` |
| 16 | `lemma` | [convexOn_mul_log](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/convexon-mul-log--c4a00c7ef6fa82f0578f51c5.md) | 134 | `result-track:c4a00c7ef6fa82f0578f51c5c4282839e94c1be124614ca4e9ba79a2c6267bab` |
| 17 | `lemma` | [mul_log_nonneg](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/mul-log-nonneg--8bf9755dc5d770ad8fd596ea.md) | 137 | `result-track:8bf9755dc5d770ad8fd596ea00917fbb4e0a40ad0b4b3e29106dce87e231d0bd` |
| 18 | `lemma` | [mul_log_nonpos](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/mul-log-nonpos--229f6c9e2e30f3ce628a8183.md) | 140 | `result-track:229f6c9e2e30f3ce628a8183f975097fbe2c2922e46915f559f9ad29c94ac6f1` |
| 19 | `def` | [negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/negmullog--7c00e2895de14d91eccc29d5.md) | 146 | `declaration-track:7c00e2895de14d91eccc29d53fdc134b90ba7805e9df3c9bfde0a66c850453c5` |
| 20 | `lemma` | [negMulLog_def](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/negmullog-def--0fdbc168bfdedbd61f02a1ce.md) | 148 | `result-track:0fdbc168bfdedbd61f02a1ce672abe0b633b6c38f46bf1366236221caecffade` |
| 21 | `lemma` | [negMulLog_eq_neg](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/negmullog-eq-neg--b6b9d07cbca62310a6059c98.md) | 150 | `result-track:b6b9d07cbca62310a6059c9835d4855b81b137b98d646fad9226df42d337d7c5` |
| 22 | `lemma` | [negMulLog_zero](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/negmullog-zero--b26ffd2d51c2d7980cd7b718.md) | 152 | `result-track:b26ffd2d51c2d7980cd7b7184f73467b3ec5d8e9a0feb683bc32ce98a3395de2` |
| 23 | `lemma` | [negMulLog_one](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/negmullog-one--674b500df93efe2346b36a06.md) | 154 | `result-track:674b500df93efe2346b36a0621716f6bb974f27887b8cc98f1bc65986b31605c` |
| 24 | `lemma` | [negMulLog_nonneg](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/negmullog-nonneg--596c4c67a1d35490bc7156cc.md) | 156 | `result-track:596c4c67a1d35490bc7156ccd6808bf7555c4f5503605209e4e1583da25b75c6` |
| 25 | `lemma` | [negMulLog_mul](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/negmullog-mul--005e9c2c745672cc54224f01.md) | 159 | `result-track:005e9c2c745672cc54224f015ba9fc9e04887b65f1a1e9bdb976d67c4a2bc23d` |
| 26 | `lemma` | [continuous_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/continuous-negmullog--c9edb8fa3f83ca6118448c73.md) | 168 | `result-track:c9edb8fa3f83ca6118448c7305ff66f27df9eac4f0550fd90a2e026da86bdb1e` |
| 27 | `lemma` | [differentiableOn_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/differentiableon-negmullog--014c3d5f462fd3e03cd640f0.md) | 171 | `result-track:014c3d5f462fd3e03cd640f0ae05a04f5123ab4d97a367d765e31a3e4bc473d1` |
| 28 | `lemma` | [differentiableAt_negMulLog_iff](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/differentiableat-negmullog-iff--30e802241895b9d745b3d7cf.md) | 174 | `result-track:30e802241895b9d745b3d7cf9a93df0b650c4777390563bbc562fc74b09597ca` |
| 29 | `lemma` | [deriv_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/deriv-negmullog--74674cf1c0c8e475d1846d3b.md) | 190 | `result-track:74674cf1c0c8e475d1846d3b96231c9dddb3cbc8465af2ca5dee7b7341473ce6` |
| 30 | `lemma` | [hasDerivAt_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/hasderivat-negmullog--f656c7bf2169f9d8c5548fd4.md) | 194 | `result-track:f656c7bf2169f9d8c5548fd49e2b79a38d55c2db3ff72025692eb13e9c384332` |
| 31 | `lemma` | [deriv2_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/deriv2-negmullog--badbf84bac9c4665b022c504.md) | 199 | `result-track:badbf84bac9c4665b022c5047f892dcd5919d3e02124eceb66a67bf10a8c5e37` |
| 32 | `lemma` | [strictConcaveOn_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/strictconcaveon-negmullog--c84459f7def5b899e8d49899.md) | 206 | `result-track:c84459f7def5b899e8d498992f81d5e90946e4c406a4e4bab2aa9901e6cc48a8` |
| 33 | `lemma` | [concaveOn_negMulLog](../../../../../mathematics/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/declarations/concaveon-negmullog--f0a6ab273b1897bda4bdc2f8.md) | 209 | `result-track:f0a6ab273b1897bda4bdc2f87fc477be3126d6fed8efe005376680ef8fda0923` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
