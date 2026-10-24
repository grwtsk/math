# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceNative01.Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cdac0e7142b9411d7df476c304fadcaf8677f3f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cdac0e7142b9411d7df476c304fadcaf8677f3f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualDoubleMixedKernel` — import line 1; external provider; requires a separately pinned dependency.
- `FiveCesaroKernelBudget` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [covariantMixedDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/covariantmixedderivative--eddc639e089ce78780972fbe.md) | 21 | `declaration-track:eddc639e089ce78780972fbe2bdae0af0aaf3ebf4626cda6f52157e415b155b2` |
| 2 | `def` | [actualCovariantJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actualcovariantjet--9af1d69280c36bfe903a093f.md) | 26 | `declaration-track:9af1d69280c36bfe903a093fc9876e21dad6ec18ca8ac221f0dbc80c5241c169` |
| 3 | `theorem` | [actual_jet_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actual-jet-hasderivat--97d8fe02c1ec319a156479c0.md) | 30 | `result-track:97d8fe02c1ec319a156479c086a94dc5ff7cdc36a2fe8199181c36b1d9f6b2d5` |
| 4 | `theorem` | [actualJet_time_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actualjet-time-hasderivat--c60e247c937f285f518d6b58.md) | 38 | `result-track:c60e247c937f285f518d6b58dccad9f955b635423d729c549c98a3da425a669e` |
| 5 | `theorem` | [actualJet_log_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actualjet-log-hasderivat--52c3d16b884467435e90e5d0.md) | 51 | `result-track:52c3d16b884467435e90e5d0e7a6fdb23784f12807d20e3a5b7416fea079958d` |
| 6 | `theorem` | [actualJet_twisted_time](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actualjet-twisted-time--ae6f3fd79391a275871e624f.md) | 64 | `result-track:ae6f3fd79391a275871e624f3e2952b3356c093bc7c92da8d1515a6988c74b85` |
| 7 | `theorem` | [actualJet_covariant_eq_next](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actualjet-covariant-eq-next--b099e01ba16a268a7d58ae82.md) | 72 | `result-track:b099e01ba16a268a7d58ae82906417f26490767e861afb70339d7736174b7ae6` |
| 8 | `theorem` | [actualCovariantJet_zero_eq_original](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actualcovariantjet-zero-eq-original--4a528f5926c0f34b0fcce4e6.md) | 87 | `result-track:4a528f5926c0f34b0fcce4e6cfeb535566a23313f0b1a495a77e87d7be35bf55` |
| 9 | `theorem` | [actual_covariant_mixed_second](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actual-covariant-mixed-second--fa56ca8e90d8ffcd0125a0f6.md) | 92 | `result-track:fa56ca8e90d8ffcd0125a0f6118955c8a424568e90979100a5732765f89a818b` |
| 10 | `theorem` | [actual_twice_covariant_mixed_fourth](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actual-twice-covariant-mixed-fourth--2c9c9db1535575c8445f4cb0.md) | 102 | `result-track:2c9c9db1535575c8445f4cb0b8911f36f7148304721dad6abda5564de1ab7caf` |
| 11 | `theorem` | [actual_covariant_mixed_second_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actual-covariant-mixed-second-abs-le--bfd4a1474cc79300f6d4c5f4.md) | 114 | `result-track:bfd4a1474cc79300f6d4c5f4e18aad9204864fdf4a581f049a7da1bd30a52278` |
| 12 | `theorem` | [actual_twice_covariant_fourth_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actual-twice-covariant-fourth-abs-le--99bc039b2cecdd9ef86302b9.md) | 126 | `result-track:99bc039b2cecdd9ef86302b9af02ee857b3bc5683c5d590d2d9b1527635df890` |
| 13 | `theorem` | [actual_covariant_eq_ordinary_add_quarter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actual-covariant-eq-ordinary-add-quarter--9fa78a50c3ce4f44cddff4a2.md) | 136 | `result-track:9fa78a50c3ce4f44cddff4a274495344e77f762da871cc55c3d4bbf45a30f485` |
| 14 | `theorem` | [actual_twice_covariant_eq_ordinary_add_lower](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variantbfba51c1525e2c096224626c909242759e47de8de4d310571ef45ad0d28425cc.lean/declarations/actual-twice-covariant-eq-ordinary-add-lower--ac97f1f60de10fef4567452f.md) | 145 | `result-track:ac97f1f60de10fef4567452fbc4523acefcc302c00128cc5bdce27e0d5ff54d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
