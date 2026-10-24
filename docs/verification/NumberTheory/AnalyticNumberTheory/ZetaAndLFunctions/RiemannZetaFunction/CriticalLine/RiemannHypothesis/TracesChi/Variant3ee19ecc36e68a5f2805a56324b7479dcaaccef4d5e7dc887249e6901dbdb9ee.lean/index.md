# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TracesChi.Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27944502232eac80c7f2ae0c95bbd1998c72d40a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27944502232eac80c7f2ae0c95bbd1998c72d40a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.TracesHypChi` — import line 10; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.PrimeSideChi` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.PPChi` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.MuMuChi` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.CrossMuPChi` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Concrete` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideA.Bridge` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [l_le_ell1q](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/l-le-ell1q--dbff1ab6caacf4a649f3015e.md) | 47 | `result-track:dbff1ab6caacf4a649f3015e89fa0dc0b9a9b31f1844e2da27c24d12a780e467` |
| 2 | `structure` | [DataChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/datachi--f48bb5819af464b15dd89454.md) | 58 | `declaration-track:f48bb5819af464b15dd8945433b1233ef874ee30f39d2bd844ac9cb0c30910e2` |
| 3 | `structure` | [FactsChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/factschi--77b4721ad1eee6181b67e03d.md) | 75 | `declaration-track:77b4721ad1eee6181b67e03d4defbbfb2ae3a60881b0dae7c0fffceb3337b649` |
| 4 | `theorem` | [tr1_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/tr1-chi--dceb9832dd31ba07884eb367.md) | 101 | `result-track:dceb9832dd31ba07884eb367e2a77919c4ff20411864987bb3704bffb1535960` |
| 5 | `lemma` | [Ncnt_lower_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/ncnt-lower-chi--cd764117461a162ab3e35a03.md) | 104 | `result-track:cd764117461a162ab3e35a0380cabc0dd37c251b637688e8c03e844e50fd0a20` |
| 6 | `lemma` | [T_le_Ncnt_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/t-le-ncnt-chi--312edfb789dc3130dae6928f.md) | 121 | `result-track:312edfb789dc3130dae6928faa8cf3f30e25d59a79dd0b2c6b2f229d6eb4beeb` |
| 7 | `lemma` | [Ncnt_pos_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/ncnt-pos-chi--773fabca01e6666c01f2f9a4.md) | 127 | `result-track:773fabca01e6666c01f2f9a41316d80c00e4908627bf60e41f88968399375d05` |
| 8 | `theorem` | [tr1'_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/tr1-chi--6e9ceea6b22dc6bc792335d6.md) | 133 | `result-track:6e9ceea6b22dc6bc792335d6879b328735af2cb525538d6e9ade602722ac59f5` |
| 9 | `lemma` | [regime_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/regime-chi--1b7a16451cf28e80b95af0a6.md) | 170 | `result-track:1b7a16451cf28e80b95af0a655ffccece9071b201ba909dd51128198bca65ab3` |
| 10 | `theorem` | [tr2_first_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/tr2-first-chi--88f250e9e16ed16f4400dbb6.md) | 179 | `result-track:88f250e9e16ed16f4400dbb688918d3df27bf59d5d665cdc075f2b3336c16b89` |
| 11 | `theorem` | [tr2_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/tr2-chi--7767a6995bcd204c8aae1eae.md) | 217 | `result-track:7767a6995bcd204c8aae1eae6ee38c746efac43a8095598e0443af9a25cbe565` |
| 12 | `theorem` | [ratio_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/ratio-chi--0b487e4eea0540f5b421798b.md) | 245 | `result-track:0b487e4eea0540f5b421798ba264093e8d4c8806caeb4754e43b00165438c0c7` |
| 13 | `theorem` | [tracesBoundsChi_of_factsChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/tracesboundschi-of-factschi--b1911d303dc18cdcaa898d75.md) | 281 | `result-track:b1911d303dc18cdcaa898d75e4bedfbc7a064d70c21fec76213489b77afcb17e` |
| 14 | `lemma` | [GentryChiA_concrete](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/gentrychia-concrete--0f970a546b8e61bc690ad5e2.md) | 295 | `result-track:0f970a546b8e61bc690ad5e2d51f89f95fa6ec7b883db07a86de17973768bcc7` |
| 15 | `lemma` | [trGtChiA_concrete](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/trgtchia-concrete--c20f6e74fd2139387476837e.md) | 297 | `result-track:c20f6e74fd2139387476837eb3b3e10f85a54516bf981461ff890f79fe7b4063` |
| 16 | `lemma` | [trGt2ChiA_concrete](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/trgt2chia-concrete--6fa49f6f7caa6907e1486217.md) | 299 | `result-track:6fa49f6f7caa6907e14862170e840dc0419a175ada0792dd3c770da40bfc6d0b` |
| 17 | `def` | [concreteDataChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/concretedatachi--5370a4c377e6212038f620eb.md) | 303 | `declaration-track:5370a4c377e6212038f620eb9ef357f74c902d6799e683d739bdf616da1b4bab` |
| 18 | `lemma` | [rvm_evBound_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/rvm-evbound-chi--bcc86930ec52a7c2ff491f07.md) | 319 | `result-track:bcc86930ec52a7c2ff491f07fe54c4b5ed049c24d53f40d35c7b4f13c0e84237` |
| 19 | `theorem` | [concreteFactsChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/concretefactschi--588e634fbc36db9a00360b28.md) | 347 | `result-track:588e634fbc36db9a00360b28e3e3ed35cc2d05631ce7cb4882e289307c2cdbce` |
| 20 | `theorem` | [thm_traces_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/declarations/thm-traces-chi--6eef242415350151ce40beb1.md) | 462 | `result-track:6eef242415350151ce40beb1be3d4f447c933836414e083e388d6d1b6ba0994f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
