# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthBlocks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8087b3661fc095f77604f912d83ead9e8690b218",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8087b3661fc095f77604f912d83ead9e8690b218`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.BigOperators.CheckedChunkComposition`](../../../../../../mathematics/Algebra/BigOperators/CheckedChunkComposition.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectQuarterBlocks`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectQuarterBlocks.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eighthWidths](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean/declarations/eighthwidths--647c31db06879e2f67600579.md) | 24 | `declaration-track:647c31db06879e2f676005792d9daca80f06e073e416370d0cc0f0c312ff2f71` |
| 2 | `def` | [eighthExpected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean/declarations/eighthexpected--017e24980d2ff2978138a984.md) | 27 | `declaration-track:017e24980d2ff2978138a984661f7856e21ebf9ed248021d59a8e67072a09283` |
| 3 | `theorem` | [eighthWidths_shape](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean/declarations/eighthwidths-shape--90ccd4adbc1b5ddba844349d.md) | 29 | `result-track:90ccd4adbc1b5ddba844349ddec02d74d7a02d2824f999d9047c686eb28674db` |
| 4 | `theorem` | [eighthExpected_shape](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean/declarations/eighthexpected-shape--271ab2d9c2d6e9bc8361d2de.md) | 32 | `result-track:271ab2d9c2d6e9bc8361d2de1d96f0570eb5d90ff6efd10369b0b9d1a99df06b` |
| 5 | `def` | [EighthObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthBlocks.lean/declarations/eighthobligations--4223c4e00c6149351b6053fc.md) | 36 | `declaration-track:4223c4e00c6149351b6053fc0f4c5d458384d03b1b25b8fb9308a47e69acc9ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
