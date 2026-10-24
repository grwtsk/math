# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothing.Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3933ea560fbae75c328fea41fc2883811e5715bd",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3933ea560fbae75c328fea41fc2883811e5715bd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothingBump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothingbump--8b2b99ff7e4749d78d65584c.md) | 23 | `declaration-track:8b2b99ff7e4749d78d65584c8375ebe56b75dee687f31efaef4dae01620da3b4` |
| 2 | `def` | [mollifier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/mollifier--8d47f37dd6f6e64ec05cc7fe.md) | 30 | `declaration-track:8d47f37dd6f6e64ec05cc7fe31ae6b019778e44ba721c8b969832f85e06d255b` |
| 3 | `theorem` | [mollifier_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/mollifier-nonneg--95d774b151f8c2629b9e7066.md) | 34 | `result-track:95d774b151f8c2629b9e7066e6adc25db051b5e80080d30d116ce8140f01096f` |
| 4 | `theorem` | [mollifier_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/mollifier-even--30788016f971a182d8bfc33d.md) | 39 | `result-track:30788016f971a182d8bfc33d1ceb1644fc25e36b4ae49fd79b09e0fca70b8dd7` |
| 5 | `theorem` | [mollifier_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/mollifier-contdiff--d168a1aa818428dbc727a5b7.md) | 43 | `result-track:d168a1aa818428dbc727a5b78b51a647f1741bbbee7eb3b98791107babe59e69` |
| 6 | `theorem` | [mollifier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/mollifier-integrable--6811af7b3d457b73f09484f0.md) | 48 | `result-track:6811af7b3d457b73f09484f066f6c1fb3d99f4fe0618de32a14c9ec7476d2679` |
| 7 | `theorem` | [mollifier_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/mollifier-integral--ec20a7d3df350874b1f49722.md) | 53 | `result-track:ec20a7d3df350874b1f49722b985458bcb66a60db2bb60785e29c63e9358ed9e` |
| 8 | `theorem` | [mollifier_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/mollifier-support--22089fb0ebee9350c5df2cc9.md) | 58 | `result-track:22089fb0ebee9350c5df2cc9024412048673d3651ec8ba73d45e15f0fff48880` |
| 9 | `theorem` | [mollifier_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/mollifier-tsupport--8ad596a53518432b7ae6f49c.md) | 64 | `result-track:8ad596a53518432b7ae6f49c55785d2f116063ed585954dd3ae830becfd1999b` |
| 10 | `theorem` | [mollifier_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/mollifier-hascompactsupport--90823c8dd3a06bd1b4abfb5d.md) | 70 | `result-track:90823c8dd3a06bd1b4abfb5d8322ded39a24dedec823320ef9f43e135b5281db` |
| 11 | `def` | [smoothedTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothedtest--96fbaeeda94246a9930d1754.md) | 75 | `declaration-track:96fbaeeda94246a9930d175489c93a5d3a00015ed0247409847b44039c6bb632` |
| 12 | `theorem` | [smoothedTest_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothedtest-eq-integral--13729228eb6dc7826de7492f.md) | 79 | `result-track:13729228eb6dc7826de7492fed8488eeaedb7d6e1fcb08637c4e3a66ec9c42a4` |
| 13 | `theorem` | [smoothing_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothing-integrand-integrable--4df30d5ed1b9637359354b03.md) | 84 | `result-track:4df30d5ed1b9637359354b03fda4e647dae9578093758938353dfbe2cf7d9252` |
| 14 | `theorem` | [smoothedTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothedtest-contdiff--eecff6e929e98f038af29be8.md) | 91 | `result-track:eecff6e929e98f038af29be866db58e94e14ca93cc0d70acef9b5dc7d89b4213` |
| 15 | `theorem` | [smoothedTest_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothedtest-even--509b45be84738ed9297613d0.md) | 98 | `result-track:509b45be84738ed9297613d06c7ec58877ae7cfad7b0aa48b7734980fab454dd` |
| 16 | `theorem` | [smoothedTest_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothedtest-support-subset--79fe5c9d42d300252bea1826.md) | 107 | `result-track:79fe5c9d42d300252bea18260eec12344df683d275375cda19e4e46b3219bd5a` |
| 17 | `theorem` | [smoothedTest_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothedtest-tsupport-subset--28eca083b22635131609125a.md) | 117 | `result-track:28eca083b22635131609125a7625c4b7ccacd751380ec7d32fbd1c2e9ba2c67e` |
| 18 | `theorem` | [smoothedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothedtest-hascompactsupport--12b793be656b8479d33379d0.md) | 122 | `result-track:12b793be656b8479d33379d0af8e2db0049ef77e90eb24b4da85d2e6f3b6fc35` |
| 19 | `theorem` | [smoothedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothedtest-integrable--19a0e796138e1150665b2f69.md) | 127 | `result-track:19a0e796138e1150665b2f6989b94c90b889548b9906788f1e88e31bef1cc0d7` |
| 20 | `theorem` | [smoothedTest_tsupport_subset_common](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothedtest-tsupport-subset-common--53943184a4e0fa92d94f3339.md) | 133 | `result-track:53943184a4e0fa92d94f333956056875f9567a3a9f3061c5b0c6596157092e1b` |
| 21 | `theorem` | [smoothedTest_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante92722150676bcea52993d59ac8b3bea105db6ece51d4a4009a98a813f93426b.lean/declarations/smoothedtest-tendsto--e0e10e5fd68866cb81fb04f9.md) | 141 | `result-track:e0e10e5fd68866cb81fb04f976d27e2f9d6a4645dcb0f6a3f7f4fb681124c25a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
