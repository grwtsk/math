# Verification target: GRWTSK.Algebra.LinearAlgebra.Card.Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28cf6453b209397fc9df7c227e41d6fb7c2b32f2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28cf6453b209397fc9df7c227e41d6fb7c2b32f2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Rank` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finiteness` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean/declarations/card-linearindependent--0ee17206b8a631d8e523d74c.md) | 36 | `result-track:0ee17206b8a631d8e523d74c1a2c00045a80c515a7603fed7c84272c67989218` |
| 2 | `def` | [equiv_GL_linearindependent](../../../../../mathematics/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean/declarations/equiv-gl-linearindependent--0a26a692fdae5a04ab8d60a2.md) | 68 | `declaration-track:0a26a692fdae5a04ab8d60a25f2838e7af3cf4c9f2ab16c3ceb63a81cc692b0c` |
| 3 | `theorem` | [card_GL_field](../../../../../mathematics/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean/declarations/card-gl-field--94a31b34a34cdfb44c2aa3e4.md) | 84 | `result-track:94a31b34a34cdfb44c2aa3e4eacc7ed1eca89d303d4a57ca98da7484a0f4ce6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
