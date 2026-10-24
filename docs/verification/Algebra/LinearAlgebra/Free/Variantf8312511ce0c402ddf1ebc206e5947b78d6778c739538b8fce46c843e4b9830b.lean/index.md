# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b465b68e89b4fcf008b0eedc59e97bd13d4af56d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b465b68e89b4fcf008b0eedc59e97bd13d4af56d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Adjunctions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortExact.Preadditive` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Rank` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finrank` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_span_sum](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/declarations/disjoint-span-sum--a42250e57afb95d14c1b2c58.md) | 57 | `result-track:a42250e57afb95d14c1b2c581d988b8faf7e642b250155295fb8fd3a71d92947` |
| 2 | `theorem` | [linearIndependent_leftExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/declarations/linearindependent-leftexact--03e5182aa058e7c5a8be0e29.md) | 75 | `result-track:03e5182aa058e7c5a8be0e29bb5514bd6eae11b8d89502325ac0f80985015d17` |
| 3 | `theorem` | [linearIndependent_shortExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/declarations/linearindependent-shortexact--e7969d941b858d719e1e0a2d.md) | 84 | `result-track:e7969d941b858d719e1e0a2d9cb86b2cbab1961397a6ef2f41b632414cdca8fe` |
| 4 | `theorem` | [span_exact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/declarations/span-exact--b4e378be9990cb0d7aa6a12b.md) | 110 | `result-track:b4e378be9990cb0d7aa6a12ba0ae1e991155052f91f475bbf1ce8fa824acc13c` |
| 5 | `theorem` | [span_rightExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/declarations/span-rightexact--a2ae4b9f0440bfeb26aa53bd.md) | 145 | `result-track:a2ae4b9f0440bfeb26aa53bd17eacf0a225a12bfeaecb4d22709acdf79669c0e` |
| 6 | `def` | [Basis.ofShortExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/declarations/basis-ofshortexact--821b00851be1b5906217560c.md) | 161 | `declaration-track:821b00851be1b5906217560ca871b93f0ac63ff92aa6a28acd261afb7028974f` |
| 7 | `theorem` | [free_shortExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/declarations/free-shortexact--d0c7ce4cb3299e5982abfc7b.md) | 167 | `result-track:d0c7ce4cb3299e5982abfc7b16689d75ff1b8ad2035a4636150db0889b415452` |
| 8 | `theorem` | [free_shortExact_rank_add](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/declarations/free-shortexact-rank-add--1c10d57637ab2de843b2ad7d.md) | 173 | `result-track:1c10d57637ab2de843b2ad7d4d5a1a5f8c04efdffdd8dba8dabcd1c977d8ee89` |
| 9 | `theorem` | [free_shortExact_finrank_add](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantf8312511ce0c402ddf1ebc206e5947b78d6778c739538b8fce46c843e4b9830b.lean/declarations/free-shortexact-finrank-add--2826e27d7c349c28b29f02ff.md) | 182 | `result-track:2826e27d7c349c28b29f02ffd8b72e55e7528e435d54ccca9322646bcce9be7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
