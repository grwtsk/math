# Verification target: GRWTSK.Algebra.LinearAlgebra.C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture.Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b6ed244311f32520360b63f0795ded473b03cc1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b6ed244311f32520360b63f0795ded473b03cc1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [A](../../../../../mathematics/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean/declarations/a--6e521e18686cf7412bd62bee.md) | 9 | `declaration-track:6e521e18686cf7412bd62bee2870ab7b3b7d4d8baee2bdfa6a35593b445e0855` |
| 2 | `theorem` | [six_ordered_minors](../../../../../mathematics/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean/declarations/six-ordered-minors--aa810bce8cd1127abe4505ec.md) | 12 | `result-track:aa810bce8cd1127abe4505ec35983d451cd73d42535fa012804ba9d07df82d48` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture/Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da.lean/declarations/example--357f90e200fca9a997ec6d63.md) | 22 | `declaration-track:357f90e200fca9a997ec6d63fad08bdf5a204d57d1f852578efd82a4cf500c9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
