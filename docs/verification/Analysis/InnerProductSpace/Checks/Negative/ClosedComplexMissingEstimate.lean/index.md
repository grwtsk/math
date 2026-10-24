# Verification target: GRWTSK.Analysis.InnerProductSpace.Checks.Negative.ClosedComplexMissingEstimate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31824514028b4f4945acc1b020fb4f1aecdf14de",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31824514028b4f4945acc1b020fb4f1aecdf14de`.

Source path: `GRWTSK/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability`](../../../../../../mathematics/Analysis/InnerProductSpace/ClosedComplexSolvability.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_dense](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/declarations/zero-dense--228c26bd5c244aa0cd077ef0.md) | 20 | `result-track:228c26bd5c244aa0cd077ef09167802fec444fcbb3e6470c6e300c9061744a7c` |
| 2 | `theorem` | [zero_closed](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/declarations/zero-closed--33259f07778e411754b2c538.md) | 24 | `result-track:33259f07778e411754b2c53889d82ab4f4b31cf34fbafd613179438041120a67` |
| 3 | `theorem` | [zero_complex](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/declarations/zero-complex--5d069c837cbef0d154f35212.md) | 38 | `result-track:5d069c837cbef0d154f35212cd2bc59e92a87a26daab10f2ca319a07478802fb` |
| 4 | `theorem` | [zero_kernel_unit](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/declarations/zero-kernel-unit--3c7096c52cf44b55ae04fd71.md) | 42 | `result-track:3c7096c52cf44b55ae04fd71887f1f0af96a75d6b1c239b7e19291908e290c76` |
| 5 | `theorem` | [zero_has_no_unit_solution](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/declarations/zero-has-no-unit-solution--7b865e4a38f9ff24d1ca572e.md) | 45 | `result-track:7b865e4a38f9ff24d1ca572ef5370821c67a922cc7247cf0dfa92612c6def30b` |
| 6 | `def` | [unitAdjoint](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/declarations/unitadjoint--54fc52bba9511a37f598ff53.md) | 50 | `declaration-track:54fc52bba9511a37f598ff530207f740e88df67470d611b1a4742a66d3b79057` |
| 7 | `theorem` | [zero_adjoint_unit](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/declarations/zero-adjoint-unit--1ee4022d60d14d079e0f66e5.md) | 57 | `result-track:1ee4022d60d14d079e0f66e522af834b5a774cc1f5e688065d0683b3550579b6` |
| 8 | `theorem` | [zero_estimate_fails](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/declarations/zero-estimate-fails--23d44f2af4e4d96e832e6de0.md) | 63 | `result-track:23d44f2af4e4d96e832e6de0ac90231db8e1b62eca875154fd8c90933da291da` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/InnerProductSpace/Checks/Negative/ClosedComplexMissingEstimate.lean/declarations/example--83c341c7620519f702d1f027.md) | 77 | `declaration-track:83c341c7620519f702d1f0273dd119a539d1fd89e968771e6184889ae33c3597` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
