# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CauchyIntegral.Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a069dd3387f8dacd6277e4b9cb3815ca502d74b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a069dd3387f8dacd6277e4b9cb3815ca502d74b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Uniqueness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.DiffContOnCl` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.DSlope` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Cardinality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CircleIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DivergenceTheorem` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Complex` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_boundary_rect_of_hasFDerivAt_real_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/integral-boundary-rect-of-hasfderivat-real-off-countable--247dbcc677a8fecd5bb4f6e4.md) | 164 | `result-track:247dbcc677a8fecd5bb4f6e4caa7957d2dea88d2a90dac04291954d41cd28a2a` |
| 2 | `theorem` | [integral_boundary_rect_of_continuousOn_of_hasFDerivAt_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/integral-boundary-rect-of-continuouson-of-hasfderivat-real--ede0ffee3dfb43dca5ce795f.md) | 209 | `result-track:ede0ffee3dfb43dca5ce795fbf99355bdd89a74d11a44b300a2a90a618f7ce51` |
| 3 | `theorem` | [integral_boundary_rect_of_differentiableOn_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/integral-boundary-rect-of-differentiableon-real--2192a9c7959769e73591a67e.md) | 226 | `result-track:2192a9c7959769e73591a67eb1730969a73cbc6cf66ccd2de5c8868afcea8601` |
| 4 | `theorem` | [integral_boundary_rect_eq_zero_of_differentiable_on_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/integral-boundary-rect-eq-zero-of-differentiable-on-off-countable--d4f0e9d4dee12f69edf558fc.md) | 245 | `result-track:d4f0e9d4dee12f69edf558fc51650f2fc5b5409fde3f9225957ae1adbb1b18b3` |
| 5 | `theorem` | [integral_boundary_rect_eq_zero_of_continuousOn_of_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/integral-boundary-rect-eq-zero-of-continuouson-of-differentiableon--cf70c2ac3d9f5434ebe3e00c.md) | 261 | `result-track:cf70c2ac3d9f5434ebe3e00cd258cadf6c3495fea3d3d098092e9de1925e4912` |
| 6 | `theorem` | [integral_boundary_rect_eq_zero_of_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/integral-boundary-rect-eq-zero-of-differentiableon--7a73e325cf7e7edcb619478c.md) | 274 | `result-track:7a73e325cf7e7edcb619478c52a37a9af372c19adbb28acb1a3e7f314961d627` |
| 7 | `theorem` | [circleIntegral_sub_center_inv_smul_eq_of_differentiable_on_annulus_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/circleintegral-sub-center-inv-smul-eq-of-differentiable-on-annulus-off-c--79a77ef5ca16bd31bf63b8df.md) | 287 | `result-track:79a77ef5ca16bd31bf63b8dfd6d539f77c5bfa4c50fe2e5bda7019a8875880e7` |
| 8 | `theorem` | [circleIntegral_eq_of_differentiable_on_annulus_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/circleintegral-eq-of-differentiable-on-annulus-off-countable--131158df949da1acf20bc4ac.md) | 323 | `result-track:131158df949da1acf20bc4ac03738c1ca1b0718633d0b159f0fcd3b57412dc2f` |
| 9 | `theorem` | [circleIntegral_sub_center_inv_smul_of_differentiable_on_off_countable_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/circleintegral-sub-center-inv-smul-of-differentiable-on-off-countable-of--14183959736ab4b8bd4804e4.md) | 343 | `result-track:14183959736ab4b8bd4804e4708bd2f5f464d3cd9d8bf4bfe9e04d7b58fb3ab6` |
| 10 | `theorem` | [circleIntegral_sub_center_inv_smul_of_differentiable_on_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/circleintegral-sub-center-inv-smul-of-differentiable-on-off-countable--2cf55c2989283b34fce30b1d.md) | 390 | `result-track:2cf55c2989283b34fce30b1d0412a9e9cfb92f5279146e3925306d3e5d340f85` |
| 11 | `theorem` | [circleIntegral_eq_zero_of_differentiable_on_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/circleintegral-eq-zero-of-differentiable-on-off-countable--5accf0a58a4e29747f4e74ce.md) | 402 | `result-track:5accf0a58a4e29747f4e74cede889c055b47833e3c6f8f982fdab332130126f3` |
| 12 | `theorem` | [circleIntegral_sub_inv_smul_of_differentiable_on_off_countable_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/circleintegral-sub-inv-smul-of-differentiable-on-off-countable-aux--da8706043188aaf8b1cec980.md) | 420 | `result-track:da8706043188aaf8b1cec98034f7b4d05ef07c741578f5f5d9edb4990cec0f86` |
| 13 | `theorem` | [two_pi_I_inv_smul_circleIntegral_sub_inv_smul_of_differentiable_on_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/two-pi-i-inv-smul-circleintegral-sub-inv-smul-of-differentiable-on-off-c--bfb451c94f8b8401fab53919.md) | 449 | `result-track:bfb451c94f8b8401fab53919291e7062420c1034343c04492a027216c2dda0f3` |
| 14 | `theorem` | [circleIntegral_sub_inv_smul_of_differentiable_on_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/circleintegral-sub-inv-smul-of-differentiable-on-off-countable--3db84ba9b26d4f3a33bc6e95.md) | 486 | `result-track:3db84ba9b26d4f3a33bc6e9511527026d52b7014b996e368db02411a25b131f3` |
| 15 | `theorem` | [_root_.DiffContOnCl.circleIntegral_sub_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-diffcontoncl-circleintegral-sub-inv-smul--099b4a7e150380c4442fe780.md) | 497 | `result-track:099b4a7e150380c4442fe78052d113ada9d113eeaca5bb77d170e38508d6f673` |
| 16 | `theorem` | [_root_.DiffContOnCl.two_pi_i_inv_smul_circleIntegral_sub_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-diffcontoncl-two-pi-i-inv-smul-circleintegral-sub-inv-smul--c304400d8094907d345c5328.md) | 506 | `result-track:c304400d8094907d345c53285d9dd237a8e102c1c1b22eeb6f491c26b2c65111` |
| 17 | `theorem` | [_root_.DifferentiableOn.circleIntegral_sub_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-differentiableon-circleintegral-sub-inv-smul--d7f9e433dbe045d0fc121655.md) | 517 | `result-track:d7f9e433dbe045d0fc1216556518281532cc52aada1f4fd82f372af5b6e1be7a` |
| 18 | `theorem` | [circleIntegral_div_sub_of_differentiable_on_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/circleintegral-div-sub-of-differentiable-on-off-countable--ec44563b266a5406d64e770a.md) | 526 | `result-track:ec44563b266a5406d64e770aa6f0d1744840248dd05ffea771f335e12bed46a0` |
| 19 | `theorem` | [hasFPowerSeriesOnBall_of_differentiable_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/hasfpowerseriesonball-of-differentiable-off-countable--d328b3e3a9833da81877f776.md) | 536 | `result-track:d328b3e3a9833da81877f7768d926b347f78851b42004869750a57b80649a1f9` |
| 20 | `theorem` | [_root_.DiffContOnCl.hasFPowerSeriesOnBall](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-diffcontoncl-hasfpowerseriesonball--222e5d80554f26ae523b4dc4.md) | 554 | `result-track:222e5d80554f26ae523b4dc4f3bfef9360ed4cf349f15db4103c86b273dfe034` |
| 21 | `theorem` | [_root_.DifferentiableOn.hasFPowerSeriesOnBall](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-differentiableon-hasfpowerseriesonball--0a522515ec7cbe989ac6d565.md) | 565 | `result-track:0a522515ec7cbe989ac6d565d6b42b385f320cd0a69005e7d3955a5e97e84c21` |
| 22 | `theorem` | [_root_.DifferentiableOn.analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-differentiableon-analyticat--cf0c7796bb399741eb431624.md) | 572 | `result-track:cf0c7796bb399741eb4316248ed71739e6f78e51f3a91e71c709f10815957bcb` |
| 23 | `theorem` | [_root_.DifferentiableOn.analyticOnNhd](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-differentiableon-analyticonnhd--9920c0de33df9a8eccb66baa.md) | 578 | `result-track:9920c0de33df9a8eccb66baae78a755ceb8d2f21b8b9b672aab4cde78b1e2bbd` |
| 24 | `theorem` | [_root_.DifferentiableOn.analyticOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-differentiableon-analyticon--4f374d0b841319f403555b73.md) | 581 | `result-track:4f374d0b841319f403555b73e423e4a72244b26e83becba6b751e0d75e655ead` |
| 25 | `theorem` | [_root_.DifferentiableOn.contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-differentiableon-contdiffon--97a05345b5e0c7925a181ead.md) | 587 | `result-track:97a05345b5e0c7925a181eade1e3875c916ac2a371956ede7c5036307e55304c` |
| 26 | `theorem` | [_root_.DifferentiableOn.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-differentiableon-deriv--0abd0578576ea6f2d0393d3b.md) | 591 | `result-track:0abd0578576ea6f2d0393d3bef6caba3585bc57f18ef85571bfcd184b4b9aebd` |
| 27 | `theorem` | [_root_.Differentiable.analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-differentiable-analyticat--7f858e8f0935b03a88125291.md) | 596 | `result-track:7f858e8f0935b03a88125291b4bd920cc8c45684a9e0e566aa6c72fdd7af143b` |
| 28 | `theorem` | [_root_.Differentiable.contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-differentiable-contdiff--3a80cd870e4d1b8c998b59bd.md) | 601 | `result-track:3a80cd870e4d1b8c998b59bdc10f49f45d5d1f1d35e7b8eb52af5eaf73ed74f3` |
| 29 | `theorem` | [_root_.Differentiable.hasFPowerSeriesOnBall](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/root-differentiable-hasfpowerseriesonball--0fd3df837b8a781662f8094a.md) | 608 | `result-track:0fd3df837b8a781662f8094a255021338ddcf74c14d33ab31bb18f329c7e0e48` |
| 30 | `theorem` | [analyticOnNhd_iff_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/analyticonnhd-iff-differentiableon--4fed6d95b522f77c95ab3b17.md) | 614 | `result-track:4fed6d95b522f77c95ab3b17995167338d6b0733be65737fce7a426b30d03811` |
| 31 | `theorem` | [analyticOn_iff_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/analyticon-iff-differentiableon--3e4bc6788294bb0f38f6fa75.md) | 619 | `result-track:3e4bc6788294bb0f38f6fa7533e33c668d5d5f8432df43518a342a7eb1b53882` |
| 32 | `theorem` | [analyticOnNhd_univ_iff_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/analyticonnhd-univ-iff-differentiable--b062c3314208ba2c755bc6b9.md) | 625 | `result-track:b062c3314208ba2c755bc6b95169e28d966b4a60d84efeb6fda08ac387136c1d` |
| 33 | `theorem` | [analyticOn_univ_iff_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/analyticon-univ-iff-differentiable--c17573cd9a12d99cc51be666.md) | 630 | `result-track:c17573cd9a12d99cc51be666926d383ffa8794c4698f63a6f7e3ae39f6ec17e5` |
| 34 | `theorem` | [analyticAt_iff_eventually_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/declarations/analyticat-iff-eventually-differentiableat--42d9cdb3fb2af13a86fea179.md) | 636 | `result-track:42d9cdb3fb2af13a86fea179b6aedfa247660b54e184e573ce225ac1eae686af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
