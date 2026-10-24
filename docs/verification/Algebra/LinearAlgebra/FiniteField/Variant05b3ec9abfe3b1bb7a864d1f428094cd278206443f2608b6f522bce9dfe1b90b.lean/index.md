# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteField.Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ce3170e226c2c776e04772e185222c2f8bdd5bb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ce3170e226c2c776e04772e185222c2f8bdd5bb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.CharP` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [FiniteField.Matrix.charpoly_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean/declarations/finitefield-matrix-charpoly-pow-card--7b786a879e4ebfa02b23b5dd.md) | 32 | `result-track:7b786a879e4ebfa02b23b5dd9612d3a1c34f672ef962c597c91fabdac28c8bef` |
| 2 | `theorem` | [ZMod.charpoly_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean/declarations/zmod-charpoly-pow-card--68e87c0ff4f3cbdca107a745.md) | 52 | `result-track:68e87c0ff4f3cbdca107a745f01769d2c5324fb89913cbb51407ef314ca6c4ef` |
| 3 | `theorem` | [FiniteField.trace_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean/declarations/finitefield-trace-pow-card--481eed8350c13c85847912ab.md) | 57 | `result-track:481eed8350c13c85847912ab1e3ef8d66c3a34b3d2b7f76ca0b10b407cb4f3ad` |
| 4 | `theorem` | [ZMod.trace_pow_card](../../../../../mathematics/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean/declarations/zmod-trace-pow-card--5d1418a7e39b81217443d47f.md) | 64 | `result-track:5d1418a7e39b81217443d47fdafbf50d627f9cb7cc57bcfe2601f4fdc0a62dd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
