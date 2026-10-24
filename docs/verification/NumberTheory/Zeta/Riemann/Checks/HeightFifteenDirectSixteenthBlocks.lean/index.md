# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthBlocks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd5112a7cf5af5160cfad50f3191dae849f4367e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthBlocks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthBlocks.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthBlocks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd5112a7cf5af5160cfad50f3191dae849f4367e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthBlocks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthBlocks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.BigOperators.CheckedChunkComposition`](../../../../../../mathematics/Algebra/BigOperators/CheckedChunkComposition.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthBlocks`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sixteenthWidths](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthBlocks.lean/declarations/sixteenthwidths--05c8e02247e049caf0006e51.md) | 24 | `declaration-track:05c8e02247e049caf0006e519c8b778fb2a6d989e6042a5ed05121b5c386fa45` |
| 2 | `def` | [sixteenthExpected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthBlocks.lean/declarations/sixteenthexpected--48055c2346d3e4ebbe0d2351.md) | 27 | `declaration-track:48055c2346d3e4ebbe0d2351d54f0a06903b555d2cdf4e307ad7ce3dd4884102` |
| 3 | `theorem` | [sixteenthWidths_shape](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthBlocks.lean/declarations/sixteenthwidths-shape--337195f4c608ef8bb752bb5d.md) | 29 | `result-track:337195f4c608ef8bb752bb5d72efd0229aa12fe00519b08cd765d7b2230d908e` |
| 4 | `theorem` | [sixteenthExpected_shape](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthBlocks.lean/declarations/sixteenthexpected-shape--21452b6e9093427e83b5b71c.md) | 32 | `result-track:21452b6e9093427e83b5b71c9811948a6c3bcd58f9555eb695c52e81cde011e9` |
| 5 | `def` | [SixteenthObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectSixteenthBlocks.lean/declarations/sixteenthobligations--80a3862e7da56ad9061305df.md) | 36 | `declaration-track:80a3862e7da56ad9061305dfaf992e5dffa6cc5e4f061d701298359cd15153a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
