# Verification target: GRWTSK.Algebra.UniversalAlgebra.Invertible.Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7339b9f6c2c9a4dce42bf13aa60a918f1c940c9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7339b9f6c2c9a4dce42bf13aa60a918f1c940c9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Invertible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invOf_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean/declarations/invof-pos--326bbc59a86b006e115613b7.md) | 29 | `result-track:326bbc59a86b006e115613b7071ed26aba791aa17b7889ae58082d6f110a8af3` |
| 2 | `theorem` | [invOf_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean/declarations/invof-nonpos--6abea7b272a101efc091a2e9.md) | 35 | `result-track:6abea7b272a101efc091a2e9f1137be3d3f2e3645e1d0b06b21d8f022c5ab50d` |
| 3 | `theorem` | [invOf_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean/declarations/invof-nonneg--4f88d8bbbc1a7695b02767de.md) | 39 | `result-track:4f88d8bbbc1a7695b02767ded1337b635a7328c80067e0dc1dbe6b9b5975798a` |
| 4 | `theorem` | [invOf_lt_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean/declarations/invof-lt-zero--048a58256f900a7219501af8.md) | 45 | `result-track:048a58256f900a7219501af82b4891c5f633cd8c957ba9dc5894507609cb0b0d` |
| 5 | `theorem` | [invOf_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean/declarations/invof-le-one--9465a8169a7a1d6ec69895bd.md) | 49 | `result-track:9465a8169a7a1d6ec69895bd8cdc6bdef82a8c7e1b9396724deb66d6576b87a3` |
| 6 | `theorem` | [pos_invOf_of_invertible_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689.lean/declarations/pos-invof-of-invertible-cast--d7b3fe6c4a0412684acb6e72.md) | 53 | `result-track:d7b3fe6c4a0412684acb6e723005909f0138e757fa7fa961cbce7bf493fa5f29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
