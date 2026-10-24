# Verification target: GRWTSK.Algebra.SourceSchedulingReconstruction.Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88fa7ca48ac7fb7d5b3b606006e76a0ac2eb7069",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/index.md) · [Full source](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88fa7ca48ac7fb7d5b3b606006e76a0ac2eb7069`.

Source path: `GRWTSK/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.List` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jointReadout](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/jointreadout--ff882a5129059ea0cbbcbef5.md) | 33 | `declaration-track:ff882a5129059ea0cbbcbef51894c912f53a01f9492f01037451893ee14a6be7` |
| 2 | `theorem` | [coverage_count_eq](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/coverage-count-eq--f42f967f612fc77e0275c201.md) | 37 | `result-track:f42f967f612fc77e0275c201bfff06465a7847983b0e2d58a4ac14b46d363d45` |
| 3 | `theorem` | [covered_blocks_nodup_disjoint](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/covered-blocks-nodup-disjoint--44906fb637f636437e295e51.md) | 43 | `result-track:44906fb637f636437e295e512a2c978b5ba75d82ca1e838e4a54eb9dfedbd98f` |
| 4 | `theorem` | [flatten_work_sum](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/flatten-work-sum--1aa9a648093d2e94f09d12b3.md) | 49 | `result-track:1aa9a648093d2e94f09d12b398a946162ba8ea0fec6e095073869afe0082950d` |
| 5 | `theorem` | [source_eq_block_sum](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/source-eq-block-sum--3ada5917eaf882ccd5a7747b.md) | 56 | `result-track:3ada5917eaf882ccd5a7747baa87e9b4f0e4dfc91ff8a46ad4b3f44e7c588f9f` |
| 6 | `theorem` | [source_fold_eq_block_fold](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/source-fold-eq-block-fold--cc2ecf69a1b26cc07af1925d.md) | 63 | `result-track:cc2ecf69a1b26cc07af1925d8b0a3d598eab4ca0bd100222237ee60e88a1dc18` |
| 7 | `theorem` | [abs_list_sum_le](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/abs-list-sum-le--f692cd160ed5e982e2931c2c.md) | 74 | `result-track:f692cd160ed5e982e2931c2ce314ce2ef89c890491051f8a3e00533166df818b` |
| 8 | `theorem` | [abs_source_le_joint_blocks](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/abs-source-le-joint-blocks--c354854e4ebd3a59fffea18d.md) | 83 | `result-track:c354854e4ebd3a59fffea18d1325270d1c78838538fde383db862ce8f48da351` |
| 9 | `theorem` | [joint_cancellation_budget](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/joint-cancellation-budget--93becf1af6cb5d8e268555fb.md) | 91 | `result-track:93becf1af6cb5d8e268555fb45567b859a785fd8bbd469ee90bbb7e15fe3f4e2` |
| 10 | `def` | [cancelPairWork](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/cancelpairwork--3829ceef1de82ed21cd19aed.md) | 103 | `declaration-track:3829ceef1de82ed21cd19aedd7041710e91e955b734c9f7c4fb105d23f97206e` |
| 11 | `theorem` | [cancel_pair_coverage](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/cancel-pair-coverage--99d040cadf99e046a0be4d67.md) | 105 | `result-track:99d040cadf99e046a0be4d67f1afa4833ecdf30e6dada449edea941bed687360` |
| 12 | `theorem` | [cancel_pair_joint_budget](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/cancel-pair-joint-budget--d260eb11eee603ba09d7d21f.md) | 108 | `result-track:d260eb11eee603ba09d7d21f1154693637f9d053737812b021db5d37e6a1fc2e` |
| 13 | `theorem` | [cancel_pair_atomwise_budget](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variantae5982fa666bd790ce41ffc09aa7362ca6e3ac7cd7fecbcd60995819ad067732.lean/declarations/cancel-pair-atomwise-budget--6fcb00c014ec4e02c78cc495.md) | 119 | `result-track:6fcb00c014ec4e02c78cc4954030fdc01da7ab2a2194da9e38bea94b1e97374f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
