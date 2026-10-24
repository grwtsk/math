# Verification target: GRWTSK.Analysis.DyadicConditionalExpectation.Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53969c390b8caef9600ce60d7a5bf6ecce7eaf9a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/index.md) · [Full source](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53969c390b8caef9600ce60d7a5bf6ecce7eaf9a`.

Source path: `GRWTSK/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DyadicCellCode](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/dyadiccellcode--ad2bf03376ae5c73f7a9842b.md) | 45 | `declaration-track:ad2bf03376ae5c73f7a9842bbc272e600c91b06efe2d3062862ddfc4a86eb3cd` |
| 2 | `def` | [halfOpenShellCell](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/halfopenshellcell--dd97a3bfb4c7ff57c0b8c06d.md) | 54 | `declaration-track:dd97a3bfb4c7ff57c0b8c06de630424b389e7082243c7f45a707bf9f511958cf` |
| 3 | `def` | [TypeIIShellFactorBlock.leftDyadicCellCode](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/typeiishellfactorblock-leftdyadiccellcode--07ac2a98578e6e2e1004a431.md) | 72 | `declaration-track:07ac2a98578e6e2e1004a431bd3f0e5a3b1ddc0cf45010d5155a888f7dc4da47` |
| 4 | `def` | [TypeIIShellFactorBlock.rightDyadicCellCode](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/typeiishellfactorblock-rightdyadiccellcode--c67cf532bcca2284211aff31.md) | 81 | `declaration-track:c67cf532bcca2284211aff316ad281e2dc54ea4c8e21a4c7815cfc3061c2ba96` |
| 5 | `def` | [DyadicCellCode.indicator](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/dyadiccellcode-indicator--779ad9ba4c3796b03541a38a.md) | 90 | `declaration-track:779ad9ba4c3796b03541a38adf795a3ec17b1cee8100a04b3adbc6046ccea663` |
| 6 | `def` | [DyadicCellCode.structuredSubspace](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/dyadiccellcode-structuredsubspace--77c3c4229d338466cea5fff5.md) | 98 | `declaration-track:77c3c4229d338466cea5fff5b550b0f9cc3512a295b068ce478f0f322eb4e1c8` |
| 7 | `def` | [dyadicConditionalExpectation](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/dyadicconditionalexpectation--b44aa40b153364fa87f7bc63.md) | 106 | `declaration-track:b44aa40b153364fa87f7bc6376aeb98d2647e3a633f77def38f9c95ddcd502b0` |
| 8 | `theorem` | [dyadicConditionalExpectation_idempotent](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/dyadicconditionalexpectation-idempotent--5e4253e1ef0ded33d9a9fde4.md) | 114 | `result-track:5e4253e1ef0ded33d9a9fde40c4db23c27342ad27f985303321de719dc3dffdd` |
| 9 | `theorem` | [dyadicConditionalExpectation_selfAdjoint](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/dyadicconditionalexpectation-selfadjoint--11a6fff6fdea3529e0121c82.md) | 122 | `result-track:11a6fff6fdea3529e0121c8278c8e515d628e9e40959d2e91b1b55ff5409a5f7` |
| 10 | `theorem` | [range_dyadicConditionalExpectation](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/range-dyadicconditionalexpectation--47fd60e6a3c0732cdba0613c.md) | 130 | `result-track:47fd60e6a3c0732cdba0613c914c14142981136a10c614c44c17de1988a783e2` |
| 11 | `theorem` | [rank_dyadicConditionalExpectation_le](../../../../mathematics/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/declarations/rank-dyadicconditionalexpectation-le--04af4469d888fe4bdfdd81d8.md) | 138 | `result-track:04af4469d888fe4bdfdd81d804b2eea122a46c1ffa727c3ed909ebdee0034cd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
