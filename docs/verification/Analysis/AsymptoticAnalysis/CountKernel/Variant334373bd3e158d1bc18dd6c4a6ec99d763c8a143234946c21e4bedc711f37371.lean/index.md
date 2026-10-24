# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.CountKernel.Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "793660772c6c93ad115204162fda625cd4925825",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `793660772c6c93ad115204162fda625cd4925825`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_stieltjes_20261004.CountOccurrences` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PositiveOccurrence](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positiveoccurrence--55e3c0a358a6f4c1c835113b.md) | 17 | `declaration-track:55e3c0a358a6f4c1c835113b66fed4cc253e7c6eacd14f05e114461891f507db` |
| 2 | `def` | [positiveOrdinate](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positiveordinate--2b84885e891524a0952af9f9.md) | 19 | `declaration-track:2b84885e891524a0952af9f9777ec346a8bb85e3984876edb49cf6cc459c0789` |
| 3 | `def` | [positiveClosedCountSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positiveclosedcountset--506ee64983bdb893ca83a65b.md) | 21 | `declaration-track:506ee64983bdb893ca83a65bd9b0dea6416c7554fba55799dc0a291e61de3433` |
| 4 | `def` | [positiveClosedCountKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positiveclosedcountkernel--cc7fc16852e2e890a4d45c43.md) | 24 | `declaration-track:cc7fc16852e2e890a4d45c43cff34b16c981290aed2e8490a13f923642c1024d` |
| 5 | `def` | [positiveClosedWindowEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positiveclosedwindowequiv--9992eedf5eb19b27a9803b4c.md) | 28 | `declaration-track:9992eedf5eb19b27a9803b4c5e7e500caa3f5b89672e4c217a774e36a501f3a1` |
| 6 | `theorem` | [positive_closed_count_set_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positive-closed-count-set-finite--fbd9fa4a2ad914f777ca0b68.md) | 35 | `result-track:fbd9fa4a2ad914f777ca0b68e2b83555807911b490e5311c6ea21fe53d5d200d` |
| 7 | `theorem` | [positive_closed_count_kernel_hasFiniteSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positive-closed-count-kernel-hasfinitesupport--ee9e96b53e4f67d11754f0b6.md) | 41 | `result-track:ee9e96b53e4f67d11754f0b681c75eb4c0d939e5cb1ed7986ce6169ec1c19d39` |
| 8 | `theorem` | [positive_closed_count_kernel_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positive-closed-count-kernel-summable--90fd2e7eab18f337bd22c29a.md) | 50 | `result-track:90fd2e7eab18f337bd22c29a561512ed78002a87e0306b5adc8762a32cdca0c1` |
| 9 | `theorem` | [positive_closed_count_kernel_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positive-closed-count-kernel-tsum--e211828a222d791b9501031e.md) | 56 | `result-track:e211828a222d791b9501031ebf75809a78e2114216fb6f20cc31431776e1cb5c` |
| 10 | `def` | [positiveStrictTailEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positivestricttailequiv--4053a69973de5d2233aab261.md) | 73 | `declaration-track:4053a69973de5d2233aab261678c7ec010d70e712516f79dba2d97f6550b8114` |
| 11 | `theorem` | [positive_strict_tail_tsum_transport](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variant334373bd3e158d1bc18dd6c4a6ec99d763c8a143234946c21e4bedc711f37371.lean/declarations/positive-strict-tail-tsum-transport--47b23bd68140eecf5af5bfb5.md) | 83 | `result-track:47b23bd68140eecf5af5bfb503f23a822f985d39794a40ea7eaa397ec8250f1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
