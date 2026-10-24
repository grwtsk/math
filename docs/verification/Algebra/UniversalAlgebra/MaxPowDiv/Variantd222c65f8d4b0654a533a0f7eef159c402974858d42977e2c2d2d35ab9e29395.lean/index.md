# Verification target: GRWTSK.Algebra.UniversalAlgebra.MaxPowDiv.Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0499163e9ae810179e0a3ba2175ef1677225cd50",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0499163e9ae810179e0a3ba2175ef1677225cd50`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxPowDiv](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean/declarations/maxpowdiv--26653e6ab87561b5c184d484.md) | 28 | `declaration-track:26653e6ab87561b5c184d484f4f4fc8272e1a21bf5e09e182ed6e8ac87fad1be` |
| 2 | `theorem` | [go_succ](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean/declarations/go-succ--f34b1dc4bb9a862cc7b5702f.md) | 44 | `result-track:f34b1dc4bb9a862cc7b5702f56f2237f56a023a2d40bb222478bf3e07ab90fab` |
| 3 | `theorem` | [zero_base](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean/declarations/zero-base--d6d741ef5b401812957497e5.md) | 55 | `result-track:d6d741ef5b401812957497e53554f4394081d5f6faa5566114d66da1d87b8d74` |
| 4 | `theorem` | [zero](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean/declarations/zero--6cc108701b7bfe8b541a263d.md) | 61 | `result-track:6cc108701b7bfe8b541a263d34bb5ebc9d92b3cb1eca12a01a3853810d2e9a60` |
| 5 | `theorem` | [base_mul_eq_succ](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean/declarations/base-mul-eq-succ--784d6b823f0392b525074a4f.md) | 66 | `result-track:784d6b823f0392b525074a4f8e39effad6ae5f27da190b1d9c3655e301e7144f` |
| 6 | `theorem` | [base_pow_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean/declarations/base-pow-mul--bb54fd11e9cb31cea1453041.md) | 75 | `result-track:bb54fd11e9cb31cea14530415316213a0cd610f5000b9266e506a477ef61242b` |
| 7 | `theorem` | [pow_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean/declarations/pow-dvd--720554f682de8813929ea6bf.md) | 85 | `result-track:720554f682de8813929ea6bf49f97c3a373e3d1aefa9ac72ce3071402f76f386` |
| 8 | `theorem` | [le_of_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/MaxPowDiv/Variantd222c65f8d4b0654a533a0f7eef159c402974858d42977e2c2d2d35ab9e29395.lean/declarations/le-of-dvd--a53075a87b114d1883afba34.md) | 99 | `result-track:a53075a87b114d1883afba34c2b6cdcd7c93d1629bafe38ea3c74c10f64d7c3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
