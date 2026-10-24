# Verification target: GRWTSK.Algebra.SourceSchedulingReconstruction.Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c894066f8ef26b29a3db181f32fa5784de419bd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/index.md) · [Full source](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c894066f8ef26b29a3db181f32fa5784de419bd`.

Source path: `GRWTSK/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.List` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jointReadout](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/jointreadout--5d21a1416579d244202864ff.md) | 25 | `declaration-track:5d21a1416579d244202864ffaac8c879baf3d3b6d3f8316b81f456ddd9de111f` |
| 2 | `theorem` | [coverage_count_eq](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/coverage-count-eq--56f8489949b7eea74b6589e5.md) | 29 | `result-track:56f8489949b7eea74b6589e550600bdb00f78eaf533c241eff2c43b72de1651d` |
| 3 | `theorem` | [covered_blocks_nodup_disjoint](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/covered-blocks-nodup-disjoint--afe8cf5a67f28f35d2970fff.md) | 35 | `result-track:afe8cf5a67f28f35d2970fff7378f65e0151fe9287ee47596addaa04b571a684` |
| 4 | `theorem` | [flatten_work_sum](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/flatten-work-sum--f27971bc40fb83e5dc635404.md) | 41 | `result-track:f27971bc40fb83e5dc635404b6180cac2c3036378440ffcfaaa5de1f6f34c1f2` |
| 5 | `theorem` | [source_eq_block_sum](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/source-eq-block-sum--5ef6deb0b161b1ea2ade1c06.md) | 48 | `result-track:5ef6deb0b161b1ea2ade1c06ec8c35466d5ac35164382758d038c23cc1f90af4` |
| 6 | `theorem` | [source_fold_eq_block_fold](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/source-fold-eq-block-fold--fb12bed563e7b295e9c293d6.md) | 55 | `result-track:fb12bed563e7b295e9c293d6ba983d5bbf7a1d96882d3946afd713df5c6a2da0` |
| 7 | `theorem` | [abs_list_sum_le](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/abs-list-sum-le--c57de4a628e9501a149f65d5.md) | 66 | `result-track:c57de4a628e9501a149f65d5421cf0417b457e116a937c469013448ff2dead29` |
| 8 | `theorem` | [abs_source_le_joint_blocks](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/abs-source-le-joint-blocks--3e2d8924a76eba01cc1e862a.md) | 75 | `result-track:3e2d8924a76eba01cc1e862a7eb4d43336d64e78b13ab87856dd7a15af624f25` |
| 9 | `theorem` | [joint_cancellation_budget](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/joint-cancellation-budget--6e133f6cd61edf269a1afe37.md) | 83 | `result-track:6e133f6cd61edf269a1afe37614e3f24fc7fb190911f5685c6d6aeedeab5fb1a` |
| 10 | `def` | [cancelPairWork](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/cancelpairwork--af96cbb5cf06a039370ad954.md) | 95 | `declaration-track:af96cbb5cf06a039370ad9549b7aab3ba877a29dc63ba866a4a648484e9b4f96` |
| 11 | `theorem` | [cancel_pair_coverage](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/cancel-pair-coverage--351f4e191818fb017e45a037.md) | 97 | `result-track:351f4e191818fb017e45a03717e2cfe0991297fdb53434b43a3034c8ebb440e1` |
| 12 | `theorem` | [cancel_pair_joint_budget](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/cancel-pair-joint-budget--9f8cf5eddf9305aae56072f3.md) | 100 | `result-track:9f8cf5eddf9305aae56072f34e46feff6da3986fead7b4e73d5fbbfe40d76976` |
| 13 | `theorem` | [cancel_pair_atomwise_budget](../../../../mathematics/Algebra/SourceSchedulingReconstruction/Variant2a11fe05b0b83db56fe5a3d114f7a30f752c916aa86765e5bfeb5e2d5a5de9ab.lean/declarations/cancel-pair-atomwise-budget--2aaebbd2fa779f064799203c.md) | 111 | `result-track:2aaebbd2fa779f064799203c9d93970f0cfcf1952e7eb81ab93364af93eae2de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
