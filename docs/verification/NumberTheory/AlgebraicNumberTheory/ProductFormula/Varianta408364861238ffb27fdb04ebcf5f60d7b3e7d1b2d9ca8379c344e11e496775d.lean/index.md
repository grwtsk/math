# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.ProductFormula.Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e84cd3c5470b110878c623c8c2c0b185f23c90e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e84cd3c5470b110878c623c8c2c0b185f23c90e`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.FinitePlaces` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.InfinitePlace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [FinitePlace.prod_eq_inv_abs_norm_int](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean/declarations/finiteplace-prod-eq-inv-abs-norm-int--6dda165bb3f3f9b59689c7d5.md) | 41 | `result-track:6dda165bb3f3f9b59689c7d52b97401aeed20759dedf0548cce98fb356f4319b` |
| 2 | `theorem` | [FinitePlace.prod_eq_inv_abs_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean/declarations/finiteplace-prod-eq-inv-abs-norm--a969ff1f28d47b7faeae7be0.md) | 73 | `result-track:a969ff1f28d47b7faeae7be0e514f2b03bbd28d2ee1e2c8f8798a2bf4c570739` |
| 3 | `theorem` | [prod_abs_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean/declarations/prod-abs-eq-one--efd60946aca02f16d8c4e802.md) | 93 | `result-track:efd60946aca02f16d8c4e802cf0c5a889d4f4b27a94b4bbb0faa4f6f8d220c3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
