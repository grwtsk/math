# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithBot.Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5caea88fe339d47eb15d70873dbc475c191a2009",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5caea88fe339d47eb15d70873dbc475c191a2009`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/declarations/instance--d4f3f000ef816a81b9bd90cb.md) | 31 | `declaration-track:d4f3f000ef816a81b9bd90cb3661df0bb54c75feab59cc12556968f330e4f0bb` |
| 2 | `theorem` | [add_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/declarations/add-eq-zero-iff--b49c591370c9e79b0871f081.md) | 35 | `result-track:b49c591370c9e79b0871f081d4dda9bfc2d4f52f3ca46db5adda388469229ae1` |
| 3 | `theorem` | [add_eq_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/declarations/add-eq-one-iff--38dbe874c46fc3c9f992abc2.md) | 43 | `result-track:38dbe874c46fc3c9f992abc2dda3427f6280f56817619079c7dcc9baa071e5b7` |
| 4 | `theorem` | [add_eq_two_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/declarations/add-eq-two-iff--4b3bf278e64bc68036eb50ab.md) | 50 | `result-track:4b3bf278e64bc68036eb50ab84f59685177e37547f1be24ba7fea6e94e58bc17` |
| 5 | `theorem` | [add_eq_three_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/declarations/add-eq-three-iff--affd086c7bec746ecd667ed2.md) | 58 | `result-track:affd086c7bec746ecd667ed2f2cb4d60f759ba7bce827a74741fd23381be8ffd` |
| 6 | `theorem` | [coe_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/declarations/coe-nonneg--3d729a85f2164d9184679202.md) | 66 | `result-track:3d729a85f2164d91846792021238dcf24de1302318d2289fdb656f9a22b5e62b` |
| 7 | `theorem` | [lt_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/declarations/lt-zero-iff--a6d7e330b2418f93333c5e50.md) | 72 | `result-track:a6d7e330b2418f93333c5e5058732881bb9dafd27176802d5f31314eedc755aa` |
| 8 | `theorem` | [one_le_iff_zero_lt](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/declarations/one-le-iff-zero-lt--08e81d6989424662ff01d5da.md) | 84 | `result-track:08e81d6989424662ff01d5dac0db3c1676459edd4c6080d6c70d649241c50403` |
| 9 | `theorem` | [lt_one_iff_le_zero](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/declarations/lt-one-iff-le-zero--cdbcaa17a83c4bb4a204da93.md) | 91 | `result-track:cdbcaa17a83c4bb4a204da9364f9e48dfa7342b6abfbf133509835b578863aac` |
| 10 | `theorem` | [add_one_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/WithBot/Variant0760a92c6b7510404bc4208e1c8efb25d25b32d4ec4a32a6f1e392f8a4c6bf6e.lean/declarations/add-one-le-of-lt--6b176158753c3fb02e765dd4.md) | 95 | `result-track:6b176158753c3fb02e765dd47bd3eca3c776d065abf4a3e370f5064ec7cee433` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
