# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ParallelComp.Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3ee8af7ecdfff60343bf9bf8db637ba96629ef8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3ee8af7ecdfff60343bf9bf8db637ba96629ef8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.MapComap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.MeasurableLIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [parallelComp_of_not_isSFiniteKernel_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/parallelcomp-of-not-issfinitekernel-left--27d94539bc6d55fe7762195e.md) | 62 | `result-track:27d94539bc6d55fe7762195e4bec3520cc818e39e21bb0678a94c92b4d2ef178` |
| 2 | `lemma` | [parallelComp_of_not_isSFiniteKernel_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/parallelcomp-of-not-issfinitekernel-right--fa11c6c6ff92a14ee49eb413.md) | 67 | `result-track:fa11c6c6ff92a14ee49eb4135f8c75b4471f3ac99de18e096733011d4c8f7e7b` |
| 3 | `lemma` | [parallelComp_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/parallelcomp-apply--6a13199a08dd14faa31e80ee.md) | 71 | `result-track:6a13199a08dd14faa31e80ee48476e2e4c29eba69be1563edccf4c876e3ff09d` |
| 4 | `lemma` | [parallelComp_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/parallelcomp-apply--a5ad6f784fcf62fe60068d8d.md) | 76 | `result-track:a5ad6f784fcf62fe60068d8d64ba0df9eb5226dcfd52e608785a58e099c07511` |
| 5 | `lemma` | [parallelComp_apply_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/parallelcomp-apply-univ--72133d0b7024b4084f95987f.md) | 82 | `result-track:72133d0b7024b4084f95987fb62b6ae77350aa07b956c9e510296bd592011abe` |
| 6 | `lemma` | [parallelComp_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/parallelcomp-zero-left--9463dc291f12a097c16c3b5d.md) | 88 | `result-track:9463dc291f12a097c16c3b5dfc71cc1f875f5be537010b5c4c23bdde6aae171f` |
| 7 | `lemma` | [parallelComp_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/parallelcomp-zero-right--7e708d774948ff5a8064cd6e.md) | 94 | `result-track:7e708d774948ff5a8064cd6e98a0149c535dbad0cd7c146cc44dae07a533e801` |
| 8 | `lemma` | [lintegral_parallelComp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/lintegral-parallelcomp--9478d67ac34b489f854b5d86.md) | 99 | `result-track:9478d67ac34b489f854b5d86776e724c742d9e31ea63da0a93cb9190855a0ee0` |
| 9 | `lemma` | [lintegral_parallelComp_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/lintegral-parallelcomp-symm--7e3a27fb8f3a80ac390e6a9a.md) | 104 | `result-track:7e3a27fb8f3a80ac390e6a9a95e7709827b1b49386b35d267a121ed8ae89b09a` |
| 10 | `lemma` | [parallelComp_sum_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/parallelcomp-sum-left--69484106e8fee17e61a57d44.md) | 109 | `result-track:69484106e8fee17e61a57d44004dd6c289bf90182e7fd740e69e40f19dd940db` |
| 11 | `lemma` | [parallelComp_sum_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/parallelcomp-sum-right--18774a28813537a75e67acc3.md) | 117 | `result-track:18774a28813537a75e67acc396622161296b32b7fad7a288db8d8254ad1024fb` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/instance--3387dd13d417a01543363d4a.md) | 125 | `declaration-track:3387dd13d417a01543363d4ad8577e6bfca35bd84d82ba7e6ea61c870121260e` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/instance--cde42d7fe5a41b7191e87d13.md) | 128 | `declaration-track:cde42d7fe5a41b7191e87d13da81c73ff9291160d77eda92965d3325360caca4` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/instance--f1368c04ce8156daeb728d7e.md) | 132 | `declaration-track:f1368c04ce8156daeb728d7e45941d967efaeda97088c249364d2970cf8a2dbb` |
| 15 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/declarations/instance--063f4d14a4298b0fdab5ec41.md) | 143 | `declaration-track:063f4d14a4298b0fdab5ec41793677d75aa7ae45303f7ff5e941f434c7f036bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
