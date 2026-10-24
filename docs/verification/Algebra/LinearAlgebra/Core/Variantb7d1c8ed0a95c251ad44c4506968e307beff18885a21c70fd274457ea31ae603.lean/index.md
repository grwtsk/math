# Verification target: GRWTSK.Algebra.LinearAlgebra.Core.Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16450fe3b342a33e4da23c7db1dc5ed5402b73bf",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16450fe3b342a33e4da23c7db1dc5ed5402b73bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveKernel](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean/declarations/positivekernel--d7aa9077eee9067abdc967ee.md) | 22 | `declaration-track:d7aa9077eee9067abdc967eec2dcc80403220823c03862b813074ee3041fc6c9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean/declarations/instance--a80b1334b9a655faee7334c6.md) | 30 | `declaration-track:a80b1334b9a655faee7334c6d3832a24fbd1d1bdd0c9dabebb8e4a07e0c75208` |
| 3 | `theorem` | [isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean/declarations/ishermitian--6341ec0f3f50de593bee935e.md) | 34 | `result-track:6341ec0f3f50de593bee935ed45c73f084ef48125a8081092ac92f4225c1bcf8` |
| 4 | `theorem` | [conj_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean/declarations/conj-apply-symm--bb3faf50e7a24770fc08c5bb.md) | 40 | `result-track:bb3faf50e7a24770fc08c5bb6c78d47b1d882c5b4abe2c1430f1305f40a1dd56` |
| 5 | `theorem` | [conj_matrix_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean/declarations/conj-matrix-apply-symm--e3be61dc1a49fa96f4d4dce0.md) | 46 | `result-track:e3be61dc1a49fa96f4d4dce0f280685284b273c1069a41be726103520b512401` |
| 6 | `theorem` | [quadratic_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603.lean/declarations/quadratic-nonnegative--6b213ceae7afcd78b6bdb84d.md) | 52 | `result-track:6b213ceae7afcd78b6bdb84d2efe8690ff806cde9378becc02d06161fa2a332a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
