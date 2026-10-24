# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectQuarterBlocks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f233c11ba4cc473ed0bbe0a99c30012ba6ad947",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f233c11ba4cc473ed0bbe0a99c30012ba6ad947`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.BigOperators.CheckedChunkComposition`](../../../../../../mathematics/Algebra/BigOperators/CheckedChunkComposition.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectHalfBlocks`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfBlocks.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarterWidths](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean/declarations/quarterwidths--d27ae774680e345cfe27aff4.md) | 24 | `declaration-track:d27ae774680e345cfe27aff48e0debfa364c2006bdfe7c3516cfe1f655288332` |
| 2 | `def` | [quarterExpected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean/declarations/quarterexpected--f7820a7ab3c0d40fdb019a04.md) | 27 | `declaration-track:f7820a7ab3c0d40fdb019a045434e5e1590fc8c56d260f66b0b669f95afb5f55` |
| 3 | `theorem` | [quarterWidths_shape](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean/declarations/quarterwidths-shape--bdc13b925fa6021d478e78ec.md) | 29 | `result-track:bdc13b925fa6021d478e78ec61b6d0af4fef6e58c93f9e05457738ccbce03a90` |
| 4 | `theorem` | [quarterExpected_shape](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean/declarations/quarterexpected-shape--12263eab8f099239692221ea.md) | 32 | `result-track:12263eab8f099239692221eafcedd57355722935833cf4be0b74959d89f6c63f` |
| 5 | `def` | [QuarterObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean/declarations/quarterobligations--5119289bae2732cb7351c7fd.md) | 36 | `declaration-track:5119289bae2732cb7351c7fd85acd6b8383c798cbb6d2c1db8c45663789259ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
