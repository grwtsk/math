# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt04.Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac49ae97b70f031f1ca0e02c72abd71872d6713e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac49ae97b70f031f1ca0e02c72abd71872d6713e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/criticalprimetest-contdiff-two--51a65ba15da507d432f56637.md) | 27 | `result-track:51a65ba15da507d432f5663761c53c7b4d3724c45f669059c693ad8d9bdd5ae6` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/criticalprimetest-deriv-lipschitz--01e7a941585753c3cfdfe863.md) | 33 | `result-track:01e7a941585753c3cfdfe86380abff4e745dfd3b111274af0dc86799e22255f3` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/actual-slope-phases-lipschitz--d21160812848b7025cf1829d.md) | 42 | `result-track:d21160812848b7025cf1829d3e425245e9374461e019eae991fb3f0b3f63ebae` |
| 4 | `theorem` | [pairedTailTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/pairedtailtest-deriv-lipschitz--7d4a61bdd6d0417df289f4c1.md) | 49 | `result-track:7d4a61bdd6d0417df289f4c1ed39d7b507e402482c1a92bdd1e0c43f2b94cfa6` |
| 5 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/pairedtailtest-deriv-absolutelycontinuous--9233ee1f8e46e394c2ed62bf.md) | 65 | `result-track:9233ee1f8e46e394c2ed62bf6ebc8497eef76c0401f32d053abe0fe4e856ed38` |
| 6 | `def` | [pairedTailCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/pairedtailcurvature--640c22d99c96ad8180ff63b2.md) | 80 | `declaration-track:640c22d99c96ad8180ff63b2b8ca9a3b0742347cd168494381ec6916524790c5` |
| 7 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/pairedtailcurvature-intervalintegrable--6b347bc8299e94fb4f7c1746.md) | 82 | `result-track:6b347bc8299e94fb4f7c1746b553cd6d30848b29c747ea1cf55793a83921c7ab` |
| 8 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/pairedtailcurvature-ae-hasderivat--6e67034080842823e6834a4e.md) | 86 | `result-track:6e67034080842823e6834a4e3bde061bf38dd0bfafe1d721d6d587847c7b4071` |
| 9 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/pairedtailtest-deriv-integral-zero--c34242c2de05badf112b85d2.md) | 94 | `result-track:c34242c2de05badf112b85d235ae9ff565870c0a1d892ae806632506089ecf01` |
| 10 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/actual-delta-pairing-intervalintegrable--15995d4987d6b60f7f184c10.md) | 102 | `result-track:15995d4987d6b60f7f184c10915520932b40f40c07eb12e6f56d902c99da0b52` |
| 11 | `theorem` | [actual_first_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/actual-first-abel--d5f7cd9c49f68cb6d4058408.md) | 110 | `result-track:d5f7cd9c49f68cb6d40584081e2481f30ddcaaacee3a088d4af44b06c50c4b09` |
| 12 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/actual-bridge-curvature-intervalintegrable--c382a81233ffbf6a32ae16ee.md) | 147 | `result-track:c382a81233ffbf6a32ae16eef37cbf62ce84714c8081a3019e3347c9f1b96b95` |
| 13 | `theorem` | [actual_second_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/actual-second-abel--2fccca07519054a8f8466cdb.md) | 155 | `result-track:2fccca07519054a8f8466cdbaa2863df69abc74498a75a4e54ce47988d0565bf` |
| 14 | `def` | [negativeCurvatureWork](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/negativecurvaturework--1bd12cd485d0f1d85a2cb4ac.md) | 182 | `declaration-track:1bd12cd485d0f1d85a2cb4ac43bf217c5ecd0e1cb56f3e3d578d134e343781a5` |
| 15 | `theorem` | [negativeCurvatureWork_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/negativecurvaturework-integrand-intervalintegrable--e5fea9e1969abbf987e2103c.md) | 185 | `result-track:e5fea9e1969abbf987e2103cc7b1ce6280fa9cda10ed8963dd85d0910e10e22d` |
| 16 | `theorem` | [negativeCurvatureWork_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/negativecurvaturework-nonneg--bf204e9c7759824aaafe777e.md) | 200 | `result-track:bf204e9c7759824aaafe777e54a1ff2cd251afacb63c87cc0a7167b3d01b9ebf` |
| 17 | `theorem` | [actual_work_ge_negativeCurvatureWork](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/actual-work-ge-negativecurvaturework--ba5fe8d41d5d062d6f5ae4e7.md) | 205 | `result-track:ba5fe8d41d5d062d6f5ae4e7de2237e783acebc8459e1041cb06b1a9660fa2d8` |
| 18 | `def` | [NegativeCurvatureTailBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/negativecurvaturetailbudget--764c3ad22266f2d2879b38cd.md) | 220 | `declaration-track:764c3ad22266f2d2879b38cd31e56b2e01d9211c6eb519d82c2dedf0b15ab86f` |
| 19 | `theorem` | [actual_tail_of_negativeCurvature_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/actual-tail-of-negativecurvature-budget--44973e572f821a371560b694.md) | 223 | `result-track:44973e572f821a371560b69454f8e8f90d76cb04fe97816de46f477d2a73e5ab` |
| 20 | `theorem` | [actual_estimate_of_negativeCurvature_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/declarations/actual-estimate-of-negativecurvature-budget--efcb15362ed9c29e1650ebc9.md) | 231 | `result-track:efcb15362ed9c29e1650ebc9aa0509fda32b974c4492f4b8a4d3849721cc1b93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
