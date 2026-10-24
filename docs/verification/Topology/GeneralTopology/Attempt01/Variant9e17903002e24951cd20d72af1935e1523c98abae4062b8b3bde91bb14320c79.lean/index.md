# Verification target: GRWTSK.Topology.GeneralTopology.Attempt01.Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f5644a82806582bd33c57d9a28fb16d63b2c198",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f5644a82806582bd33c57d9a28fb16d63b2c198`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ArithmeticInterceptFinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Monotone` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneConvergence` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logQuotient](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/logquotient--622d94680b39b0cb2dd9782d.md) | 25 | `declaration-track:622d94680b39b0cb2dd9782def9aaefa63e3ff1267ca738f2a47db056aeaf2e6` |
| 2 | `def` | [stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/stieltjessequence--480fe8949ce0cdaa2e56b961.md) | 27 | `declaration-track:480fe8949ce0cdaa2e56b961f56fa678cfa4467ad200d00a6480af6aece9467a` |
| 3 | `def` | [lowerSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/lowersequence--89ad1e1e6063c8e26072662c.md) | 30 | `declaration-track:89ad1e1e6063c8e26072662c8606242a22728bc9a09b3396eac4119614a3158d` |
| 4 | `def` | [firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/firststieltjesconstant--9377a09aba9e0f27a93922cf.md) | 32 | `declaration-track:9377a09aba9e0f27a93922cf50ac92fed86b7b8e1fcf1bfe23e70540df8d47ea` |
| 5 | `theorem` | [logQuotient_nonneg](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/logquotient-nonneg--cf7a24b9e2001cef056b2b61.md) | 34 | `result-track:cf7a24b9e2001cef056b2b61ae5ad1e10edbcfc743cfdcc7a091abb73ad4a462` |
| 6 | `theorem` | [logQuotient_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/logquotient-antitone--bdccbabe15f9a5a66ed92abf.md) | 37 | `result-track:bdccbabe15f9a5a66ed92abf45ade1fcfabac9cc977628463d0d47ac34aab670` |
| 7 | `theorem` | [logQuotient_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/logquotient-continuouson--72ccb948c4dfb60bec18f4f9.md) | 45 | `result-track:72ccb948c4dfb60bec18f4f94cd6e067710f3c0ec02e35a786fce8e142957523` |
| 8 | `theorem` | [logQuotient_intervalIntegrable](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/logquotient-intervalintegrable--9ef34c8cbddd2f9a9f63549a.md) | 50 | `result-track:9ef34c8cbddd2f9a9f63549ae65e846d4ef3d3962265671285866be206447500` |
| 9 | `theorem` | [logQuotient_integral](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/logquotient-integral--46afb6ff73874e2aa8eecb77.md) | 60 | `result-track:46afb6ff73874e2aa8eecb7761c286585bc8c3087e09c5f512807849790bf1a3` |
| 10 | `theorem` | [stieltjesSequence_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/stieltjessequence-succ--1305a46e2693e303e4404203.md) | 76 | `result-track:1305a46e2693e303e440420399ac0175156eaecf0c0edd965aeb791abd8d207c` |
| 11 | `theorem` | [logQuotient_cell_lower](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/logquotient-cell-lower--f2c465fa48cb761b7c1107b0.md) | 86 | `result-track:f2c465fa48cb761b7c1107b0d80e2ad2b3f8280ef37e63c5ba6baf34c1ae0f99` |
| 12 | `theorem` | [logQuotient_cell_upper](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/logquotient-cell-upper--953f0261d9673f05fb392b0f.md) | 92 | `result-track:953f0261d9673f05fb392b0f845c185c7938df2922baf7b85af22643e75c157d` |
| 13 | `theorem` | [stieltjesSequence_succ_le](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/stieltjessequence-succ-le--2603caaeabd6fc9bb42e0dc4.md) | 98 | `result-track:2603caaeabd6fc9bb42e0dc46d601d887935bf92d952f281be93ce00b53412ef` |
| 14 | `theorem` | [lowerSequence_le_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/lowersequence-le-succ--4428c7c13b20ec5a510e635f.md) | 104 | `result-track:4428c7c13b20ec5a510e635f1706977e9bf6ac37da3027fc65ce857e7428e5c0` |
| 15 | `theorem` | [stieltjes_tail_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/stieltjes-tail-antitone--6bb5421c185dd3673cd4348d.md) | 111 | `result-track:6bb5421c185dd3673cd4348d4611c4f3f051fa16fddc02d5279c7775fa84f447` |
| 16 | `theorem` | [lower_tail_monotone](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/lower-tail-monotone--5600e13a35a35ac0ab3ab8f8.md) | 117 | `result-track:5600e13a35a35ac0ab3ab8f854799b4162f8f61005e4c769460299d02e4bc24f` |
| 17 | `theorem` | [lowerSequence_four](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/lowersequence-four--10283e3967ff9a9fb8de6f1d.md) | 123 | `result-track:10283e3967ff9a9fb8de6f1d881e3487e24ab3adef62991b29322c23af3e31b3` |
| 18 | `theorem` | [lower_four_le_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/lower-four-le-stieltjes-tail--fecc173ce11e5359f8b10f78.md) | 127 | `result-track:fecc173ce11e5359f8b10f786f3dc748d846afb4fb5312bb6a78a56891d35fa9` |
| 19 | `theorem` | [stieltjes_tail_bddBelow](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/stieltjes-tail-bddbelow--0409c5adb7552291a65c3513.md) | 134 | `result-track:0409c5adb7552291a65c3513e6be76d0f8967574c24394060da52a4f3b4f31da` |
| 20 | `theorem` | [tendsto_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/tendsto-stieltjes-tail--81948d6a9da33981b520cf79.md) | 139 | `result-track:81948d6a9da33981b520cf796c948e2cad82bfef613e799d10509ee0094bb33f` |
| 21 | `theorem` | [tendsto_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/tendsto-stieltjessequence--c6d84da24d58240424df2ccb.md) | 143 | `result-track:c6d84da24d58240424df2ccbf5be6e6dde1db0e32e4af279b2b065a6dcb2da54` |
| 22 | `theorem` | [lower_four_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant9e17903002e24951cd20d72af1935e1523c98abae4062b8b3bde91bb14320c79.lean/declarations/lower-four-le-firststieltjesconstant--b4c4a1124590eb95c8545941.md) | 147 | `result-track:b4c4a1124590eb95c8545941610cc24f0e1f626b42edf6e75b09f33042be038c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
